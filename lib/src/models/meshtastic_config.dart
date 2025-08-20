import '../../generated/config.pb.dart';
import '../../generated/module_config.pb.dart';
import '../../generated/channel.pb.dart';

/// Wrapper for Meshtastic device configuration
class MeshtasticConfigWrapper {
  final Config config;
  final ModuleConfig moduleConfig;
  final List<Channel> channels;

  const MeshtasticConfigWrapper({
    required this.config,
    required this.moduleConfig,
    required this.channels,
  });

  /// Device configuration
  Config_DeviceConfig? get deviceConfig =>
      config.hasDevice() ? config.device : null;

  /// Position configuration
  Config_PositionConfig? get positionConfig =>
      config.hasPosition() ? config.position : null;

  /// Power configuration
  Config_PowerConfig? get powerConfig =>
      config.hasPower() ? config.power : null;

  /// Network configuration
  Config_NetworkConfig? get networkConfig =>
      config.hasNetwork() ? config.network : null;

  /// Display configuration
  Config_DisplayConfig? get displayConfig =>
      config.hasDisplay() ? config.display : null;

  /// LoRa configuration
  Config_LoRaConfig? get loraConfig => config.hasLora() ? config.lora : null;

  /// Bluetooth configuration
  Config_BluetoothConfig? get bluetoothConfig =>
      config.hasBluetooth() ? config.bluetooth : null;

  /// MQTT module configuration
  ModuleConfig_MQTTConfig? get mqttConfig =>
      moduleConfig.hasMqtt() ? moduleConfig.mqtt : null;

  /// Serial module configuration
  ModuleConfig_SerialConfig? get serialConfig =>
      moduleConfig.hasSerial() ? moduleConfig.serial : null;

  /// External notification configuration
  ModuleConfig_ExternalNotificationConfig? get externalNotificationConfig =>
      moduleConfig.hasExternalNotification()
      ? moduleConfig.externalNotification
      : null;

  /// Store and forward configuration
  ModuleConfig_StoreForwardConfig? get storeForwardConfig =>
      moduleConfig.hasStoreForward() ? moduleConfig.storeForward : null;

  /// Range test configuration
  ModuleConfig_RangeTestConfig? get rangeTestConfig =>
      moduleConfig.hasRangeTest() ? moduleConfig.rangeTest : null;

  /// Telemetry configuration
  ModuleConfig_TelemetryConfig? get telemetryConfig =>
      moduleConfig.hasTelemetry() ? moduleConfig.telemetry : null;

  /// Canned message configuration
  ModuleConfig_CannedMessageConfig? get cannedMessageConfig =>
      moduleConfig.hasCannedMessage() ? moduleConfig.cannedMessage : null;

  /// Audio configuration
  ModuleConfig_AudioConfig? get audioConfig =>
      moduleConfig.hasAudio() ? moduleConfig.audio : null;

  /// Remote hardware configuration
  ModuleConfig_RemoteHardwareConfig? get remoteHardwareConfig =>
      moduleConfig.hasRemoteHardware() ? moduleConfig.remoteHardware : null;

  /// Neighbor info configuration
  ModuleConfig_NeighborInfoConfig? get neighborInfoConfig =>
      moduleConfig.hasNeighborInfo() ? moduleConfig.neighborInfo : null;

  /// Ambient lighting configuration
  ModuleConfig_AmbientLightingConfig? get ambientLightingConfig =>
      moduleConfig.hasAmbientLighting() ? moduleConfig.ambientLighting : null;

  /// Detection sensor configuration
  ModuleConfig_DetectionSensorConfig? get detectionSensorConfig =>
      moduleConfig.hasDetectionSensor() ? moduleConfig.detectionSensor : null;

  /// Paxcounter configuration
  ModuleConfig_PaxcounterConfig? get paxcounterConfig =>
      moduleConfig.hasPaxcounter() ? moduleConfig.paxcounter : null;

  /// Primary channel (index 0)
  Channel? get primaryChannel => channels.isNotEmpty ? channels[0] : null;

