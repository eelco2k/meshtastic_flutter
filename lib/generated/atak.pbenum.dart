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

class Team extends $pb.ProtobufEnum {
  static const Team Unspecifed_Color = Team._(0, _omitEnumNames ? '' : 'Unspecifed_Color');
  static const Team White = Team._(1, _omitEnumNames ? '' : 'White');
  static const Team Yellow = Team._(2, _omitEnumNames ? '' : 'Yellow');
  static const Team Orange = Team._(3, _omitEnumNames ? '' : 'Orange');
  static const Team Magenta = Team._(4, _omitEnumNames ? '' : 'Magenta');
  static const Team Red = Team._(5, _omitEnumNames ? '' : 'Red');
  static const Team Maroon = Team._(6, _omitEnumNames ? '' : 'Maroon');
  static const Team Purple = Team._(7, _omitEnumNames ? '' : 'Purple');
  static const Team Dark_Blue = Team._(8, _omitEnumNames ? '' : 'Dark_Blue');
  static const Team Blue = Team._(9, _omitEnumNames ? '' : 'Blue');
  static const Team Cyan = Team._(10, _omitEnumNames ? '' : 'Cyan');
  static const Team Teal = Team._(11, _omitEnumNames ? '' : 'Teal');
  static const Team Green = Team._(12, _omitEnumNames ? '' : 'Green');
  static const Team Dark_Green = Team._(13, _omitEnumNames ? '' : 'Dark_Green');
  static const Team Brown = Team._(14, _omitEnumNames ? '' : 'Brown');

  static const $core.List<Team> values = <Team> [
    Unspecifed_Color,
    White,
    Yellow,
    Orange,
    Magenta,
    Red,
    Maroon,
    Purple,
    Dark_Blue,
    Blue,
    Cyan,
    Teal,
    Green,
    Dark_Green,
    Brown,
  ];

  static final $core.Map<$core.int, Team> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Team? valueOf($core.int value) => _byValue[value];

  const Team._($core.int v, $core.String n) : super(v, n);
}

///
///  Role of the group member
class MemberRole extends $pb.ProtobufEnum {
  static const MemberRole Unspecifed = MemberRole._(0, _omitEnumNames ? '' : 'Unspecifed');
  static const MemberRole TeamMember = MemberRole._(1, _omitEnumNames ? '' : 'TeamMember');
  static const MemberRole TeamLead = MemberRole._(2, _omitEnumNames ? '' : 'TeamLead');
  static const MemberRole HQ = MemberRole._(3, _omitEnumNames ? '' : 'HQ');
  static const MemberRole Sniper = MemberRole._(4, _omitEnumNames ? '' : 'Sniper');
  static const MemberRole Medic = MemberRole._(5, _omitEnumNames ? '' : 'Medic');
  static const MemberRole ForwardObserver = MemberRole._(6, _omitEnumNames ? '' : 'ForwardObserver');
  static const MemberRole RTO = MemberRole._(7, _omitEnumNames ? '' : 'RTO');
  static const MemberRole K9 = MemberRole._(8, _omitEnumNames ? '' : 'K9');

  static const $core.List<MemberRole> values = <MemberRole> [
    Unspecifed,
    TeamMember,
    TeamLead,
    HQ,
    Sniper,
    Medic,
    ForwardObserver,
    RTO,
    K9,
  ];

  static final $core.Map<$core.int, MemberRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MemberRole? valueOf($core.int value) => _byValue[value];

  const MemberRole._($core.int v, $core.String n) : super(v, n);
}

///
///  CoT how field values.
///  Represents how the coordinates were generated.
class CotHow extends $pb.ProtobufEnum {
  static const CotHow CotHow_Unspecified = CotHow._(0, _omitEnumNames ? '' : 'CotHow_Unspecified');
  static const CotHow CotHow_h_e = CotHow._(1, _omitEnumNames ? '' : 'CotHow_h_e');
  static const CotHow CotHow_m_g = CotHow._(2, _omitEnumNames ? '' : 'CotHow_m_g');
  static const CotHow CotHow_h_g_i_g_o = CotHow._(3, _omitEnumNames ? '' : 'CotHow_h_g_i_g_o');
  static const CotHow CotHow_m_r = CotHow._(4, _omitEnumNames ? '' : 'CotHow_m_r');
  static const CotHow CotHow_m_f = CotHow._(5, _omitEnumNames ? '' : 'CotHow_m_f');
  static const CotHow CotHow_m_p = CotHow._(6, _omitEnumNames ? '' : 'CotHow_m_p');
  static const CotHow CotHow_m_s = CotHow._(7, _omitEnumNames ? '' : 'CotHow_m_s');

  static const $core.List<CotHow> values = <CotHow> [
    CotHow_Unspecified,
    CotHow_h_e,
    CotHow_m_g,
    CotHow_h_g_i_g_o,
    CotHow_m_r,
    CotHow_m_f,
    CotHow_m_p,
    CotHow_m_s,
  ];

  static final $core.Map<$core.int, CotHow> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CotHow? valueOf($core.int value) => _byValue[value];

  const CotHow._($core.int v, $core.String n) : super(v, n);
}

