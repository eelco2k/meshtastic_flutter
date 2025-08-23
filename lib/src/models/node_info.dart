// ignore_for_file: deprecated_member_use_from_same_package

import 'dart:math' as math;
import '../../generated/mesh.pb.dart';
import '../../generated/config.pb.dart';
import '../../generated/telemetry.pb.dart';

/// Enhanced wrapper for NodeInfo with convenience methods
class NodeInfoWrapper {
  final NodeInfo nodeInfo;

  const NodeInfoWrapper(this.nodeInfo);

  /// The original NodeInfo
  NodeInfo get original => nodeInfo;

  /// Node ID
  int get num => nodeInfo.num;

  /// User information
  User? get user => nodeInfo.hasUser() ? nodeInfo.user : null;

  /// Position information
  Position? get position => nodeInfo.hasPosition() ? nodeInfo.position : null;

  /// Signal metrics
  DeviceMetrics? get deviceMetrics {
    if (!nodeInfo.hasDeviceMetrics()) return null;
    final telemetry = nodeInfo.deviceMetrics;
    // telemetry is already a DeviceMetrics object
    return telemetry;
  }

  /// Channel utilization
  int get channel => nodeInfo.channel;

  /// Whether the node is online/reachable
  bool get isOnline =>
      nodeInfo.hasLastHeard() &&
      (DateTime.now().millisecondsSinceEpoch - (nodeInfo.lastHeard * 1000)) <
          (15 * 60 * 1000); // 15 minutes

  /// Last heard timestamp
  DateTime? get lastHeard => nodeInfo.hasLastHeard()
      ? DateTime.fromMillisecondsSinceEpoch(nodeInfo.lastHeard * 1000)
      : null;

  /// SNR (Signal to Noise Ratio)
  double get snr => nodeInfo.snr;

  /// User's long name
  String? get longName => user?.longName;

  /// User's short name
  String? get shortName => user?.shortName;

  /// Hardware model
  HardwareModel? get hwModel => user?.hwModel;

  /// Whether this node is licensed amateur radio
  bool get isLicensed => user?.isLicensed ?? false;

  /// Role of this node
  Config_DeviceConfig_Role? get role => user?.role;

  /// Current latitude (if position available)
  double? get latitude {
    if (position == null || !position!.hasLatitudeI()) return null;
    return position!.latitudeI / 1e7;
  }

  /// Current longitude (if position available)
  double? get longitude {
    if (position == null || !position!.hasLongitudeI()) return null;
    return position!.longitudeI / 1e7;
  }

  /// Current altitude (if position available)
  int? get altitude =>
      position?.hasAltitude() == true ? position!.altitude : null;

  /// Debug information about position data
  String get positionDebugInfo {
    if (position == null) {
      return 'Position object: null';
    }

    final pos = position!;
    final info = StringBuffer();
    info.writeln('Position object: exists');
    info.writeln('  hasLatitudeI: ${pos.hasLatitudeI()}');
    info.writeln('  hasLongitudeI: ${pos.hasLongitudeI()}');

    if (pos.hasLatitudeI()) {
      info.writeln('  latitudeI: ${pos.latitudeI}');
      info.writeln('  calculated latitude: ${pos.latitudeI / 1e7}');
    }

    if (pos.hasLongitudeI()) {
      info.writeln('  longitudeI: ${pos.longitudeI}');
      info.writeln('  calculated longitude: ${pos.longitudeI / 1e7}');
    }

    info.writeln('  hasAltitude: ${pos.hasAltitude()}');
    if (pos.hasAltitude()) {
      info.writeln('  altitude: ${pos.altitude}');
    }

    info.writeln('  hasTime: ${pos.hasTime()}');
    if (pos.hasTime()) {
      info.writeln(
        '  time: ${pos.time} (${DateTime.fromMillisecondsSinceEpoch(pos.time * 1000)})',
      );
    }

    info.writeln('  hasLocationSource: ${pos.hasLocationSource()}');
    if (pos.hasLocationSource()) {
      info.writeln('  locationSource: ${pos.locationSource}');
    }

    info.writeln('  hasPrecisionBits: ${pos.hasPrecisionBits()}');
    if (pos.hasPrecisionBits()) {
      info.writeln('  precisionBits: ${pos.precisionBits}');
    }

    return info.toString().trimRight();
  }

  /// Battery level percentage (if device metrics available)
  int? get batteryLevel => deviceMetrics?.hasBatteryLevel() == true
      ? deviceMetrics!.batteryLevel
      : null;

  /// Voltage (if device metrics available)
  double? get voltage =>
      deviceMetrics?.hasVoltage() == true ? deviceMetrics!.voltage : null;

  /// Channel utilization percentage
  double? get channelUtilization =>
      deviceMetrics?.hasChannelUtilization() == true
      ? deviceMetrics!.channelUtilization
      : null;

  /// Air utilization percentage
  double? get airUtilTx =>
      deviceMetrics?.hasAirUtilTx() == true ? deviceMetrics!.airUtilTx : null;

