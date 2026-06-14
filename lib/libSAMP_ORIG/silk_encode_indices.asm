; =========================================================
; Game Engine Function: silk_encode_indices
; Address            : 0xCAD40 - 0xCB03C
; =========================================================

CAD40:  PUSH            {R4-R7,LR}
CAD42:  ADD             R7, SP, #0xC
CAD44:  PUSH.W          {R8-R11}
CAD48:  SUB             SP, SP, #0x44
CAD4A:  MOV             R10, R0
CAD4C:  LDR             R0, =(__stack_chk_guard_ptr - 0xCAD58)
CAD4E:  ADD.W           R9, R10, #0x1280
CAD52:  CMP             R3, #0
CAD54:  ADD             R0, PC; __stack_chk_guard_ptr
CAD56:  MOV             R8, R1
CAD58:  MOVW            R1, #0x17D4
CAD5C:  LDR             R5, [R7,#arg_0]
CAD5E:  LDR             R0, [R0]; __stack_chk_guard
CAD60:  LDR             R0, [R0]
CAD62:  STR             R0, [SP,#0x60+var_20]
CAD64:  ADD.W           R0, R2, R2,LSL#3
CAD68:  ADD.W           R0, R10, R0,LSL#2
CAD6C:  IT NE
CAD6E:  ADDNE.W         R9, R0, R1
CAD72:  CMP             R3, #0
CAD74:  LDRSB.W         R0, [R9,#0x1D]
CAD78:  LDRSB.W         R1, [R9,#0x1E]
CAD7C:  ADD.W           R1, R1, R0,LSL#1
CAD80:  BNE             loc_CAD8C
CAD82:  CMP             R1, #2
CAD84:  BGE             loc_CAD8C
CAD86:  LDR             R0, =(silk_type_offset_no_VAD_iCDF_ptr - 0xCAD8C)
CAD88:  ADD             R0, PC; silk_type_offset_no_VAD_iCDF_ptr
CAD8A:  B               loc_CAD92
CAD8C:  LDR             R0, =(silk_type_offset_VAD_iCDF_ptr - 0xCAD94)
CAD8E:  SUBS            R1, #2
CAD90:  ADD             R0, PC; silk_type_offset_VAD_iCDF_ptr
CAD92:  LDR             R2, [R0]
CAD94:  MOV             R0, R8
CAD96:  MOVS            R3, #8
CAD98:  BLX             j_ec_enc_icdf
CAD9C:  LDRSB.W         R1, [R9]
CADA0:  CMP             R5, #2
CADA2:  BNE             loc_CADAA
CADA4:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0xCADAA)
CADA6:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
CADA8:  B               loc_CADCE
CADAA:  LDR             R0, =(silk_gain_iCDF_ptr - 0xCADB8)
CADAC:  ASRS            R1, R1, #3
CADAE:  LDRSB.W         R2, [R9,#0x1D]
CADB2:  MOVS            R3, #8
CADB4:  ADD             R0, PC; silk_gain_iCDF_ptr
CADB6:  LDR             R0, [R0]; silk_gain_iCDF
CADB8:  ADD.W           R2, R0, R2,LSL#3
CADBC:  MOV             R0, R8
CADBE:  BLX             j_ec_enc_icdf
CADC2:  LDR             R0, =(silk_uniform8_iCDF_ptr - 0xCADCC)
CADC4:  LDRB.W          R1, [R9]
CADC8:  ADD             R0, PC; silk_uniform8_iCDF_ptr
CADCA:  AND.W           R1, R1, #7
CADCE:  LDR             R2, [R0]
CADD0:  MOV             R0, R8
CADD2:  MOVS            R3, #8
CADD4:  BLX             j_ec_enc_icdf
CADD8:  MOVW            R0, #0x11E4
CADDC:  ADD.W           R4, R10, R0
CADE0:  LDR.W           R1, [R10,R0]
CADE4:  CMP             R1, #2
CADE6:  BLT             loc_CAE06
CADE8:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0xCADF0)
CADEA:  MOVS            R6, #1
CADEC:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
CADEE:  LDR             R5, [R0]; silk_delta_gain_iCDF
CADF0:  LDRSB.W         R1, [R9,R6]
CADF4:  MOV             R0, R8
CADF6:  MOV             R2, R5
CADF8:  MOVS            R3, #8
CADFA:  BLX             j_ec_enc_icdf
CADFE:  LDR             R0, [R4]
CAE00:  ADDS            R6, #1
CAE02:  CMP             R6, R0
CAE04:  BLT             loc_CADF0
CAE06:  STR             R4, [SP,#0x60+var_60]
CAE08:  MOVW            R5, #0x1254
CAE0C:  LDR.W           R0, [R10,R5]
CAE10:  LDRSB.W         R2, [R9,#0x1D]
CAE14:  LDRSB.W         R1, [R9,#8]
CAE18:  LDRSH.W         R3, [R0]
CAE1C:  LDR             R0, [R0,#0x10]
CAE1E:  ASRS            R2, R2, #1
CAE20:  SMLABB.W        R2, R2, R3, R0
CAE24:  MOV             R0, R8
CAE26:  MOVS            R3, #8
CAE28:  BLX             j_ec_enc_icdf
CAE2C:  LDR.W           R2, [R10,R5]
CAE30:  ADD             R0, SP, #0x60+var_40
CAE32:  STR.W           R9, [SP,#0x60+var_5C]
CAE36:  LDRSB.W         R3, [R9,#8]
CAE3A:  ADD             R1, SP, #0x60+var_50
CAE3C:  MOV             R6, R0
CAE3E:  BLX             j_silk_NLSF_unpack
CAE42:  STR.W           R10, [SP,#0x60+var_58]
CAE46:  LDR.W           R0, [R10,R5]
CAE4A:  LDRSH.W         R1, [R0,#2]
CAE4E:  CMP             R1, #1
CAE50:  BLT             loc_CAEDA
CAE52:  LDR             R1, [SP,#0x60+var_58]
CAE54:  MOV.W           R10, #0
CAE58:  ADDS            R4, R1, R5
CAE5A:  LDR             R1, [SP,#0x60+var_5C]
CAE5C:  ADD.W           R9, R1, #9
CAE60:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0xCAE66)
CAE62:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
CAE64:  LDR             R5, [R1]; silk_NLSF_EXT_iCDF
CAE66:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0xCAE6C)
CAE68:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
CAE6A:  LDR             R1, [R1]; silk_NLSF_EXT_iCDF
CAE6C:  STR             R1, [SP,#0x60+var_54]
CAE6E:  MOV             R11, R10
CAE70:  ADD.W           R10, R11, #1
CAE74:  LDRSB.W         R1, [R9,R11]
CAE78:  CMP             R1, #4
CAE7A:  BLT             loc_CAE98
CAE7C:  LDRSH.W         R1, [R6,R11,LSL#1]
CAE80:  MOVS            R3, #8
CAE82:  LDR             R0, [R0,#0x1C]
CAE84:  ADDS            R2, R0, R1
CAE86:  MOV             R0, R8
CAE88:  MOVS            R1, #8
CAE8A:  BLX             j_ec_enc_icdf
CAE8E:  LDRSB.W         R0, [R9,R11]
CAE92:  MOV             R2, R5
CAE94:  SUBS            R1, R0, #4
CAE96:  B               loc_CAEC8
CAE98:  CMN.W           R1, #4
CAE9C:  BGT             loc_CAEBE
CAE9E:  LDRSH.W         R1, [R6,R11,LSL#1]
CAEA2:  MOVS            R3, #8
CAEA4:  LDR             R0, [R0,#0x1C]
CAEA6:  ADDS            R2, R0, R1
CAEA8:  MOV             R0, R8
CAEAA:  MOVS            R1, #0
CAEAC:  BLX             j_ec_enc_icdf
CAEB0:  LDRSB.W         R0, [R9,R11]
CAEB4:  MOV             R1, #0xFFFFFFFC
CAEB8:  LDR             R2, [SP,#0x60+var_54]
CAEBA:  SUBS            R1, R1, R0
CAEBC:  B               loc_CAEC8
CAEBE:  LDRSH.W         R2, [R6,R11,LSL#1]
CAEC2:  ADDS            R1, #4
CAEC4:  LDR             R0, [R0,#0x1C]
CAEC6:  ADD             R2, R0
CAEC8:  MOV             R0, R8
CAECA:  MOVS            R3, #8
CAECC:  BLX             j_ec_enc_icdf
CAED0:  LDR             R0, [R4]
CAED2:  LDRSH.W         R1, [R0,#2]
CAED6:  CMP             R10, R1
CAED8:  BLT             loc_CAE6E
CAEDA:  LDR             R0, [SP,#0x60+var_60]
CAEDC:  LDR.W           R11, [SP,#0x60+var_5C]
CAEE0:  LDR             R0, [R0]
CAEE2:  CMP             R0, #4
CAEE4:  BNE             loc_CAEF8
CAEE6:  LDR             R0, =(silk_NLSF_interpolation_factor_iCDF_ptr - 0xCAEF2)
CAEE8:  MOVS            R3, #8
CAEEA:  LDRSB.W         R1, [R11,#0x1F]
CAEEE:  ADD             R0, PC; silk_NLSF_interpolation_factor_iCDF_ptr
CAEF0:  LDR             R2, [R0]; silk_NLSF_interpolation_factor_iCDF
CAEF2:  MOV             R0, R8
CAEF4:  BLX             j_ec_enc_icdf
CAEF8:  LDRB.W          R0, [R11,#0x1D]
CAEFC:  LDR.W           R10, [SP,#0x60+var_58]
CAF00:  CMP             R0, #2
CAF02:  BNE             loc_CAFFE
CAF04:  LDR             R0, [R7,#arg_0]
CAF06:  CMP             R0, #2
CAF08:  BNE             loc_CAF42
CAF0A:  MOVW            R0, #0x1688
CAF0E:  LDR.W           R0, [R10,R0]
CAF12:  CMP             R0, #2
CAF14:  BNE             loc_CAF42
CAF16:  LDR             R0, =(silk_pitch_delta_iCDF_ptr - 0xCAF2A)
CAF18:  MOVW            R4, #0x168C
CAF1C:  LDRSH.W         R1, [R10,R4]
CAF20:  MOVS            R3, #8
CAF22:  LDRSH.W         R2, [R11,#0x1A]
CAF26:  ADD             R0, PC; silk_pitch_delta_iCDF_ptr
CAF28:  SUBS            R1, R2, R1
CAF2A:  ADD.W           R5, R1, #8
CAF2E:  LDR             R2, [R0]; silk_pitch_delta_iCDF
CAF30:  ADDS            R1, #9
CAF32:  CMP             R5, #0x13
CAF34:  IT HI
CAF36:  MOVHI           R1, #0
CAF38:  MOV             R0, R8
CAF3A:  BLX             j_ec_enc_icdf
CAF3E:  CMP             R5, #0x14
CAF40:  BCC             loc_CB036
CAF42:  MOV.W           R0, #0x11E0
CAF46:  LDRSH.W         R9, [R11,#0x1A]
CAF4A:  LDR.W           R4, [R10,R0]
CAF4E:  MOV             R0, R9
CAF50:  ASRS            R1, R4, #1
CAF52:  BLX             sub_108848
CAF56:  MOV             R5, R0
CAF58:  LDR             R0, =(silk_pitch_lag_iCDF_ptr - 0xCAF62)
CAF5A:  MOV             R1, R5
CAF5C:  MOVS            R3, #8
CAF5E:  ADD             R0, PC; silk_pitch_lag_iCDF_ptr
CAF60:  LDR             R2, [R0]; silk_pitch_lag_iCDF
CAF62:  MOV             R0, R8
CAF64:  BLX             j_ec_enc_icdf
CAF68:  SBFX.W          R0, R4, #1, #0x10
CAF6C:  SXTH            R1, R5
CAF6E:  MOVS            R3, #8
CAF70:  MLS.W           R1, R1, R0, R9
CAF74:  MOVW            R0, #0x124C
CAF78:  LDR.W           R2, [R10,R0]
CAF7C:  MOV             R0, R8
CAF7E:  BLX             j_ec_enc_icdf
CAF82:  MOVW            R0, #0x168C
CAF86:  ADD             R0, R10
CAF88:  LDRH.W          R1, [R11,#0x1A]
CAF8C:  MOVS            R3, #8
CAF8E:  STRH            R1, [R0]
CAF90:  MOVW            R0, #0x1250
CAF94:  LDR.W           R2, [R10,R0]
CAF98:  MOV             R0, R8
CAF9A:  LDRSB.W         R1, [R11,#0x1C]
CAF9E:  BLX             j_ec_enc_icdf
CAFA2:  LDR             R0, =(silk_LTP_per_index_iCDF_ptr - 0xCAFAE)
CAFA4:  MOVS            R3, #8
CAFA6:  LDRSB.W         R1, [R11,#0x20]
CAFAA:  ADD             R0, PC; silk_LTP_per_index_iCDF_ptr
CAFAC:  LDR             R2, [R0]; silk_LTP_per_index_iCDF
CAFAE:  MOV             R0, R8
CAFB0:  BLX             j_ec_enc_icdf
CAFB4:  LDR.W           R9, [SP,#0x60+var_60]
CAFB8:  LDR.W           R0, [R9]
CAFBC:  CMP             R0, #1
CAFBE:  BLT             loc_CAFE8
CAFC0:  LDR             R0, =(silk_LTP_gain_iCDF_ptrs_ptr - 0xCAFCC)
CAFC2:  ADD.W           R5, R11, #4
CAFC6:  MOVS            R6, #0
CAFC8:  ADD             R0, PC; silk_LTP_gain_iCDF_ptrs_ptr
CAFCA:  LDR             R4, [R0]; silk_LTP_gain_iCDF_ptrs
CAFCC:  LDRSB.W         R0, [R11,#0x20]
CAFD0:  MOVS            R3, #8
CAFD2:  LDRSB           R1, [R5,R6]
CAFD4:  LDR.W           R2, [R4,R0,LSL#2]
CAFD8:  MOV             R0, R8
CAFDA:  BLX             j_ec_enc_icdf
CAFDE:  LDR.W           R0, [R9]
CAFE2:  ADDS            R6, #1
CAFE4:  CMP             R6, R0
CAFE6:  BLT             loc_CAFCC
CAFE8:  LDR             R0, [R7,#arg_0]
CAFEA:  CBNZ            R0, loc_CAFFE
CAFEC:  LDR             R0, =(silk_LTPscale_iCDF_ptr - 0xCAFF8)
CAFEE:  MOVS            R3, #8
CAFF0:  LDRSB.W         R1, [R11,#0x21]
CAFF4:  ADD             R0, PC; silk_LTPscale_iCDF_ptr
CAFF6:  LDR             R2, [R0]; silk_LTPscale_iCDF
CAFF8:  MOV             R0, R8
CAFFA:  BLX             j_ec_enc_icdf
CAFFE:  LDR             R0, =(silk_uniform4_iCDF_ptr - 0xCB00E)
CB000:  MOVW            R1, #0x1688
CB004:  LDRSB.W         R2, [R11,#0x1D]
CB008:  MOVS            R3, #8
CB00A:  ADD             R0, PC; silk_uniform4_iCDF_ptr
CB00C:  STR.W           R2, [R10,R1]
CB010:  LDR             R2, [R0]; silk_uniform4_iCDF
CB012:  MOV             R0, R8
CB014:  LDRSB.W         R1, [R11,#0x22]
CB018:  BLX             j_ec_enc_icdf
CB01C:  LDR             R0, =(__stack_chk_guard_ptr - 0xCB024)
CB01E:  LDR             R1, [SP,#0x60+var_20]
CB020:  ADD             R0, PC; __stack_chk_guard_ptr
CB022:  LDR             R0, [R0]; __stack_chk_guard
CB024:  LDR             R0, [R0]
CB026:  SUBS            R0, R0, R1
CB028:  ITTT EQ
CB02A:  ADDEQ           SP, SP, #0x44 ; 'D'
CB02C:  POPEQ.W         {R8-R11}
CB030:  POPEQ           {R4-R7,PC}
CB032:  BLX             __stack_chk_fail
CB036:  ADD.W           R0, R10, R4
CB03A:  B               loc_CAF88
