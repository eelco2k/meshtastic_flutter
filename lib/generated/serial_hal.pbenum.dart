//
//  Generated code. Do not modify.
//  source: meshtastic/serial_hal.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SerialHalCommand_Type extends $pb.ProtobufEnum {
  static const SerialHalCommand_Type UNSET = SerialHalCommand_Type._(0, _omitEnumNames ? '' : 'UNSET');
  static const SerialHalCommand_Type PIN_MODE = SerialHalCommand_Type._(1, _omitEnumNames ? '' : 'PIN_MODE');
  static const SerialHalCommand_Type DIGITAL_WRITE = SerialHalCommand_Type._(2, _omitEnumNames ? '' : 'DIGITAL_WRITE');
  static const SerialHalCommand_Type DIGITAL_READ = SerialHalCommand_Type._(3, _omitEnumNames ? '' : 'DIGITAL_READ');
  static const SerialHalCommand_Type ATTACH_INTERRUPT = SerialHalCommand_Type._(4, _omitEnumNames ? '' : 'ATTACH_INTERRUPT');
  static const SerialHalCommand_Type DETACH_INTERRUPT = SerialHalCommand_Type._(5, _omitEnumNames ? '' : 'DETACH_INTERRUPT');
  static const SerialHalCommand_Type SPI_TRANSFER = SerialHalCommand_Type._(6, _omitEnumNames ? '' : 'SPI_TRANSFER');
  static const SerialHalCommand_Type NOOP = SerialHalCommand_Type._(7, _omitEnumNames ? '' : 'NOOP');

  static const $core.List<SerialHalCommand_Type> values = <SerialHalCommand_Type> [
    UNSET,
    PIN_MODE,
    DIGITAL_WRITE,
    DIGITAL_READ,
    ATTACH_INTERRUPT,
    DETACH_INTERRUPT,
    SPI_TRANSFER,
    NOOP,
  ];

  static final $core.Map<$core.int, SerialHalCommand_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SerialHalCommand_Type? valueOf($core.int value) => _byValue[value];

  const SerialHalCommand_Type._($core.int v, $core.String n) : super(v, n);
}

class SerialHalResponse_Result extends $pb.ProtobufEnum {
  static const SerialHalResponse_Result OK = SerialHalResponse_Result._(0, _omitEnumNames ? '' : 'OK');
  static const SerialHalResponse_Result ERROR = SerialHalResponse_Result._(1, _omitEnumNames ? '' : 'ERROR');
  static const SerialHalResponse_Result BAD_REQUEST = SerialHalResponse_Result._(2, _omitEnumNames ? '' : 'BAD_REQUEST');
  static const SerialHalResponse_Result UNSUPPORTED = SerialHalResponse_Result._(3, _omitEnumNames ? '' : 'UNSUPPORTED');

  static const $core.List<SerialHalResponse_Result> values = <SerialHalResponse_Result> [
    OK,
    ERROR,
    BAD_REQUEST,
    UNSUPPORTED,
  ];

  static final $core.Map<$core.int, SerialHalResponse_Result> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SerialHalResponse_Result? valueOf($core.int value) => _byValue[value];

  const SerialHalResponse_Result._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
