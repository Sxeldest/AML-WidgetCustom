; =========================================================
; Game Engine Function: silk_decode_indices
; Address            : 0xB5F38 - 0xB61F2
; =========================================================

B5F38:  PUSH            {R4-R7,LR}
B5F3A:  ADD             R7, SP, #0xC
B5F3C:  PUSH.W          {R8-R11}
B5F40:  SUB             SP, SP, #0x34
B5F42:  MOV             R4, R0
B5F44:  LDR             R0, =(__stack_chk_guard_ptr - 0xB5F4E)
B5F46:  LDR             R5, [R7,#arg_0]
B5F48:  MOV             R9, R1
B5F4A:  ADD             R0, PC; __stack_chk_guard_ptr
B5F4C:  CMP             R3, #0
B5F4E:  LDR             R0, [R0]; __stack_chk_guard
B5F50:  LDR             R0, [R0]
B5F52:  STR             R0, [SP,#0x50+var_20]
B5F54:  BNE             loc_B5F64
B5F56:  ADD.W           R0, R4, R2,LSL#2
B5F5A:  LDR.W           R0, [R0,#0x964]
B5F5E:  CMP             R0, #0
B5F60:  BEQ.W           loc_B61E2
B5F64:  LDR             R0, =(silk_type_offset_VAD_iCDF_ptr - 0xB5F6C)
B5F66:  MOVS            R2, #8
B5F68:  ADD             R0, PC; silk_type_offset_VAD_iCDF_ptr
B5F6A:  LDR             R1, [R0]; silk_type_offset_VAD_iCDF
B5F6C:  MOV             R0, R9
B5F6E:  BLX             j_ec_dec_icdf
B5F72:  ADDS            R0, #2
B5F74:  AND.W           R1, R0, #1
B5F78:  LSRS            R0, R0, #1
B5F7A:  CMP             R5, #2
B5F7C:  STRB.W          R1, [R4,#0xACE]
B5F80:  STRB.W          R0, [R4,#0xACD]
B5F84:  BNE             loc_B5F96
B5F86:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0xB5F8E)
B5F88:  MOVS            R2, #8
B5F8A:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
B5F8C:  LDR             R1, [R0]; silk_delta_gain_iCDF
B5F8E:  MOV             R0, R9
B5F90:  BLX             j_ec_dec_icdf
B5F94:  B               loc_B5FC4
B5F96:  LDR             R1, =(silk_gain_iCDF_ptr - 0xB5FA0)
B5F98:  LSLS            R0, R0, #0x18
B5F9A:  MOVS            R2, #8
B5F9C:  ADD             R1, PC; silk_gain_iCDF_ptr
B5F9E:  LDR             R1, [R1]; silk_gain_iCDF
B5FA0:  ADD.W           R1, R1, R0,ASR#21
B5FA4:  MOV             R0, R9
B5FA6:  BLX             j_ec_dec_icdf
B5FAA:  LDR             R1, =(silk_uniform8_iCDF_ptr - 0xB5FB8)
B5FAC:  LSLS            R0, R0, #3
B5FAE:  STRB.W          R0, [R4,#0xAB0]
B5FB2:  MOV             R0, R9
B5FB4:  ADD             R1, PC; silk_uniform8_iCDF_ptr
B5FB6:  MOVS            R2, #8
B5FB8:  LDR             R1, [R1]; silk_uniform8_iCDF
B5FBA:  BLX             j_ec_dec_icdf
B5FBE:  LDRB.W          R1, [R4,#0xAB0]
B5FC2:  ADD             R0, R1
B5FC4:  STRB.W          R0, [R4,#0xAB0]
B5FC8:  LDR.W           R0, [R4,#0x914]
B5FCC:  CMP             R0, #2
B5FCE:  BLT             loc_B5FF4
B5FD0:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0xB5FDA)
B5FD2:  MOVW            R5, #0xAB1
B5FD6:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
B5FD8:  LDR             R6, [R0]; silk_delta_gain_iCDF
B5FDA:  MOV             R0, R9
B5FDC:  MOV             R1, R6
B5FDE:  MOVS            R2, #8
B5FE0:  BLX             j_ec_dec_icdf
B5FE4:  STRB            R0, [R4,R5]
B5FE6:  SUBW            R0, R5, #0xAAF
B5FEA:  ADDS            R5, #1
B5FEC:  LDR.W           R1, [R4,#0x914]
B5FF0:  CMP             R0, R1
B5FF2:  BLT             loc_B5FDA
B5FF4:  LDR.W           R0, [R4,#0xAAC]
B5FF8:  LDRSB.W         R1, [R4,#0xACD]
B5FFC:  LDRSH.W         R2, [R0]
B6000:  LDR             R0, [R0,#0x10]
B6002:  ASRS            R1, R1, #1
B6004:  SMLABB.W        R1, R1, R2, R0
B6008:  MOV             R0, R9
B600A:  MOVS            R2, #8
B600C:  BLX             j_ec_dec_icdf
B6010:  STRB.W          R0, [R4,#0xAB8]
B6014:  ADD.W           R11, SP, #0x50+var_40
B6018:  LDR.W           R2, [R4,#0xAAC]
B601C:  SXTB            R3, R0
B601E:  MOV             R1, SP
B6020:  MOV             R0, R11
B6022:  BLX             j_silk_NLSF_unpack
B6026:  LDR.W           R0, [R4,#0xAAC]
B602A:  LDRSH.W         R1, [R0,#2]
B602E:  CMP             R1, #1
B6030:  BLT             loc_B608E
B6032:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0xB6040)
B6034:  ADDW            R6, R4, #0xAB9
B6038:  MOV.W           R10, #0
B603C:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
B603E:  LDR.W           R8, [R1]; silk_NLSF_EXT_iCDF
B6042:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0xB6048)
B6044:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
B6046:  LDR             R5, [R1]; silk_NLSF_EXT_iCDF
B6048:  LDRSH.W         R1, [R11,R10,LSL#1]
B604C:  MOVS            R2, #8
B604E:  LDR             R0, [R0,#0x1C]
B6050:  ADD             R1, R0
B6052:  MOV             R0, R9
B6054:  BLX             j_ec_dec_icdf
B6058:  CMP             R0, #8
B605A:  BEQ             loc_B606C
B605C:  CBNZ            R0, loc_B6078
B605E:  MOV             R0, R9
B6060:  MOV             R1, R5
B6062:  MOVS            R2, #8
B6064:  BLX             j_ec_dec_icdf
B6068:  NEGS            R0, R0
B606A:  B               loc_B6078
B606C:  MOV             R0, R9
B606E:  MOV             R1, R8
B6070:  MOVS            R2, #8
B6072:  BLX             j_ec_dec_icdf
B6076:  ADDS            R0, #8
B6078:  ADDS            R0, #0xFC
B607A:  STRB.W          R0, [R6,R10]
B607E:  ADD.W           R10, R10, #1
B6082:  LDR.W           R0, [R4,#0xAAC]
B6086:  LDRSH.W         R1, [R0,#2]
B608A:  CMP             R10, R1
B608C:  BLT             loc_B6048
B608E:  LDR.W           R0, [R4,#0x914]
B6092:  CMP             R0, #4
B6094:  BNE             loc_B60A6
B6096:  LDR             R0, =(silk_NLSF_interpolation_factor_iCDF_ptr - 0xB609E)
B6098:  MOVS            R2, #8
B609A:  ADD             R0, PC; silk_NLSF_interpolation_factor_iCDF_ptr
B609C:  LDR             R1, [R0]; silk_NLSF_interpolation_factor_iCDF
B609E:  MOV             R0, R9
B60A0:  BLX             j_ec_dec_icdf
B60A4:  B               loc_B60A8
B60A6:  MOVS            R0, #4
B60A8:  LDRB.W          R1, [R4,#0xACD]
B60AC:  LDR.W           R10, [R7,#arg_0]
B60B0:  CMP             R1, #2
B60B2:  STRB.W          R0, [R4,#0xACF]
B60B6:  BNE             loc_B61B0
B60B8:  CMP.W           R10, #2
B60BC:  ITT EQ
B60BE:  LDREQ.W         R0, [R4,#0x95C]
B60C2:  CMPEQ           R0, #2
B60C4:  BEQ             loc_B60F2
B60C6:  LDR             R0, =(silk_pitch_lag_iCDF_ptr - 0xB60CE)
B60C8:  MOVS            R2, #8
B60CA:  ADD             R0, PC; silk_pitch_lag_iCDF_ptr
B60CC:  LDR             R1, [R0]; silk_pitch_lag_iCDF
B60CE:  MOV             R0, R9
B60D0:  BLX             j_ec_dec_icdf
B60D4:  LDR.W           R2, [R4,#0x90C]
B60D8:  LDR.W           R1, [R4,#0x94C]
B60DC:  LSRS            R2, R2, #1
B60DE:  MULS            R0, R2
B60E0:  MOVS            R2, #8
B60E2:  STRH.W          R0, [R4,#0xACA]
B60E6:  MOV             R0, R9
B60E8:  BLX             j_ec_dec_icdf
B60EC:  LDRH.W          R1, [R4,#0xACA]
B60F0:  B               loc_B6110
B60F2:  LDR             R0, =(silk_pitch_delta_iCDF_ptr - 0xB60FA)
B60F4:  MOVS            R2, #8
B60F6:  ADD             R0, PC; silk_pitch_delta_iCDF_ptr
B60F8:  LDR             R1, [R0]; silk_pitch_delta_iCDF
B60FA:  MOV             R0, R9
B60FC:  BLX             j_ec_dec_icdf
B6100:  LSLS            R1, R0, #0x10
B6102:  CMP             R1, #1
B6104:  BLT             loc_B60C6
B6106:  LDRH.W          R1, [R4,#0x960]
B610A:  ADD             R0, R1
B610C:  MOVW            R1, #0xFFF7
B6110:  ADD             R0, R1
B6112:  STRH.W          R0, [R4,#0xACA]
B6116:  LDR.W           R1, [R4,#0x950]
B611A:  MOVS            R2, #8
B611C:  STRH.W          R0, [R4,#0x960]
B6120:  MOV             R0, R9
B6122:  BLX             j_ec_dec_icdf
B6126:  LDR             R1, =(silk_LTP_per_index_iCDF_ptr - 0xB6134)
B6128:  MOVS            R2, #8
B612A:  STRB.W          R0, [R4,#0xACC]
B612E:  MOV             R0, R9
B6130:  ADD             R1, PC; silk_LTP_per_index_iCDF_ptr
B6132:  LDR             R1, [R1]; silk_LTP_per_index_iCDF
B6134:  BLX             j_ec_dec_icdf
B6138:  LDR.W           R1, [R4,#0x914]
B613C:  STRB.W          R0, [R4,#0xAD0]
B6140:  CMP             R1, #1
B6142:  BLT             loc_B6190
B6144:  LDR             R1, =(silk_LTP_gain_iCDF_ptrs_ptr - 0xB6150)
B6146:  LSLS            R0, R0, #0x18
B6148:  ASRS            R0, R0, #0x16
B614A:  MOVS            R2, #8
B614C:  ADD             R1, PC; silk_LTP_gain_iCDF_ptrs_ptr
B614E:  LDR             R1, [R1]; silk_LTP_gain_iCDF_ptrs
B6150:  LDR             R1, [R1,R0]
B6152:  MOV             R0, R9
B6154:  BLX             j_ec_dec_icdf
B6158:  LDR.W           R1, [R4,#0x914]
B615C:  STRB.W          R0, [R4,#0xAB4]
B6160:  CMP             R1, #2
B6162:  BLT             loc_B6190
B6164:  LDR             R0, =(silk_LTP_gain_iCDF_ptrs_ptr - 0xB6170)
B6166:  ADDW            R8, R4, #0xAB5
B616A:  MOVS            R6, #0
B616C:  ADD             R0, PC; silk_LTP_gain_iCDF_ptrs_ptr
B616E:  LDR             R5, [R0]; silk_LTP_gain_iCDF_ptrs
B6170:  LDRSB.W         R0, [R4,#0xAD0]
B6174:  MOVS            R2, #8
B6176:  LDR.W           R1, [R5,R0,LSL#2]
B617A:  MOV             R0, R9
B617C:  BLX             j_ec_dec_icdf
B6180:  STRB.W          R0, [R8,R6]
B6184:  ADDS            R0, R6, #2
B6186:  ADDS            R6, #1
B6188:  LDR.W           R1, [R4,#0x914]
B618C:  CMP             R0, R1
B618E:  BLT             loc_B6170
B6190:  CMP.W           R10, #0
B6194:  BEQ             loc_B619A
B6196:  MOVS            R0, #0
B6198:  B               loc_B61A8
B619A:  LDR             R0, =(silk_LTPscale_iCDF_ptr - 0xB61A2)
B619C:  MOVS            R2, #8
B619E:  ADD             R0, PC; silk_LTPscale_iCDF_ptr
B61A0:  LDR             R1, [R0]; silk_LTPscale_iCDF
B61A2:  MOV             R0, R9
B61A4:  BLX             j_ec_dec_icdf
B61A8:  LDRB.W          R1, [R4,#0xACD]
B61AC:  STRB.W          R0, [R4,#0xAD1]
B61B0:  LDR             R0, =(silk_uniform4_iCDF_ptr - 0xB61BE)
B61B2:  SXTB            R1, R1
B61B4:  STR.W           R1, [R4,#0x95C]
B61B8:  MOVS            R2, #8
B61BA:  ADD             R0, PC; silk_uniform4_iCDF_ptr
B61BC:  LDR             R1, [R0]; silk_uniform4_iCDF
B61BE:  MOV             R0, R9
B61C0:  BLX             j_ec_dec_icdf
B61C4:  STRB.W          R0, [R4,#0xAD2]
B61C8:  LDR             R0, =(__stack_chk_guard_ptr - 0xB61D0)
B61CA:  LDR             R1, [SP,#0x50+var_20]
B61CC:  ADD             R0, PC; __stack_chk_guard_ptr
B61CE:  LDR             R0, [R0]; __stack_chk_guard
B61D0:  LDR             R0, [R0]
B61D2:  SUBS            R0, R0, R1
B61D4:  ITTT EQ
B61D6:  ADDEQ           SP, SP, #0x34 ; '4'
B61D8:  POPEQ.W         {R8-R11}
B61DC:  POPEQ           {R4-R7,PC}
B61DE:  BLX             __stack_chk_fail
B61E2:  LDR             R0, =(silk_type_offset_no_VAD_iCDF_ptr - 0xB61EA)
B61E4:  MOVS            R2, #8
B61E6:  ADD             R0, PC; silk_type_offset_no_VAD_iCDF_ptr
B61E8:  LDR             R1, [R0]; silk_type_offset_no_VAD_iCDF
B61EA:  MOV             R0, R9
B61EC:  BLX             j_ec_dec_icdf
B61F0:  B               loc_B5F74
