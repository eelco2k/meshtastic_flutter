// ignore_for_file: avoid_print

import 'dart:async';
import 'package:meshtastic_flutter/meshtastic_flutter.dart';

/// Example demonstrating how to debug position data issues
class PositionDebuggingExample {
  final MeshtasticClient client = MeshtasticClient();

  /// Connect and start monitoring position data
  Future<void> startPositionDebugging() async {
    // Listen to connection state changes
    client.connectionStream.listen((state) {
      print('Connection state: ${state.state}');

      if (state.state == MeshtasticConnectionState.connected) {
        print('Connected! Starting position monitoring...');
        _startPositionMonitoring();
      }
    });

    // Listen to incoming packets to see position updates
    client.packetStream.listen((packet) {
      if (packet.isPosition) {
        print('=== POSITION PACKET RECEIVED ===');
        print('From: ${packet.from.toRadixString(16)}');
        print('Position data: ${packet.positionData}');

        final posData = packet.positionData;
        if (posData != null) {
          print(
            'Raw latitudeI: ${posData.hasLatitudeI() ? posData.latitudeI : 'N/A'}',
          );
          print(
            'Raw longitudeI: ${posData.hasLongitudeI() ? posData.longitudeI : 'N/A'}',
          );
          print(
            'Calculated lat: ${posData.hasLatitudeI() ? posData.latitudeI / 1e7 : 'N/A'}',
          );
          print(
            'Calculated lon: ${posData.hasLongitudeI() ? posData.longitudeI / 1e7 : 'N/A'}',
          );
          print(
            'Altitude: ${posData.hasAltitude() ? posData.altitude : 'N/A'}',
          );
          print(
            'Time: ${posData.hasTime() ? DateTime.fromMillisecondsSinceEpoch(posData.time * 1000) : 'N/A'}',
          );
          print(
            'Location source: ${posData.hasLocationSource() ? posData.locationSource : 'N/A'}',
          );
          print(
            'Precision bits: ${posData.hasPrecisionBits() ? posData.precisionBits : 'N/A'}',
          );
        }
        print('==============================');
      }
    });

    // Listen to node updates
    client.nodeStream.listen((node) {
      print('=== NODE UPDATE ===');
      print('Node: ${node.displayName} (${node.num.toRadixString(16)})');
      print('Calculated coordinates:');
      print('  Latitude: ${node.latitude}');
      print('  Longitude: ${node.longitude}');
      print('  Altitude: ${node.altitude}');
      print('Raw position debug info:');
      print(
        node.positionDebugInfo.split('\n').map((line) => '  $line').join('\n'),
      );
      print('==================');
    });

    // Initialize and connect (you'll need to specify your device address)
    await client.initialize();
    // await client.connect('YOUR_DEVICE_ADDRESS_HERE');
  }

  /// Start monitoring position data periodically
  void _startPositionMonitoring() {
    // Check position data every 10 seconds
    Timer.periodic(Duration(seconds: 10), (timer) {
      if (!client.isConnected) {
        timer.cancel();
        return;
      }

      print('\n=== POSITION MONITORING CHECK ===');
      print('Connected nodes: ${client.nodes.length}');

      for (final node in client.nodes.values) {
        print('\nNode: ${node.displayName} (${node.num.toRadixString(16)})');
        print('  Has position object: ${node.position != null}');

        if (node.position != null) {
          final pos = node.position!;
          print('  Raw position data:');
          print('    hasLatitudeI: ${pos.hasLatitudeI()}');
          print('    hasLongitudeI: ${pos.hasLongitudeI()}');
          print('    latitudeI: ${pos.hasLatitudeI() ? pos.latitudeI : 'N/A'}');
          print(
            '    longitudeI: ${pos.hasLongitudeI() ? pos.longitudeI : 'N/A'}',
          );
          print('  Calculated coordinates:');
          print('    latitude: ${node.latitude}');
          print('    longitude: ${node.longitude}');
          print('    altitude: ${node.altitude}');
          print('  Additional info:');
          print('    position time: ${node.positionTime}');
          print(
            '    location source: ${pos.hasLocationSource() ? pos.locationSource : 'N/A'}',
          );
          print(
            '    precision bits: ${pos.hasPrecisionBits() ? pos.precisionBits : 'N/A'}',
          );
          print(
            '    timestamp: ${pos.hasTimestamp() ? DateTime.fromMillisecondsSinceEpoch(pos.timestamp * 1000) : 'N/A'}',
          );
        } else {
          print('  No position data available');
        }
      }

      // Use the debug method from the client
      client.debugPositionInfo();

      print('================================\n');
    });
  }

  /// Check position configuration that might affect position sharing
  void checkPositionConfiguration() {
    final config = client.config;
    if (config == null) {
      print('No configuration available yet');
      return;
    }

    print('\n=== POSITION CONFIGURATION ===');
    print('GPS Mode: ${config.gpsMode}');
    print('GPS Enabled: ${config.gpsEnabled}');
    print('Fixed Position: ${config.fixedPosition}');
    print('Position Broadcast Secs: ${config.positionBroadcastSecs}');
    print('GPS Update Interval: ${config.gpsUpdateInterval}');
    print('Position Flags: ${client.positionFlags}');
    print('==============================\n');
  }

  /// Example of how to check if position data is being filtered
  void analyzePositionIssues() {
    print('\n=== POSITION ISSUE ANALYSIS ===');

    final connectedNode = client.connectedNode;
    if (connectedNode != null) {
      print(
        'Connected node position: ${connectedNode.latitude}, ${connectedNode.longitude}',
      );
    } else {
      print('No connected node found in nodes map');
    }

    // Check if any nodes have position data
    final nodesWithPosition = client.nodes.values.where(
      (node) => node.position != null,
    );
    print(
      'Nodes with position data: ${nodesWithPosition.length}/${client.nodes.length}',
    );

    if (nodesWithPosition.isEmpty) {
      print('ISSUE: No nodes have position data!');
      print('Possible causes:');
      print('1. Position sharing is disabled in device settings');
      print('2. GPS is disabled or not working');
      print('3. Position precision is set to remove coordinates');
      print('4. Fixed position is not properly configured');
      print('5. Position packets are not being processed correctly');
    }

    // Check for nodes with zero coordinates (might indicate unset position)
    for (final node in client.nodes.values) {
      if (node.position != null) {
        final pos = node.position!;
        if (pos.hasLatitudeI() && pos.hasLongitudeI()) {
          if (pos.latitudeI == 0 && pos.longitudeI == 0) {
            print(
              'WARNING: Node ${node.displayName} has coordinates (0,0) - might be unset',
            );
          }
        }
      }
    }

    print('===============================\n');
  }
}
