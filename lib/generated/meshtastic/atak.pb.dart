//
//  Generated code. Do not modify.
//  source: meshtastic/atak.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'atak.pbenum.dart';

export 'atak.pbenum.dart';

enum TAKPacket_PayloadVariant {
  pli, 
  chat, 
  detail, 
  notSet
}

///
///  Packets for the official ATAK Plugin
class TAKPacket extends $pb.GeneratedMessage {
  factory TAKPacket({
    $core.bool? isCompressed,
    Contact? contact,
    Group? group,
    Status? status,
    PLI? pli,
    GeoChat? chat,
    $core.List<$core.int>? detail,
  }) {
    final $result = create();
    if (isCompressed != null) {
      $result.isCompressed = isCompressed;
    }
    if (contact != null) {
      $result.contact = contact;
    }
    if (group != null) {
      $result.group = group;
    }
    if (status != null) {
      $result.status = status;
    }
    if (pli != null) {
      $result.pli = pli;
    }
    if (chat != null) {
      $result.chat = chat;
    }
    if (detail != null) {
      $result.detail = detail;
    }
    return $result;
  }
  TAKPacket._() : super();
  factory TAKPacket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TAKPacket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TAKPacket_PayloadVariant> _TAKPacket_PayloadVariantByTag = {
    5 : TAKPacket_PayloadVariant.pli,
    6 : TAKPacket_PayloadVariant.chat,
    7 : TAKPacket_PayloadVariant.detail,
    0 : TAKPacket_PayloadVariant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TAKPacket', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..oo(0, [5, 6, 7])
    ..aOB(1, _omitFieldNames ? '' : 'isCompressed')
    ..aOM<Contact>(2, _omitFieldNames ? '' : 'contact', subBuilder: Contact.create)
    ..aOM<Group>(3, _omitFieldNames ? '' : 'group', subBuilder: Group.create)
    ..aOM<Status>(4, _omitFieldNames ? '' : 'status', subBuilder: Status.create)
    ..aOM<PLI>(5, _omitFieldNames ? '' : 'pli', subBuilder: PLI.create)
    ..aOM<GeoChat>(6, _omitFieldNames ? '' : 'chat', subBuilder: GeoChat.create)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'detail', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TAKPacket clone() => TAKPacket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TAKPacket copyWith(void Function(TAKPacket) updates) => super.copyWith((message) => updates(message as TAKPacket)) as TAKPacket;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TAKPacket create() => TAKPacket._();
  TAKPacket createEmptyInstance() => create();
  static $pb.PbList<TAKPacket> createRepeated() => $pb.PbList<TAKPacket>();
  @$core.pragma('dart2js:noInline')
  static TAKPacket getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TAKPacket>(create);
  static TAKPacket? _defaultInstance;

  TAKPacket_PayloadVariant whichPayloadVariant() => _TAKPacket_PayloadVariantByTag[$_whichOneof(0)]!;
  void clearPayloadVariant() => clearField($_whichOneof(0));

  ///
  ///  Are the payloads strings compressed for LoRA transport?
  @$pb.TagNumber(1)
  $core.bool get isCompressed => $_getBF(0);
  @$pb.TagNumber(1)
  set isCompressed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsCompressed() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsCompressed() => clearField(1);

  ///
  ///  The contact / callsign for ATAK user
  @$pb.TagNumber(2)
  Contact get contact => $_getN(1);
  @$pb.TagNumber(2)
  set contact(Contact v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContact() => $_has(1);
  @$pb.TagNumber(2)
  void clearContact() => clearField(2);
  @$pb.TagNumber(2)
  Contact ensureContact() => $_ensure(1);

  ///
  ///  The group for ATAK user
  @$pb.TagNumber(3)
  Group get group => $_getN(2);
  @$pb.TagNumber(3)
  set group(Group v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroup() => clearField(3);
  @$pb.TagNumber(3)
  Group ensureGroup() => $_ensure(2);

  ///
  ///  The status of the ATAK EUD
  @$pb.TagNumber(4)
  Status get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(Status v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
  @$pb.TagNumber(4)
  Status ensureStatus() => $_ensure(3);

  ///
  ///  TAK position report
  @$pb.TagNumber(5)
  PLI get pli => $_getN(4);
  @$pb.TagNumber(5)
  set pli(PLI v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPli() => $_has(4);
  @$pb.TagNumber(5)
  void clearPli() => clearField(5);
  @$pb.TagNumber(5)
  PLI ensurePli() => $_ensure(4);

  ///
  ///  ATAK GeoChat message
  @$pb.TagNumber(6)
  GeoChat get chat => $_getN(5);
  @$pb.TagNumber(6)
  set chat(GeoChat v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasChat() => $_has(5);
  @$pb.TagNumber(6)
  void clearChat() => clearField(6);
  @$pb.TagNumber(6)
  GeoChat ensureChat() => $_ensure(5);

  ///
  ///  Generic CoT detail XML
  ///  May be compressed / truncated by the sender (EUD)
  @$pb.TagNumber(7)
  $core.List<$core.int> get detail => $_getN(6);
  @$pb.TagNumber(7)
  set detail($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDetail() => $_has(6);
  @$pb.TagNumber(7)
  void clearDetail() => clearField(7);
}

///
///  ATAK GeoChat message
class GeoChat extends $pb.GeneratedMessage {
  factory GeoChat({
    $core.String? message,
    $core.String? to,
    $core.String? toCallsign,
    $core.String? receiptForUid,
    GeoChat_ReceiptType? receiptType,
    $core.String? lang,
    $core.String? roomId,
    $core.String? voiceProfileId,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (to != null) {
      $result.to = to;
    }
    if (toCallsign != null) {
      $result.toCallsign = toCallsign;
    }
    if (receiptForUid != null) {
      $result.receiptForUid = receiptForUid;
    }
    if (receiptType != null) {
      $result.receiptType = receiptType;
    }
    if (lang != null) {
      $result.lang = lang;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (voiceProfileId != null) {
      $result.voiceProfileId = voiceProfileId;
    }
    return $result;
  }
  GeoChat._() : super();
  factory GeoChat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GeoChat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GeoChat', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOS(2, _omitFieldNames ? '' : 'to')
    ..aOS(3, _omitFieldNames ? '' : 'toCallsign')
    ..aOS(4, _omitFieldNames ? '' : 'receiptForUid')
    ..e<GeoChat_ReceiptType>(5, _omitFieldNames ? '' : 'receiptType', $pb.PbFieldType.OE, defaultOrMaker: GeoChat_ReceiptType.ReceiptType_None, valueOf: GeoChat_ReceiptType.valueOf, enumValues: GeoChat_ReceiptType.values)
    ..aOS(6, _omitFieldNames ? '' : 'lang')
    ..aOS(7, _omitFieldNames ? '' : 'roomId')
    ..aOS(8, _omitFieldNames ? '' : 'voiceProfileId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GeoChat clone() => GeoChat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GeoChat copyWith(void Function(GeoChat) updates) => super.copyWith((message) => updates(message as GeoChat)) as GeoChat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeoChat create() => GeoChat._();
  GeoChat createEmptyInstance() => create();
  static $pb.PbList<GeoChat> createRepeated() => $pb.PbList<GeoChat>();
  @$core.pragma('dart2js:noInline')
  static GeoChat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GeoChat>(create);
  static GeoChat? _defaultInstance;

  ///
  ///  The text message. Empty for receipts.
  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  ///
  ///  Uid recipient of the message
  @$pb.TagNumber(2)
  $core.String get to => $_getSZ(1);
  @$pb.TagNumber(2)
  set to($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  ///
  ///  Callsign of the recipient for the message
  @$pb.TagNumber(3)
  $core.String get toCallsign => $_getSZ(2);
  @$pb.TagNumber(3)
  set toCallsign($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToCallsign() => $_has(2);
  @$pb.TagNumber(3)
  void clearToCallsign() => clearField(3);

  ///
  ///  UID of the chat message this event is acknowledging. Empty for a
  ///  normal chat message; set for delivered / read receipts. Paired with
  ///  receipt_type so receivers can match the ack back to the original
  ///  outbound GeoChat by its event uid.
  @$pb.TagNumber(4)
  $core.String get receiptForUid => $_getSZ(3);
  @$pb.TagNumber(4)
  set receiptForUid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReceiptForUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearReceiptForUid() => clearField(4);

  ///
  ///  Receipt kind discriminator. See ReceiptType doc. Default ReceiptType_None
  ///  means this is a regular chat message, not a receipt.
  @$pb.TagNumber(5)
  GeoChat_ReceiptType get receiptType => $_getN(4);
  @$pb.TagNumber(5)
  set receiptType(GeoChat_ReceiptType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasReceiptType() => $_has(4);
  @$pb.TagNumber(5)
  void clearReceiptType() => clearField(5);

  ///
  ///  BCP-47-ish language tag or human-readable name (e.g. "en", "English")
  ///  that the originator's TAKTALK plugin recorded for the message.
  @$pb.TagNumber(6)
  $core.String get lang => $_getSZ(5);
  @$pb.TagNumber(6)
  set lang($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLang() => $_has(5);
  @$pb.TagNumber(6)
  void clearLang() => clearField(6);

  ///
  ///  TAKTALK chatroom UUID (e.g. "30b2755c-c547-44ef-a0cc-cdbd8a15616f") that
  ///  the receiver's TAKTALK plugin uses to thread the message under the
  ///  right room. Resolved to a friendly name via TakTalkRoomData broadcasts.
  @$pb.TagNumber(7)
  $core.String get roomId => $_getSZ(6);
  @$pb.TagNumber(7)
  set roomId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRoomId() => $_has(6);
  @$pb.TagNumber(7)
  void clearRoomId() => clearField(7);

  ///
  ///  TAKTALK voice profile pointer. Often empty in practice (the empty
  ///  marker `<voice_profile_id/>` still signals TAKTALK origination), so
  ///  receivers should treat empty-but-present as the equivalent of the
  ///  marker rather than a missing field.
  @$pb.TagNumber(8)
  $core.String get voiceProfileId => $_getSZ(7);
  @$pb.TagNumber(8)
  set voiceProfileId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVoiceProfileId() => $_has(7);
  @$pb.TagNumber(8)
  void clearVoiceProfileId() => clearField(8);
}

///
///  ATAK Group
///  <__group role='Team Member' name='Cyan'/>
class Group extends $pb.GeneratedMessage {
  factory Group({
    MemberRole? role,
    Team? team,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    if (team != null) {
      $result.team = team;
    }
    return $result;
  }
  Group._() : super();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Group', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..e<MemberRole>(1, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: MemberRole.Unspecifed, valueOf: MemberRole.valueOf, enumValues: MemberRole.values)
    ..e<Team>(2, _omitFieldNames ? '' : 'team', $pb.PbFieldType.OE, defaultOrMaker: Team.Unspecifed_Color, valueOf: Team.valueOf, enumValues: Team.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Group clone() => Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group)) as Group;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group? _defaultInstance;

  ///
  ///  Role of the group member
  @$pb.TagNumber(1)
  MemberRole get role => $_getN(0);
  @$pb.TagNumber(1)
  set role(MemberRole v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  ///
  ///  Team (color)
  ///  Default Cyan
  @$pb.TagNumber(2)
  Team get team => $_getN(1);
  @$pb.TagNumber(2)
  set team(Team v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTeam() => $_has(1);
  @$pb.TagNumber(2)
  void clearTeam() => clearField(2);
}

///
///  ATAK EUD Status
///  <status battery='100' />
class Status extends $pb.GeneratedMessage {
  factory Status({
    $core.int? battery,
  }) {
    final $result = create();
    if (battery != null) {
      $result.battery = battery;
    }
    return $result;
  }
  Status._() : super();
  factory Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Status', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'battery', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status)) as Status;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Status create() => Status._();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  @$core.pragma('dart2js:noInline')
  static Status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Status>(create);
  static Status? _defaultInstance;

  ///
  ///  Battery level
  @$pb.TagNumber(1)
  $core.int get battery => $_getIZ(0);
  @$pb.TagNumber(1)
  set battery($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBattery() => $_has(0);
  @$pb.TagNumber(1)
  void clearBattery() => clearField(1);
}

///
///  ATAK Contact
///  <contact endpoint='0.0.0.0:4242:tcp' phone='+12345678' callsign='FALKE'/>
class Contact extends $pb.GeneratedMessage {
  factory Contact({
    $core.String? callsign,
    $core.String? deviceCallsign,
  }) {
    final $result = create();
    if (callsign != null) {
      $result.callsign = callsign;
    }
    if (deviceCallsign != null) {
      $result.deviceCallsign = deviceCallsign;
    }
    return $result;
  }
  Contact._() : super();
  factory Contact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Contact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Contact', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'callsign')
    ..aOS(2, _omitFieldNames ? '' : 'deviceCallsign')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Contact clone() => Contact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Contact copyWith(void Function(Contact) updates) => super.copyWith((message) => updates(message as Contact)) as Contact;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  Contact createEmptyInstance() => create();
  static $pb.PbList<Contact> createRepeated() => $pb.PbList<Contact>();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact? _defaultInstance;

  ///
  ///  Callsign
  @$pb.TagNumber(1)
  $core.String get callsign => $_getSZ(0);
  @$pb.TagNumber(1)
  set callsign($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCallsign() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallsign() => clearField(1);

  ///
  ///  Device callsign
  @$pb.TagNumber(2)
  $core.String get deviceCallsign => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceCallsign($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceCallsign() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceCallsign() => clearField(2);
}

///
///  Position Location Information from ATAK
class PLI extends $pb.GeneratedMessage {
  factory PLI({
    $core.int? latitudeI,
    $core.int? longitudeI,
    $core.int? altitude,
    $core.int? speed,
    $core.int? course,
  }) {
    final $result = create();
    if (latitudeI != null) {
      $result.latitudeI = latitudeI;
    }
    if (longitudeI != null) {
      $result.longitudeI = longitudeI;
    }
    if (altitude != null) {
      $result.altitude = altitude;
    }
    if (speed != null) {
      $result.speed = speed;
    }
    if (course != null) {
      $result.course = course;
    }
    return $result;
  }
  PLI._() : super();
  factory PLI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PLI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PLI', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'latitudeI', $pb.PbFieldType.OSF3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'longitudeI', $pb.PbFieldType.OSF3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'altitude', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'course', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PLI clone() => PLI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PLI copyWith(void Function(PLI) updates) => super.copyWith((message) => updates(message as PLI)) as PLI;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PLI create() => PLI._();
  PLI createEmptyInstance() => create();
  static $pb.PbList<PLI> createRepeated() => $pb.PbList<PLI>();
  @$core.pragma('dart2js:noInline')
  static PLI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PLI>(create);
  static PLI? _defaultInstance;

  ///
  ///  The new preferred location encoding, multiply by 1e-7 to get degrees
  ///  in floating point
  @$pb.TagNumber(1)
  $core.int get latitudeI => $_getIZ(0);
  @$pb.TagNumber(1)
  set latitudeI($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitudeI() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitudeI() => clearField(1);

  ///
  ///  The new preferred location encoding, multiply by 1e-7 to get degrees
  ///  in floating point
  @$pb.TagNumber(2)
  $core.int get longitudeI => $_getIZ(1);
  @$pb.TagNumber(2)
  set longitudeI($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitudeI() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitudeI() => clearField(2);

  ///
  ///  Altitude (ATAK prefers HAE)
  @$pb.TagNumber(3)
  $core.int get altitude => $_getIZ(2);
  @$pb.TagNumber(3)
  set altitude($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAltitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearAltitude() => clearField(3);

  ///
  ///  Speed
  @$pb.TagNumber(4)
  $core.int get speed => $_getIZ(3);
  @$pb.TagNumber(4)
  set speed($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpeed() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpeed() => clearField(4);

  ///
  ///  Course in degrees
  @$pb.TagNumber(5)
  $core.int get course => $_getIZ(4);
  @$pb.TagNumber(5)
  set course($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCourse() => $_has(4);
  @$pb.TagNumber(5)
  void clearCourse() => clearField(5);
}

///
///  Aircraft track information from ADS-B or military air tracking.
///  Covers the majority of observed real-world CoT traffic.
class AircraftTrack extends $pb.GeneratedMessage {
  factory AircraftTrack({
    $core.String? icao,
    $core.String? registration,
    $core.String? flight,
    $core.String? aircraftType,
    $core.int? squawk,
    $core.String? category,
    $core.int? rssiX10,
    $core.bool? gps,
    $core.String? cotHostId,
  }) {
    final $result = create();
    if (icao != null) {
      $result.icao = icao;
    }
    if (registration != null) {
      $result.registration = registration;
    }
    if (flight != null) {
      $result.flight = flight;
    }
    if (aircraftType != null) {
      $result.aircraftType = aircraftType;
    }
    if (squawk != null) {
      $result.squawk = squawk;
    }
    if (category != null) {
      $result.category = category;
    }
    if (rssiX10 != null) {
      $result.rssiX10 = rssiX10;
    }
    if (gps != null) {
      $result.gps = gps;
    }
    if (cotHostId != null) {
      $result.cotHostId = cotHostId;
    }
    return $result;
  }
  AircraftTrack._() : super();
  factory AircraftTrack.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AircraftTrack.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AircraftTrack', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'icao')
    ..aOS(2, _omitFieldNames ? '' : 'registration')
    ..aOS(3, _omitFieldNames ? '' : 'flight')
    ..aOS(4, _omitFieldNames ? '' : 'aircraftType')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'squawk', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'category')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'rssiX10', $pb.PbFieldType.OS3)
    ..aOB(8, _omitFieldNames ? '' : 'gps')
    ..aOS(9, _omitFieldNames ? '' : 'cotHostId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AircraftTrack clone() => AircraftTrack()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AircraftTrack copyWith(void Function(AircraftTrack) updates) => super.copyWith((message) => updates(message as AircraftTrack)) as AircraftTrack;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AircraftTrack create() => AircraftTrack._();
  AircraftTrack createEmptyInstance() => create();
  static $pb.PbList<AircraftTrack> createRepeated() => $pb.PbList<AircraftTrack>();
  @$core.pragma('dart2js:noInline')
  static AircraftTrack getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AircraftTrack>(create);
  static AircraftTrack? _defaultInstance;

  ///
  ///  ICAO hex identifier (e.g. "AD237C")
  @$pb.TagNumber(1)
  $core.String get icao => $_getSZ(0);
  @$pb.TagNumber(1)
  set icao($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIcao() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcao() => clearField(1);

  ///
  ///  Aircraft registration (e.g. "N946AK")
  @$pb.TagNumber(2)
  $core.String get registration => $_getSZ(1);
  @$pb.TagNumber(2)
  set registration($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistration() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistration() => clearField(2);

  ///
  ///  Flight number/callsign (e.g. "ASA864")
  @$pb.TagNumber(3)
  $core.String get flight => $_getSZ(2);
  @$pb.TagNumber(3)
  set flight($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlight() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlight() => clearField(3);

  ///
  ///  ICAO aircraft type designator (e.g. "B39M")
  @$pb.TagNumber(4)
  $core.String get aircraftType => $_getSZ(3);
  @$pb.TagNumber(4)
  set aircraftType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAircraftType() => $_has(3);
  @$pb.TagNumber(4)
  void clearAircraftType() => clearField(4);

  ///
  ///  Transponder squawk code (0-7777 octal)
  @$pb.TagNumber(5)
  $core.int get squawk => $_getIZ(4);
  @$pb.TagNumber(5)
  set squawk($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSquawk() => $_has(4);
  @$pb.TagNumber(5)
  void clearSquawk() => clearField(5);

  ///
  ///  ADS-B emitter category (e.g. "A3")
  @$pb.TagNumber(6)
  $core.String get category => $_getSZ(5);
  @$pb.TagNumber(6)
  set category($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategory() => clearField(6);

  ///
  ///  Received signal strength * 10 (e.g. -194 for -19.4 dBm)
  @$pb.TagNumber(7)
  $core.int get rssiX10 => $_getIZ(6);
  @$pb.TagNumber(7)
  set rssiX10($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRssiX10() => $_has(6);
  @$pb.TagNumber(7)
  void clearRssiX10() => clearField(7);

  ///
  ///  Whether receiver has GPS fix
  @$pb.TagNumber(8)
  $core.bool get gps => $_getBF(7);
  @$pb.TagNumber(8)
  set gps($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGps() => $_has(7);
  @$pb.TagNumber(8)
  void clearGps() => clearField(8);

  ///
  ///  CoT host ID for source attribution
  @$pb.TagNumber(9)
  $core.String get cotHostId => $_getSZ(8);
  @$pb.TagNumber(9)
  set cotHostId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCotHostId() => $_has(8);
  @$pb.TagNumber(9)
  void clearCotHostId() => clearField(9);
}

///
///  Compact geographic vertex used by repeated vertex lists in TAK geometry
///  payloads. Named with a `Cot` prefix to avoid a namespace collision with
///  `meshtastic.GeoPoint` in `device_ui.proto`, which is an unrelated zoom/
///  latitude/longitude type used by the on-device map UI.
///
///  Encoded as a signed DELTA from TAKPacketV2.latitude_i / longitude_i (the
///  enclosing event's anchor point). The absolute coordinate is recovered by
///  the receiver as `event.latitude_i + vertex.lat_delta_i` (and likewise for
///  longitude).
///
///  Why deltas: a 32-vertex telestration with vertices clustered within a few
///  hundred meters of the anchor has per-vertex deltas in the ±10^4 range.
///  Under sint32+zigzag those encode as 2 bytes each (tag+varint), versus the
///  4 bytes that sfixed32 would always require. At 32 vertices that is ~128
///  bytes of savings — the difference between fitting under the LoRa MTU or
///  not. Absolute coordinates (values ~10^9) would cost sint32 varint 5 bytes
///  per field, which is why TAKPacketV2's top-level latitude_i / longitude_i
///  stay sfixed32 — only small values win with sint32.
class CotGeoPoint extends $pb.GeneratedMessage {
  factory CotGeoPoint({
    $core.int? latDeltaI,
    $core.int? lonDeltaI,
  }) {
    final $result = create();
    if (latDeltaI != null) {
      $result.latDeltaI = latDeltaI;
    }
    if (lonDeltaI != null) {
      $result.lonDeltaI = lonDeltaI;
    }
    return $result;
  }
  CotGeoPoint._() : super();
  factory CotGeoPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CotGeoPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CotGeoPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'latDeltaI', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'lonDeltaI', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CotGeoPoint clone() => CotGeoPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CotGeoPoint copyWith(void Function(CotGeoPoint) updates) => super.copyWith((message) => updates(message as CotGeoPoint)) as CotGeoPoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CotGeoPoint create() => CotGeoPoint._();
  CotGeoPoint createEmptyInstance() => create();
  static $pb.PbList<CotGeoPoint> createRepeated() => $pb.PbList<CotGeoPoint>();
  @$core.pragma('dart2js:noInline')
  static CotGeoPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CotGeoPoint>(create);
  static CotGeoPoint? _defaultInstance;

  ///
  ///  Latitude delta from TAKPacketV2.latitude_i, in 1e-7 degree units.
  ///  Add to the enclosing event's latitude_i to recover the absolute latitude.
  @$pb.TagNumber(1)
  $core.int get latDeltaI => $_getIZ(0);
  @$pb.TagNumber(1)
  set latDeltaI($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatDeltaI() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatDeltaI() => clearField(1);

  ///
  ///  Longitude delta from TAKPacketV2.longitude_i, in 1e-7 degree units.
  @$pb.TagNumber(2)
  $core.int get lonDeltaI => $_getIZ(1);
  @$pb.TagNumber(2)
  set lonDeltaI($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLonDeltaI() => $_has(1);
  @$pb.TagNumber(2)
  void clearLonDeltaI() => clearField(2);
}

///
///  User-drawn tactical graphic: circle, rectangle, polygon, polyline, freehand
///  telestration, ranging circle, or bullseye.
///
///  Covers CoT types u-d-c-c, u-d-r, u-d-f, u-d-f-m, u-d-p, u-r-b-c-c,
///  u-r-b-bullseye. The shape's anchor position is carried on
///  TAKPacketV2.latitude_i/longitude_i; polyline/polygon vertices are in the
///  `vertices` repeated field as `CotGeoPoint` deltas from that anchor.
///
///  Colors use the Team enum as a 14-color palette (see color encoding below)
///  with a fixed32 exact-ARGB fallback for custom user-picked colors that
///  don't map to a palette entry.
class DrawnShape extends $pb.GeneratedMessage {
  factory DrawnShape({
    DrawnShape_Kind? kind,
    DrawnShape_StyleMode? style,
    $core.int? majorCm,
    $core.int? minorCm,
    $core.int? angleDeg,
    Team? strokeColor,
    $core.int? strokeArgb,
    $core.int? strokeWeightX10,
    Team? fillColor,
    $core.int? fillArgb,
    $core.bool? labelsOn,
    $core.bool? truncated,
    $core.int? bullseyeDistanceDm,
    $core.int? bullseyeBearingRef,
    $core.int? bullseyeFlags,
    $core.String? bullseyeUidRef,
    $core.Iterable<$core.int>? vertexLatDeltas,
    $core.Iterable<$core.int>? vertexLonDeltas,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (style != null) {
      $result.style = style;
    }
    if (majorCm != null) {
      $result.majorCm = majorCm;
    }
    if (minorCm != null) {
      $result.minorCm = minorCm;
    }
    if (angleDeg != null) {
      $result.angleDeg = angleDeg;
    }
    if (strokeColor != null) {
      $result.strokeColor = strokeColor;
    }
    if (strokeArgb != null) {
      $result.strokeArgb = strokeArgb;
    }
    if (strokeWeightX10 != null) {
      $result.strokeWeightX10 = strokeWeightX10;
    }
    if (fillColor != null) {
      $result.fillColor = fillColor;
    }
    if (fillArgb != null) {
      $result.fillArgb = fillArgb;
    }
    if (labelsOn != null) {
      $result.labelsOn = labelsOn;
    }
    if (truncated != null) {
      $result.truncated = truncated;
    }
    if (bullseyeDistanceDm != null) {
      $result.bullseyeDistanceDm = bullseyeDistanceDm;
    }
    if (bullseyeBearingRef != null) {
      $result.bullseyeBearingRef = bullseyeBearingRef;
    }
    if (bullseyeFlags != null) {
      $result.bullseyeFlags = bullseyeFlags;
    }
    if (bullseyeUidRef != null) {
      $result.bullseyeUidRef = bullseyeUidRef;
    }
    if (vertexLatDeltas != null) {
      $result.vertexLatDeltas.addAll(vertexLatDeltas);
    }
    if (vertexLonDeltas != null) {
      $result.vertexLonDeltas.addAll(vertexLonDeltas);
    }
    return $result;
  }
  DrawnShape._() : super();
  factory DrawnShape.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DrawnShape.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DrawnShape', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..e<DrawnShape_Kind>(1, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE, defaultOrMaker: DrawnShape_Kind.Kind_Unspecified, valueOf: DrawnShape_Kind.valueOf, enumValues: DrawnShape_Kind.values)
    ..e<DrawnShape_StyleMode>(2, _omitFieldNames ? '' : 'style', $pb.PbFieldType.OE, defaultOrMaker: DrawnShape_StyleMode.StyleMode_Unspecified, valueOf: DrawnShape_StyleMode.valueOf, enumValues: DrawnShape_StyleMode.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'majorCm', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'minorCm', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'angleDeg', $pb.PbFieldType.OU3)
    ..e<Team>(6, _omitFieldNames ? '' : 'strokeColor', $pb.PbFieldType.OE, defaultOrMaker: Team.Unspecifed_Color, valueOf: Team.valueOf, enumValues: Team.values)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'strokeArgb', $pb.PbFieldType.OF3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'strokeWeightX10', $pb.PbFieldType.OU3)
    ..e<Team>(9, _omitFieldNames ? '' : 'fillColor', $pb.PbFieldType.OE, defaultOrMaker: Team.Unspecifed_Color, valueOf: Team.valueOf, enumValues: Team.values)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'fillArgb', $pb.PbFieldType.OF3)
    ..aOB(11, _omitFieldNames ? '' : 'labelsOn')
    ..aOB(13, _omitFieldNames ? '' : 'truncated')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'bullseyeDistanceDm', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'bullseyeBearingRef', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'bullseyeFlags', $pb.PbFieldType.OU3)
    ..aOS(17, _omitFieldNames ? '' : 'bullseyeUidRef')
    ..p<$core.int>(18, _omitFieldNames ? '' : 'vertexLatDeltas', $pb.PbFieldType.KS3)
    ..p<$core.int>(19, _omitFieldNames ? '' : 'vertexLonDeltas', $pb.PbFieldType.KS3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DrawnShape clone() => DrawnShape()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DrawnShape copyWith(void Function(DrawnShape) updates) => super.copyWith((message) => updates(message as DrawnShape)) as DrawnShape;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DrawnShape create() => DrawnShape._();
  DrawnShape createEmptyInstance() => create();
  static $pb.PbList<DrawnShape> createRepeated() => $pb.PbList<DrawnShape>();
  @$core.pragma('dart2js:noInline')
  static DrawnShape getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DrawnShape>(create);
  static DrawnShape? _defaultInstance;

  ///
  ///  Shape kind (circle, rectangle, freeform, etc.)
  @$pb.TagNumber(1)
  DrawnShape_Kind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(DrawnShape_Kind v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  ///
  ///  Explicit stroke/fill/both discriminator. See StyleMode doc.
  @$pb.TagNumber(2)
  DrawnShape_StyleMode get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(DrawnShape_StyleMode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => clearField(2);

  ///
  ///  Ellipse major radius in centimeters. 0 for non-ellipse kinds.
  @$pb.TagNumber(3)
  $core.int get majorCm => $_getIZ(2);
  @$pb.TagNumber(3)
  set majorCm($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMajorCm() => $_has(2);
  @$pb.TagNumber(3)
  void clearMajorCm() => clearField(3);

  ///
  ///  Ellipse minor radius in centimeters. 0 for non-ellipse kinds.
  @$pb.TagNumber(4)
  $core.int get minorCm => $_getIZ(3);
  @$pb.TagNumber(4)
  set minorCm($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinorCm() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinorCm() => clearField(4);

  ///
  ///  Ellipse rotation angle in degrees. Valid values are 0..360 inclusive;
  ///  0 and 360 are equivalent rotations. In proto3, an unset uint32 reads
  ///  as 0, so senders should emit 0 when the angle is unspecified.
  @$pb.TagNumber(5)
  $core.int get angleDeg => $_getIZ(4);
  @$pb.TagNumber(5)
  set angleDeg($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAngleDeg() => $_has(4);
  @$pb.TagNumber(5)
  void clearAngleDeg() => clearField(5);

  ///
  ///  Stroke color as a named palette entry from the Team enum. If
  ///  Unspecifed_Color, the exact ARGB is carried in stroke_argb.
  ///  Valid only when style is StrokeOnly or StrokeAndFill.
  @$pb.TagNumber(6)
  Team get strokeColor => $_getN(5);
  @$pb.TagNumber(6)
  set strokeColor(Team v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStrokeColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearStrokeColor() => clearField(6);

  ///
  ///  Stroke color as an exact 32-bit ARGB bit pattern. Always populated
  ///  on the wire; readers MUST use this value when stroke_color ==
  ///  Unspecifed_Color and MAY use it to recover the exact original bytes
  ///  even when a palette entry is set.
  @$pb.TagNumber(7)
  $core.int get strokeArgb => $_getIZ(6);
  @$pb.TagNumber(7)
  set strokeArgb($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStrokeArgb() => $_has(6);
  @$pb.TagNumber(7)
  void clearStrokeArgb() => clearField(7);

  ///
  ///  Stroke weight in tenths of a unit (e.g. 30 = 3.0). Typical ATAK
  ///  range 10..60.
  @$pb.TagNumber(8)
  $core.int get strokeWeightX10 => $_getIZ(7);
  @$pb.TagNumber(8)
  set strokeWeightX10($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStrokeWeightX10() => $_has(7);
  @$pb.TagNumber(8)
  void clearStrokeWeightX10() => clearField(8);

  ///
  ///  Fill color as a named palette entry. See stroke_color docs.
  ///  Valid only when style is FillOnly or StrokeAndFill.
  @$pb.TagNumber(9)
  Team get fillColor => $_getN(8);
  @$pb.TagNumber(9)
  set fillColor(Team v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasFillColor() => $_has(8);
  @$pb.TagNumber(9)
  void clearFillColor() => clearField(9);

  ///
  ///  Fill color exact ARGB fallback. See stroke_argb docs.
  @$pb.TagNumber(10)
  $core.int get fillArgb => $_getIZ(9);
  @$pb.TagNumber(10)
  set fillArgb($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFillArgb() => $_has(9);
  @$pb.TagNumber(10)
  void clearFillArgb() => clearField(10);

  ///
  ///  Whether labels are rendered on this shape.
  @$pb.TagNumber(11)
  $core.bool get labelsOn => $_getBF(10);
  @$pb.TagNumber(11)
  set labelsOn($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLabelsOn() => $_has(10);
  @$pb.TagNumber(11)
  void clearLabelsOn() => clearField(11);

  ///
  ///  True if the sender truncated the vertex columns to fit the pool.
  @$pb.TagNumber(13)
  $core.bool get truncated => $_getBF(11);
  @$pb.TagNumber(13)
  set truncated($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasTruncated() => $_has(11);
  @$pb.TagNumber(13)
  void clearTruncated() => clearField(13);

  ///
  ///  Bullseye distance in meters * 10 (e.g. 3285 = 328.5 m). 0 = unset.
  @$pb.TagNumber(14)
  $core.int get bullseyeDistanceDm => $_getIZ(12);
  @$pb.TagNumber(14)
  set bullseyeDistanceDm($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasBullseyeDistanceDm() => $_has(12);
  @$pb.TagNumber(14)
  void clearBullseyeDistanceDm() => clearField(14);

  ///
  ///  Bullseye bearing reference: 0 unset, 1 Magnetic, 2 True, 3 Grid.
  @$pb.TagNumber(15)
  $core.int get bullseyeBearingRef => $_getIZ(13);
  @$pb.TagNumber(15)
  set bullseyeBearingRef($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasBullseyeBearingRef() => $_has(13);
  @$pb.TagNumber(15)
  void clearBullseyeBearingRef() => clearField(15);

  ///
  ///  Bullseye attribute bit flags:
  ///    bit 0: rangeRingVisible
  ///    bit 1: hasRangeRings
  ///    bit 2: edgeToCenter
  ///    bit 3: mils
  @$pb.TagNumber(16)
  $core.int get bullseyeFlags => $_getIZ(14);
  @$pb.TagNumber(16)
  set bullseyeFlags($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasBullseyeFlags() => $_has(14);
  @$pb.TagNumber(16)
  void clearBullseyeFlags() => clearField(16);

  ///
  ///  Bullseye reference UID (anchor marker). Empty = anchor is self.
  @$pb.TagNumber(17)
  $core.String get bullseyeUidRef => $_getSZ(15);
  @$pb.TagNumber(17)
  set bullseyeUidRef($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasBullseyeUidRef() => $_has(15);
  @$pb.TagNumber(17)
  void clearBullseyeUidRef() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.int> get vertexLatDeltas => $_getList(16);

  @$pb.TagNumber(19)
  $core.List<$core.int> get vertexLonDeltas => $_getList(17);
}

///
///  Fixed point of interest: spot marker, waypoint, checkpoint, 2525 symbol,
///  or custom icon.
///
///  Covers CoT types b-m-p-s-m, b-m-p-w, b-m-p-c, b-m-p-s-p-i, b-m-p-s-p-loc,
///  plus a-u-G / a-f-G / a-h-G / a-n-G with iconset paths. The marker position
///  is carried on TAKPacketV2.latitude_i/longitude_i; fields below carry only
///  the marker-specific metadata.
class Marker extends $pb.GeneratedMessage {
  factory Marker({
    Marker_Kind? kind,
    Team? color,
    $core.int? colorArgb,
    $core.bool? readiness,
    $core.String? parentUid,
    $core.String? parentType,
    $core.String? parentCallsign,
    $core.String? iconset,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (color != null) {
      $result.color = color;
    }
    if (colorArgb != null) {
      $result.colorArgb = colorArgb;
    }
    if (readiness != null) {
      $result.readiness = readiness;
    }
    if (parentUid != null) {
      $result.parentUid = parentUid;
    }
    if (parentType != null) {
      $result.parentType = parentType;
    }
    if (parentCallsign != null) {
      $result.parentCallsign = parentCallsign;
    }
    if (iconset != null) {
      $result.iconset = iconset;
    }
    return $result;
  }
  Marker._() : super();
  factory Marker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Marker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Marker', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..e<Marker_Kind>(1, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE, defaultOrMaker: Marker_Kind.Kind_Unspecified, valueOf: Marker_Kind.valueOf, enumValues: Marker_Kind.values)
    ..e<Team>(2, _omitFieldNames ? '' : 'color', $pb.PbFieldType.OE, defaultOrMaker: Team.Unspecifed_Color, valueOf: Team.valueOf, enumValues: Team.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'colorArgb', $pb.PbFieldType.OF3)
    ..aOB(4, _omitFieldNames ? '' : 'readiness')
    ..aOS(5, _omitFieldNames ? '' : 'parentUid')
    ..aOS(6, _omitFieldNames ? '' : 'parentType')
    ..aOS(7, _omitFieldNames ? '' : 'parentCallsign')
    ..aOS(8, _omitFieldNames ? '' : 'iconset')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Marker clone() => Marker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Marker copyWith(void Function(Marker) updates) => super.copyWith((message) => updates(message as Marker)) as Marker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Marker create() => Marker._();
  Marker createEmptyInstance() => create();
  static $pb.PbList<Marker> createRepeated() => $pb.PbList<Marker>();
  @$core.pragma('dart2js:noInline')
  static Marker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Marker>(create);
  static Marker? _defaultInstance;

  ///
  ///  Marker kind
  @$pb.TagNumber(1)
  Marker_Kind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(Marker_Kind v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  ///
  ///  Marker color as a named palette entry. If Unspecifed_Color, the exact
  ///  ARGB is in color_argb.
  @$pb.TagNumber(2)
  Team get color => $_getN(1);
  @$pb.TagNumber(2)
  set color(Team v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);

  ///
  ///  Marker color exact ARGB bit pattern. Always populated on the wire.
  @$pb.TagNumber(3)
  $core.int get colorArgb => $_getIZ(2);
  @$pb.TagNumber(3)
  set colorArgb($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColorArgb() => $_has(2);
  @$pb.TagNumber(3)
  void clearColorArgb() => clearField(3);

  ///
  ///  Status readiness flag (ATAK <status readiness="true"/>).
  @$pb.TagNumber(4)
  $core.bool get readiness => $_getBF(3);
  @$pb.TagNumber(4)
  set readiness($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReadiness() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadiness() => clearField(4);

  ///
  ///  Parent link UID (ATAK <link uid=... relation="p-p"/>). Empty = no parent.
  ///  For spot/waypoint markers this is typically the producing TAK user's UID.
  @$pb.TagNumber(5)
  $core.String get parentUid => $_getSZ(4);
  @$pb.TagNumber(5)
  set parentUid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasParentUid() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentUid() => clearField(5);

  ///
  ///  Parent CoT type (e.g. "a-f-G-U-C"). Usually the parent TAK user's type.
  @$pb.TagNumber(6)
  $core.String get parentType => $_getSZ(5);
  @$pb.TagNumber(6)
  set parentType($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasParentType() => $_has(5);
  @$pb.TagNumber(6)
  void clearParentType() => clearField(6);

  ///
  ///  Parent callsign (e.g. "HOPE").
  @$pb.TagNumber(7)
  $core.String get parentCallsign => $_getSZ(6);
  @$pb.TagNumber(7)
  set parentCallsign($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasParentCallsign() => $_has(6);
  @$pb.TagNumber(7)
  void clearParentCallsign() => clearField(7);

  ///
  ///  Iconset path stored verbatim. ATAK emits three flavors:
  ///    Kind_Symbol2525    -> "COT_MAPPING_2525B/<cot-type-prefix>/<cot-type>"
  ///    Kind_SpotMap       -> "COT_MAPPING_SPOTMAP/<cot-type>/<argb>"
  ///    Kind_CustomIcon    -> "<UUID>/<GroupName>/<filename>.png"
  ///  Stored end-to-end without prefix stripping; the ~19 bytes saved by
  ///  stripping well-known prefixes are not worth the builder-side bug
  ///  surface, and the dict compresses the repetition effectively.
  @$pb.TagNumber(8)
  $core.String get iconset => $_getSZ(7);
  @$pb.TagNumber(8)
  set iconset($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIconset() => $_has(7);
  @$pb.TagNumber(8)
  void clearIconset() => clearField(8);
}

///
///  Range and bearing measurement line from the event anchor to a target point.
///
///  Covers CoT type u-rb-a. The anchor position is on
///  TAKPacketV2.latitude_i/longitude_i; the target endpoint is carried as a
///  CotGeoPoint — same delta-from-anchor encoding used by DrawnShape.vertices
///  so a self-anchored RAB (common case) encodes in zero bytes.
class RangeAndBearing extends $pb.GeneratedMessage {
  factory RangeAndBearing({
    CotGeoPoint? anchor,
    $core.String? anchorUid,
    $core.int? rangeCm,
    $core.int? bearingCdeg,
    Team? strokeColor,
    $core.int? strokeArgb,
    $core.int? strokeWeightX10,
  }) {
    final $result = create();
    if (anchor != null) {
      $result.anchor = anchor;
    }
    if (anchorUid != null) {
      $result.anchorUid = anchorUid;
    }
    if (rangeCm != null) {
      $result.rangeCm = rangeCm;
    }
    if (bearingCdeg != null) {
      $result.bearingCdeg = bearingCdeg;
    }
    if (strokeColor != null) {
      $result.strokeColor = strokeColor;
    }
    if (strokeArgb != null) {
      $result.strokeArgb = strokeArgb;
    }
    if (strokeWeightX10 != null) {
      $result.strokeWeightX10 = strokeWeightX10;
    }
    return $result;
  }
  RangeAndBearing._() : super();
  factory RangeAndBearing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RangeAndBearing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RangeAndBearing', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOM<CotGeoPoint>(1, _omitFieldNames ? '' : 'anchor', subBuilder: CotGeoPoint.create)
    ..aOS(2, _omitFieldNames ? '' : 'anchorUid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rangeCm', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'bearingCdeg', $pb.PbFieldType.OU3)
    ..e<Team>(5, _omitFieldNames ? '' : 'strokeColor', $pb.PbFieldType.OE, defaultOrMaker: Team.Unspecifed_Color, valueOf: Team.valueOf, enumValues: Team.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'strokeArgb', $pb.PbFieldType.OF3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'strokeWeightX10', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RangeAndBearing clone() => RangeAndBearing()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RangeAndBearing copyWith(void Function(RangeAndBearing) updates) => super.copyWith((message) => updates(message as RangeAndBearing)) as RangeAndBearing;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RangeAndBearing create() => RangeAndBearing._();
  RangeAndBearing createEmptyInstance() => create();
  static $pb.PbList<RangeAndBearing> createRepeated() => $pb.PbList<RangeAndBearing>();
  @$core.pragma('dart2js:noInline')
  static RangeAndBearing getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RangeAndBearing>(create);
  static RangeAndBearing? _defaultInstance;

  ///
  ///  Target/anchor endpoint (delta-encoded from TAKPacketV2.latitude_i/longitude_i).
  @$pb.TagNumber(1)
  CotGeoPoint get anchor => $_getN(0);
  @$pb.TagNumber(1)
  set anchor(CotGeoPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnchor() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnchor() => clearField(1);
  @$pb.TagNumber(1)
  CotGeoPoint ensureAnchor() => $_ensure(0);

  ///
  ///  Anchor UID (from <link uid="anchor-1"/>). Empty = free-standing.
  @$pb.TagNumber(2)
  $core.String get anchorUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set anchorUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnchorUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnchorUid() => clearField(2);

  ///
  ///  Range in centimeters (value * 100). Range 0..4294 km.
  @$pb.TagNumber(3)
  $core.int get rangeCm => $_getIZ(2);
  @$pb.TagNumber(3)
  set rangeCm($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRangeCm() => $_has(2);
  @$pb.TagNumber(3)
  void clearRangeCm() => clearField(3);

  ///
  ///  Bearing in degrees * 100 (0..36000).
  @$pb.TagNumber(4)
  $core.int get bearingCdeg => $_getIZ(3);
  @$pb.TagNumber(4)
  set bearingCdeg($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBearingCdeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearBearingCdeg() => clearField(4);

  ///
  ///  Stroke color as a Team palette entry. See DrawnShape.stroke_color doc.
  @$pb.TagNumber(5)
  Team get strokeColor => $_getN(4);
  @$pb.TagNumber(5)
  set strokeColor(Team v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStrokeColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearStrokeColor() => clearField(5);

  ///
  ///  Stroke color exact ARGB fallback.
  @$pb.TagNumber(6)
  $core.int get strokeArgb => $_getIZ(5);
  @$pb.TagNumber(6)
  set strokeArgb($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStrokeArgb() => $_has(5);
  @$pb.TagNumber(6)
  void clearStrokeArgb() => clearField(6);

  ///
  ///  Stroke weight * 10 (e.g. 30 = 3.0).
  @$pb.TagNumber(7)
  $core.int get strokeWeightX10 => $_getIZ(6);
  @$pb.TagNumber(7)
  set strokeWeightX10($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStrokeWeightX10() => $_has(6);
  @$pb.TagNumber(7)
  void clearStrokeWeightX10() => clearField(7);
}

///
///  Route waypoint or control point. Each link corresponds to one ATAK
///  <link type=... point=...> entry inside the b-m-r event.
class Route_Link extends $pb.GeneratedMessage {
  factory Route_Link({
    CotGeoPoint? point,
    $core.String? uid,
    $core.String? callsign,
    $core.int? linkType,
  }) {
    final $result = create();
    if (point != null) {
      $result.point = point;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (callsign != null) {
      $result.callsign = callsign;
    }
    if (linkType != null) {
      $result.linkType = linkType;
    }
    return $result;
  }
  Route_Link._() : super();
  factory Route_Link.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Route_Link.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Route.Link', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOM<CotGeoPoint>(1, _omitFieldNames ? '' : 'point', subBuilder: CotGeoPoint.create)
    ..aOS(2, _omitFieldNames ? '' : 'uid')
    ..aOS(3, _omitFieldNames ? '' : 'callsign')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'linkType', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Route_Link clone() => Route_Link()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Route_Link copyWith(void Function(Route_Link) updates) => super.copyWith((message) => updates(message as Route_Link)) as Route_Link;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Route_Link create() => Route_Link._();
  Route_Link createEmptyInstance() => create();
  static $pb.PbList<Route_Link> createRepeated() => $pb.PbList<Route_Link>();
  @$core.pragma('dart2js:noInline')
  static Route_Link getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Route_Link>(create);
  static Route_Link? _defaultInstance;

  ///
  ///  Waypoint position (delta-encoded from TAKPacketV2.latitude_i/longitude_i).
  @$pb.TagNumber(1)
  CotGeoPoint get point => $_getN(0);
  @$pb.TagNumber(1)
  set point(CotGeoPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoint() => clearField(1);
  @$pb.TagNumber(1)
  CotGeoPoint ensurePoint() => $_ensure(0);

  ///
  ///  Optional UID (empty = receiver derives).
  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  ///
  ///  Optional display callsign (e.g. "CP1"). Empty for unnamed control points.
  @$pb.TagNumber(3)
  $core.String get callsign => $_getSZ(2);
  @$pb.TagNumber(3)
  set callsign($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallsign() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallsign() => clearField(3);

  ///
  ///  Link role: 0 = waypoint (b-m-p-w), 1 = checkpoint (b-m-p-c).
  @$pb.TagNumber(4)
  $core.int get linkType => $_getIZ(3);
  @$pb.TagNumber(4)
  set linkType($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkType() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkType() => clearField(4);
}

///
///  Named route consisting of ordered waypoints and control points.
///
///  Covers CoT type b-m-r. The first waypoint's position is on
///  TAKPacketV2.latitude_i/longitude_i; subsequent waypoints and checkpoints
///  are in `links`. Link count is capped at 16 by the nanopb pool; senders
///  MUST truncate longer routes and set `truncated = true`.
class Route extends $pb.GeneratedMessage {
  factory Route({
    Route_Method? method,
    Route_Direction? direction,
    $core.String? prefix,
    $core.int? strokeWeightX10,
    $core.Iterable<Route_Link>? links,
    $core.bool? truncated,
  }) {
    final $result = create();
    if (method != null) {
      $result.method = method;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    if (prefix != null) {
      $result.prefix = prefix;
    }
    if (strokeWeightX10 != null) {
      $result.strokeWeightX10 = strokeWeightX10;
    }
    if (links != null) {
      $result.links.addAll(links);
    }
    if (truncated != null) {
      $result.truncated = truncated;
    }
    return $result;
  }
  Route._() : super();
  factory Route.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Route.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Route', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..e<Route_Method>(1, _omitFieldNames ? '' : 'method', $pb.PbFieldType.OE, defaultOrMaker: Route_Method.Method_Unspecified, valueOf: Route_Method.valueOf, enumValues: Route_Method.values)
    ..e<Route_Direction>(2, _omitFieldNames ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: Route_Direction.Direction_Unspecified, valueOf: Route_Direction.valueOf, enumValues: Route_Direction.values)
    ..aOS(3, _omitFieldNames ? '' : 'prefix')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'strokeWeightX10', $pb.PbFieldType.OU3)
    ..pc<Route_Link>(5, _omitFieldNames ? '' : 'links', $pb.PbFieldType.PM, subBuilder: Route_Link.create)
    ..aOB(6, _omitFieldNames ? '' : 'truncated')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Route clone() => Route()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Route copyWith(void Function(Route) updates) => super.copyWith((message) => updates(message as Route)) as Route;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Route create() => Route._();
  Route createEmptyInstance() => create();
  static $pb.PbList<Route> createRepeated() => $pb.PbList<Route>();
  @$core.pragma('dart2js:noInline')
  static Route getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Route>(create);
  static Route? _defaultInstance;

  ///
  ///  Travel method
  @$pb.TagNumber(1)
  Route_Method get method => $_getN(0);
  @$pb.TagNumber(1)
  set method(Route_Method v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearMethod() => clearField(1);

  ///
  ///  Direction (infil/exfil)
  @$pb.TagNumber(2)
  Route_Direction get direction => $_getN(1);
  @$pb.TagNumber(2)
  set direction(Route_Direction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);

  ///
  ///  Waypoint name prefix (e.g. "CP").
  @$pb.TagNumber(3)
  $core.String get prefix => $_getSZ(2);
  @$pb.TagNumber(3)
  set prefix($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrefix() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrefix() => clearField(3);

  ///
  ///  Stroke weight * 10 (e.g. 30 = 3.0). 0 = default.
  @$pb.TagNumber(4)
  $core.int get strokeWeightX10 => $_getIZ(3);
  @$pb.TagNumber(4)
  set strokeWeightX10($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStrokeWeightX10() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrokeWeightX10() => clearField(4);

  ///
  ///  Ordered list of route control points. Capped at 16.
  @$pb.TagNumber(5)
  $core.List<Route_Link> get links => $_getList(4);

  ///
  ///  True if the sender truncated `links` to fit the pool.
  @$pb.TagNumber(6)
  $core.bool get truncated => $_getBF(5);
  @$pb.TagNumber(6)
  set truncated($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTruncated() => $_has(5);
  @$pb.TagNumber(6)
  void clearTruncated() => clearField(6);
}

///
///  9-line MEDEVAC request (CoT type b-r-f-h-c).
///
///  Mirrors the ATAK MedLine tool's <_medevac_> detail element. Every field
///  is optional (proto3 default); senders omit lines they don't have. The
///  envelope (TAKPacketV2.uid, cot_type_id=b-r-f-h-c, latitude_i/longitude_i,
///  altitude, callsign) carries Line 1 (location) and Line 2 (callsign).
///
///  All numeric fields are tight varints so a complete 9-line request fits
///  in well under 100 bytes of proto on the wire.
class CasevacReport extends $pb.GeneratedMessage {
  factory CasevacReport({
    CasevacReport_Precedence? precedence,
    $core.int? equipmentFlags,
    $core.int? litterPatients,
    $core.int? ambulatoryPatients,
    CasevacReport_Security? security,
    CasevacReport_HlzMarking? hlzMarking,
    $core.String? zoneMarker,
    $core.int? usMilitary,
    $core.int? usCivilian,
    $core.int? nonUsMilitary,
    $core.int? nonUsCivilian,
    $core.int? epw,
    $core.int? child,
    $core.int? terrainFlags,
    $core.String? frequency,
    $core.String? title,
    $core.String? medlineRemarks,
    $core.int? urgentCount,
    $core.int? urgentSurgicalCount,
    $core.int? priorityCount,
    $core.int? routineCount,
    $core.int? convenienceCount,
    $core.String? equipmentDetail,
    $core.String? zoneProtectedCoord,
    $core.String? terrainSlopeDir,
    $core.String? terrainOtherDetail,
    $core.String? markedBy,
    $core.String? obstacles,
    $core.String? windsAreFrom,
    $core.String? friendlies,
    $core.String? enemy,
    $core.String? hlzRemarks,
    $core.Iterable<ZMistEntry>? zmist,
  }) {
    final $result = create();
    if (precedence != null) {
      $result.precedence = precedence;
    }
    if (equipmentFlags != null) {
      $result.equipmentFlags = equipmentFlags;
    }
    if (litterPatients != null) {
      $result.litterPatients = litterPatients;
    }
    if (ambulatoryPatients != null) {
      $result.ambulatoryPatients = ambulatoryPatients;
    }
    if (security != null) {
      $result.security = security;
    }
    if (hlzMarking != null) {
      $result.hlzMarking = hlzMarking;
    }
    if (zoneMarker != null) {
      $result.zoneMarker = zoneMarker;
    }
    if (usMilitary != null) {
      $result.usMilitary = usMilitary;
    }
    if (usCivilian != null) {
      $result.usCivilian = usCivilian;
    }
    if (nonUsMilitary != null) {
      $result.nonUsMilitary = nonUsMilitary;
    }
    if (nonUsCivilian != null) {
      $result.nonUsCivilian = nonUsCivilian;
    }
    if (epw != null) {
      $result.epw = epw;
    }
    if (child != null) {
      $result.child = child;
    }
    if (terrainFlags != null) {
      $result.terrainFlags = terrainFlags;
    }
    if (frequency != null) {
      $result.frequency = frequency;
    }
    if (title != null) {
      $result.title = title;
    }
    if (medlineRemarks != null) {
      $result.medlineRemarks = medlineRemarks;
    }
    if (urgentCount != null) {
      $result.urgentCount = urgentCount;
    }
    if (urgentSurgicalCount != null) {
      $result.urgentSurgicalCount = urgentSurgicalCount;
    }
    if (priorityCount != null) {
      $result.priorityCount = priorityCount;
    }
    if (routineCount != null) {
      $result.routineCount = routineCount;
    }
    if (convenienceCount != null) {
      $result.convenienceCount = convenienceCount;
    }
    if (equipmentDetail != null) {
      $result.equipmentDetail = equipmentDetail;
    }
    if (zoneProtectedCoord != null) {
      $result.zoneProtectedCoord = zoneProtectedCoord;
    }
    if (terrainSlopeDir != null) {
      $result.terrainSlopeDir = terrainSlopeDir;
    }
    if (terrainOtherDetail != null) {
      $result.terrainOtherDetail = terrainOtherDetail;
    }
    if (markedBy != null) {
      $result.markedBy = markedBy;
    }
    if (obstacles != null) {
      $result.obstacles = obstacles;
    }
    if (windsAreFrom != null) {
      $result.windsAreFrom = windsAreFrom;
    }
    if (friendlies != null) {
      $result.friendlies = friendlies;
    }
    if (enemy != null) {
      $result.enemy = enemy;
    }
    if (hlzRemarks != null) {
      $result.hlzRemarks = hlzRemarks;
    }
    if (zmist != null) {
      $result.zmist.addAll(zmist);
    }
    return $result;
  }
  CasevacReport._() : super();
  factory CasevacReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CasevacReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CasevacReport', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..e<CasevacReport_Precedence>(1, _omitFieldNames ? '' : 'precedence', $pb.PbFieldType.OE, defaultOrMaker: CasevacReport_Precedence.Precedence_Unspecified, valueOf: CasevacReport_Precedence.valueOf, enumValues: CasevacReport_Precedence.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'equipmentFlags', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'litterPatients', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'ambulatoryPatients', $pb.PbFieldType.OU3)
    ..e<CasevacReport_Security>(5, _omitFieldNames ? '' : 'security', $pb.PbFieldType.OE, defaultOrMaker: CasevacReport_Security.Security_Unspecified, valueOf: CasevacReport_Security.valueOf, enumValues: CasevacReport_Security.values)
    ..e<CasevacReport_HlzMarking>(6, _omitFieldNames ? '' : 'hlzMarking', $pb.PbFieldType.OE, defaultOrMaker: CasevacReport_HlzMarking.HlzMarking_Unspecified, valueOf: CasevacReport_HlzMarking.valueOf, enumValues: CasevacReport_HlzMarking.values)
    ..aOS(7, _omitFieldNames ? '' : 'zoneMarker')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'usMilitary', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'usCivilian', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'nonUsMilitary', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'nonUsCivilian', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'epw', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'child', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'terrainFlags', $pb.PbFieldType.OU3)
    ..aOS(15, _omitFieldNames ? '' : 'frequency')
    ..aOS(16, _omitFieldNames ? '' : 'title')
    ..aOS(17, _omitFieldNames ? '' : 'medlineRemarks')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'urgentCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'urgentSurgicalCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'priorityCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(21, _omitFieldNames ? '' : 'routineCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'convenienceCount', $pb.PbFieldType.OU3)
    ..aOS(23, _omitFieldNames ? '' : 'equipmentDetail')
    ..aOS(24, _omitFieldNames ? '' : 'zoneProtectedCoord')
    ..aOS(25, _omitFieldNames ? '' : 'terrainSlopeDir')
    ..aOS(26, _omitFieldNames ? '' : 'terrainOtherDetail')
    ..aOS(27, _omitFieldNames ? '' : 'markedBy')
    ..aOS(28, _omitFieldNames ? '' : 'obstacles')
    ..aOS(29, _omitFieldNames ? '' : 'windsAreFrom')
    ..aOS(30, _omitFieldNames ? '' : 'friendlies')
    ..aOS(31, _omitFieldNames ? '' : 'enemy')
    ..aOS(32, _omitFieldNames ? '' : 'hlzRemarks')
    ..pc<ZMistEntry>(33, _omitFieldNames ? '' : 'zmist', $pb.PbFieldType.PM, subBuilder: ZMistEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CasevacReport clone() => CasevacReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CasevacReport copyWith(void Function(CasevacReport) updates) => super.copyWith((message) => updates(message as CasevacReport)) as CasevacReport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CasevacReport create() => CasevacReport._();
  CasevacReport createEmptyInstance() => create();
  static $pb.PbList<CasevacReport> createRepeated() => $pb.PbList<CasevacReport>();
  @$core.pragma('dart2js:noInline')
  static CasevacReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CasevacReport>(create);
  static CasevacReport? _defaultInstance;

  ///
  ///  Line 3: precedence / urgency.
  @$pb.TagNumber(1)
  CasevacReport_Precedence get precedence => $_getN(0);
  @$pb.TagNumber(1)
  set precedence(CasevacReport_Precedence v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrecedence() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrecedence() => clearField(1);

  ///
  ///  Line 4: special equipment required, as a bitfield.
  ///    bit 0: none
  ///    bit 1: hoist
  ///    bit 2: extraction equipment
  ///    bit 3: ventilator
  ///    bit 4: blood
  @$pb.TagNumber(2)
  $core.int get equipmentFlags => $_getIZ(1);
  @$pb.TagNumber(2)
  set equipmentFlags($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEquipmentFlags() => $_has(1);
  @$pb.TagNumber(2)
  void clearEquipmentFlags() => clearField(2);

  ///
  ///  Line 5: number of litter (stretcher-bound) patients.
  @$pb.TagNumber(3)
  $core.int get litterPatients => $_getIZ(2);
  @$pb.TagNumber(3)
  set litterPatients($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLitterPatients() => $_has(2);
  @$pb.TagNumber(3)
  void clearLitterPatients() => clearField(3);

  ///
  ///  Line 5: number of ambulatory (walking-wounded) patients.
  @$pb.TagNumber(4)
  $core.int get ambulatoryPatients => $_getIZ(3);
  @$pb.TagNumber(4)
  set ambulatoryPatients($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmbulatoryPatients() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmbulatoryPatients() => clearField(4);

  ///
  ///  Line 6: security situation at the PZ.
  @$pb.TagNumber(5)
  CasevacReport_Security get security => $_getN(4);
  @$pb.TagNumber(5)
  set security(CasevacReport_Security v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSecurity() => $_has(4);
  @$pb.TagNumber(5)
  void clearSecurity() => clearField(5);

  ///
  ///  Line 7: HLZ marking method.
  @$pb.TagNumber(6)
  CasevacReport_HlzMarking get hlzMarking => $_getN(5);
  @$pb.TagNumber(6)
  set hlzMarking(CasevacReport_HlzMarking v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasHlzMarking() => $_has(5);
  @$pb.TagNumber(6)
  void clearHlzMarking() => clearField(6);

  ///
  ///  Line 7 supplementary: short free-text describing the zone marker
  ///  (e.g. "Green smoke", "VS-17 panel west"). Capped tight in options.
  @$pb.TagNumber(7)
  $core.String get zoneMarker => $_getSZ(6);
  @$pb.TagNumber(7)
  set zoneMarker($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasZoneMarker() => $_has(6);
  @$pb.TagNumber(7)
  void clearZoneMarker() => clearField(7);

  /// --- Line 8: patient nationality counts ---
  @$pb.TagNumber(8)
  $core.int get usMilitary => $_getIZ(7);
  @$pb.TagNumber(8)
  set usMilitary($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUsMilitary() => $_has(7);
  @$pb.TagNumber(8)
  void clearUsMilitary() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get usCivilian => $_getIZ(8);
  @$pb.TagNumber(9)
  set usCivilian($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUsCivilian() => $_has(8);
  @$pb.TagNumber(9)
  void clearUsCivilian() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get nonUsMilitary => $_getIZ(9);
  @$pb.TagNumber(10)
  set nonUsMilitary($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasNonUsMilitary() => $_has(9);
  @$pb.TagNumber(10)
  void clearNonUsMilitary() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get nonUsCivilian => $_getIZ(10);
  @$pb.TagNumber(11)
  set nonUsCivilian($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNonUsCivilian() => $_has(10);
  @$pb.TagNumber(11)
  void clearNonUsCivilian() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get epw => $_getIZ(11);
  @$pb.TagNumber(12)
  set epw($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEpw() => $_has(11);
  @$pb.TagNumber(12)
  void clearEpw() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get child => $_getIZ(12);
  @$pb.TagNumber(13)
  set child($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasChild() => $_has(12);
  @$pb.TagNumber(13)
  void clearChild() => clearField(13);

  ///
  ///  Line 9: terrain and obstacles at the PZ, as a bitfield.
  ///    bit 0: slope
  ///    bit 1: rough
  ///    bit 2: loose
  ///    bit 3: trees
  ///    bit 4: wires
  ///    bit 5: other
  @$pb.TagNumber(14)
  $core.int get terrainFlags => $_getIZ(13);
  @$pb.TagNumber(14)
  set terrainFlags($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTerrainFlags() => $_has(13);
  @$pb.TagNumber(14)
  void clearTerrainFlags() => clearField(14);

  ///
  ///  Line 2: radio frequency / callsign metadata (e.g. "38.90 Mhz" or
  ///  "Victor 6"). Capped tight in options.
  @$pb.TagNumber(15)
  $core.String get frequency => $_getSZ(14);
  @$pb.TagNumber(15)
  set frequency($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFrequency() => $_has(14);
  @$pb.TagNumber(15)
  void clearFrequency() => clearField(15);

  ///
  ///  Short title / MEDEVAC identifier (e.g. "EAGLE.15.181230"). Usually the
  ///  same as the envelope callsign but ATAK sometimes carries a distinct
  ///  ops-number here.
  @$pb.TagNumber(16)
  $core.String get title => $_getSZ(15);
  @$pb.TagNumber(16)
  set title($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasTitle() => $_has(15);
  @$pb.TagNumber(16)
  void clearTitle() => clearField(16);

  ///
  ///  Primary medline free-text — the single most clinically important line
  ///  on a MEDLINE form (e.g. "2 urgent litter patients, smoke on approach").
  ///  MUST be preserved under MTU pressure as long as any casevac is sent.
  @$pb.TagNumber(17)
  $core.String get medlineRemarks => $_getSZ(16);
  @$pb.TagNumber(17)
  set medlineRemarks($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasMedlineRemarks() => $_has(16);
  @$pb.TagNumber(17)
  void clearMedlineRemarks() => clearField(17);

  ///
  ///  Line 3 (newer ATAK format): patient counts by precedence level.
  ///  Coexists with the enum-style `precedence` field (tag 1) — older ATAK
  ///  emits a single enum, newer ATAK emits these counts, and both can be
  ///  set simultaneously. Senders populate whichever style(s) the source
  ///  XML had; receivers prefer counts when non-zero.
  @$pb.TagNumber(18)
  $core.int get urgentCount => $_getIZ(17);
  @$pb.TagNumber(18)
  set urgentCount($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasUrgentCount() => $_has(17);
  @$pb.TagNumber(18)
  void clearUrgentCount() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get urgentSurgicalCount => $_getIZ(18);
  @$pb.TagNumber(19)
  set urgentSurgicalCount($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasUrgentSurgicalCount() => $_has(18);
  @$pb.TagNumber(19)
  void clearUrgentSurgicalCount() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get priorityCount => $_getIZ(19);
  @$pb.TagNumber(20)
  set priorityCount($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasPriorityCount() => $_has(19);
  @$pb.TagNumber(20)
  void clearPriorityCount() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get routineCount => $_getIZ(20);
  @$pb.TagNumber(21)
  set routineCount($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasRoutineCount() => $_has(20);
  @$pb.TagNumber(21)
  void clearRoutineCount() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get convenienceCount => $_getIZ(21);
  @$pb.TagNumber(22)
  set convenienceCount($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasConvenienceCount() => $_has(21);
  @$pb.TagNumber(22)
  void clearConvenienceCount() => clearField(22);

  ///
  ///  Line 4 supplementary: free-text description of non-standard equipment
  ///  (e.g. "Blood warmer"). Pairs with the `equipment_flags` bitfield.
  @$pb.TagNumber(23)
  $core.String get equipmentDetail => $_getSZ(22);
  @$pb.TagNumber(23)
  set equipmentDetail($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasEquipmentDetail() => $_has(22);
  @$pb.TagNumber(23)
  void clearEquipmentDetail() => clearField(23);

  ///
  ///  Line 1 override: MGRS grid when distinct from the event anchor point
  ///  (e.g. "34T CQ 12345 67890"). Event lat/lon/hae still carries the
  ///  numeric location; this field preserves the exact MGRS string the
  ///  medic entered.
  @$pb.TagNumber(24)
  $core.String get zoneProtectedCoord => $_getSZ(23);
  @$pb.TagNumber(24)
  set zoneProtectedCoord($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasZoneProtectedCoord() => $_has(23);
  @$pb.TagNumber(24)
  void clearZoneProtectedCoord() => clearField(24);

  ///
  ///  Line 9 supplementary: slope direction (e.g. "N", "NE", "SSW") when
  ///  `terrain_flags` bit 0 (slope) is set.
  @$pb.TagNumber(25)
  $core.String get terrainSlopeDir => $_getSZ(24);
  @$pb.TagNumber(25)
  set terrainSlopeDir($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasTerrainSlopeDir() => $_has(24);
  @$pb.TagNumber(25)
  void clearTerrainSlopeDir() => clearField(25);

  ///
  ///  Line 9 supplementary: free-text description of "other" terrain hazards
  ///  (e.g. "Loose debris on west edge") when `terrain_flags` bit 5 (other)
  ///  is set. Tier-2 strippable under MTU pressure.
  @$pb.TagNumber(26)
  $core.String get terrainOtherDetail => $_getSZ(25);
  @$pb.TagNumber(26)
  set terrainOtherDetail($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasTerrainOtherDetail() => $_has(25);
  @$pb.TagNumber(26)
  void clearTerrainOtherDetail() => clearField(26);

  ///
  ///  Line 7 supplementary: how the zone is being marked right now
  ///  (e.g. "Orange smoke", "VS-17 panel"). Complements the structured
  ///  `hlz_marking` enum with a specific human-readable description.
  @$pb.TagNumber(27)
  $core.String get markedBy => $_getSZ(26);
  @$pb.TagNumber(27)
  set markedBy($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasMarkedBy() => $_has(26);
  @$pb.TagNumber(27)
  void clearMarkedBy() => clearField(27);

  ///
  ///  Nearby obstacles on the approach (e.g. "Power lines north of HLZ").
  @$pb.TagNumber(28)
  $core.String get obstacles => $_getSZ(27);
  @$pb.TagNumber(28)
  set obstacles($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasObstacles() => $_has(27);
  @$pb.TagNumber(28)
  void clearObstacles() => clearField(28);

  ///
  ///  Wind direction and speed (e.g. "270 at 12 kts").
  @$pb.TagNumber(29)
  $core.String get windsAreFrom => $_getSZ(28);
  @$pb.TagNumber(29)
  set windsAreFrom($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasWindsAreFrom() => $_has(28);
  @$pb.TagNumber(29)
  void clearWindsAreFrom() => clearField(29);

  ///
  ///  Friendly forces posture near the pickup zone
  ///  (e.g. "Squad east of HLZ").
  @$pb.TagNumber(30)
  $core.String get friendlies => $_getSZ(29);
  @$pb.TagNumber(30)
  set friendlies($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasFriendlies() => $_has(29);
  @$pb.TagNumber(30)
  void clearFriendlies() => clearField(30);

  ///
  ///  Known or suspected enemy positions near the pickup zone
  ///  (e.g. "Possible enemy on south ridge").
  @$pb.TagNumber(31)
  $core.String get enemy => $_getSZ(30);
  @$pb.TagNumber(31)
  set enemy($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasEnemy() => $_has(30);
  @$pb.TagNumber(31)
  void clearEnemy() => clearField(31);

  ///
  ///  Free-text description of the HLZ itself
  ///  (e.g. "Primary HLZ is soccer field").
  @$pb.TagNumber(32)
  $core.String get hlzRemarks => $_getSZ(31);
  @$pb.TagNumber(32)
  set hlzRemarks($core.String v) { $_setString(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasHlzRemarks() => $_has(31);
  @$pb.TagNumber(32)
  void clearHlzRemarks() => clearField(32);

  ///
  ///  Per-patient clinical records. Each entry is one patient's ZMIST card
  ///  (Zap number / Mechanism / Injuries / Signs / Treatment). Repeatable —
  ///  a mass-casualty event can carry 1-6 entries in practice, limited by
  ///  the 237 B LoRa MTU.
  @$pb.TagNumber(33)
  $core.List<ZMistEntry> get zmist => $_getList(32);
}

///
///  Per-patient clinical summary record — one entry per patient in a CASEVAC.
///  Maps directly to ATAK's <zMist> child element inside <zMistsMap>.
///  All fields are optional free-text; senders populate what they have.
class ZMistEntry extends $pb.GeneratedMessage {
  factory ZMistEntry({
    $core.String? title,
    $core.String? z,
    $core.String? m,
    $core.String? i,
    $core.String? s,
    $core.String? t,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (z != null) {
      $result.z = z;
    }
    if (m != null) {
      $result.m = m;
    }
    if (i != null) {
      $result.i = i;
    }
    if (s != null) {
      $result.s = s;
    }
    if (t != null) {
      $result.t = t;
    }
    return $result;
  }
  ZMistEntry._() : super();
  factory ZMistEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ZMistEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ZMistEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'z')
    ..aOS(3, _omitFieldNames ? '' : 'm')
    ..aOS(4, _omitFieldNames ? '' : 'i')
    ..aOS(5, _omitFieldNames ? '' : 's')
    ..aOS(6, _omitFieldNames ? '' : 't')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ZMistEntry clone() => ZMistEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ZMistEntry copyWith(void Function(ZMistEntry) updates) => super.copyWith((message) => updates(message as ZMistEntry)) as ZMistEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ZMistEntry create() => ZMistEntry._();
  ZMistEntry createEmptyInstance() => create();
  static $pb.PbList<ZMistEntry> createRepeated() => $pb.PbList<ZMistEntry>();
  @$core.pragma('dart2js:noInline')
  static ZMistEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ZMistEntry>(create);
  static ZMistEntry? _defaultInstance;

  ///
  ///  Patient identifier / sequence label (e.g. "ZMIST-1", "ZMIST-2").
  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  ///
  ///  Zap number — unique patient tracking ID (often a terse code like
  ///  "Gunshot" or a serial).
  @$pb.TagNumber(2)
  $core.String get z => $_getSZ(1);
  @$pb.TagNumber(2)
  set z($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasZ() => $_has(1);
  @$pb.TagNumber(2)
  void clearZ() => clearField(2);

  ///
  ///  Mechanism of injury (e.g. "Penetrating trauma", "Blast injury").
  @$pb.TagNumber(3)
  $core.String get m => $_getSZ(2);
  @$pb.TagNumber(3)
  set m($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasM() => $_has(2);
  @$pb.TagNumber(3)
  void clearM() => clearField(3);

  ///
  ///  Injuries observed (e.g. "Left thigh", "Concussion").
  @$pb.TagNumber(4)
  $core.String get i => $_getSZ(3);
  @$pb.TagNumber(4)
  set i($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasI() => $_has(3);
  @$pb.TagNumber(4)
  void clearI() => clearField(4);

  ///
  ///  Signs / vital stats (e.g. "Stable", "Priority", "BP 110/70").
  @$pb.TagNumber(5)
  $core.String get s => $_getSZ(4);
  @$pb.TagNumber(5)
  set s($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasS() => $_has(4);
  @$pb.TagNumber(5)
  void clearS() => clearField(5);

  ///
  ///  Treatment given (e.g. "Tourniquet 1810Z", "O2 administered").
  @$pb.TagNumber(6)
  $core.String get t => $_getSZ(5);
  @$pb.TagNumber(6)
  set t($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasT() => $_has(5);
  @$pb.TagNumber(6)
  void clearT() => clearField(6);
}

///
///  Emergency alert / 911 beacon (CoT types b-a-o-tbl, b-a-o-pan, b-a-o-opn,
///  b-a-o-can, b-a-o-c, b-a-g).
///
///  Small, high-priority structured record. The CoT type string is still set
///  on cot_type_id so receivers that ignore payload_variant can still display
///  the alert from the enum alone; the typed fields let modern receivers show
///  the authoring unit and handle cancel-referencing without XML parsing.
class EmergencyAlert extends $pb.GeneratedMessage {
  factory EmergencyAlert({
    EmergencyAlert_Type? type,
    $core.String? authoringUid,
    $core.String? cancelReferenceUid,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (authoringUid != null) {
      $result.authoringUid = authoringUid;
    }
    if (cancelReferenceUid != null) {
      $result.cancelReferenceUid = cancelReferenceUid;
    }
    return $result;
  }
  EmergencyAlert._() : super();
  factory EmergencyAlert.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmergencyAlert.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmergencyAlert', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..e<EmergencyAlert_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: EmergencyAlert_Type.Type_Unspecified, valueOf: EmergencyAlert_Type.valueOf, enumValues: EmergencyAlert_Type.values)
    ..aOS(2, _omitFieldNames ? '' : 'authoringUid')
    ..aOS(3, _omitFieldNames ? '' : 'cancelReferenceUid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmergencyAlert clone() => EmergencyAlert()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmergencyAlert copyWith(void Function(EmergencyAlert) updates) => super.copyWith((message) => updates(message as EmergencyAlert)) as EmergencyAlert;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmergencyAlert create() => EmergencyAlert._();
  EmergencyAlert createEmptyInstance() => create();
  static $pb.PbList<EmergencyAlert> createRepeated() => $pb.PbList<EmergencyAlert>();
  @$core.pragma('dart2js:noInline')
  static EmergencyAlert getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmergencyAlert>(create);
  static EmergencyAlert? _defaultInstance;

  ///
  ///  Alert discriminator.
  @$pb.TagNumber(1)
  EmergencyAlert_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(EmergencyAlert_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  ///
  ///  UID of the unit that raised the alert. Often the same as
  ///  TAKPacketV2.uid but can be a parent device uid when a tracker raises
  ///  an alert on behalf of a dismount.
  @$pb.TagNumber(2)
  $core.String get authoringUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set authoringUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthoringUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthoringUid() => clearField(2);

  ///
  ///  For Type_Cancel: the uid of the alert being cancelled. Empty for
  ///  non-cancel alert types.
  @$pb.TagNumber(3)
  $core.String get cancelReferenceUid => $_getSZ(2);
  @$pb.TagNumber(3)
  set cancelReferenceUid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCancelReferenceUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearCancelReferenceUid() => clearField(3);
}

///
///  Task / engage request (CoT type t-s).
///
///  Mirrors ATAK's TaskCotReceiver / CotTaskBuilder workflow. The envelope
///  carries the task's originating uid (implicit requester), position, and
///  creation time; the fields below carry structured metadata the raw-detail
///  fallback currently loses.
///
///  Fields are deliberately lean — this variant is closer to the MTU ceiling
///  than the others, so every string is capped in options.
class TaskRequest extends $pb.GeneratedMessage {
  factory TaskRequest({
    $core.String? taskType,
    $core.String? targetUid,
    $core.String? assigneeUid,
    TaskRequest_Priority? priority,
    TaskRequest_Status? status,
    $core.String? note,
  }) {
    final $result = create();
    if (taskType != null) {
      $result.taskType = taskType;
    }
    if (targetUid != null) {
      $result.targetUid = targetUid;
    }
    if (assigneeUid != null) {
      $result.assigneeUid = assigneeUid;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (status != null) {
      $result.status = status;
    }
    if (note != null) {
      $result.note = note;
    }
    return $result;
  }
  TaskRequest._() : super();
  factory TaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskType')
    ..aOS(2, _omitFieldNames ? '' : 'targetUid')
    ..aOS(3, _omitFieldNames ? '' : 'assigneeUid')
    ..e<TaskRequest_Priority>(4, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: TaskRequest_Priority.Priority_Unspecified, valueOf: TaskRequest_Priority.valueOf, enumValues: TaskRequest_Priority.values)
    ..e<TaskRequest_Status>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskRequest_Status.Status_Unspecified, valueOf: TaskRequest_Status.valueOf, enumValues: TaskRequest_Status.values)
    ..aOS(6, _omitFieldNames ? '' : 'note')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskRequest clone() => TaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskRequest copyWith(void Function(TaskRequest) updates) => super.copyWith((message) => updates(message as TaskRequest)) as TaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskRequest create() => TaskRequest._();
  TaskRequest createEmptyInstance() => create();
  static $pb.PbList<TaskRequest> createRepeated() => $pb.PbList<TaskRequest>();
  @$core.pragma('dart2js:noInline')
  static TaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskRequest>(create);
  static TaskRequest? _defaultInstance;

  ///
  ///  Short tag for the task category (e.g. "engage", "observe", "recon",
  ///  "rescue"). Free text on the wire so ATAK-specific task taxonomies
  ///  don't need proto coordination; capped tight in options.
  @$pb.TagNumber(1)
  $core.String get taskType => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskType() => clearField(1);

  ///
  ///  UID of the target / map item being tasked.
  @$pb.TagNumber(2)
  $core.String get targetUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetUid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetUid() => clearField(2);

  ///
  ///  UID of the assigned unit. Empty = unassigned / broadcast task.
  @$pb.TagNumber(3)
  $core.String get assigneeUid => $_getSZ(2);
  @$pb.TagNumber(3)
  set assigneeUid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssigneeUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssigneeUid() => clearField(3);

  @$pb.TagNumber(4)
  TaskRequest_Priority get priority => $_getN(3);
  @$pb.TagNumber(4)
  set priority(TaskRequest_Priority v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPriority() => $_has(3);
  @$pb.TagNumber(4)
  void clearPriority() => clearField(4);

  @$pb.TagNumber(5)
  TaskRequest_Status get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(TaskRequest_Status v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  ///
  ///  Optional short note (reason, constraints, grid reference). Capped
  ///  tight in options to keep the worst-case under the LoRa MTU.
  @$pb.TagNumber(6)
  $core.String get note => $_getSZ(5);
  @$pb.TagNumber(6)
  set note($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNote() => $_has(5);
  @$pb.TagNumber(6)
  void clearNote() => clearField(6);
}

///
///  Weather annotation from <environment> CoT detail element.
///
///  Attaches to any TAKPacketV2 regardless of payload_variant — an Aircraft,
///  PLI, or Marker can all carry observed conditions at the emitting station.
///  ATAK-CIV ships an XSD for <environment> but no dedicated handler, so the
///  element round-trips through the generic detail pipeline; this message
///  promotes it to a first-class structured field.
///
///  Target wire cost: ~6-8 bytes compressed with a fully populated instance.
///
///  Named `TAKEnvironment` (not just `Environment`) because the bare name
///  collides with `SwiftUI.Environment` — every SwiftUI view in a consuming
///  iOS app uses the `@Environment` property wrapper, and importing the
///  generated proto module would make `Environment` ambiguous in every one
///  of those files. The `TAK` prefix matches the convention used by the
///  outer `TAKPacketV2` wrapper and is unambiguous across all target
///  languages (Swift, Kotlin, Python, TypeScript, C#).
class TAKEnvironment extends $pb.GeneratedMessage {
  factory TAKEnvironment({
    $core.int? temperatureCX10,
    $core.int? windDirectionDeg,
    $core.int? windSpeedCmS,
  }) {
    final $result = create();
    if (temperatureCX10 != null) {
      $result.temperatureCX10 = temperatureCX10;
    }
    if (windDirectionDeg != null) {
      $result.windDirectionDeg = windDirectionDeg;
    }
    if (windSpeedCmS != null) {
      $result.windSpeedCmS = windSpeedCmS;
    }
    return $result;
  }
  TAKEnvironment._() : super();
  factory TAKEnvironment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TAKEnvironment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TAKEnvironment', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'temperatureCX10', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'windDirectionDeg', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'windSpeedCmS', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TAKEnvironment clone() => TAKEnvironment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TAKEnvironment copyWith(void Function(TAKEnvironment) updates) => super.copyWith((message) => updates(message as TAKEnvironment)) as TAKEnvironment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TAKEnvironment create() => TAKEnvironment._();
  TAKEnvironment createEmptyInstance() => create();
  static $pb.PbList<TAKEnvironment> createRepeated() => $pb.PbList<TAKEnvironment>();
  @$core.pragma('dart2js:noInline')
  static TAKEnvironment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TAKEnvironment>(create);
  static TAKEnvironment? _defaultInstance;

  ///
  ///  Temperature in deci-degrees Celsius. 225 = 22.5°C.
  ///  Range covers -50°C to +50°C (-500 to +500) which spans every realistic
  ///  outdoor TAK deployment. sint32 because negative temps are common in
  ///  cold-weather ops.
  @$pb.TagNumber(1)
  $core.int get temperatureCX10 => $_getIZ(0);
  @$pb.TagNumber(1)
  set temperatureCX10($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemperatureCX10() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemperatureCX10() => clearField(1);

  ///
  ///  Wind direction in whole degrees, 0-359. "Direction FROM" per
  ///  meteorological convention (matches CoT / ATAK).
  @$pb.TagNumber(2)
  $core.int get windDirectionDeg => $_getIZ(1);
  @$pb.TagNumber(2)
  set windDirectionDeg($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWindDirectionDeg() => $_has(1);
  @$pb.TagNumber(2)
  void clearWindDirectionDeg() => clearField(2);

  ///
  ///  Wind speed in cm/s. Matches the unit of TAKPacketV2.speed for
  ///  consistency. 1200 = 12.00 m/s = ~27 mph.
  @$pb.TagNumber(3)
  $core.int get windSpeedCmS => $_getIZ(2);
  @$pb.TagNumber(3)
  set windSpeedCmS($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWindSpeedCmS() => $_has(2);
  @$pb.TagNumber(3)
  void clearWindSpeedCmS() => clearField(3);
}

///
///  Sensor field-of-view cone from <sensor> CoT detail element.
///
///  Encodes the 8 geometry attributes that ATAK-CIV's SensorDetailHandler
///  reads from the wire; drops the 9 visual-styling attributes that are
///  receiver-side render hints (fovAlpha, fovRed/Green/Blue, strokeColor,
///  strokeWeight, displayMagneticReference, hideFov, fovLabels, rangeLines).
///  The receiving ATAK client restores those from its own defaults, same as
///  every other CoT carried over Meshtastic today.
///
///  Attaches to any TAKPacketV2 — a PLI with a sensor on the operator's head,
///  an Aircraft with a FLIR turret, a Marker dropped on a UAV.
///  Target wire cost: ~7-14 bytes compressed (dominated by model string).
class SensorFov extends $pb.GeneratedMessage {
  factory SensorFov({
    SensorFov_SensorType? type,
    $core.int? azimuthDeg,
    $core.int? rangeM,
    $core.int? fovHorizontalDeg,
    $core.int? fovVerticalDeg,
    $core.int? elevationDeg,
    $core.int? rollDeg,
    $core.String? model,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (azimuthDeg != null) {
      $result.azimuthDeg = azimuthDeg;
    }
    if (rangeM != null) {
      $result.rangeM = rangeM;
    }
    if (fovHorizontalDeg != null) {
      $result.fovHorizontalDeg = fovHorizontalDeg;
    }
    if (fovVerticalDeg != null) {
      $result.fovVerticalDeg = fovVerticalDeg;
    }
    if (elevationDeg != null) {
      $result.elevationDeg = elevationDeg;
    }
    if (rollDeg != null) {
      $result.rollDeg = rollDeg;
    }
    if (model != null) {
      $result.model = model;
    }
    return $result;
  }
  SensorFov._() : super();
  factory SensorFov.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SensorFov.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SensorFov', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..e<SensorFov_SensorType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SensorFov_SensorType.SensorType_Unspecified, valueOf: SensorFov_SensorType.valueOf, enumValues: SensorFov_SensorType.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'azimuthDeg', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rangeM', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fovHorizontalDeg', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'fovVerticalDeg', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'elevationDeg', $pb.PbFieldType.OS3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'rollDeg', $pb.PbFieldType.OS3)
    ..aOS(8, _omitFieldNames ? '' : 'model')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SensorFov clone() => SensorFov()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SensorFov copyWith(void Function(SensorFov) updates) => super.copyWith((message) => updates(message as SensorFov)) as SensorFov;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorFov create() => SensorFov._();
  SensorFov createEmptyInstance() => create();
  static $pb.PbList<SensorFov> createRepeated() => $pb.PbList<SensorFov>();
  @$core.pragma('dart2js:noInline')
  static SensorFov getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SensorFov>(create);
  static SensorFov? _defaultInstance;

  @$pb.TagNumber(1)
  SensorFov_SensorType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(SensorFov_SensorType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  ///
  ///  Azimuth in whole degrees, 0-359. "Pointing direction" of the cone axis,
  ///  measured clockwise from true north. Whole degrees match ATAK-CIV's
  ///  SensorDetailHandler default (270°) and save varint bytes over centi-deg.
  @$pb.TagNumber(2)
  $core.int get azimuthDeg => $_getIZ(1);
  @$pb.TagNumber(2)
  set azimuthDeg($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAzimuthDeg() => $_has(1);
  @$pb.TagNumber(2)
  void clearAzimuthDeg() => clearField(2);

  ///
  ///  Maximum range of the cone in meters.
  ///  Optional — if unset, receivers should use the ATAK-CIV default of 100m.
  @$pb.TagNumber(3)
  $core.int get rangeM => $_getIZ(2);
  @$pb.TagNumber(3)
  set rangeM($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRangeM() => $_has(2);
  @$pb.TagNumber(3)
  void clearRangeM() => clearField(3);

  ///
  ///  Horizontal field of view in whole degrees (cone's angular width).
  ///  ATAK-CIV default is 45°.
  @$pb.TagNumber(4)
  $core.int get fovHorizontalDeg => $_getIZ(3);
  @$pb.TagNumber(4)
  set fovHorizontalDeg($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFovHorizontalDeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearFovHorizontalDeg() => clearField(4);

  ///
  ///  Vertical field of view in whole degrees. ATAK-CIV default is 45°.
  ///  Optional — a value of 0 means "not set / use horizontal FOV".
  @$pb.TagNumber(5)
  $core.int get fovVerticalDeg => $_getIZ(4);
  @$pb.TagNumber(5)
  set fovVerticalDeg($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFovVerticalDeg() => $_has(4);
  @$pb.TagNumber(5)
  void clearFovVerticalDeg() => clearField(5);

  ///
  ///  Elevation angle in whole degrees. Positive = up, negative = down.
  ///  Range -90 to +90. sint32 for varint efficiency on small negatives.
  @$pb.TagNumber(6)
  $core.int get elevationDeg => $_getIZ(5);
  @$pb.TagNumber(6)
  set elevationDeg($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasElevationDeg() => $_has(5);
  @$pb.TagNumber(6)
  void clearElevationDeg() => clearField(6);

  ///
  ///  Roll (camera tilt) in whole degrees, -180 to +180.
  ///  Optional — use 0 if the sensor doesn't track roll.
  @$pb.TagNumber(7)
  $core.int get rollDeg => $_getIZ(6);
  @$pb.TagNumber(7)
  set rollDeg($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRollDeg() => $_has(6);
  @$pb.TagNumber(7)
  void clearRollDeg() => clearField(7);

  ///
  ///  Free-form device model identifier, e.g. "FLIR-Boson-640", "SEEK".
  ///  Optional — empty string means "unknown model" (ATAK-CIV default).
  @$pb.TagNumber(8)
  $core.String get model => $_getSZ(7);
  @$pb.TagNumber(8)
  set model($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasModel() => $_has(7);
  @$pb.TagNumber(8)
  void clearModel() => clearField(8);
}

///
///  TAKTALK chat message payload (CoT type m-t-t).
///
///  TAKTALK is an ATAK plugin for voice + text team messaging. The voice
///  audio stream goes over UDP/RTP and is NOT carried by the mesh — only
///  the text envelope (this message) is. `from_voice` marks messages sent
///  via push-to-talk speech-to-text so receivers can render a mic icon
///  next to the text.
///
///  Wire shape inside <event type="m-t-t">/<detail>:
///    <callsign>...</callsign>        - mapped to TAKPacketV2.callsign
///    <lang>English</lang>            - lang
///    <text>...</text>                - text
///    <chatroom-id>1</chatroom-id>    - chatroom_id
///    <voice/>                        - presence sets from_voice = true
class TakTalkMessage extends $pb.GeneratedMessage {
  factory TakTalkMessage({
    $core.String? text,
    $core.String? chatroomId,
    $core.String? lang,
    $core.bool? fromVoice,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    if (chatroomId != null) {
      $result.chatroomId = chatroomId;
    }
    if (lang != null) {
      $result.lang = lang;
    }
    if (fromVoice != null) {
      $result.fromVoice = fromVoice;
    }
    return $result;
  }
  TakTalkMessage._() : super();
  factory TakTalkMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TakTalkMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TakTalkMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'chatroomId')
    ..aOS(3, _omitFieldNames ? '' : 'lang')
    ..aOB(4, _omitFieldNames ? '' : 'fromVoice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TakTalkMessage clone() => TakTalkMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TakTalkMessage copyWith(void Function(TakTalkMessage) updates) => super.copyWith((message) => updates(message as TakTalkMessage)) as TakTalkMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TakTalkMessage create() => TakTalkMessage._();
  TakTalkMessage createEmptyInstance() => create();
  static $pb.PbList<TakTalkMessage> createRepeated() => $pb.PbList<TakTalkMessage>();
  @$core.pragma('dart2js:noInline')
  static TakTalkMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TakTalkMessage>(create);
  static TakTalkMessage? _defaultInstance;

  ///
  ///  The text body of the TAKTALK message (speech-to-text transcript when
  ///  from_voice = true, typed message otherwise).
  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  ///
  ///  TAKTALK chatroom identifier. May be a short id like "1" for the
  ///  default room or a UUID like "30b2755c-c547-44ef-a0cc-cdbd8a15616f"
  ///  for custom rooms (resolved by TakTalkRoomData broadcasts).
  ///  Empty = broadcast room.
  @$pb.TagNumber(2)
  $core.String get chatroomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set chatroomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChatroomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChatroomId() => clearField(2);

  ///
  ///  BCP-47-ish language tag or human-readable name (e.g. "en", "English").
  ///  Empty = unspecified.
  @$pb.TagNumber(3)
  $core.String get lang => $_getSZ(2);
  @$pb.TagNumber(3)
  set lang($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLang() => $_has(2);
  @$pb.TagNumber(3)
  void clearLang() => clearField(3);

  ///
  ///  True when the source CoT carried a <voice/> marker, i.e. the message
  ///  originated as push-to-talk speech-to-text. Lets receivers show a mic
  ///  icon. Proto3 only encodes when true so empty payload cost is 0 bytes.
  @$pb.TagNumber(4)
  $core.bool get fromVoice => $_getBF(3);
  @$pb.TagNumber(4)
  set fromVoice($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFromVoice() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromVoice() => clearField(4);
}

///
///  TAKTALK room/membership broadcast (CoT type y-).
///
///  Announces a TAKTALK chatroom's friendly name and roster so peers can
///  resolve room UUIDs (used in TakTalkMessage.chatroom_id and
///  GeoChat.room_id) to a display name and participant list. Not a chat
///  message itself — these events are emitted by TAKTALK when rooms are
///  created or memberships change.
class TakTalkRoomData extends $pb.GeneratedMessage {
  factory TakTalkRoomData({
  @$core.Deprecated('This field is deprecated.')
    $core.String? senderCallsign,
    $core.String? roomId,
    $core.String? roomName,
    $core.Iterable<$core.String>? participants,
  }) {
    final $result = create();
    if (senderCallsign != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.senderCallsign = senderCallsign;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (roomName != null) {
      $result.roomName = roomName;
    }
    if (participants != null) {
      $result.participants.addAll(participants);
    }
    return $result;
  }
  TakTalkRoomData._() : super();
  factory TakTalkRoomData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TakTalkRoomData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TakTalkRoomData', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'senderCallsign')
    ..aOS(2, _omitFieldNames ? '' : 'roomId')
    ..aOS(3, _omitFieldNames ? '' : 'roomName')
    ..pPS(4, _omitFieldNames ? '' : 'participants')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TakTalkRoomData clone() => TakTalkRoomData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TakTalkRoomData copyWith(void Function(TakTalkRoomData) updates) => super.copyWith((message) => updates(message as TakTalkRoomData)) as TakTalkRoomData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TakTalkRoomData create() => TakTalkRoomData._();
  TakTalkRoomData createEmptyInstance() => create();
  static $pb.PbList<TakTalkRoomData> createRepeated() => $pb.PbList<TakTalkRoomData>();
  @$core.pragma('dart2js:noInline')
  static TakTalkRoomData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TakTalkRoomData>(create);
  static TakTalkRoomData? _defaultInstance;

  ///
  ///  Callsign of the device broadcasting the room state (typically the
  ///  room owner / latest writer).
  ///
  ///  DEPRECATED in v0.3.2: always equals TAKPacketV2.callsign, so the wire
  ///  byte was redundant. Builders stop emitting this field in v0.3.2;
  ///  parsers still read it for one release so v0.3.1-encoded packets decode
  ///  cleanly. To be removed entirely in v0.4.x.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get senderCallsign => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set senderCallsign($core.String v) { $_setString(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasSenderCallsign() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearSenderCallsign() => clearField(1);

  ///
  ///  Room UUID, matches TakTalkMessage.chatroom_id / GeoChat.room_id on
  ///  messages routed into this room.
  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  ///
  ///  Friendly display name for the room (e.g. "test", "Alpha Team").
  @$pb.TagNumber(3)
  $core.String get roomName => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomName() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomName() => clearField(3);

  ///
  ///  Member callsigns. Wire-encoded as repeated strings; the underlying
  ///  CoT carries them as a single <chatroom-participants>A,B,C</> element
  ///  which parsers split / builders join on ','.
  @$pb.TagNumber(4)
  $core.List<$core.String> get participants => $_getList(3);
}

///
///  ATAK directed-routing recipient list (CoT <marti><dest callsign='X'/>…</marti>).
///
///  Present when an event is addressed to specific TAK users rather than the
///  broadcast group. TAKTALK gates voice TTS on this element matching the
///  receiver's callsign; directed b-t-f chats use it for the same purpose. A
///  missing <marti> means "broadcast to all peers", which is the default for
///  PLI, alerts, drawings, and most situational-awareness events.
///
///  Carried as repeated strings (not indexes into a per-packet table) because
///  the typical event has 1-2 destinations and table overhead would erase the
///  savings. Receivers that need the original XML element rebuild it from
///  dest_callsign on emit.
class Marti extends $pb.GeneratedMessage {
  factory Marti({
    $core.Iterable<$core.String>? destCallsign,
  }) {
    final $result = create();
    if (destCallsign != null) {
      $result.destCallsign.addAll(destCallsign);
    }
    return $result;
  }
  Marti._() : super();
  factory Marti.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Marti.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Marti', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'destCallsign')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Marti clone() => Marti()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Marti copyWith(void Function(Marti) updates) => super.copyWith((message) => updates(message as Marti)) as Marti;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Marti create() => Marti._();
  Marti createEmptyInstance() => create();
  static $pb.PbList<Marti> createRepeated() => $pb.PbList<Marti>();
  @$core.pragma('dart2js:noInline')
  static Marti getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Marti>(create);
  static Marti? _defaultInstance;

  ///
  ///  Recipient callsigns. Order is preserved end-to-end so receivers can show
  ///  primary-vs-cc distinction the same way ATAK does.
  ///
  ///  If dest_callsign is [TAKPacketV2.callsign] (self-addressed, unusual but
  ///  legal — e.g. ATAK echoing back to its own room), the builder still emits
  ///  the element so loopback shapes round-trip cleanly.
  @$pb.TagNumber(1)
  $core.List<$core.String> get destCallsign => $_getList(0);
}

enum TAKPacketV2_PayloadVariant {
  chat, 
  aircraft, 
  rawDetail, 
  shape, 
  marker, 
  rab, 
  route, 
  casevac, 
  emergency, 
  task, 
  taktalk, 
  taktalkRoom, 
  notSet
}

///
///  ATAK v2 packet with expanded CoT field support and zstd dictionary compression.
///  Sent on ATAK_PLUGIN_V2 port. The wire payload is:
///    [1 byte flags][zstd-compressed TAKPacketV2 protobuf]
///  Flags byte: bits 0-5 = dictionary ID, bits 6-7 = reserved.
class TAKPacketV2 extends $pb.GeneratedMessage {
  factory TAKPacketV2({
    CotType? cotTypeId,
    CotHow? how,
    $core.String? callsign,
    Team? team,
    MemberRole? role,
    $core.int? latitudeI,
    $core.int? longitudeI,
    $core.int? altitude,
    $core.int? speed,
    $core.int? course,
    $core.int? battery,
    GeoPointSource? geoSrc,
    GeoPointSource? altSrc,
    $core.String? uid,
    $core.String? deviceCallsign,
    $core.int? staleSeconds,
    $core.String? takVersion,
    $core.String? takDevice,
    $core.String? takPlatform,
    $core.String? takOs,
    $core.String? endpoint,
    $core.String? phone,
    $core.String? cotTypeStr,
    $core.String? remarks,
    TAKEnvironment? environment,
    SensorFov? sensorFov,
    Marti? marti,
    GeoChat? chat,
    AircraftTrack? aircraft,
    $core.List<$core.int>? rawDetail,
    DrawnShape? shape,
    Marker? marker,
    RangeAndBearing? rab,
    Route? route,
    CasevacReport? casevac,
    EmergencyAlert? emergency,
    TaskRequest? task,
    TakTalkMessage? taktalk,
    TakTalkRoomData? taktalkRoom,
  }) {
    final $result = create();
    if (cotTypeId != null) {
      $result.cotTypeId = cotTypeId;
    }
    if (how != null) {
      $result.how = how;
    }
    if (callsign != null) {
      $result.callsign = callsign;
    }
    if (team != null) {
      $result.team = team;
    }
    if (role != null) {
      $result.role = role;
    }
    if (latitudeI != null) {
      $result.latitudeI = latitudeI;
    }
    if (longitudeI != null) {
      $result.longitudeI = longitudeI;
    }
    if (altitude != null) {
      $result.altitude = altitude;
    }
    if (speed != null) {
      $result.speed = speed;
    }
    if (course != null) {
      $result.course = course;
    }
    if (battery != null) {
      $result.battery = battery;
    }
    if (geoSrc != null) {
      $result.geoSrc = geoSrc;
    }
    if (altSrc != null) {
      $result.altSrc = altSrc;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (deviceCallsign != null) {
      $result.deviceCallsign = deviceCallsign;
    }
    if (staleSeconds != null) {
      $result.staleSeconds = staleSeconds;
    }
    if (takVersion != null) {
      $result.takVersion = takVersion;
    }
    if (takDevice != null) {
      $result.takDevice = takDevice;
    }
    if (takPlatform != null) {
      $result.takPlatform = takPlatform;
    }
    if (takOs != null) {
      $result.takOs = takOs;
    }
    if (endpoint != null) {
      $result.endpoint = endpoint;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (cotTypeStr != null) {
      $result.cotTypeStr = cotTypeStr;
    }
    if (remarks != null) {
      $result.remarks = remarks;
    }
    if (environment != null) {
      $result.environment = environment;
    }
    if (sensorFov != null) {
      $result.sensorFov = sensorFov;
    }
    if (marti != null) {
      $result.marti = marti;
    }
    if (chat != null) {
      $result.chat = chat;
    }
    if (aircraft != null) {
      $result.aircraft = aircraft;
    }
    if (rawDetail != null) {
      $result.rawDetail = rawDetail;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (marker != null) {
      $result.marker = marker;
    }
    if (rab != null) {
      $result.rab = rab;
    }
    if (route != null) {
      $result.route = route;
    }
    if (casevac != null) {
      $result.casevac = casevac;
    }
    if (emergency != null) {
      $result.emergency = emergency;
    }
    if (task != null) {
      $result.task = task;
    }
    if (taktalk != null) {
      $result.taktalk = taktalk;
    }
    if (taktalkRoom != null) {
      $result.taktalkRoom = taktalkRoom;
    }
    return $result;
  }
  TAKPacketV2._() : super();
  factory TAKPacketV2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TAKPacketV2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TAKPacketV2_PayloadVariant> _TAKPacketV2_PayloadVariantByTag = {
    31 : TAKPacketV2_PayloadVariant.chat,
    32 : TAKPacketV2_PayloadVariant.aircraft,
    33 : TAKPacketV2_PayloadVariant.rawDetail,
    34 : TAKPacketV2_PayloadVariant.shape,
    35 : TAKPacketV2_PayloadVariant.marker,
    36 : TAKPacketV2_PayloadVariant.rab,
    37 : TAKPacketV2_PayloadVariant.route,
    38 : TAKPacketV2_PayloadVariant.casevac,
    39 : TAKPacketV2_PayloadVariant.emergency,
    40 : TAKPacketV2_PayloadVariant.task,
    41 : TAKPacketV2_PayloadVariant.taktalk,
    42 : TAKPacketV2_PayloadVariant.taktalkRoom,
    0 : TAKPacketV2_PayloadVariant.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TAKPacketV2', package: const $pb.PackageName(_omitMessageNames ? '' : 'meshtastic'), createEmptyInstance: create)
    ..oo(0, [31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42])
    ..e<CotType>(1, _omitFieldNames ? '' : 'cotTypeId', $pb.PbFieldType.OE, defaultOrMaker: CotType.CotType_Other, valueOf: CotType.valueOf, enumValues: CotType.values)
    ..e<CotHow>(2, _omitFieldNames ? '' : 'how', $pb.PbFieldType.OE, defaultOrMaker: CotHow.CotHow_Unspecified, valueOf: CotHow.valueOf, enumValues: CotHow.values)
    ..aOS(3, _omitFieldNames ? '' : 'callsign')
    ..e<Team>(4, _omitFieldNames ? '' : 'team', $pb.PbFieldType.OE, defaultOrMaker: Team.Unspecifed_Color, valueOf: Team.valueOf, enumValues: Team.values)
    ..e<MemberRole>(5, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: MemberRole.Unspecifed, valueOf: MemberRole.valueOf, enumValues: MemberRole.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'latitudeI', $pb.PbFieldType.OSF3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'longitudeI', $pb.PbFieldType.OSF3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'altitude', $pb.PbFieldType.OS3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'course', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'battery', $pb.PbFieldType.OU3)
    ..e<GeoPointSource>(12, _omitFieldNames ? '' : 'geoSrc', $pb.PbFieldType.OE, defaultOrMaker: GeoPointSource.GeoPointSource_Unspecified, valueOf: GeoPointSource.valueOf, enumValues: GeoPointSource.values)
    ..e<GeoPointSource>(13, _omitFieldNames ? '' : 'altSrc', $pb.PbFieldType.OE, defaultOrMaker: GeoPointSource.GeoPointSource_Unspecified, valueOf: GeoPointSource.valueOf, enumValues: GeoPointSource.values)
    ..aOS(14, _omitFieldNames ? '' : 'uid')
    ..aOS(15, _omitFieldNames ? '' : 'deviceCallsign')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'staleSeconds', $pb.PbFieldType.OU3)
    ..aOS(17, _omitFieldNames ? '' : 'takVersion')
    ..aOS(18, _omitFieldNames ? '' : 'takDevice')
    ..aOS(19, _omitFieldNames ? '' : 'takPlatform')
    ..aOS(20, _omitFieldNames ? '' : 'takOs')
    ..aOS(21, _omitFieldNames ? '' : 'endpoint')
    ..aOS(22, _omitFieldNames ? '' : 'phone')
    ..aOS(23, _omitFieldNames ? '' : 'cotTypeStr')
    ..aOS(24, _omitFieldNames ? '' : 'remarks')
    ..aOM<TAKEnvironment>(25, _omitFieldNames ? '' : 'environment', subBuilder: TAKEnvironment.create)
    ..aOM<SensorFov>(26, _omitFieldNames ? '' : 'sensorFov', subBuilder: SensorFov.create)
    ..aOM<Marti>(29, _omitFieldNames ? '' : 'marti', subBuilder: Marti.create)
    ..aOM<GeoChat>(31, _omitFieldNames ? '' : 'chat', subBuilder: GeoChat.create)
    ..aOM<AircraftTrack>(32, _omitFieldNames ? '' : 'aircraft', subBuilder: AircraftTrack.create)
    ..a<$core.List<$core.int>>(33, _omitFieldNames ? '' : 'rawDetail', $pb.PbFieldType.OY)
    ..aOM<DrawnShape>(34, _omitFieldNames ? '' : 'shape', subBuilder: DrawnShape.create)
    ..aOM<Marker>(35, _omitFieldNames ? '' : 'marker', subBuilder: Marker.create)
    ..aOM<RangeAndBearing>(36, _omitFieldNames ? '' : 'rab', subBuilder: RangeAndBearing.create)
    ..aOM<Route>(37, _omitFieldNames ? '' : 'route', subBuilder: Route.create)
    ..aOM<CasevacReport>(38, _omitFieldNames ? '' : 'casevac', subBuilder: CasevacReport.create)
    ..aOM<EmergencyAlert>(39, _omitFieldNames ? '' : 'emergency', subBuilder: EmergencyAlert.create)
    ..aOM<TaskRequest>(40, _omitFieldNames ? '' : 'task', subBuilder: TaskRequest.create)
    ..aOM<TakTalkMessage>(41, _omitFieldNames ? '' : 'taktalk', subBuilder: TakTalkMessage.create)
    ..aOM<TakTalkRoomData>(42, _omitFieldNames ? '' : 'taktalkRoom', subBuilder: TakTalkRoomData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TAKPacketV2 clone() => TAKPacketV2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TAKPacketV2 copyWith(void Function(TAKPacketV2) updates) => super.copyWith((message) => updates(message as TAKPacketV2)) as TAKPacketV2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TAKPacketV2 create() => TAKPacketV2._();
  TAKPacketV2 createEmptyInstance() => create();
  static $pb.PbList<TAKPacketV2> createRepeated() => $pb.PbList<TAKPacketV2>();
  @$core.pragma('dart2js:noInline')
  static TAKPacketV2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TAKPacketV2>(create);
  static TAKPacketV2? _defaultInstance;

  TAKPacketV2_PayloadVariant whichPayloadVariant() => _TAKPacketV2_PayloadVariantByTag[$_whichOneof(0)]!;
  void clearPayloadVariant() => clearField($_whichOneof(0));

  ///
  ///  Well-known CoT event type enum.
  ///  Use CotType_Other with cot_type_str for unknown types.
  @$pb.TagNumber(1)
  CotType get cotTypeId => $_getN(0);
  @$pb.TagNumber(1)
  set cotTypeId(CotType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCotTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCotTypeId() => clearField(1);

  ///
  ///  How the coordinates were generated
  @$pb.TagNumber(2)
  CotHow get how => $_getN(1);
  @$pb.TagNumber(2)
  set how(CotHow v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHow() => $_has(1);
  @$pb.TagNumber(2)
  void clearHow() => clearField(2);

  ///
  ///  Callsign
  @$pb.TagNumber(3)
  $core.String get callsign => $_getSZ(2);
  @$pb.TagNumber(3)
  set callsign($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallsign() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallsign() => clearField(3);

  ///
  ///  Team color assignment
  @$pb.TagNumber(4)
  Team get team => $_getN(3);
  @$pb.TagNumber(4)
  set team(Team v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTeam() => $_has(3);
  @$pb.TagNumber(4)
  void clearTeam() => clearField(4);

  ///
  ///  Role of the group member
  @$pb.TagNumber(5)
  MemberRole get role => $_getN(4);
  @$pb.TagNumber(5)
  set role(MemberRole v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRole() => $_has(4);
  @$pb.TagNumber(5)
  void clearRole() => clearField(5);

  ///
  ///  Latitude, multiply by 1e-7 to get degrees in floating point
  @$pb.TagNumber(6)
  $core.int get latitudeI => $_getIZ(5);
  @$pb.TagNumber(6)
  set latitudeI($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLatitudeI() => $_has(5);
  @$pb.TagNumber(6)
  void clearLatitudeI() => clearField(6);

  ///
  ///  Longitude, multiply by 1e-7 to get degrees in floating point
  @$pb.TagNumber(7)
  $core.int get longitudeI => $_getIZ(6);
  @$pb.TagNumber(7)
  set longitudeI($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLongitudeI() => $_has(6);
  @$pb.TagNumber(7)
  void clearLongitudeI() => clearField(7);

  ///
  ///  Altitude in meters (HAE). ATAK's "no altitude" sentinel is hae=9999999.0.
  ///
  ///  NOTE: an earlier v0.4.0 attempt made this `optional` to omit the 9999999
  ///  sentinel from the wire, but measurement showed it was net-negative: the
  ///  zstd dictionary already compresses the literal 9999999 to ~nothing, while
  ///  proto3 `optional` forces a genuine 0 m HAE (common on routes/drawings that
  ///  carry hae="0.0" or omit hae → parsed as 0) to encode explicitly (+2 bytes),
  ///  which REGRESSED the worst-case route fixture. Kept as a plain field.
  @$pb.TagNumber(8)
  $core.int get altitude => $_getIZ(7);
  @$pb.TagNumber(8)
  set altitude($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAltitude() => $_has(7);
  @$pb.TagNumber(8)
  void clearAltitude() => clearField(8);

  ///
  ///  Speed in cm/s
  @$pb.TagNumber(9)
  $core.int get speed => $_getIZ(8);
  @$pb.TagNumber(9)
  set speed($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSpeed() => $_has(8);
  @$pb.TagNumber(9)
  void clearSpeed() => clearField(9);

  ///
  ///  Course in degrees * 100 (0-36000)
  @$pb.TagNumber(10)
  $core.int get course => $_getIZ(9);
  @$pb.TagNumber(10)
  set course($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCourse() => $_has(9);
  @$pb.TagNumber(10)
  void clearCourse() => clearField(10);

  ///
  ///  Battery level 0-100
  @$pb.TagNumber(11)
  $core.int get battery => $_getIZ(10);
  @$pb.TagNumber(11)
  set battery($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBattery() => $_has(10);
  @$pb.TagNumber(11)
  void clearBattery() => clearField(11);

  ///
  ///  Geopoint source
  @$pb.TagNumber(12)
  GeoPointSource get geoSrc => $_getN(11);
  @$pb.TagNumber(12)
  set geoSrc(GeoPointSource v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasGeoSrc() => $_has(11);
  @$pb.TagNumber(12)
  void clearGeoSrc() => clearField(12);

  ///
  ///  Altitude source
  @$pb.TagNumber(13)
  GeoPointSource get altSrc => $_getN(12);
  @$pb.TagNumber(13)
  set altSrc(GeoPointSource v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasAltSrc() => $_has(12);
  @$pb.TagNumber(13)
  void clearAltSrc() => clearField(13);

  ///
  ///  Device UID (UUID string or device ID like "ANDROID-xxxx")
  @$pb.TagNumber(14)
  $core.String get uid => $_getSZ(13);
  @$pb.TagNumber(14)
  set uid($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUid() => $_has(13);
  @$pb.TagNumber(14)
  void clearUid() => clearField(14);

  ///
  ///  Device callsign
  @$pb.TagNumber(15)
  $core.String get deviceCallsign => $_getSZ(14);
  @$pb.TagNumber(15)
  set deviceCallsign($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeviceCallsign() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeviceCallsign() => clearField(15);

  ///
  ///  Stale time as seconds offset from event time
  @$pb.TagNumber(16)
  $core.int get staleSeconds => $_getIZ(15);
  @$pb.TagNumber(16)
  set staleSeconds($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasStaleSeconds() => $_has(15);
  @$pb.TagNumber(16)
  void clearStaleSeconds() => clearField(16);

  ///
  ///  TAK client version string
  @$pb.TagNumber(17)
  $core.String get takVersion => $_getSZ(16);
  @$pb.TagNumber(17)
  set takVersion($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasTakVersion() => $_has(16);
  @$pb.TagNumber(17)
  void clearTakVersion() => clearField(17);

  ///
  ///  TAK device model
  @$pb.TagNumber(18)
  $core.String get takDevice => $_getSZ(17);
  @$pb.TagNumber(18)
  set takDevice($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasTakDevice() => $_has(17);
  @$pb.TagNumber(18)
  void clearTakDevice() => clearField(18);

  ///
  ///  TAK platform (ATAK-CIV, WebTAK, etc.)
  @$pb.TagNumber(19)
  $core.String get takPlatform => $_getSZ(18);
  @$pb.TagNumber(19)
  set takPlatform($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasTakPlatform() => $_has(18);
  @$pb.TagNumber(19)
  void clearTakPlatform() => clearField(19);

  ///
  ///  TAK OS version
  @$pb.TagNumber(20)
  $core.String get takOs => $_getSZ(19);
  @$pb.TagNumber(20)
  set takOs($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasTakOs() => $_has(19);
  @$pb.TagNumber(20)
  void clearTakOs() => clearField(20);

  ///
  ///  Connection endpoint
  @$pb.TagNumber(21)
  $core.String get endpoint => $_getSZ(20);
  @$pb.TagNumber(21)
  set endpoint($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasEndpoint() => $_has(20);
  @$pb.TagNumber(21)
  void clearEndpoint() => clearField(21);

  ///
  ///  Phone number
  @$pb.TagNumber(22)
  $core.String get phone => $_getSZ(21);
  @$pb.TagNumber(22)
  set phone($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasPhone() => $_has(21);
  @$pb.TagNumber(22)
  void clearPhone() => clearField(22);

  ///
  ///  CoT event type string, only populated when cot_type_id is CotType_Other
  @$pb.TagNumber(23)
  $core.String get cotTypeStr => $_getSZ(22);
  @$pb.TagNumber(23)
  set cotTypeStr($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasCotTypeStr() => $_has(22);
  @$pb.TagNumber(23)
  void clearCotTypeStr() => clearField(23);

  ///
  ///  Optional remarks / free-text annotation from the <remarks> element.
  ///  Populated for non-GeoChat payload types (shapes, markers, routes, etc.)
  ///  when the original CoT event carried non-empty remarks text.
  ///  GeoChat messages carry their text in GeoChat.message instead.
  ///  Empty string (proto3 default) means no remarks were present.
  @$pb.TagNumber(24)
  $core.String get remarks => $_getSZ(23);
  @$pb.TagNumber(24)
  set remarks($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasRemarks() => $_has(23);
  @$pb.TagNumber(24)
  void clearRemarks() => clearField(24);

  ///
  ///  Observed weather conditions (temperature, wind). From <environment>.
  ///  Type is `TAKEnvironment`, not `Environment`, to avoid colliding with
  ///  SwiftUI's `@Environment` property wrapper in iOS consumers.
  @$pb.TagNumber(25)
  TAKEnvironment get environment => $_getN(24);
  @$pb.TagNumber(25)
  set environment(TAKEnvironment v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasEnvironment() => $_has(24);
  @$pb.TagNumber(25)
  void clearEnvironment() => clearField(25);
  @$pb.TagNumber(25)
  TAKEnvironment ensureEnvironment() => $_ensure(24);

  ///
  ///  Sensor field-of-view cone (camera, FLIR, laser, etc.). From <sensor>.
  @$pb.TagNumber(26)
  SensorFov get sensorFov => $_getN(25);
  @$pb.TagNumber(26)
  set sensorFov(SensorFov v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasSensorFov() => $_has(25);
  @$pb.TagNumber(26)
  void clearSensorFov() => clearField(26);
  @$pb.TagNumber(26)
  SensorFov ensureSensorFov() => $_ensure(25);

  ///
  ///  Directed-routing recipient list (CoT <marti><dest callsign='X'/>…</marti>).
  ///  Empty / unset = broadcast to all peers (the default for situational-awareness
  ///  events). Populated for TAKTALK m-t-t, directed b-t-f DMs, and any other CoT
  ///  shape that ATAK addresses to specific recipients. TAKTALK gates voice TTS
  ///  playback on this element matching the receiver's callsign, so dropping it
  ///  silently breaks voice messaging end-to-end.
  ///
  ///  See Marti.
  @$pb.TagNumber(29)
  Marti get marti => $_getN(26);
  @$pb.TagNumber(29)
  set marti(Marti v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasMarti() => $_has(26);
  @$pb.TagNumber(29)
  void clearMarti() => clearField(29);
  @$pb.TagNumber(29)
  Marti ensureMarti() => $_ensure(26);

  ///
  ///  ATAK GeoChat message
  @$pb.TagNumber(31)
  GeoChat get chat => $_getN(27);
  @$pb.TagNumber(31)
  set chat(GeoChat v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasChat() => $_has(27);
  @$pb.TagNumber(31)
  void clearChat() => clearField(31);
  @$pb.TagNumber(31)
  GeoChat ensureChat() => $_ensure(27);

  ///
  ///  Aircraft track data (ADS-B, military air)
  @$pb.TagNumber(32)
  AircraftTrack get aircraft => $_getN(28);
  @$pb.TagNumber(32)
  set aircraft(AircraftTrack v) { setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasAircraft() => $_has(28);
  @$pb.TagNumber(32)
  void clearAircraft() => clearField(32);
  @$pb.TagNumber(32)
  AircraftTrack ensureAircraft() => $_ensure(28);

  ///
  ///  Generic CoT detail XML for unmapped types. Kept as a fallback for CoT
  ///  types not yet promoted to a typed variant; drawings, markers, ranging
  ///  tools, and routes have dedicated variants below and should not land here.
  @$pb.TagNumber(33)
  $core.List<$core.int> get rawDetail => $_getN(29);
  @$pb.TagNumber(33)
  set rawDetail($core.List<$core.int> v) { $_setBytes(29, v); }
  @$pb.TagNumber(33)
  $core.bool hasRawDetail() => $_has(29);
  @$pb.TagNumber(33)
  void clearRawDetail() => clearField(33);

  ///
  ///  User-drawn tactical graphic: circle, rectangle, polygon, polyline,
  ///  telestration, ranging circle, or bullseye. See DrawnShape.
  @$pb.TagNumber(34)
  DrawnShape get shape => $_getN(30);
  @$pb.TagNumber(34)
  set shape(DrawnShape v) { setField(34, v); }
  @$pb.TagNumber(34)
  $core.bool hasShape() => $_has(30);
  @$pb.TagNumber(34)
  void clearShape() => clearField(34);
  @$pb.TagNumber(34)
  DrawnShape ensureShape() => $_ensure(30);

  ///
  ///  Fixed point of interest: spot marker, waypoint, checkpoint, 2525
  ///  symbol, or custom icon. See Marker.
  @$pb.TagNumber(35)
  Marker get marker => $_getN(31);
  @$pb.TagNumber(35)
  set marker(Marker v) { setField(35, v); }
  @$pb.TagNumber(35)
  $core.bool hasMarker() => $_has(31);
  @$pb.TagNumber(35)
  void clearMarker() => clearField(35);
  @$pb.TagNumber(35)
  Marker ensureMarker() => $_ensure(31);

  ///
  ///  Range and bearing measurement line. See RangeAndBearing.
  @$pb.TagNumber(36)
  RangeAndBearing get rab => $_getN(32);
  @$pb.TagNumber(36)
  set rab(RangeAndBearing v) { setField(36, v); }
  @$pb.TagNumber(36)
  $core.bool hasRab() => $_has(32);
  @$pb.TagNumber(36)
  void clearRab() => clearField(36);
  @$pb.TagNumber(36)
  RangeAndBearing ensureRab() => $_ensure(32);

  ///
  ///  Named route with ordered waypoints and control points. See Route.
  @$pb.TagNumber(37)
  Route get route => $_getN(33);
  @$pb.TagNumber(37)
  set route(Route v) { setField(37, v); }
  @$pb.TagNumber(37)
  $core.bool hasRoute() => $_has(33);
  @$pb.TagNumber(37)
  void clearRoute() => clearField(37);
  @$pb.TagNumber(37)
  Route ensureRoute() => $_ensure(33);

  ///
  ///  9-line MEDEVAC request. See CasevacReport.
  @$pb.TagNumber(38)
  CasevacReport get casevac => $_getN(34);
  @$pb.TagNumber(38)
  set casevac(CasevacReport v) { setField(38, v); }
  @$pb.TagNumber(38)
  $core.bool hasCasevac() => $_has(34);
  @$pb.TagNumber(38)
  void clearCasevac() => clearField(38);
  @$pb.TagNumber(38)
  CasevacReport ensureCasevac() => $_ensure(34);

  ///
  ///  Emergency beacon / 911 alert. See EmergencyAlert.
  @$pb.TagNumber(39)
  EmergencyAlert get emergency => $_getN(35);
  @$pb.TagNumber(39)
  set emergency(EmergencyAlert v) { setField(39, v); }
  @$pb.TagNumber(39)
  $core.bool hasEmergency() => $_has(35);
  @$pb.TagNumber(39)
  void clearEmergency() => clearField(39);
  @$pb.TagNumber(39)
  EmergencyAlert ensureEmergency() => $_ensure(35);

  ///
  ///  Task / engage request. See TaskRequest.
  @$pb.TagNumber(40)
  TaskRequest get task => $_getN(36);
  @$pb.TagNumber(40)
  set task(TaskRequest v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasTask() => $_has(36);
  @$pb.TagNumber(40)
  void clearTask() => clearField(40);
  @$pb.TagNumber(40)
  TaskRequest ensureTask() => $_ensure(36);

  ///
  ///  TAKTALK chat message (CoT type m-t-t). See TakTalkMessage.
  ///  Voice audio itself rides UDP/RTP outside the mesh; this carries the
  ///  text envelope plus a from_voice marker for receiver UX.
  @$pb.TagNumber(41)
  TakTalkMessage get taktalk => $_getN(37);
  @$pb.TagNumber(41)
  set taktalk(TakTalkMessage v) { setField(41, v); }
  @$pb.TagNumber(41)
  $core.bool hasTaktalk() => $_has(37);
  @$pb.TagNumber(41)
  void clearTaktalk() => clearField(41);
  @$pb.TagNumber(41)
  TakTalkMessage ensureTaktalk() => $_ensure(37);

  ///
  ///  TAKTALK room/membership broadcast (CoT type y-). See TakTalkRoomData.
  ///  Resolves room UUIDs (used in TakTalkMessage.chatroom_id and
  ///  GeoChat.room_id) to display name + roster on receivers.
  @$pb.TagNumber(42)
  TakTalkRoomData get taktalkRoom => $_getN(38);
  @$pb.TagNumber(42)
  set taktalkRoom(TakTalkRoomData v) { setField(42, v); }
  @$pb.TagNumber(42)
  $core.bool hasTaktalkRoom() => $_has(38);
  @$pb.TagNumber(42)
  void clearTaktalkRoom() => clearField(42);
  @$pb.TagNumber(42)
  TakTalkRoomData ensureTaktalkRoom() => $_ensure(38);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
