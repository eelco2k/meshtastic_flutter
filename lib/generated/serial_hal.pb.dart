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

import 'serial_hal.pbenum.dart';

export 'serial_hal.pbenum.dart';

class SerialHalCommand extends $pb.GeneratedMessage {
  factory SerialHalCommand({
    $core.int? transactionId,
    SerialHalCommand_Type? type,
    $core.int? pin,
    $core.int? value,
    $core.int? mode,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    if (type != null) {
      $result.type = type;
    }
    if (pin != null) {
      $result.pin = pin;
    }
    if (value != null) {
      $result.value = value;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  SerialHalCommand._() : super();
  factory SerialHalCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerialHalCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SerialHalCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'transactionId', $pb.PbFieldType.OU3)
    ..e<SerialHalCommand_Type>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SerialHalCommand_Type.UNSET, valueOf: SerialHalCommand_Type.valueOf, enumValues: SerialHalCommand_Type.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pin', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerialHalCommand clone() => SerialHalCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerialHalCommand copyWith(void Function(SerialHalCommand) updates) => super.copyWith((message) => updates(message as SerialHalCommand)) as SerialHalCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SerialHalCommand create() => SerialHalCommand._();
  SerialHalCommand createEmptyInstance() => create();
  static $pb.PbList<SerialHalCommand> createRepeated() => $pb.PbList<SerialHalCommand>();
  @$core.pragma('dart2js:noInline')
  static SerialHalCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerialHalCommand>(create);
  static SerialHalCommand? _defaultInstance;

  /// Host-assigned request id. Replies echo this id back in
  /// SerialHalResponse.transaction_id.
  @$pb.TagNumber(1)
  $core.int get transactionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(2)
  SerialHalCommand_Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(SerialHalCommand_Type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pin => $_getIZ(2);
  @$pb.TagNumber(3)
  set pin($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPin() => $_has(2);
  @$pb.TagNumber(3)
  void clearPin() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get value => $_getIZ(3);
  @$pb.TagNumber(4)
  set value($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get mode => $_getIZ(4);
  @$pb.TagNumber(5)
  set mode($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearMode() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get data => $_getN(5);
  @$pb.TagNumber(6)
  set data($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(6)
  void clearData() => clearField(6);
}

class SerialHalResponse extends $pb.GeneratedMessage {
  factory SerialHalResponse({
    $core.int? transactionId,
    SerialHalResponse_Result? result,
    $core.int? value,
    $core.List<$core.int>? data,
    $core.String? error,
  }) {
    final $result = create();
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    if (result != null) {
      $result.result = result;
    }
    if (value != null) {
      $result.value = value;
    }
    if (data != null) {
      $result.data = data;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  SerialHalResponse._() : super();
  factory SerialHalResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerialHalResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SerialHalResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'transactionId', $pb.PbFieldType.OU3)
    ..e<SerialHalResponse_Result>(2, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: SerialHalResponse_Result.OK, valueOf: SerialHalResponse_Result.valueOf, enumValues: SerialHalResponse_Result.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOS(5, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerialHalResponse clone() => SerialHalResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerialHalResponse copyWith(void Function(SerialHalResponse) updates) => super.copyWith((message) => updates(message as SerialHalResponse)) as SerialHalResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SerialHalResponse create() => SerialHalResponse._();
  SerialHalResponse createEmptyInstance() => create();
  static $pb.PbList<SerialHalResponse> createRepeated() => $pb.PbList<SerialHalResponse>();
  @$core.pragma('dart2js:noInline')
  static SerialHalResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerialHalResponse>(create);
  static SerialHalResponse? _defaultInstance;

  ///  Matches the originating SerialHalCommand.transaction_id for normal
  ///  request/response traffic.
  ///
  ///  A value of 0 indicates an unsolicited interrupt notification generated by
  ///  the device. In that case, the host should interpret value as the GPIO pin
  ///  that triggered.
  @$pb.TagNumber(1)
  $core.int get transactionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);

  @$pb.TagNumber(2)
  SerialHalResponse_Result get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(SerialHalResponse_Result v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);

  /// Used by DIGITAL_READ replies and interrupt notifications. For interrupt
  /// notifications (transaction_id == 0), this carries the pin number.
  @$pb.TagNumber(3)
  $core.int get value => $_getIZ(2);
  @$pb.TagNumber(3)
  set value($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get error => $_getSZ(4);
  @$pb.TagNumber(5)
  set error($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasError() => $_has(4);
  @$pb.TagNumber(5)
  void clearError() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