  /// Uptime seconds
  int? get uptimeSeconds => deviceMetrics?.hasUptimeSeconds() == true
      ? deviceMetrics!.uptimeSeconds
      : null;

  /// User's ID
  String? get userId => user?.id;

  /// User's MAC address as hex string
  String? get macAddress {
    if (user?.hasMacaddr() != true) return null;
    final bytes = user!.macaddr;
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join(':');
  }

  /// User's public key
  List<int>? get publicKey =>
      user?.hasPublicKey() == true ? user!.publicKey : null;

  /// Whether node is via MQTT
  bool get isViaMqtt => nodeInfo.viaMqtt;

  /// Number of hops away
  int get hopsAway => nodeInfo.hopsAway;

  /// Whether node is favorited
  bool get isFavorite => nodeInfo.isFavorite;

  /// Whether node is ignored
  bool get isIgnored => nodeInfo.isIgnored;

  /// Whether the key is manually verified
  bool get isKeyManuallyVerified => nodeInfo.isKeyManuallyVerified;

  /// Position precision bits
  int? get positionPrecisionBits =>
      position?.hasPrecisionBits() == true ? position!.precisionBits : null;

  /// Position timestamp
  DateTime? get positionTime => position?.hasTime() == true
      ? DateTime.fromMillisecondsSinceEpoch(position!.time * 1000)
      : null;

  /// Altitude above HAE (Height Above Ellipsoid)
  int? get altitudeHae =>
      position?.hasAltitudeHae() == true ? position!.altitudeHae : null;

  /// GPS accuracy
  int? get gpsAccuracy =>
      position?.hasGpsAccuracy() == true ? position!.gpsAccuracy : null;

  /// Ground speed
  int? get groundSpeed =>
      position?.hasGroundSpeed() == true ? position!.groundSpeed : null;

  /// Ground track
  int? get groundTrack =>
      position?.hasGroundTrack() == true ? position!.groundTrack : null;

  /// Fix quality
  int? get fixQuality =>
      position?.hasFixQuality() == true ? position!.fixQuality : null;

  /// Fix type
  int? get fixType => position?.hasFixType() == true ? position!.fixType : null;

  /// Satellites in view
  int? get satsInView =>
      position?.hasSatsInView() == true ? position!.satsInView : null;

  /// Sensor ID
  int? get sensorId =>
      position?.hasSensorId() == true ? position!.sensorId : null;

  /// Next update time
  int? get nextUpdate =>
      position?.hasNextUpdate() == true ? position!.nextUpdate : null;

  /// Sequence number
  int? get sequenceNumber =>
      position?.hasSeqNumber() == true ? position!.seqNumber : null;

  /// Distance from our position (requires both nodes to have position)
  double? distanceFrom(NodeInfoWrapper otherNode) {
    if (latitude == null ||
        longitude == null ||
        otherNode.latitude == null ||
        otherNode.longitude == null) {
      return null;
    }

    return _calculateDistance(
      latitude!,
      longitude!,
      otherNode.latitude!,
      otherNode.longitude!,
    );
  }

  /// Calculate distance between two points using Haversine formula
  static double _calculateDistance(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    const double earthRadius = 6371000; // Earth radius in meters

    double dLat = _degreesToRadians(lat2 - lat1);
    double dLon = _degreesToRadians(lon2 - lon1);

    double a =
        math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_degreesToRadians(lat1)) *
            math.cos(_degreesToRadians(lat2)) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);

    double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return earthRadius * c;
  }

  static double _degreesToRadians(double degrees) {
    return degrees * (math.pi / 180);
  }

  /// Get a display name for this node (prioritizes long name, falls back to short name, then node ID)
  String get displayName {
    if (longName?.isNotEmpty == true) return longName!;
    if (shortName?.isNotEmpty == true) return shortName!;
    return 'Node ${num.toRadixString(16).toUpperCase()}';
  }

  /// Get a brief status description
  String get statusDescription {
    final parts = <String>[];

    if (batteryLevel != null) {
      parts.add('Battery: $batteryLevel%');
    }

    if (channelUtilization != null) {
      parts.add('Channel: ${channelUtilization!.toStringAsFixed(1)}%');
    }

    if (lastHeard != null) {
      final ago = DateTime.now().difference(lastHeard!);
      if (ago.inMinutes < 60) {
        parts.add('${ago.inMinutes}m ago');
      } else if (ago.inHours < 24) {
        parts.add('${ago.inHours}h ago');
      } else {
        parts.add('${ago.inDays}d ago');
      }
    }

    return parts.join(' • ');
  }

  @override
  String toString() {
    return 'NodeInfoWrapper(num: ${num.toRadixString(16)}, displayName: $displayName, '
        'isOnline: $isOnline, lastHeard: $lastHeard)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NodeInfoWrapper && other.nodeInfo == nodeInfo;
  }

  @override
  int get hashCode => nodeInfo.hashCode;
}
