// ignore_for_file: avoid_print

/// Example demonstrating channel configuration from QR codes using ChannelConfigHelper.
/// 
/// This example shows:
/// 1. How to parse channel configuration from a QR code
/// 2. How to apply channel configuration to a connected device
/// 3. How to handle session keys for encrypted communication
/// 4. How to create custom channel configurations programmatically
library;

import 'package:meshtastic_flutter/meshtastic_flutter.dart';

void main() async {
  // Initialize the Meshtastic client
  final client = MeshtasticClient();
  
  // Example 1: Parse channel configuration from QR code data
  await parseAndApplyQRCodeChannels(client);
  
  // Example 2: Create and apply custom channel configuration
  await createAndApplyCustomChannels(client);
  
  // Example 3: Handle session key management
  await demonstrateSessionKeyHandling(client);
}

/// Example 1: Parse and apply channel configuration from QR code
Future<void> parseAndApplyQRCodeChannels(MeshtasticClient client) async {
  print('=== Example 1: QR Code Channel Configuration ===');
  
  // This would typically come from scanning a QR code
  const qrCodeData = 'https://meshtastic.org/e/#CgMSAQEaBCDhKHo';
  
  // Parse the channel set from the QR code
  final channelSet = ChannelConfigHelper.parseChannelSetFromUrl(qrCodeData);
  
  if (channelSet == null) {
    print('❌ Failed to parse channel configuration from QR code');
    return;
  }
  
  print('✅ Successfully parsed ChannelSet:');
  print('   - Number of channels: ${channelSet.settings.length}');
  print('   - Has LoRa config: ${channelSet.hasLoraConfig()}');
  
  // Validate the channel set
  if (!ChannelConfigHelper.validateChannelSet(channelSet)) {
    print('❌ Invalid channel configuration');
    return;
  }
  
  // Ensure we're connected to a device
  if (!client.isConnected) {
    print('❌ Not connected to a device');
    return;
  }
  
  try {
    // Step 1: Request session key first (required for admin operations)
    print('🔑 Requesting session key...');
    final sessionKeyRequest = AdminMessage(
      getConfigRequest: AdminMessage_ConfigType.SESSIONKEY_CONFIG,
    );
    
    final sessionKeyPacket = MeshPacket(
      to: 0xffffffff, // Broadcast to get our own session key
      decoded: Data(
        portnum: PortNum.ADMIN_APP,
        payload: sessionKeyRequest.writeToBuffer(),
      ),
      wantAck: true,
      priority: MeshPacket_Priority.RELIABLE,
    );
    
    await client.sendPacket(sessionKeyPacket);
    
    // Wait for session key response
    await Future.delayed(const Duration(seconds: 3));
    
    if (ChannelConfigHelper.sessionKey == null) {
      print('❌ Failed to receive session key. Cannot proceed with configuration.');
      return;
    }
    
    print('✅ Session key received (${ChannelConfigHelper.sessionKey!.length} bytes)');
    
    // Step 2: Generate the configuration packets (now with session key)
    final configPackets = ChannelConfigHelper.createChannelConfigPackets(
      channelSet,
      requestSessionKey: false, // We already have the session key
    );
    
    print('📦 Generated ${configPackets.length} configuration packets');
    
    // Step 3: Send each packet to the device
    for (int i = 0; i < configPackets.length; i++) {
      final packet = configPackets[i];
      print('   Sending packet ${i + 1}/${configPackets.length}...');
      
      await client.sendPacket(packet);
      
      // Add delay between packets to avoid overwhelming the device
      await Future.delayed(const Duration(milliseconds: 500));
    }
    
    print('✅ Channel configuration applied successfully');
    
  } catch (e) {
    print('❌ Error applying channel configuration: $e');
  }
}

/// Example 2: Create and apply custom channel configuration
Future<void> createAndApplyCustomChannels(MeshtasticClient client) async {
  print('\n=== Example 2: Custom Channel Configuration ===');
  
  // Create a custom channel set programmatically
  final customChannelSet = ChannelConfigHelper.createSimpleChannelSet(
    channelName: 'MyCustomChannel',
    psk: [0xd4, 0xf1, 0xbb, 0x3a, 0x20, 0x29, 0x07, 0x59, 
          0xf0, 0xbc, 0xff, 0xab, 0xcf, 0x4e, 0x69, 0x01], // Example PSK
    uplinkEnabled: false,
    downlinkEnabled: false,
    loraConfig: Config_LoRaConfig(
      usePreset: true,
      modemPreset: Config_LoRaConfig_ModemPreset.LONG_FAST,
      region: Config_LoRaConfig_RegionCode.US,
    ),
  );
  
  print('✅ Created custom ChannelSet:');
  print('   - Channel name: ${customChannelSet.settings.first.name}');
  print('   - PSK length: ${customChannelSet.settings.first.psk.length} bytes');
  print('   - LoRa preset: ${customChannelSet.loraConfig.modemPreset}');
  
  // Generate a shareable URL from the channel set
  final shareableUrl = ChannelConfigHelper.generateChannelUrl(customChannelSet);
  print('🔗 Shareable URL: $shareableUrl');
  
  if (!client.isConnected) {
    print('❌ Not connected to a device');
    return;
  }
  
  // Ensure we have a session key (required for admin operations)
  if (ChannelConfigHelper.sessionKey == null) {
    print('🔑 No session key available. Requesting session key first...');
    
    try {
      final sessionKeyRequest = AdminMessage(
        getConfigRequest: AdminMessage_ConfigType.SESSIONKEY_CONFIG,
      );
      
      final sessionKeyPacket = MeshPacket(
        to: 0xffffffff,
        decoded: Data(
          portnum: PortNum.ADMIN_APP,
          payload: sessionKeyRequest.writeToBuffer(),
        ),
        wantAck: true,
        priority: MeshPacket_Priority.RELIABLE,
      );
      
      await client.sendPacket(sessionKeyPacket);
      await Future.delayed(const Duration(seconds: 3));
      
      if (ChannelConfigHelper.sessionKey == null) {
        print('❌ Failed to get session key. Cannot proceed.');
        return;
      }
      
      print('✅ Session key obtained');
    } catch (e) {
      print('❌ Error getting session key: $e');
      return;
    }
  }
  
  try {
    // Apply the custom configuration (session key will be included automatically)
    final configPackets = ChannelConfigHelper.createChannelConfigPackets(
      customChannelSet,
      requestSessionKey: false, // We already have session key
    );
    
    print('📦 Applying custom configuration (${configPackets.length} packets)...');
    
    for (final packet in configPackets) {
      await client.sendPacket(packet);
      await Future.delayed(const Duration(milliseconds: 500));
    }
    
    print('✅ Custom channel configuration applied');
    
  } catch (e) {
    print('❌ Error applying custom configuration: $e');
  }
}