  /// Secondary channels (index 1+)
  List<Channel> get secondaryChannels =>
      channels.length > 1 ? channels.sublist(1) : [];

  /// All channels that are enabled
  List<Channel> get enabledChannels => channels
      .where((ch) => ch.hasSettings() && ch.settings.name.isNotEmpty)
      .toList();

  /// Device role
  Config_DeviceConfig_Role? get deviceRole => deviceConfig?.role;

  /// Node info broadcast interval (seconds)
  int? get nodeInfoBroadcastSecs => deviceConfig?.nodeInfoBroadcastSecs;

  /// Double tap as button press
  bool get doubleTapAsButtonPress =>
      deviceConfig?.doubleTapAsButtonPress ?? false;

  /// GPS operation mode
  Config_PositionConfig_GpsMode? get gpsMode => positionConfig?.gpsMode;

  /// GPS update interval (seconds)
  int? get gpsUpdateInterval => positionConfig?.gpsUpdateInterval;

  /// Position broadcast interval (seconds)
  int? get positionBroadcastSecs => positionConfig?.positionBroadcastSecs;

  /// Whether GPS is enabled
  bool get gpsEnabled => gpsMode == Config_PositionConfig_GpsMode.ENABLED;

  /// LoRa region
  Config_LoRaConfig_RegionCode? get region => loraConfig?.region;

  /// Hop limit
  int? get hopLimit => loraConfig?.hopLimit;

  /// Transmit enabled
  bool get txEnabled => loraConfig?.txEnabled ?? true;

  /// Transmit power level
  int? get txPower => loraConfig?.txPower;

  /// Channel number
  int? get channelNum => loraConfig?.channelNum;

  /// Override duty cycle limit
  bool get overrideDutyCycle => loraConfig?.overrideDutyCycle ?? false;

  /// Whether Bluetooth is enabled
  bool get bluetoothEnabled => bluetoothConfig?.enabled ?? true;

  /// Bluetooth mode
  Config_BluetoothConfig_PairingMode? get bluetoothMode =>
      bluetoothConfig?.mode;

  /// Fixed PIN for Bluetooth pairing
  int? get fixedPin => bluetoothConfig?.fixedPin;

  // Additional Device Configuration Getters
  
  /// Button GPIO pin
  int? get buttonGpio => deviceConfig?.buttonGpio;
  
  /// Buzzer GPIO pin
  int? get buzzerGpio => deviceConfig?.buzzerGpio;
  
  /// Rebroadcast mode
  Config_DeviceConfig_RebroadcastMode? get rebroadcastMode =>
      deviceConfig?.rebroadcastMode;
  
  /// Disable triple click
  bool get disableTripleClick => deviceConfig?.disableTripleClick ?? false;
  
  /// Timezone definition
  String? get timezoneDefinition => deviceConfig?.tzdef;
  
  /// LED heartbeat disabled
  bool get ledHeartbeatDisabled => deviceConfig?.ledHeartbeatDisabled ?? false;
  
  /// Buzzer mode
  Config_DeviceConfig_BuzzerMode? get buzzerMode => deviceConfig?.buzzerMode;

  // Additional Position Configuration Getters
  
  /// Fixed position enabled
  bool get fixedPosition => positionConfig?.fixedPosition ?? false;
  
  /// GPS attempt time (seconds)
  int? get gpsAttemptTime => positionConfig?.gpsAttemptTime;

  // Additional Power Configuration Getters
  
  /// Power management enabled
  bool get powerManagementEnabled => powerConfig?.isPowerSaving ?? false;
  
  /// On battery shutdown after seconds
  int? get onBatteryShutdownAfterSecs => powerConfig?.onBatteryShutdownAfterSecs;
  
  /// ADC multiplier override
  double? get adcMultiplierOverride => powerConfig?.adcMultiplierOverride;
  
  /// Wait Bluetooth seconds
  int? get waitBluetoothSecs => powerConfig?.waitBluetoothSecs;
  
  /// Minimum wake seconds
  int? get minWakeSecs => powerConfig?.minWakeSecs;

