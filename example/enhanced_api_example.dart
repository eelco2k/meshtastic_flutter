import 'package:flutter/material.dart';
import 'package:meshtastic_flutter/meshtastic_flutter.dart';

/// Example demonstrating the enhanced convenience APIs
class EnhancedApiExample extends StatefulWidget {
  const EnhancedApiExample({Key? key}) : super(key: key);

  @override
  State<EnhancedApiExample> createState() => _EnhancedApiExampleState();
}

class _EnhancedApiExampleState extends State<EnhancedApiExample> {
  final MeshtasticClient _client = MeshtasticClient();

  @override
  void initState() {
    super.initState();
    _setupListeners();
  }

  void _setupListeners() {
    // Listen to connection state changes
    _client.connectionStream.listen((state) {
      print('Connection state changed: $state');
      
      if (state == MeshtasticConnectionState.connected) {
        _displayDeviceInfo();
      }
    });

    // Listen to new nodes
    _client.nodeStream.listen((node) {
      _displayNodeInfo(node);
    });

    // Listen to packets
    _client.packetStream.listen((packet) {
      _displayPacketInfo(packet);
    });
  }

  void _displayDeviceInfo() {
    print('\n=== CONNECTED DEVICE INFO ===');
    print('Device Name: ${_client.connectedDeviceName}');
    print('Device ID: ${_client.connectedDeviceId}');
    print('Firmware Version: ${_client.firmwareVersion}');
    print('Hardware Model: ${_client.connectedNodeHardwareModel}');
    print('Long Name: ${_client.connectedNodeLongName}');
    print('Short Name: ${_client.connectedNodeShortName}');
    print('Role: ${_client.connectedNodeRole}');
    print('Battery Level: ${_client.connectedNodeBatteryLevel}%');
    print('Node Count: ${_client.nodeCount}');
    print('Channel Count: ${_client.channelCount}');
    print('Primary Channel: ${_client.primaryChannelName}');
    print('Reboot Count: ${_client.rebootCount}');
    print('Device ID Hex: ${_client.deviceIdHex}');
    print('Can Shutdown: ${_client.canShutdown}');
    print('Has WiFi: ${_client.hasWifi}');
    print('Has Bluetooth: ${_client.hasBluetooth}');
    print('Has Ethernet: ${_client.hasEthernet}');

    // Display configuration details
    final config = _client.config;
    if (config != null) {
      print('\n=== CONFIGURATION INFO ===');
      print('Device Role: ${config.deviceRole}');
      print('LoRa Region: ${config.region}');
      print('GPS Enabled: ${config.gpsEnabled}');
      print('Bluetooth Enabled: ${config.bluetoothEnabled}');
      print('MQTT Enabled: ${config.mqttEnabled}');
      print('TX Power: ${config.txPower}');
      print('Hop Limit: ${config.hopLimit}');
      print('Screen On Seconds: ${config.screenOnSecs}');
      print('Node Info Broadcast Secs: ${config.nodeInfoBroadcastSecs}');
      print('Position Broadcast Secs: ${config.positionBroadcastSecs}');
      print('Serial Enabled: ${config.serialEnabled}');
      print('Store Forward Enabled: ${config.storeForwardEnabled}');
      print('Range Test Enabled: ${config.rangeTestEnabled}');
      print('Detection Sensor Enabled: ${config.detectionSensorEnabled}');
    }
  }

  void _displayNodeInfo(NodeInfoWrapper node) {
    print('\n=== NODE INFO ===');
    print('Display Name: ${node.displayName}');
    print('Node ID: ${node.num.toRadixString(16)}');
    print('Battery Level: ${node.batteryLevel}%');
    print('Last Heard: ${node.lastHeard}');
    print('Online: ${node.isOnline}');
    print('SNR: ${node.snr}');
    print('Via MQTT: ${node.isViaMqtt}');
    print('Hops Away: ${node.hopsAway}');
    print('Is Favorite: ${node.isFavorite}');
    print('Hardware Model: ${node.hwModel}');
    print('Role: ${node.role}');
    print('MAC Address: ${node.macAddress}');
    print('User ID: ${node.userId}');
    print('Uptime: ${node.uptimeSeconds} seconds');
    
    if (node.latitude != null && node.longitude != null) {
      print('Position: ${node.latitude}, ${node.longitude}');
      print('Altitude: ${node.altitude}m');
      print('Position Time: ${node.positionTime}');
      print('GPS Accuracy: ${node.gpsAccuracy}m');
      print('Ground Speed: ${node.groundSpeed}');
      print('Satellites: ${node.satsInView}');
    }
    
    print('Voltage: ${node.voltage}V');
    print('Channel Utilization: ${node.channelUtilization}%');
    print('Air Util TX: ${node.airUtilTx}%');
  }

  void _displayPacketInfo(MeshPacketWrapper packet) {
    print('\n=== PACKET INFO ===');
    print('From: ${packet.from.toRadixString(16)}');
    print('To: ${packet.to.toRadixString(16)}');
    print('Type: ${packet.packetTypeDescription}');
    print('Channel: ${packet.channel}');
    print('Priority: ${packet.priority}');
    print('Wants ACK: ${packet.wantAck}');
    print('Via MQTT: ${packet.isViaMqtt}');
    print('Hop Limit: ${packet.hopLimit}');
    print('Hop Start: ${packet.hopStart}');
    print('RSSI: ${packet.rxRssi}');
    print('SNR: ${packet.rxSnr}');
    print('Is Broadcast: ${packet.isBroadcast}');
    print('Is Encrypted: ${packet.isEncrypted}');
    print('Is PKI Encrypted: ${packet.isPkiEncrypted}');
    print('Transport Mechanism: ${packet.transportMechanism}');
    
    if (packet.isTextMessage) {
      print('Text Message: ${packet.textMessage}');
    }
    
    if (packet.hasPublicKey) {
      print('Has Public Key: ${packet.publicKey?.length} bytes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enhanced Meshtastic API Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  await _client.initialize();
                  print('Client initialized successfully');
                } catch (e) {
                  print('Failed to initialize client: $e');
                }
              },
              child: const Text('Initialize Client'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _client.scanForDevices().listen((device) {
                  print('Found device: ${device.platformName}');
                });
              },
              child: const Text('Scan for Devices'),
            ),
            const SizedBox(height: 16),
            StreamBuilder<ConnectionStatus>(
              stream: _client.connectionStream,
              builder: (context, snapshot) {
                final state = snapshot.data ?? MeshtasticConnectionState.disconnected;
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Connection State: $state'),
                        if (_client.isConnected) ...[
                          Text('Device: ${_client.connectedDeviceName}'),
                          Text('Firmware: ${_client.firmwareVersion ?? "Unknown"}'),
                          Text('Battery: ${_client.connectedNodeBatteryLevel ?? "Unknown"}%'),
                          Text('Nodes: ${_client.nodeCount}'),
                          Text('Channels: ${_client.channelCount}'),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Cleanup if needed
    super.dispose();
  }
}