/// Example 3: Session key management
Future<void> demonstrateSessionKeyHandling(MeshtasticClient client) async {
  print('\n=== Example 3: Session Key Management ===');
  
  if (!client.isConnected) {
    print('❌ Not connected to a device');
    return;
  }
  
  // Check current session key status
  var sessionKey = ChannelConfigHelper.sessionKey;
  print('Current session key: ${sessionKey != null ? '${sessionKey.length} bytes' : 'None'}');
  
  try {
    // Request session key manually
    print('🔑 Requesting session key...');
    
    final sessionKeyRequest = AdminMessage(
      getConfigRequest: AdminMessage_ConfigType.SESSIONKEY_CONFIG,
    );
    
    final packet = MeshPacket(
      to: 0xffffffff, // Broadcast to get our own session key
      decoded: Data(
        portnum: PortNum.ADMIN_APP,
        payload: sessionKeyRequest.writeToBuffer(),
      ),
      wantAck: true,
      priority: MeshPacket_Priority.RELIABLE,
    );
    
    await client.sendPacket(packet);
    
    // Wait a bit for response
    await Future.delayed(const Duration(seconds: 2));
    
    // Check if we received the session key
    sessionKey = ChannelConfigHelper.sessionKey;
    if (sessionKey != null) {
      print('✅ Session key received: ${sessionKey.length} bytes');
      print('   Key preview: ${sessionKey.take(8).map((b) => b.toRadixString(16).padLeft(2, '0')).join(' ')}...');
    } else {
      print('❌ No session key received');
    }
    
    // Demonstrate session key operations
    print('\n🔧 Session key operations:');
    
    // Clear session key
    ChannelConfigHelper.clearSessionKey();
    print('   - Session key cleared');
    
    // Set a custom session key (for demonstration)
    final customKey = List.generate(32, (i) => i); // Example key
    ChannelConfigHelper.setSessionKey(customKey);
    print('   - Custom session key set: ${customKey.length} bytes');
    
    // Verify the key was set
    final verifyKey = ChannelConfigHelper.sessionKey;
    print('   - Verification: ${verifyKey != null ? 'Success' : 'Failed'}');
    
  } catch (e) {
    print('❌ Error with session key operations: $e');
  }
}

/// Helper function to demonstrate listening for admin responses
void setupAdminResponseListener(MeshtasticClient client) {
  print('\n=== Setting up admin response listener ===');
  
  client.packetStream.listen((packet) {
    if (packet.isAdmin) {
      print('📩 Received admin packet from node ${packet.from.toRadixString(16)}');
      
      try {
        final adminData = packet.adminData;
        if (adminData != null) {
          final adminMessage = AdminMessage.fromBuffer(adminData);
          
          // Let the helper process the response (including session keys)
          ChannelConfigHelper.processAdminResponse(adminMessage);
          
          // Log what we received
          if (adminMessage.hasSessionPasskey()) {
            print('   🔐 Session key updated');
          }
          if (adminMessage.hasGetChannelResponse()) {
            final channel = adminMessage.getChannelResponse;
            print('   📡 Channel response: Index ${channel.index}, Role: ${channel.role}');
          }
          if (adminMessage.hasGetConfigResponse()) {
            print('   ⚙️  Config response received');
          }
        }
      } catch (e) {
        print('   ❌ Error parsing admin message: $e');
      }
    }
  });
  
  print('✅ Admin response listener active');
}

/// Usage notes and best practices
void printUsageNotes() {
  print('\n=== Usage Notes ===');
  print('📝 Best Practices:');
  print('   1. Always request session key BEFORE configuration operations');
  print('   2. Validate ChannelSet before applying');
  print('   3. Add delays between configuration packets');
  print('   4. Listen for admin responses to handle confirmations');
  print('   5. Store session keys securely in production apps');
  print('');
  print('🔐 Session Key Requirements:');
  print('   - All admin operations (except session key requests) require authentication');
  print('   - Session keys are automatically included in admin messages when available');
  print('   - Request session key first, then perform configuration operations');
  print('   - Session keys are device-specific and session-specific');
  print('');
  print('🔒 Security Considerations:');
  print('   - Session keys provide access to encrypted channels');
  print('   - PSKs should be kept confidential');
  print('   - Validate QR code sources before applying');
  print('   - Session keys should not be stored permanently');
  print('');
  print('🚨 Error Handling:');
  print('   - Check connection status before sending packets');
  print('   - Ensure session key is available before admin operations');
  print('   - Validate channel configurations');
  print('   - Handle timeout scenarios gracefully');
}
