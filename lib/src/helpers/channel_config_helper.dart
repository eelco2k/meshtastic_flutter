import 'dart:convert';

import '../../generated/apponly.pb.dart';
import '../../generated/channel.pb.dart';
import '../../generated/config.pb.dart';
import '../../generated/admin.pb.dart';
import '../../generated/mesh.pb.dart';
import '../../generated/portnums.pb.dart';

/// Helper class for configuring channels and managing session keys
class ChannelConfigHelper {
  /// Stored session key for encrypted communication
  static List<int>? _sessionKey;
  
  /// Get the current session key
  static List<int>? get sessionKey => _sessionKey;
  
  /// Set the session key (typically retrieved during device configuration)
  static void setSessionKey(List<int> key) {
    _sessionKey = List<int>.from(key);
  }
  
  /// Clear the stored session key
  static void clearSessionKey() {
    _sessionKey = null;
  }
  
  /// Create admin packets to configure channels from a ChannelSet
  /// 
  /// This method takes a ChannelSet (typically from a QR code) and creates
  /// the necessary AdminMessage packets to configure the device channels.
  /// 
  /// Returns a list of MeshPacket objects that should be sent to the device
  /// in sequence to apply the channel configuration.
  /// 
  /// Note: All admin messages (except session key requests) require a valid
  /// session key for authentication. Ensure you have a session key before
  /// sending configuration packets.
  static List<MeshPacket> createChannelConfigPackets(
    ChannelSet channelSet, {
    int destinationNodeId = 0xffffffff, // Broadcast by default
    bool requestSessionKey = true,
  }) {
    final packets = <MeshPacket>[];
    
    // First, request session key if needed and we don't have one
    if (requestSessionKey && _sessionKey == null) {
      packets.add(_createSessionKeyRequestPacket(destinationNodeId));
    }
    
    // For all other packets, we need a session key
    if (_sessionKey == null && !requestSessionKey) {
      throw StateError(
        'Session key is required for admin operations. Either set requestSessionKey=true '
        'or call setSessionKey() with a valid session key before configuring channels.',
      );
    }
    
    // Configure LoRa settings if provided
    if (channelSet.hasLoraConfig()) {
      packets.add(_createLoRaConfigPacket(
        channelSet.loraConfig,
        destinationNodeId,
      ));
    }
    
    // Configure each channel
    for (int i = 0; i < channelSet.settings.length; i++) {
      final channelSettings = channelSet.settings[i];
      packets.add(_createChannelConfigPacket(
        i,
        channelSettings,
        destinationNodeId,
        isPrimary: i == 0, // First channel is typically primary
      ));
    }
    
    return packets;
  }
  
  /// Create a packet to request the session key
  static MeshPacket _createSessionKeyRequestPacket(int destinationNodeId) {
    final adminMessage = AdminMessage(
      getConfigRequest: AdminMessage_ConfigType.SESSIONKEY_CONFIG,
    );
    
    return MeshPacket(
      to: destinationNodeId,
      decoded: Data(
        portnum: PortNum.ADMIN_APP,
        payload: adminMessage.writeToBuffer(),
      ),
      wantAck: true,
      priority: MeshPacket_Priority.RELIABLE,
    );
  }
  
  /// Create a packet to configure LoRa settings
  static MeshPacket _createLoRaConfigPacket(
    Config_LoRaConfig loraConfig,
    int destinationNodeId,
  ) {
    final config = Config(lora: loraConfig);
    
    final adminMessage = AdminMessage(
      setConfig: config,
      sessionPasskey: _sessionKey ?? [], // Include session key for authentication
    );
    
    return MeshPacket(
      to: destinationNodeId,
      decoded: Data(
        portnum: PortNum.ADMIN_APP,
        payload: adminMessage.writeToBuffer(),
      ),
      wantAck: true,
      priority: MeshPacket_Priority.RELIABLE,
    );
  }
  
  /// Create a packet to configure a specific channel
  static MeshPacket _createChannelConfigPacket(
    int channelIndex,
    ChannelSettings channelSettings,
    int destinationNodeId, {
    bool isPrimary = false,
  }) {
    final channel = Channel(
      index: channelIndex,
      settings: channelSettings,
      role: isPrimary ? Channel_Role.PRIMARY : Channel_Role.SECONDARY,
    );
    
    final adminMessage = AdminMessage(
      setChannel: channel,
      sessionPasskey: _sessionKey ?? [], // Include session key for authentication
    );
    
    return MeshPacket(
      to: destinationNodeId,
      decoded: Data(
        portnum: PortNum.ADMIN_APP,
        payload: adminMessage.writeToBuffer(),
      ),
      wantAck: true,
      priority: MeshPacket_Priority.RELIABLE,
    );
  }
  
