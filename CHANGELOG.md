## 0.1.1

* **MAJOR FIX**: Fixed position data not being updated from position packets
* Added proper handling of `POSITION_APP` packets to update node position information
* Added `positionData` getter to `MeshPacketWrapper` to extract position from position packets
* Added `_handlePositionUpdate` method to process position updates and update node information
* Added `debugPositionInfo()` method to help debug position data issues
* Added comprehensive position debugging example (`position_debugging_example.dart`)
* Enhanced position logging and debugging capabilities
* Fixed nodes not showing coordinates when using fixed position settings
* Improved position packet processing for better real-time location updates

## 0.1.0

* **MAJOR ENHANCEMENT**: Added comprehensive convenience getters throughout all wrapper classes
* **Breaking Change**: Connected node is now automatically added to the nodes map
* Added 25+ convenience getters to `MeshtasticClient` for easy access to critical device information:
  - Device info: `connectedDeviceName`, `firmwareVersion`, `connectedNodeBatteryLevel`
  - Hardware: `connectedNodeHardwareModel`, `connectedNodeRole`, `deviceIdHex`
  - Network status: `nodeCount`, `channelCount`, `primaryChannelName`, `rebootCount`
  - Capabilities: `hasWifi`, `hasBluetooth`, `hasEthernet`, `canShutdown`
* Added 50+ configuration convenience getters to `MeshtasticConfigWrapper`:
  - Device config: `buttonGpio`, `buzzerGpio`, `timezoneDefinition`, `ledHeartbeatDisabled`
  - Position config: `fixedPosition`, `gpsAttemptTime`
  - Power config: `powerManagementEnabled`, `onBatteryShutdownAfterSecs`, `minWakeSecs`
  - LoRa config: `usePreset`, `modemPreset`, `bandwidth`, `spreadFactor`, `frequencyOffset`
  - Network config: `wifiEnabled`, `wifiSsid`, `ntpServer`
  - Display config: `screenOnSecs`, `gpsFormat`, `compassNorthTop`, `flipScreen`
  - Module configs: MQTT, Serial, Telemetry, Store & Forward, Range Test, Detection Sensor, etc.
* Enhanced `NodeInfoWrapper` with 20+ additional getters:
  - Extended metrics: `uptimeSeconds`, `userId`, `macAddress` (formatted hex), `publicKey`
  - Position details: `positionTime`, `gpsAccuracy`, `groundSpeed`, `satsInView`, `fixQuality`
  - Network info: `isViaMqtt`, `hopsAway`, `isFavorite`, `isIgnored`, `isKeyManuallyVerified`
* Enhanced `MeshPacketWrapper` with detailed packet inspection:
  - Security: `hasPublicKey`, `isPkiEncrypted`, `transportMechanism`
  - Routing: `isViaMqtt`, `hopStart`, `nextHop`, `relayNode`, `txAfter`
  - Payload: `requestId`, `replyId`, `emoji`
* Added full DeviceMetadata support with automatic processing and convenience getters
* Improved configuration logging with DeviceMetadata status
* Enhanced toString methods for better debugging
* Added comprehensive example demonstrating all new convenience APIs
* All enhancements maintain backward compatibility and type safety

## 0.0.3

* Replace deprecated Code

## 0.0.2

* Upgraded dependency versions

## 0.0.1

* Initial release
* Complete Meshtastic BLE protocol implementation
* Support for device discovery, connection, and communication
* Real-time packet and node information streaming
* Text messaging and position sharing
* Configuration access and node management
* Comprehensive error handling and type safety
* Cross-platform support (Android/iOS)