///
///  Well-known CoT event types.
///  When the type is known, use the enum value for efficient encoding.
///  For unknown types, set cot_type_id to CotType_Other and populate cot_type_str.
class CotType extends $pb.ProtobufEnum {
  static const CotType CotType_Other = CotType._(0, _omitEnumNames ? '' : 'CotType_Other');
  static const CotType CotType_a_f_G_U_C = CotType._(1, _omitEnumNames ? '' : 'CotType_a_f_G_U_C');
  static const CotType CotType_a_f_G_U_C_I = CotType._(2, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_I');
  static const CotType CotType_a_n_A_C_F = CotType._(3, _omitEnumNames ? '' : 'CotType_a_n_A_C_F');
  static const CotType CotType_a_n_A_C_H = CotType._(4, _omitEnumNames ? '' : 'CotType_a_n_A_C_H');
  static const CotType CotType_a_n_A_C = CotType._(5, _omitEnumNames ? '' : 'CotType_a_n_A_C');
  static const CotType CotType_a_f_A_M_H = CotType._(6, _omitEnumNames ? '' : 'CotType_a_f_A_M_H');
  static const CotType CotType_a_f_A_M = CotType._(7, _omitEnumNames ? '' : 'CotType_a_f_A_M');
  static const CotType CotType_a_f_A_M_F_F = CotType._(8, _omitEnumNames ? '' : 'CotType_a_f_A_M_F_F');
  static const CotType CotType_a_f_A_M_H_A = CotType._(9, _omitEnumNames ? '' : 'CotType_a_f_A_M_H_A');
  static const CotType CotType_a_f_A_M_H_U_M = CotType._(10, _omitEnumNames ? '' : 'CotType_a_f_A_M_H_U_M');
  static const CotType CotType_a_h_A_M_F_F = CotType._(11, _omitEnumNames ? '' : 'CotType_a_h_A_M_F_F');
  static const CotType CotType_a_h_A_M_H_A = CotType._(12, _omitEnumNames ? '' : 'CotType_a_h_A_M_H_A');
  static const CotType CotType_a_u_A_C = CotType._(13, _omitEnumNames ? '' : 'CotType_a_u_A_C');
  static const CotType CotType_t_x_d_d = CotType._(14, _omitEnumNames ? '' : 'CotType_t_x_d_d');
  static const CotType CotType_a_f_G_E_S_E = CotType._(15, _omitEnumNames ? '' : 'CotType_a_f_G_E_S_E');
  static const CotType CotType_a_f_G_E_V_C = CotType._(16, _omitEnumNames ? '' : 'CotType_a_f_G_E_V_C');
  static const CotType CotType_a_f_S = CotType._(17, _omitEnumNames ? '' : 'CotType_a_f_S');
  static const CotType CotType_a_f_A_M_F = CotType._(18, _omitEnumNames ? '' : 'CotType_a_f_A_M_F');
  static const CotType CotType_a_f_A_M_F_C_H = CotType._(19, _omitEnumNames ? '' : 'CotType_a_f_A_M_F_C_H');
  static const CotType CotType_a_f_A_M_F_U_L = CotType._(20, _omitEnumNames ? '' : 'CotType_a_f_A_M_F_U_L');
  static const CotType CotType_a_f_A_M_F_L = CotType._(21, _omitEnumNames ? '' : 'CotType_a_f_A_M_F_L');
  static const CotType CotType_a_f_A_M_F_P = CotType._(22, _omitEnumNames ? '' : 'CotType_a_f_A_M_F_P');
  static const CotType CotType_a_f_A_C_H = CotType._(23, _omitEnumNames ? '' : 'CotType_a_f_A_C_H');
  static const CotType CotType_a_n_A_M_F_Q = CotType._(24, _omitEnumNames ? '' : 'CotType_a_n_A_M_F_Q');
  static const CotType CotType_b_t_f = CotType._(25, _omitEnumNames ? '' : 'CotType_b_t_f');
  static const CotType CotType_b_r_f_h_c = CotType._(26, _omitEnumNames ? '' : 'CotType_b_r_f_h_c');
  static const CotType CotType_b_a_o_pan = CotType._(27, _omitEnumNames ? '' : 'CotType_b_a_o_pan');
  static const CotType CotType_b_a_o_opn = CotType._(28, _omitEnumNames ? '' : 'CotType_b_a_o_opn');
  static const CotType CotType_b_a_o_can = CotType._(29, _omitEnumNames ? '' : 'CotType_b_a_o_can');
  static const CotType CotType_b_a_o_tbl = CotType._(30, _omitEnumNames ? '' : 'CotType_b_a_o_tbl');
  static const CotType CotType_b_a_g = CotType._(31, _omitEnumNames ? '' : 'CotType_b_a_g');
  static const CotType CotType_a_f_G = CotType._(32, _omitEnumNames ? '' : 'CotType_a_f_G');
  static const CotType CotType_a_f_G_U = CotType._(33, _omitEnumNames ? '' : 'CotType_a_f_G_U');
  static const CotType CotType_a_h_G = CotType._(34, _omitEnumNames ? '' : 'CotType_a_h_G');
  static const CotType CotType_a_u_G = CotType._(35, _omitEnumNames ? '' : 'CotType_a_u_G');
  static const CotType CotType_a_n_G = CotType._(36, _omitEnumNames ? '' : 'CotType_a_n_G');
  static const CotType CotType_b_m_r = CotType._(37, _omitEnumNames ? '' : 'CotType_b_m_r');
  static const CotType CotType_b_m_p_w = CotType._(38, _omitEnumNames ? '' : 'CotType_b_m_p_w');
  static const CotType CotType_b_m_p_s_p_i = CotType._(39, _omitEnumNames ? '' : 'CotType_b_m_p_s_p_i');
  static const CotType CotType_u_d_f = CotType._(40, _omitEnumNames ? '' : 'CotType_u_d_f');
  static const CotType CotType_u_d_r = CotType._(41, _omitEnumNames ? '' : 'CotType_u_d_r');
  static const CotType CotType_u_d_c_c = CotType._(42, _omitEnumNames ? '' : 'CotType_u_d_c_c');
  static const CotType CotType_u_rb_a = CotType._(43, _omitEnumNames ? '' : 'CotType_u_rb_a');
  static const CotType CotType_a_h_A = CotType._(44, _omitEnumNames ? '' : 'CotType_a_h_A');
  static const CotType CotType_a_u_A = CotType._(45, _omitEnumNames ? '' : 'CotType_a_u_A');
  static const CotType CotType_a_f_A_M_H_Q = CotType._(46, _omitEnumNames ? '' : 'CotType_a_f_A_M_H_Q');
  static const CotType CotType_a_f_A_C_F = CotType._(47, _omitEnumNames ? '' : 'CotType_a_f_A_C_F');
  static const CotType CotType_a_f_A_C = CotType._(48, _omitEnumNames ? '' : 'CotType_a_f_A_C');
  static const CotType CotType_a_f_A_C_L = CotType._(49, _omitEnumNames ? '' : 'CotType_a_f_A_C_L');
  static const CotType CotType_a_f_A = CotType._(50, _omitEnumNames ? '' : 'CotType_a_f_A');
  static const CotType CotType_a_f_A_M_H_C = CotType._(51, _omitEnumNames ? '' : 'CotType_a_f_A_M_H_C');
  static const CotType CotType_a_n_A_M_F_F = CotType._(52, _omitEnumNames ? '' : 'CotType_a_n_A_M_F_F');
  static const CotType CotType_a_u_A_C_F = CotType._(53, _omitEnumNames ? '' : 'CotType_a_u_A_C_F');
  static const CotType CotType_a_f_G_U_C_F_T_A = CotType._(54, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_F_T_A');
  static const CotType CotType_a_f_G_U_C_V_S = CotType._(55, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_V_S');
  static const CotType CotType_a_f_G_U_C_R_X = CotType._(56, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_R_X');
  static const CotType CotType_a_f_G_U_C_I_Z = CotType._(57, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_I_Z');
  static const CotType CotType_a_f_G_U_C_E_C_W = CotType._(58, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_E_C_W');
  static const CotType CotType_a_f_G_U_C_I_L = CotType._(59, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_I_L');
  static const CotType CotType_a_f_G_U_C_R_O = CotType._(60, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_R_O');
  static const CotType CotType_a_f_G_U_C_R_V = CotType._(61, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_R_V');
  static const CotType CotType_a_f_G_U_H = CotType._(62, _omitEnumNames ? '' : 'CotType_a_f_G_U_H');
  static const CotType CotType_a_f_G_U_U_M_S_E = CotType._(63, _omitEnumNames ? '' : 'CotType_a_f_G_U_U_M_S_E');
  static const CotType CotType_a_f_G_U_S_M_C = CotType._(64, _omitEnumNames ? '' : 'CotType_a_f_G_U_S_M_C');
  static const CotType CotType_a_f_G_E_S = CotType._(65, _omitEnumNames ? '' : 'CotType_a_f_G_E_S');
  static const CotType CotType_a_f_G_E = CotType._(66, _omitEnumNames ? '' : 'CotType_a_f_G_E');
  static const CotType CotType_a_f_G_E_V_C_U = CotType._(67, _omitEnumNames ? '' : 'CotType_a_f_G_E_V_C_U');
  static const CotType CotType_a_f_G_E_V_C_ps = CotType._(68, _omitEnumNames ? '' : 'CotType_a_f_G_E_V_C_ps');
  static const CotType CotType_a_u_G_E_V = CotType._(69, _omitEnumNames ? '' : 'CotType_a_u_G_E_V');
  static const CotType CotType_a_f_S_N_N_R = CotType._(70, _omitEnumNames ? '' : 'CotType_a_f_S_N_N_R');
  static const CotType CotType_a_f_F_B = CotType._(71, _omitEnumNames ? '' : 'CotType_a_f_F_B');
  static const CotType CotType_b_m_p_s_p_loc = CotType._(72, _omitEnumNames ? '' : 'CotType_b_m_p_s_p_loc');
  static const CotType CotType_b_i_v = CotType._(73, _omitEnumNames ? '' : 'CotType_b_i_v');
  static const CotType CotType_b_f_t_r = CotType._(74, _omitEnumNames ? '' : 'CotType_b_f_t_r');
  static const CotType CotType_b_f_t_a = CotType._(75, _omitEnumNames ? '' : 'CotType_b_f_t_a');
  static const CotType CotType_u_d_f_m = CotType._(76, _omitEnumNames ? '' : 'CotType_u_d_f_m');
  static const CotType CotType_u_d_p = CotType._(77, _omitEnumNames ? '' : 'CotType_u_d_p');
  static const CotType CotType_b_m_p_s_m = CotType._(78, _omitEnumNames ? '' : 'CotType_b_m_p_s_m');
  static const CotType CotType_b_m_p_c = CotType._(79, _omitEnumNames ? '' : 'CotType_b_m_p_c');
  static const CotType CotType_u_r_b_c_c = CotType._(80, _omitEnumNames ? '' : 'CotType_u_r_b_c_c');
  static const CotType CotType_u_r_b_bullseye = CotType._(81, _omitEnumNames ? '' : 'CotType_u_r_b_bullseye');
  static const CotType CotType_a_f_G_E_V_A = CotType._(82, _omitEnumNames ? '' : 'CotType_a_f_G_E_V_A');
  static const CotType CotType_a_n_A = CotType._(83, _omitEnumNames ? '' : 'CotType_a_n_A');
  static const CotType CotType_a_u_G_U_C_F = CotType._(84, _omitEnumNames ? '' : 'CotType_a_u_G_U_C_F');
  static const CotType CotType_a_n_G_U_C_F = CotType._(85, _omitEnumNames ? '' : 'CotType_a_n_G_U_C_F');
  static const CotType CotType_a_h_G_U_C_F = CotType._(86, _omitEnumNames ? '' : 'CotType_a_h_G_U_C_F');
  static const CotType CotType_a_f_G_U_C_F = CotType._(87, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_F');
  static const CotType CotType_a_u_G_I = CotType._(88, _omitEnumNames ? '' : 'CotType_a_u_G_I');
  static const CotType CotType_a_n_G_I = CotType._(89, _omitEnumNames ? '' : 'CotType_a_n_G_I');
  static const CotType CotType_a_h_G_I = CotType._(90, _omitEnumNames ? '' : 'CotType_a_h_G_I');
  static const CotType CotType_a_f_G_I = CotType._(91, _omitEnumNames ? '' : 'CotType_a_f_G_I');
  static const CotType CotType_a_u_G_E_X_M = CotType._(92, _omitEnumNames ? '' : 'CotType_a_u_G_E_X_M');
  static const CotType CotType_a_n_G_E_X_M = CotType._(93, _omitEnumNames ? '' : 'CotType_a_n_G_E_X_M');
  static const CotType CotType_a_h_G_E_X_M = CotType._(94, _omitEnumNames ? '' : 'CotType_a_h_G_E_X_M');
  static const CotType CotType_a_f_G_E_X_M = CotType._(95, _omitEnumNames ? '' : 'CotType_a_f_G_E_X_M');
  static const CotType CotType_a_u_S = CotType._(96, _omitEnumNames ? '' : 'CotType_a_u_S');
  static const CotType CotType_a_n_S = CotType._(97, _omitEnumNames ? '' : 'CotType_a_n_S');
  static const CotType CotType_a_h_S = CotType._(98, _omitEnumNames ? '' : 'CotType_a_h_S');
  static const CotType CotType_a_u_G_U_C_I_d = CotType._(99, _omitEnumNames ? '' : 'CotType_a_u_G_U_C_I_d');
  static const CotType CotType_a_n_G_U_C_I_d = CotType._(100, _omitEnumNames ? '' : 'CotType_a_n_G_U_C_I_d');
  static const CotType CotType_a_h_G_U_C_I_d = CotType._(101, _omitEnumNames ? '' : 'CotType_a_h_G_U_C_I_d');
  static const CotType CotType_a_f_G_U_C_I_d = CotType._(102, _omitEnumNames ? '' : 'CotType_a_f_G_U_C_I_d');
  static const CotType CotType_a_u_G_E_V_A_T = CotType._(103, _omitEnumNames ? '' : 'CotType_a_u_G_E_V_A_T');
  static const CotType CotType_a_n_G_E_V_A_T = CotType._(104, _omitEnumNames ? '' : 'CotType_a_n_G_E_V_A_T');
  static const CotType CotType_a_h_G_E_V_A_T = CotType._(105, _omitEnumNames ? '' : 'CotType_a_h_G_E_V_A_T');
  static const CotType CotType_a_f_G_E_V_A_T = CotType._(106, _omitEnumNames ? '' : 'CotType_a_f_G_E_V_A_T');
  static const CotType CotType_a_u_G_U_C_I = CotType._(107, _omitEnumNames ? '' : 'CotType_a_u_G_U_C_I');
  static const CotType CotType_a_n_G_U_C_I = CotType._(108, _omitEnumNames ? '' : 'CotType_a_n_G_U_C_I');
  static const CotType CotType_a_h_G_U_C_I = CotType._(109, _omitEnumNames ? '' : 'CotType_a_h_G_U_C_I');
  static const CotType CotType_a_n_G_E_V = CotType._(110, _omitEnumNames ? '' : 'CotType_a_n_G_E_V');
  static const CotType CotType_a_h_G_E_V = CotType._(111, _omitEnumNames ? '' : 'CotType_a_h_G_E_V');
  static const CotType CotType_a_f_G_E_V = CotType._(112, _omitEnumNames ? '' : 'CotType_a_f_G_E_V');
  static const CotType CotType_b_m_p_w_GOTO = CotType._(113, _omitEnumNames ? '' : 'CotType_b_m_p_w_GOTO');
  static const CotType CotType_b_m_p_c_ip = CotType._(114, _omitEnumNames ? '' : 'CotType_b_m_p_c_ip');
  static const CotType CotType_b_m_p_c_cp = CotType._(115, _omitEnumNames ? '' : 'CotType_b_m_p_c_cp');
  static const CotType CotType_b_m_p_s_p_op = CotType._(116, _omitEnumNames ? '' : 'CotType_b_m_p_s_p_op');
  static const CotType CotType_u_d_v = CotType._(117, _omitEnumNames ? '' : 'CotType_u_d_v');
  static const CotType CotType_u_d_v_m = CotType._(118, _omitEnumNames ? '' : 'CotType_u_d_v_m');
  static const CotType CotType_u_d_c_e = CotType._(119, _omitEnumNames ? '' : 'CotType_u_d_c_e');
  static const CotType CotType_b_i_x_i = CotType._(120, _omitEnumNames ? '' : 'CotType_b_i_x_i');
  static const CotType CotType_b_t_f_d = CotType._(121, _omitEnumNames ? '' : 'CotType_b_t_f_d');
  static const CotType CotType_b_t_f_r = CotType._(122, _omitEnumNames ? '' : 'CotType_b_t_f_r');
  static const CotType CotType_b_a_o_c = CotType._(123, _omitEnumNames ? '' : 'CotType_b_a_o_c');
  static const CotType CotType_t_s = CotType._(124, _omitEnumNames ? '' : 'CotType_t_s');
  static const CotType CotType_m_t_t = CotType._(125, _omitEnumNames ? '' : 'CotType_m_t_t');
  static const CotType CotType_y = CotType._(126, _omitEnumNames ? '' : 'CotType_y');

  static const $core.List<CotType> values = <CotType> [
    CotType_Other,
    CotType_a_f_G_U_C,
    CotType_a_f_G_U_C_I,
    CotType_a_n_A_C_F,
    CotType_a_n_A_C_H,
    CotType_a_n_A_C,
    CotType_a_f_A_M_H,
    CotType_a_f_A_M,
    CotType_a_f_A_M_F_F,
    CotType_a_f_A_M_H_A,
    CotType_a_f_A_M_H_U_M,
    CotType_a_h_A_M_F_F,
    CotType_a_h_A_M_H_A,
    CotType_a_u_A_C,
    CotType_t_x_d_d,
    CotType_a_f_G_E_S_E,
    CotType_a_f_G_E_V_C,
    CotType_a_f_S,
    CotType_a_f_A_M_F,
    CotType_a_f_A_M_F_C_H,
    CotType_a_f_A_M_F_U_L,
    CotType_a_f_A_M_F_L,
    CotType_a_f_A_M_F_P,
    CotType_a_f_A_C_H,
    CotType_a_n_A_M_F_Q,
    CotType_b_t_f,
    CotType_b_r_f_h_c,
    CotType_b_a_o_pan,
    CotType_b_a_o_opn,
    CotType_b_a_o_can,
    CotType_b_a_o_tbl,
    CotType_b_a_g,
    CotType_a_f_G,
    CotType_a_f_G_U,
    CotType_a_h_G,
    CotType_a_u_G,
    CotType_a_n_G,
    CotType_b_m_r,
    CotType_b_m_p_w,
    CotType_b_m_p_s_p_i,
    CotType_u_d_f,
    CotType_u_d_r,
    CotType_u_d_c_c,
    CotType_u_rb_a,
    CotType_a_h_A,
    CotType_a_u_A,
    CotType_a_f_A_M_H_Q,
    CotType_a_f_A_C_F,
    CotType_a_f_A_C,
    CotType_a_f_A_C_L,
    CotType_a_f_A,
    CotType_a_f_A_M_H_C,
    CotType_a_n_A_M_F_F,
    CotType_a_u_A_C_F,
    CotType_a_f_G_U_C_F_T_A,
    CotType_a_f_G_U_C_V_S,
    CotType_a_f_G_U_C_R_X,
    CotType_a_f_G_U_C_I_Z,
    CotType_a_f_G_U_C_E_C_W,
    CotType_a_f_G_U_C_I_L,
    CotType_a_f_G_U_C_R_O,
    CotType_a_f_G_U_C_R_V,
    CotType_a_f_G_U_H,
    CotType_a_f_G_U_U_M_S_E,
    CotType_a_f_G_U_S_M_C,
    CotType_a_f_G_E_S,
    CotType_a_f_G_E,
    CotType_a_f_G_E_V_C_U,
    CotType_a_f_G_E_V_C_ps,
    CotType_a_u_G_E_V,
    CotType_a_f_S_N_N_R,
    CotType_a_f_F_B,
    CotType_b_m_p_s_p_loc,
    CotType_b_i_v,
    CotType_b_f_t_r,
    CotType_b_f_t_a,
    CotType_u_d_f_m,
    CotType_u_d_p,
    CotType_b_m_p_s_m,
    CotType_b_m_p_c,
    CotType_u_r_b_c_c,
    CotType_u_r_b_bullseye,
    CotType_a_f_G_E_V_A,
    CotType_a_n_A,
    CotType_a_u_G_U_C_F,
    CotType_a_n_G_U_C_F,
    CotType_a_h_G_U_C_F,
    CotType_a_f_G_U_C_F,
    CotType_a_u_G_I,
    CotType_a_n_G_I,
    CotType_a_h_G_I,
    CotType_a_f_G_I,
    CotType_a_u_G_E_X_M,
    CotType_a_n_G_E_X_M,
    CotType_a_h_G_E_X_M,
    CotType_a_f_G_E_X_M,
    CotType_a_u_S,
    CotType_a_n_S,
    CotType_a_h_S,
    CotType_a_u_G_U_C_I_d,
    CotType_a_n_G_U_C_I_d,
    CotType_a_h_G_U_C_I_d,
    CotType_a_f_G_U_C_I_d,
    CotType_a_u_G_E_V_A_T,
    CotType_a_n_G_E_V_A_T,
    CotType_a_h_G_E_V_A_T,
    CotType_a_f_G_E_V_A_T,
    CotType_a_u_G_U_C_I,
    CotType_a_n_G_U_C_I,
    CotType_a_h_G_U_C_I,
    CotType_a_n_G_E_V,
    CotType_a_h_G_E_V,
    CotType_a_f_G_E_V,
    CotType_b_m_p_w_GOTO,
    CotType_b_m_p_c_ip,
    CotType_b_m_p_c_cp,
    CotType_b_m_p_s_p_op,
    CotType_u_d_v,
    CotType_u_d_v_m,
    CotType_u_d_c_e,
    CotType_b_i_x_i,
    CotType_b_t_f_d,
    CotType_b_t_f_r,
    CotType_b_a_o_c,
    CotType_t_s,
    CotType_m_t_t,
    CotType_y,
  ];

  static final $core.Map<$core.int, CotType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CotType? valueOf($core.int value) => _byValue[value];

  const CotType._($core.int v, $core.String n) : super(v, n);
}

///
///  Geopoint and altitude source
class GeoPointSource extends $pb.ProtobufEnum {
  static const GeoPointSource GeoPointSource_Unspecified = GeoPointSource._(0, _omitEnumNames ? '' : 'GeoPointSource_Unspecified');
  static const GeoPointSource GeoPointSource_GPS = GeoPointSource._(1, _omitEnumNames ? '' : 'GeoPointSource_GPS');
  static const GeoPointSource GeoPointSource_USER = GeoPointSource._(2, _omitEnumNames ? '' : 'GeoPointSource_USER');
  static const GeoPointSource GeoPointSource_NETWORK = GeoPointSource._(3, _omitEnumNames ? '' : 'GeoPointSource_NETWORK');

  static const $core.List<GeoPointSource> values = <GeoPointSource> [
    GeoPointSource_Unspecified,
    GeoPointSource_GPS,
    GeoPointSource_USER,
    GeoPointSource_NETWORK,
  ];

  static final $core.Map<$core.int, GeoPointSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GeoPointSource? valueOf($core.int value) => _byValue[value];

  const GeoPointSource._($core.int v, $core.String n) : super(v, n);
}

///
///  Receipt discriminator. Set alongside cot_type_id = b-t-f-d (delivered)
///  or b-t-f-r (read). ReceiptType_None is the default for a normal chat
///  message (cot_type_id = b-t-f).
///
///  Receivers can detect a receipt by checking receipt_type != ReceiptType_None
///  without re-parsing the envelope cot_type_id.
class GeoChat_ReceiptType extends $pb.ProtobufEnum {
  static const GeoChat_ReceiptType ReceiptType_None = GeoChat_ReceiptType._(0, _omitEnumNames ? '' : 'ReceiptType_None');
  static const GeoChat_ReceiptType ReceiptType_Delivered = GeoChat_ReceiptType._(1, _omitEnumNames ? '' : 'ReceiptType_Delivered');
  static const GeoChat_ReceiptType ReceiptType_Read = GeoChat_ReceiptType._(2, _omitEnumNames ? '' : 'ReceiptType_Read');

  static const $core.List<GeoChat_ReceiptType> values = <GeoChat_ReceiptType> [
    ReceiptType_None,
    ReceiptType_Delivered,
    ReceiptType_Read,
  ];

  static final $core.Map<$core.int, GeoChat_ReceiptType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GeoChat_ReceiptType? valueOf($core.int value) => _byValue[value];

  const GeoChat_ReceiptType._($core.int v, $core.String n) : super(v, n);
}

///
///  Shape kind discriminator. Drives receiver rendering and also controls
///  which optional fields below are meaningful.
class DrawnShape_Kind extends $pb.ProtobufEnum {
  static const DrawnShape_Kind Kind_Unspecified = DrawnShape_Kind._(0, _omitEnumNames ? '' : 'Kind_Unspecified');
  static const DrawnShape_Kind Kind_Circle = DrawnShape_Kind._(1, _omitEnumNames ? '' : 'Kind_Circle');
  static const DrawnShape_Kind Kind_Rectangle = DrawnShape_Kind._(2, _omitEnumNames ? '' : 'Kind_Rectangle');
  static const DrawnShape_Kind Kind_Freeform = DrawnShape_Kind._(3, _omitEnumNames ? '' : 'Kind_Freeform');
  static const DrawnShape_Kind Kind_Telestration = DrawnShape_Kind._(4, _omitEnumNames ? '' : 'Kind_Telestration');
  static const DrawnShape_Kind Kind_Polygon = DrawnShape_Kind._(5, _omitEnumNames ? '' : 'Kind_Polygon');
  static const DrawnShape_Kind Kind_RangingCircle = DrawnShape_Kind._(6, _omitEnumNames ? '' : 'Kind_RangingCircle');
  static const DrawnShape_Kind Kind_Bullseye = DrawnShape_Kind._(7, _omitEnumNames ? '' : 'Kind_Bullseye');
  static const DrawnShape_Kind Kind_Ellipse = DrawnShape_Kind._(8, _omitEnumNames ? '' : 'Kind_Ellipse');
  static const DrawnShape_Kind Kind_Vehicle2D = DrawnShape_Kind._(9, _omitEnumNames ? '' : 'Kind_Vehicle2D');
  static const DrawnShape_Kind Kind_Vehicle3D = DrawnShape_Kind._(10, _omitEnumNames ? '' : 'Kind_Vehicle3D');

  static const $core.List<DrawnShape_Kind> values = <DrawnShape_Kind> [
    Kind_Unspecified,
    Kind_Circle,
    Kind_Rectangle,
    Kind_Freeform,
    Kind_Telestration,
    Kind_Polygon,
    Kind_RangingCircle,
    Kind_Bullseye,
    Kind_Ellipse,
    Kind_Vehicle2D,
    Kind_Vehicle3D,
  ];

  static final $core.Map<$core.int, DrawnShape_Kind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DrawnShape_Kind? valueOf($core.int value) => _byValue[value];

  const DrawnShape_Kind._($core.int v, $core.String n) : super(v, n);
}

///
///  Explicit stroke/fill/both discriminator.
///
///  ATAK's source XML distinguishes "stroke-only polyline" from "closed shape
///  with both stroke and fill" by the presence of the <fillColor> element.
///  Both states can hash to all-zero color fields, so we carry the signal
///  explicitly. Parser sets this from (sawStrokeColor, sawFillColor) at the
///  end of parse; builder uses it to decide which of <strokeColor> /
///  <fillColor> to emit in the reconstructed XML.
class DrawnShape_StyleMode extends $pb.ProtobufEnum {
  static const DrawnShape_StyleMode StyleMode_Unspecified = DrawnShape_StyleMode._(0, _omitEnumNames ? '' : 'StyleMode_Unspecified');
  static const DrawnShape_StyleMode StyleMode_StrokeOnly = DrawnShape_StyleMode._(1, _omitEnumNames ? '' : 'StyleMode_StrokeOnly');
  static const DrawnShape_StyleMode StyleMode_FillOnly = DrawnShape_StyleMode._(2, _omitEnumNames ? '' : 'StyleMode_FillOnly');
  static const DrawnShape_StyleMode StyleMode_StrokeAndFill = DrawnShape_StyleMode._(3, _omitEnumNames ? '' : 'StyleMode_StrokeAndFill');

  static const $core.List<DrawnShape_StyleMode> values = <DrawnShape_StyleMode> [
    StyleMode_Unspecified,
    StyleMode_StrokeOnly,
    StyleMode_FillOnly,
    StyleMode_StrokeAndFill,
  ];

  static final $core.Map<$core.int, DrawnShape_StyleMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DrawnShape_StyleMode? valueOf($core.int value) => _byValue[value];

  const DrawnShape_StyleMode._($core.int v, $core.String n) : super(v, n);
}

///
///  Marker kind. Used to pick sensible receiver defaults when the CoT type
///  alone is ambiguous (e.g. a-u-G could be a 2525 symbol or a custom icon
///  depending on the iconset path).
class Marker_Kind extends $pb.ProtobufEnum {
  static const Marker_Kind Kind_Unspecified = Marker_Kind._(0, _omitEnumNames ? '' : 'Kind_Unspecified');
  static const Marker_Kind Kind_Spot = Marker_Kind._(1, _omitEnumNames ? '' : 'Kind_Spot');
  static const Marker_Kind Kind_Waypoint = Marker_Kind._(2, _omitEnumNames ? '' : 'Kind_Waypoint');
  static const Marker_Kind Kind_Checkpoint = Marker_Kind._(3, _omitEnumNames ? '' : 'Kind_Checkpoint');
  static const Marker_Kind Kind_SelfPosition = Marker_Kind._(4, _omitEnumNames ? '' : 'Kind_SelfPosition');
  static const Marker_Kind Kind_Symbol2525 = Marker_Kind._(5, _omitEnumNames ? '' : 'Kind_Symbol2525');
  static const Marker_Kind Kind_SpotMap = Marker_Kind._(6, _omitEnumNames ? '' : 'Kind_SpotMap');
  static const Marker_Kind Kind_CustomIcon = Marker_Kind._(7, _omitEnumNames ? '' : 'Kind_CustomIcon');
  static const Marker_Kind Kind_GoToPoint = Marker_Kind._(8, _omitEnumNames ? '' : 'Kind_GoToPoint');
  static const Marker_Kind Kind_InitialPoint = Marker_Kind._(9, _omitEnumNames ? '' : 'Kind_InitialPoint');
  static const Marker_Kind Kind_ContactPoint = Marker_Kind._(10, _omitEnumNames ? '' : 'Kind_ContactPoint');
  static const Marker_Kind Kind_ObservationPost = Marker_Kind._(11, _omitEnumNames ? '' : 'Kind_ObservationPost');
  static const Marker_Kind Kind_ImageMarker = Marker_Kind._(12, _omitEnumNames ? '' : 'Kind_ImageMarker');

  static const $core.List<Marker_Kind> values = <Marker_Kind> [
    Kind_Unspecified,
    Kind_Spot,
    Kind_Waypoint,
    Kind_Checkpoint,
    Kind_SelfPosition,
    Kind_Symbol2525,
    Kind_SpotMap,
    Kind_CustomIcon,
    Kind_GoToPoint,
    Kind_InitialPoint,
    Kind_ContactPoint,
    Kind_ObservationPost,
    Kind_ImageMarker,
  ];

  static final $core.Map<$core.int, Marker_Kind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Marker_Kind? valueOf($core.int value) => _byValue[value];

  const Marker_Kind._($core.int v, $core.String n) : super(v, n);
}

///
///  Travel method for the route.
class Route_Method extends $pb.ProtobufEnum {
  static const Route_Method Method_Unspecified = Route_Method._(0, _omitEnumNames ? '' : 'Method_Unspecified');
  static const Route_Method Method_Driving = Route_Method._(1, _omitEnumNames ? '' : 'Method_Driving');
  static const Route_Method Method_Walking = Route_Method._(2, _omitEnumNames ? '' : 'Method_Walking');
  static const Route_Method Method_Flying = Route_Method._(3, _omitEnumNames ? '' : 'Method_Flying');
  static const Route_Method Method_Swimming = Route_Method._(4, _omitEnumNames ? '' : 'Method_Swimming');
  static const Route_Method Method_Watercraft = Route_Method._(5, _omitEnumNames ? '' : 'Method_Watercraft');

  static const $core.List<Route_Method> values = <Route_Method> [
    Method_Unspecified,
    Method_Driving,
    Method_Walking,
    Method_Flying,
    Method_Swimming,
    Method_Watercraft,
  ];

  static final $core.Map<$core.int, Route_Method> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Route_Method? valueOf($core.int value) => _byValue[value];

  const Route_Method._($core.int v, $core.String n) : super(v, n);
}

///
///  Route direction (infil = ingress, exfil = egress).
class Route_Direction extends $pb.ProtobufEnum {
  static const Route_Direction Direction_Unspecified = Route_Direction._(0, _omitEnumNames ? '' : 'Direction_Unspecified');
  static const Route_Direction Direction_Infil = Route_Direction._(1, _omitEnumNames ? '' : 'Direction_Infil');
  static const Route_Direction Direction_Exfil = Route_Direction._(2, _omitEnumNames ? '' : 'Direction_Exfil');

  static const $core.List<Route_Direction> values = <Route_Direction> [
    Direction_Unspecified,
    Direction_Infil,
    Direction_Exfil,
  ];

  static final $core.Map<$core.int, Route_Direction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Route_Direction? valueOf($core.int value) => _byValue[value];

  const Route_Direction._($core.int v, $core.String n) : super(v, n);
}

///
///  Line 3: precedence / urgency.
class CasevacReport_Precedence extends $pb.ProtobufEnum {
  static const CasevacReport_Precedence Precedence_Unspecified = CasevacReport_Precedence._(0, _omitEnumNames ? '' : 'Precedence_Unspecified');
  static const CasevacReport_Precedence Precedence_Urgent = CasevacReport_Precedence._(1, _omitEnumNames ? '' : 'Precedence_Urgent');
  static const CasevacReport_Precedence Precedence_UrgentSurgical = CasevacReport_Precedence._(2, _omitEnumNames ? '' : 'Precedence_UrgentSurgical');
  static const CasevacReport_Precedence Precedence_Priority = CasevacReport_Precedence._(3, _omitEnumNames ? '' : 'Precedence_Priority');
  static const CasevacReport_Precedence Precedence_Routine = CasevacReport_Precedence._(4, _omitEnumNames ? '' : 'Precedence_Routine');
  static const CasevacReport_Precedence Precedence_Convenience = CasevacReport_Precedence._(5, _omitEnumNames ? '' : 'Precedence_Convenience');

  static const $core.List<CasevacReport_Precedence> values = <CasevacReport_Precedence> [
    Precedence_Unspecified,
    Precedence_Urgent,
    Precedence_UrgentSurgical,
    Precedence_Priority,
    Precedence_Routine,
    Precedence_Convenience,
  ];

  static final $core.Map<$core.int, CasevacReport_Precedence> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CasevacReport_Precedence? valueOf($core.int value) => _byValue[value];

  const CasevacReport_Precedence._($core.int v, $core.String n) : super(v, n);
}

///
///  Line 7: HLZ marking method.
class CasevacReport_HlzMarking extends $pb.ProtobufEnum {
  static const CasevacReport_HlzMarking HlzMarking_Unspecified = CasevacReport_HlzMarking._(0, _omitEnumNames ? '' : 'HlzMarking_Unspecified');
  static const CasevacReport_HlzMarking HlzMarking_Panels = CasevacReport_HlzMarking._(1, _omitEnumNames ? '' : 'HlzMarking_Panels');
  static const CasevacReport_HlzMarking HlzMarking_PyroSignal = CasevacReport_HlzMarking._(2, _omitEnumNames ? '' : 'HlzMarking_PyroSignal');
  static const CasevacReport_HlzMarking HlzMarking_Smoke = CasevacReport_HlzMarking._(3, _omitEnumNames ? '' : 'HlzMarking_Smoke');
  static const CasevacReport_HlzMarking HlzMarking_None = CasevacReport_HlzMarking._(4, _omitEnumNames ? '' : 'HlzMarking_None');
  static const CasevacReport_HlzMarking HlzMarking_Other = CasevacReport_HlzMarking._(5, _omitEnumNames ? '' : 'HlzMarking_Other');

  static const $core.List<CasevacReport_HlzMarking> values = <CasevacReport_HlzMarking> [
    HlzMarking_Unspecified,
    HlzMarking_Panels,
    HlzMarking_PyroSignal,
    HlzMarking_Smoke,
    HlzMarking_None,
    HlzMarking_Other,
  ];

  static final $core.Map<$core.int, CasevacReport_HlzMarking> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CasevacReport_HlzMarking? valueOf($core.int value) => _byValue[value];

  const CasevacReport_HlzMarking._($core.int v, $core.String n) : super(v, n);
}

///
///  Line 6: security situation at the pickup zone.
class CasevacReport_Security extends $pb.ProtobufEnum {
  static const CasevacReport_Security Security_Unspecified = CasevacReport_Security._(0, _omitEnumNames ? '' : 'Security_Unspecified');
  static const CasevacReport_Security Security_NoEnemy = CasevacReport_Security._(1, _omitEnumNames ? '' : 'Security_NoEnemy');
  static const CasevacReport_Security Security_PossibleEnemy = CasevacReport_Security._(2, _omitEnumNames ? '' : 'Security_PossibleEnemy');
  static const CasevacReport_Security Security_EnemyInArea = CasevacReport_Security._(3, _omitEnumNames ? '' : 'Security_EnemyInArea');
  static const CasevacReport_Security Security_EnemyInArmedContact = CasevacReport_Security._(4, _omitEnumNames ? '' : 'Security_EnemyInArmedContact');

  static const $core.List<CasevacReport_Security> values = <CasevacReport_Security> [
    Security_Unspecified,
    Security_NoEnemy,
    Security_PossibleEnemy,
    Security_EnemyInArea,
    Security_EnemyInArmedContact,
  ];

  static final $core.Map<$core.int, CasevacReport_Security> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CasevacReport_Security? valueOf($core.int value) => _byValue[value];

  const CasevacReport_Security._($core.int v, $core.String n) : super(v, n);
}

class EmergencyAlert_Type extends $pb.ProtobufEnum {
  static const EmergencyAlert_Type Type_Unspecified = EmergencyAlert_Type._(0, _omitEnumNames ? '' : 'Type_Unspecified');
  static const EmergencyAlert_Type Type_Alert911 = EmergencyAlert_Type._(1, _omitEnumNames ? '' : 'Type_Alert911');
  static const EmergencyAlert_Type Type_RingTheBell = EmergencyAlert_Type._(2, _omitEnumNames ? '' : 'Type_RingTheBell');
  static const EmergencyAlert_Type Type_InContact = EmergencyAlert_Type._(3, _omitEnumNames ? '' : 'Type_InContact');
  static const EmergencyAlert_Type Type_GeoFenceBreached = EmergencyAlert_Type._(4, _omitEnumNames ? '' : 'Type_GeoFenceBreached');
  static const EmergencyAlert_Type Type_Custom = EmergencyAlert_Type._(5, _omitEnumNames ? '' : 'Type_Custom');
  static const EmergencyAlert_Type Type_Cancel = EmergencyAlert_Type._(6, _omitEnumNames ? '' : 'Type_Cancel');

  static const $core.List<EmergencyAlert_Type> values = <EmergencyAlert_Type> [
    Type_Unspecified,
    Type_Alert911,
    Type_RingTheBell,
    Type_InContact,
    Type_GeoFenceBreached,
    Type_Custom,
    Type_Cancel,
  ];

  static final $core.Map<$core.int, EmergencyAlert_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EmergencyAlert_Type? valueOf($core.int value) => _byValue[value];

  const EmergencyAlert_Type._($core.int v, $core.String n) : super(v, n);
}

class TaskRequest_Priority extends $pb.ProtobufEnum {
  static const TaskRequest_Priority Priority_Unspecified = TaskRequest_Priority._(0, _omitEnumNames ? '' : 'Priority_Unspecified');
  static const TaskRequest_Priority Priority_Low = TaskRequest_Priority._(1, _omitEnumNames ? '' : 'Priority_Low');
  static const TaskRequest_Priority Priority_Normal = TaskRequest_Priority._(2, _omitEnumNames ? '' : 'Priority_Normal');
  static const TaskRequest_Priority Priority_High = TaskRequest_Priority._(3, _omitEnumNames ? '' : 'Priority_High');
  static const TaskRequest_Priority Priority_Critical = TaskRequest_Priority._(4, _omitEnumNames ? '' : 'Priority_Critical');

  static const $core.List<TaskRequest_Priority> values = <TaskRequest_Priority> [
    Priority_Unspecified,
    Priority_Low,
    Priority_Normal,
    Priority_High,
    Priority_Critical,
  ];

  static final $core.Map<$core.int, TaskRequest_Priority> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskRequest_Priority? valueOf($core.int value) => _byValue[value];

  const TaskRequest_Priority._($core.int v, $core.String n) : super(v, n);
}

class TaskRequest_Status extends $pb.ProtobufEnum {
  static const TaskRequest_Status Status_Unspecified = TaskRequest_Status._(0, _omitEnumNames ? '' : 'Status_Unspecified');
  static const TaskRequest_Status Status_Pending = TaskRequest_Status._(1, _omitEnumNames ? '' : 'Status_Pending');
  static const TaskRequest_Status Status_Acknowledged = TaskRequest_Status._(2, _omitEnumNames ? '' : 'Status_Acknowledged');
  static const TaskRequest_Status Status_InProgress = TaskRequest_Status._(3, _omitEnumNames ? '' : 'Status_InProgress');
  static const TaskRequest_Status Status_Completed = TaskRequest_Status._(4, _omitEnumNames ? '' : 'Status_Completed');
  static const TaskRequest_Status Status_Cancelled = TaskRequest_Status._(5, _omitEnumNames ? '' : 'Status_Cancelled');

  static const $core.List<TaskRequest_Status> values = <TaskRequest_Status> [
    Status_Unspecified,
    Status_Pending,
    Status_Acknowledged,
    Status_InProgress,
    Status_Completed,
    Status_Cancelled,
  ];

  static final $core.Map<$core.int, TaskRequest_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskRequest_Status? valueOf($core.int value) => _byValue[value];

  const TaskRequest_Status._($core.int v, $core.String n) : super(v, n);
}

///
///  Coarse sensor category, inferred from `model` on parse when the source
///  XML doesn't label it. Receivers that render differently per sensor
///  class (thermal overlay vs daylight cone) use this.
class SensorFov_SensorType extends $pb.ProtobufEnum {
  static const SensorFov_SensorType SensorType_Unspecified = SensorFov_SensorType._(0, _omitEnumNames ? '' : 'SensorType_Unspecified');
  static const SensorFov_SensorType SensorType_Camera = SensorFov_SensorType._(1, _omitEnumNames ? '' : 'SensorType_Camera');
  static const SensorFov_SensorType SensorType_Thermal = SensorFov_SensorType._(2, _omitEnumNames ? '' : 'SensorType_Thermal');
  static const SensorFov_SensorType SensorType_Laser = SensorFov_SensorType._(3, _omitEnumNames ? '' : 'SensorType_Laser');
  static const SensorFov_SensorType SensorType_Nvg = SensorFov_SensorType._(4, _omitEnumNames ? '' : 'SensorType_Nvg');
  static const SensorFov_SensorType SensorType_Rf = SensorFov_SensorType._(5, _omitEnumNames ? '' : 'SensorType_Rf');
  static const SensorFov_SensorType SensorType_Other = SensorFov_SensorType._(6, _omitEnumNames ? '' : 'SensorType_Other');

  static const $core.List<SensorFov_SensorType> values = <SensorFov_SensorType> [
    SensorType_Unspecified,
    SensorType_Camera,
    SensorType_Thermal,
    SensorType_Laser,
    SensorType_Nvg,
    SensorType_Rf,
    SensorType_Other,
  ];

  static final $core.Map<$core.int, SensorFov_SensorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SensorFov_SensorType? valueOf($core.int value) => _byValue[value];

  const SensorFov_SensorType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