  /// Parse a ChannelSet from URL format (base64 encoded)
  /// 
  /// This is typically used when scanning a QR code that contains
  /// Meshtastic channel configuration data.
  static ChannelSet? parseChannelSetFromUrl(String url) {
    try {
      // Extract the base64 part from URLs like:
      // https://meshtastic.org/e/#CgMSAQEaBCDhKHo
      // or just the base64 part directly
      String base64Data;
      
      if (url.contains('#')) {
        base64Data = url.split('#').last;
      } else if (url.contains('=')) {
        // Might be direct base64
        base64Data = url;
      } else {
        // Try as direct base64
        base64Data = url;
      }
      
      // Add padding if needed
      while (base64Data.length % 4 != 0) {
        base64Data += '=';
      }
      
      final bytes = base64Decode(base64Data);
      return ChannelSet.fromBuffer(bytes);
    } catch (e) {
      // If parsing fails, return null
      return null;
    }
  }
  
  /// Generate a URL from a ChannelSet
  /// 
  /// This creates a Meshtastic-compatible URL that can be shared
  /// via QR codes or other means.
  static String generateChannelUrl(ChannelSet channelSet) {
    final bytes = channelSet.writeToBuffer();
    final base64Data = base64Encode(bytes);
    return 'https://meshtastic.org/e/#$base64Data';
  }
  
  /// Extract session key from AdminMessage response
  /// 
  /// This should be called when receiving admin responses to
  /// automatically store the session key for future use.
  static void processAdminResponse(AdminMessage adminMessage) {
    if (adminMessage.hasSessionPasskey()) {
      _sessionKey = List<int>.from(adminMessage.sessionPasskey);
    }
  }
  
  /// Create an authenticated admin message with session key
  /// 
  /// This is a convenience method for creating admin messages that require
  /// session key authentication. Use this for any admin operations after
  /// you have obtained a session key.
  static MeshPacket createAuthenticatedAdminPacket({
    required AdminMessage adminMessage,
    int destinationNodeId = 0xffffffff,
    bool requireSessionKey = true,
  }) {
    if (requireSessionKey && _sessionKey == null) {
      throw StateError(
        'Session key is required for authenticated admin operations. '
        'Please request a session key first or set one manually.',
      );
    }
    
    // Clone the admin message and add session key
    final authenticatedMessage = AdminMessage()
      ..mergeFromMessage(adminMessage);
    
    if (_sessionKey != null) {
      authenticatedMessage.sessionPasskey = _sessionKey!;
    }
    
    return MeshPacket(
      to: destinationNodeId,
      decoded: Data(
        portnum: PortNum.ADMIN_APP,
        payload: authenticatedMessage.writeToBuffer(),
      ),
      wantAck: true,
      priority: MeshPacket_Priority.RELIABLE,
    );
  }
  
  /// Validate that a ChannelSet has the required fields
  static bool validateChannelSet(ChannelSet channelSet) {
    if (channelSet.settings.isEmpty) {
      return false;
    }
    
    // Check that at least one channel has a name or PSK
    for (final setting in channelSet.settings) {
      if (setting.hasName() && setting.name.isNotEmpty) {
        return true;
      }
      if (setting.hasPsk() && setting.psk.isNotEmpty) {
        return true;
      }
    }
    
    return false;
  }
  
  /// Create a simple ChannelSet with basic settings
  /// 
  /// This is a convenience method for creating channel configurations
  /// programmatically rather than from QR codes.
  static ChannelSet createSimpleChannelSet({
    required String channelName,
    List<int>? psk,
    Config_LoRaConfig? loraConfig,
    bool uplinkEnabled = false,
    bool downlinkEnabled = false,
  }) {
    final settings = ChannelSettings(
      name: channelName,
      psk: psk ?? [],
      uplinkEnabled: uplinkEnabled,
      downlinkEnabled: downlinkEnabled,
    );
    
    return ChannelSet(
      settings: [settings],
      loraConfig: loraConfig,
    );
  }
}