  // Additional LoRa Configuration Getters
  
  /// Use preset
  bool get usePreset => loraConfig?.usePreset ?? false;
  
  /// Modem preset
  Config_LoRaConfig_ModemPreset? get modemPreset => loraConfig?.modemPreset;
  
  /// Bandwidth
  int? get bandwidth => loraConfig?.bandwidth;
  
  /// Spread factor
  int? get spreadFactor => loraConfig?.spreadFactor;
  
  /// Coding rate
  int? get codingRate => loraConfig?.codingRate;
  
  /// Frequency offset
  double? get frequencyOffset => loraConfig?.frequencyOffset;

  // Additional Network Configuration Getters
  
  /// WiFi enabled
  bool get wifiEnabled => networkConfig?.wifiEnabled ?? false;
  
  /// WiFi SSID
  String? get wifiSsid => networkConfig?.wifiSsid;
  
  /// WiFi PSK
  String? get wifiPsk => networkConfig?.wifiPsk;
  
  /// NTP server
  String? get ntpServer => networkConfig?.ntpServer;
  
  /// IPv4 configuration mode
  Config_NetworkConfig_IpV4Config? get ipv4Config => networkConfig?.ipv4Config;

  // Additional Display Configuration Getters
  
  /// Screen on seconds
  int? get screenOnSecs => displayConfig?.screenOnSecs;
  
  /// GPS format
  Config_DisplayConfig_GpsCoordinateFormat? get gpsFormat =>
      displayConfig?.gpsFormat;
  
  /// Auto screen carousel seconds
  int? get autoScreenCarouselSecs => displayConfig?.autoScreenCarouselSecs;
  
  /// Compass north top
  bool get compassNorthTop => displayConfig?.compassNorthTop ?? false;
  
  /// Flip screen
  bool get flipScreen => displayConfig?.flipScreen ?? false;
  
  /// Units
  Config_DisplayConfig_DisplayUnits? get displayUnits => displayConfig?.units;
  
  /// Heading bold
  bool get headingBold => displayConfig?.headingBold ?? false;
  
  /// Wake on tap or motion
  bool get wakeOnTapOrMotion => displayConfig?.wakeOnTapOrMotion ?? false;

  // Module Configuration Convenience Getters
  
  /// MQTT enabled
  bool get mqttEnabled => mqttConfig?.enabled ?? false;
  
  /// MQTT server address
  String? get mqttAddress => mqttConfig?.address;
  
  /// MQTT username
  String? get mqttUsername => mqttConfig?.username;
  
  /// MQTT encryption enabled
  bool get mqttEncryptionEnabled => mqttConfig?.encryptionEnabled ?? false;
  
  /// MQTT JSON enabled
  bool get mqttJsonEnabled => mqttConfig?.jsonEnabled ?? false;
  
  /// MQTT TLS enabled
  bool get mqttTlsEnabled => mqttConfig?.tlsEnabled ?? false;
  
  /// Serial enabled
  bool get serialEnabled => serialConfig?.enabled ?? false;
  
  /// Serial echo
  bool get serialEcho => serialConfig?.echo ?? false;
  
  /// Serial RX GPIO
  int? get serialRxd => serialConfig?.rxd;
  
  /// Serial TX GPIO
  int? get serialTxd => serialConfig?.txd;
  
  /// Serial baud rate
  ModuleConfig_SerialConfig_Serial_Baud? get serialBaud => serialConfig?.baud;
  
  /// Serial timeout
  int? get serialTimeout => serialConfig?.timeout;
  
  /// Serial mode
  ModuleConfig_SerialConfig_Serial_Mode? get serialMode => serialConfig?.mode;
  
  /// External notification enabled
  bool get externalNotificationEnabled =>
      externalNotificationConfig?.enabled ?? false;
  
  /// External notification output milliseconds
  int? get externalNotificationOutputMs =>
      externalNotificationConfig?.outputMs;
  
  /// External notification output
  int? get externalNotificationOutput => externalNotificationConfig?.output;
  
  /// External notification active
  bool get externalNotificationActive =>
      externalNotificationConfig?.active ?? false;
  
  /// External notification alert message
  bool get externalNotificationAlertMessage =>
      externalNotificationConfig?.alertMessage ?? false;
  
  /// Store and forward enabled
  bool get storeForwardEnabled => storeForwardConfig?.enabled ?? false;
  
  /// Store and forward heartbeat
  bool get storeForwardHeartbeat => storeForwardConfig?.heartbeat ?? false;
  
  /// Store and forward records
  int? get storeForwardRecords => storeForwardConfig?.records;
  
  /// Store and forward history return max
  int? get storeForwardHistoryReturnMax =>
      storeForwardConfig?.historyReturnMax;
  
  /// Store and forward history return window
  int? get storeForwardHistoryReturnWindow =>
      storeForwardConfig?.historyReturnWindow;
  
  /// Range test enabled
  bool get rangeTestEnabled => rangeTestConfig?.enabled ?? false;
  
  /// Range test sender
  int? get rangeTestSender => rangeTestConfig?.sender;
  
  /// Range test save
  bool get rangeTestSave => rangeTestConfig?.save ?? false;
  
  /// Telemetry device update interval
  int? get telemetryDeviceUpdateInterval =>
      telemetryConfig?.deviceUpdateInterval;
  
  /// Telemetry environment update interval
  int? get telemetryEnvironmentUpdateInterval =>
      telemetryConfig?.environmentUpdateInterval;
  
  /// Telemetry environment measurement enabled
  bool get telemetryEnvironmentMeasurementEnabled =>
      telemetryConfig?.environmentMeasurementEnabled ?? false;
  
  /// Telemetry environment screen enabled
  bool get telemetryEnvironmentScreenEnabled =>
      telemetryConfig?.environmentScreenEnabled ?? false;
  
  /// Telemetry environment display fahrenheit
  bool get telemetryEnvironmentDisplayFahrenheit =>
      telemetryConfig?.environmentDisplayFahrenheit ?? false;
  
  /// Remote hardware enabled
  bool get remoteHardwareEnabled => remoteHardwareConfig?.enabled ?? false;
  
  /// Remote hardware allow undefined pin access
  bool get remoteHardwareAllowUndefinedPinAccess =>
      remoteHardwareConfig?.allowUndefinedPinAccess ?? false;
  
  /// Neighbor info enabled
  bool get neighborInfoEnabled => neighborInfoConfig?.enabled ?? false;
  
  /// Neighbor info update interval
  int? get neighborInfoUpdateInterval => neighborInfoConfig?.updateInterval;
  
  /// Detection sensor enabled
  bool get detectionSensorEnabled => detectionSensorConfig?.enabled ?? false;
  
  /// Detection sensor minimum broadcast seconds
  int? get detectionSensorMinBroadcastSecs =>
      detectionSensorConfig?.minimumBroadcastSecs;
  
  /// Detection sensor state broadcast seconds
  int? get detectionSensorStateBroadcastSecs =>
      detectionSensorConfig?.stateBroadcastSecs;
  
  /// Detection sensor send bell
  bool get detectionSensorSendBell =>
      detectionSensorConfig?.sendBell ?? false;
  
  /// Detection sensor name
  String? get detectionSensorName => detectionSensorConfig?.name;
  
  /// Detection sensor monitor pin
  int? get detectionSensorMonitorPin => detectionSensorConfig?.monitorPin;
  
  /// Detection sensor use pullup
  bool get detectionSensorUsePullup =>
      detectionSensorConfig?.usePullup ?? false;
  
  /// Paxcounter enabled
  bool get paxcounterEnabled => paxcounterConfig?.enabled ?? false;

  @override
  String toString() {
    return 'MeshtasticConfigWrapper(deviceRole: $deviceRole, region: $region, '
        'channels: ${channels.length}, bluetoothEnabled: $bluetoothEnabled, '
        'gpsEnabled: $gpsEnabled, mqttEnabled: $mqttEnabled)';
  }
}
