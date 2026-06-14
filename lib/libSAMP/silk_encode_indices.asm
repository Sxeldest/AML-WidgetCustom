; =========================================================
; Game Engine Function: silk_encode_indices
; Address            : 0x1A8B00 - 0x1A8DFC
; =========================================================

1A8B00:  PUSH            {R4-R7,LR}
1A8B02:  ADD             R7, SP, #0xC
1A8B04:  PUSH.W          {R8-R11}
1A8B08:  SUB             SP, SP, #0x44
1A8B0A:  MOV             R10, R0
1A8B0C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A8B18)
1A8B0E:  ADD.W           R9, R10, #0x1280
1A8B12:  CMP             R3, #0
1A8B14:  ADD             R0, PC; __stack_chk_guard_ptr
1A8B16:  MOV             R8, R1
1A8B18:  MOVW            R1, #0x17D4
1A8B1C:  LDR             R5, [R7,#arg_0]
1A8B1E:  LDR             R0, [R0]; __stack_chk_guard
1A8B20:  LDR             R0, [R0]
1A8B22:  STR             R0, [SP,#0x60+var_20]
1A8B24:  ADD.W           R0, R2, R2,LSL#3
1A8B28:  ADD.W           R0, R10, R0,LSL#2
1A8B2C:  IT NE
1A8B2E:  ADDNE.W         R9, R0, R1
1A8B32:  CMP             R3, #0
1A8B34:  LDRSB.W         R0, [R9,#0x1D]
1A8B38:  LDRSB.W         R1, [R9,#0x1E]
1A8B3C:  ADD.W           R1, R1, R0,LSL#1
1A8B40:  BNE             loc_1A8B4C
1A8B42:  CMP             R1, #2
1A8B44:  BGE             loc_1A8B4C
1A8B46:  LDR             R0, =(silk_type_offset_no_VAD_iCDF_ptr - 0x1A8B4C)
1A8B48:  ADD             R0, PC; silk_type_offset_no_VAD_iCDF_ptr
1A8B4A:  B               loc_1A8B52
1A8B4C:  LDR             R0, =(silk_type_offset_VAD_iCDF_ptr - 0x1A8B54)
1A8B4E:  SUBS            R1, #2
1A8B50:  ADD             R0, PC; silk_type_offset_VAD_iCDF_ptr
1A8B52:  LDR             R2, [R0]
1A8B54:  MOV             R0, R8
1A8B56:  MOVS            R3, #8
1A8B58:  BLX             j_ec_enc_icdf
1A8B5C:  LDRSB.W         R1, [R9]
1A8B60:  CMP             R5, #2
1A8B62:  BNE             loc_1A8B6A
1A8B64:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0x1A8B6A)
1A8B66:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
1A8B68:  B               loc_1A8B8E
1A8B6A:  LDR             R0, =(silk_gain_iCDF_ptr - 0x1A8B78)
1A8B6C:  ASRS            R1, R1, #3
1A8B6E:  LDRSB.W         R2, [R9,#0x1D]
1A8B72:  MOVS            R3, #8
1A8B74:  ADD             R0, PC; silk_gain_iCDF_ptr
1A8B76:  LDR             R0, [R0]; silk_gain_iCDF
1A8B78:  ADD.W           R2, R0, R2,LSL#3
1A8B7C:  MOV             R0, R8
1A8B7E:  BLX             j_ec_enc_icdf
1A8B82:  LDR             R0, =(silk_uniform8_iCDF_ptr - 0x1A8B8C)
1A8B84:  LDRB.W          R1, [R9]
1A8B88:  ADD             R0, PC; silk_uniform8_iCDF_ptr
1A8B8A:  AND.W           R1, R1, #7
1A8B8E:  LDR             R2, [R0]
1A8B90:  MOV             R0, R8
1A8B92:  MOVS            R3, #8
1A8B94:  BLX             j_ec_enc_icdf
1A8B98:  MOVW            R0, #0x11E4
1A8B9C:  ADD.W           R4, R10, R0
1A8BA0:  LDR.W           R1, [R10,R0]
1A8BA4:  CMP             R1, #2
1A8BA6:  BLT             loc_1A8BC6
1A8BA8:  LDR             R0, =(silk_delta_gain_iCDF_ptr - 0x1A8BB0)
1A8BAA:  MOVS            R6, #1
1A8BAC:  ADD             R0, PC; silk_delta_gain_iCDF_ptr
1A8BAE:  LDR             R5, [R0]; silk_delta_gain_iCDF
1A8BB0:  LDRSB.W         R1, [R9,R6]
1A8BB4:  MOV             R0, R8
1A8BB6:  MOV             R2, R5
1A8BB8:  MOVS            R3, #8
1A8BBA:  BLX             j_ec_enc_icdf
1A8BBE:  LDR             R0, [R4]
1A8BC0:  ADDS            R6, #1
1A8BC2:  CMP             R6, R0
1A8BC4:  BLT             loc_1A8BB0
1A8BC6:  STR             R4, [SP,#0x60+var_60]
1A8BC8:  MOVW            R5, #0x1254
1A8BCC:  LDR.W           R0, [R10,R5]
1A8BD0:  LDRSB.W         R2, [R9,#0x1D]
1A8BD4:  LDRSB.W         R1, [R9,#8]
1A8BD8:  LDRSH.W         R3, [R0]
1A8BDC:  LDR             R0, [R0,#0x10]
1A8BDE:  ASRS            R2, R2, #1
1A8BE0:  SMLABB.W        R2, R2, R3, R0
1A8BE4:  MOV             R0, R8
1A8BE6:  MOVS            R3, #8
1A8BE8:  BLX             j_ec_enc_icdf
1A8BEC:  LDR.W           R2, [R10,R5]
1A8BF0:  ADD             R0, SP, #0x60+var_40
1A8BF2:  STR.W           R9, [SP,#0x60+var_5C]
1A8BF6:  LDRSB.W         R3, [R9,#8]
1A8BFA:  ADD             R1, SP, #0x60+var_50
1A8BFC:  MOV             R6, R0
1A8BFE:  BLX             j_silk_NLSF_unpack
1A8C02:  STR.W           R10, [SP,#0x60+var_58]
1A8C06:  LDR.W           R0, [R10,R5]
1A8C0A:  LDRSH.W         R1, [R0,#2]
1A8C0E:  CMP             R1, #1
1A8C10:  BLT             loc_1A8C9A
1A8C12:  LDR             R1, [SP,#0x60+var_58]
1A8C14:  MOV.W           R10, #0
1A8C18:  ADDS            R4, R1, R5
1A8C1A:  LDR             R1, [SP,#0x60+var_5C]
1A8C1C:  ADD.W           R9, R1, #9
1A8C20:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0x1A8C26)
1A8C22:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
1A8C24:  LDR             R5, [R1]; silk_NLSF_EXT_iCDF
1A8C26:  LDR             R1, =(silk_NLSF_EXT_iCDF_ptr - 0x1A8C2C)
1A8C28:  ADD             R1, PC; silk_NLSF_EXT_iCDF_ptr
1A8C2A:  LDR             R1, [R1]; silk_NLSF_EXT_iCDF
1A8C2C:  STR             R1, [SP,#0x60+var_54]
1A8C2E:  MOV             R11, R10
1A8C30:  ADD.W           R10, R11, #1
1A8C34:  LDRSB.W         R1, [R9,R11]
1A8C38:  CMP             R1, #4
1A8C3A:  BLT             loc_1A8C58
1A8C3C:  LDRSH.W         R1, [R6,R11,LSL#1]
1A8C40:  MOVS            R3, #8
1A8C42:  LDR             R0, [R0,#0x1C]
1A8C44:  ADDS            R2, R0, R1
1A8C46:  MOV             R0, R8
1A8C48:  MOVS            R1, #8
1A8C4A:  BLX             j_ec_enc_icdf
1A8C4E:  LDRSB.W         R0, [R9,R11]
1A8C52:  MOV             R2, R5
1A8C54:  SUBS            R1, R0, #4
1A8C56:  B               loc_1A8C88
1A8C58:  CMN.W           R1, #4
1A8C5C:  BGT             loc_1A8C7E
1A8C5E:  LDRSH.W         R1, [R6,R11,LSL#1]
1A8C62:  MOVS            R3, #8
1A8C64:  LDR             R0, [R0,#0x1C]
1A8C66:  ADDS            R2, R0, R1
1A8C68:  MOV             R0, R8
1A8C6A:  MOVS            R1, #0
1A8C6C:  BLX             j_ec_enc_icdf
1A8C70:  LDRSB.W         R0, [R9,R11]
1A8C74:  MOV             R1, #0xFFFFFFFC
1A8C78:  LDR             R2, [SP,#0x60+var_54]
1A8C7A:  SUBS            R1, R1, R0
1A8C7C:  B               loc_1A8C88
1A8C7E:  LDRSH.W         R2, [R6,R11,LSL#1]
1A8C82:  ADDS            R1, #4
1A8C84:  LDR             R0, [R0,#0x1C]
1A8C86:  ADD             R2, R0
1A8C88:  MOV             R0, R8
1A8C8A:  MOVS            R3, #8
1A8C8C:  BLX             j_ec_enc_icdf
1A8C90:  LDR             R0, [R4]
1A8C92:  LDRSH.W         R1, [R0,#2]
1A8C96:  CMP             R10, R1
1A8C98:  BLT             loc_1A8C2E
1A8C9A:  LDR             R0, [SP,#0x60+var_60]
1A8C9C:  LDR.W           R11, [SP,#0x60+var_5C]
1A8CA0:  LDR             R0, [R0]
1A8CA2:  CMP             R0, #4
1A8CA4:  BNE             loc_1A8CB8
1A8CA6:  LDR             R0, =(silk_NLSF_interpolation_factor_iCDF_ptr - 0x1A8CB2)
1A8CA8:  MOVS            R3, #8
1A8CAA:  LDRSB.W         R1, [R11,#0x1F]
1A8CAE:  ADD             R0, PC; silk_NLSF_interpolation_factor_iCDF_ptr
1A8CB0:  LDR             R2, [R0]; silk_NLSF_interpolation_factor_iCDF
1A8CB2:  MOV             R0, R8
1A8CB4:  BLX             j_ec_enc_icdf
1A8CB8:  LDRB.W          R0, [R11,#0x1D]
1A8CBC:  LDR.W           R10, [SP,#0x60+var_58]
1A8CC0:  CMP             R0, #2
1A8CC2:  BNE             loc_1A8DBE
1A8CC4:  LDR             R0, [R7,#arg_0]
1A8CC6:  CMP             R0, #2
1A8CC8:  BNE             loc_1A8D02
1A8CCA:  MOVW            R0, #0x1688
1A8CCE:  LDR.W           R0, [R10,R0]
1A8CD2:  CMP             R0, #2
1A8CD4:  BNE             loc_1A8D02
1A8CD6:  LDR             R0, =(silk_pitch_delta_iCDF_ptr - 0x1A8CEA)
1A8CD8:  MOVW            R4, #0x168C
1A8CDC:  LDRSH.W         R1, [R10,R4]
1A8CE0:  MOVS            R3, #8
1A8CE2:  LDRSH.W         R2, [R11,#0x1A]
1A8CE6:  ADD             R0, PC; silk_pitch_delta_iCDF_ptr
1A8CE8:  SUBS            R1, R2, R1
1A8CEA:  ADD.W           R5, R1, #8
1A8CEE:  LDR             R2, [R0]; silk_pitch_delta_iCDF
1A8CF0:  ADDS            R1, #9
1A8CF2:  CMP             R5, #0x13
1A8CF4:  IT HI
1A8CF6:  MOVHI           R1, #0
1A8CF8:  MOV             R0, R8
1A8CFA:  BLX             j_ec_enc_icdf
1A8CFE:  CMP             R5, #0x14
1A8D00:  BCC             loc_1A8DF6
1A8D02:  MOV.W           R0, #0x11E0
1A8D06:  LDRSH.W         R9, [R11,#0x1A]
1A8D0A:  LDR.W           R4, [R10,R0]
1A8D0E:  MOV             R0, R9
1A8D10:  ASRS            R1, R4, #1
1A8D12:  BLX             sub_220A40
1A8D16:  MOV             R5, R0
1A8D18:  LDR             R0, =(silk_pitch_lag_iCDF_ptr - 0x1A8D22)
1A8D1A:  MOV             R1, R5
1A8D1C:  MOVS            R3, #8
1A8D1E:  ADD             R0, PC; silk_pitch_lag_iCDF_ptr
1A8D20:  LDR             R2, [R0]; silk_pitch_lag_iCDF
1A8D22:  MOV             R0, R8
1A8D24:  BLX             j_ec_enc_icdf
1A8D28:  SBFX.W          R0, R4, #1, #0x10
1A8D2C:  SXTH            R1, R5
1A8D2E:  MOVS            R3, #8
1A8D30:  MLS.W           R1, R1, R0, R9
1A8D34:  MOVW            R0, #0x124C
1A8D38:  LDR.W           R2, [R10,R0]
1A8D3C:  MOV             R0, R8
1A8D3E:  BLX             j_ec_enc_icdf
1A8D42:  MOVW            R0, #0x168C
1A8D46:  ADD             R0, R10
1A8D48:  LDRH.W          R1, [R11,#0x1A]
1A8D4C:  MOVS            R3, #8
1A8D4E:  STRH            R1, [R0]
1A8D50:  MOVW            R0, #0x1250
1A8D54:  LDR.W           R2, [R10,R0]
1A8D58:  MOV             R0, R8
1A8D5A:  LDRSB.W         R1, [R11,#0x1C]
1A8D5E:  BLX             j_ec_enc_icdf
1A8D62:  LDR             R0, =(silk_LTP_per_index_iCDF_ptr - 0x1A8D6E)
1A8D64:  MOVS            R3, #8
1A8D66:  LDRSB.W         R1, [R11,#0x20]
1A8D6A:  ADD             R0, PC; silk_LTP_per_index_iCDF_ptr
1A8D6C:  LDR             R2, [R0]; silk_LTP_per_index_iCDF
1A8D6E:  MOV             R0, R8
1A8D70:  BLX             j_ec_enc_icdf
1A8D74:  LDR.W           R9, [SP,#0x60+var_60]
1A8D78:  LDR.W           R0, [R9]
1A8D7C:  CMP             R0, #1
1A8D7E:  BLT             loc_1A8DA8
1A8D80:  LDR             R0, =(silk_LTP_gain_iCDF_ptrs_ptr - 0x1A8D8C)
1A8D82:  ADD.W           R5, R11, #4
1A8D86:  MOVS            R6, #0
1A8D88:  ADD             R0, PC; silk_LTP_gain_iCDF_ptrs_ptr
1A8D8A:  LDR             R4, [R0]; silk_LTP_gain_iCDF_ptrs
1A8D8C:  LDRSB.W         R0, [R11,#0x20]
1A8D90:  MOVS            R3, #8
1A8D92:  LDRSB           R1, [R5,R6]
1A8D94:  LDR.W           R2, [R4,R0,LSL#2]
1A8D98:  MOV             R0, R8
1A8D9A:  BLX             j_ec_enc_icdf
1A8D9E:  LDR.W           R0, [R9]
1A8DA2:  ADDS            R6, #1
1A8DA4:  CMP             R6, R0
1A8DA6:  BLT             loc_1A8D8C
1A8DA8:  LDR             R0, [R7,#arg_0]
1A8DAA:  CBNZ            R0, loc_1A8DBE
1A8DAC:  LDR             R0, =(silk_LTPscale_iCDF_ptr - 0x1A8DB8)
1A8DAE:  MOVS            R3, #8
1A8DB0:  LDRSB.W         R1, [R11,#0x21]
1A8DB4:  ADD             R0, PC; silk_LTPscale_iCDF_ptr
1A8DB6:  LDR             R2, [R0]; silk_LTPscale_iCDF
1A8DB8:  MOV             R0, R8
1A8DBA:  BLX             j_ec_enc_icdf
1A8DBE:  LDR             R0, =(silk_uniform4_iCDF_ptr - 0x1A8DCE)
1A8DC0:  MOVW            R1, #0x1688
1A8DC4:  LDRSB.W         R2, [R11,#0x1D]
1A8DC8:  MOVS            R3, #8
1A8DCA:  ADD             R0, PC; silk_uniform4_iCDF_ptr
1A8DCC:  STR.W           R2, [R10,R1]
1A8DD0:  LDR             R2, [R0]; silk_uniform4_iCDF
1A8DD2:  MOV             R0, R8
1A8DD4:  LDRSB.W         R1, [R11,#0x22]
1A8DD8:  BLX             j_ec_enc_icdf
1A8DDC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A8DE4)
1A8DDE:  LDR             R1, [SP,#0x60+var_20]
1A8DE0:  ADD             R0, PC; __stack_chk_guard_ptr
1A8DE2:  LDR             R0, [R0]; __stack_chk_guard
1A8DE4:  LDR             R0, [R0]
1A8DE6:  SUBS            R0, R0, R1
1A8DE8:  ITTT EQ
1A8DEA:  ADDEQ           SP, SP, #0x44 ; 'D'
1A8DEC:  POPEQ.W         {R8-R11}
1A8DF0:  POPEQ           {R4-R7,PC}
1A8DF2:  BLX             __stack_chk_fail
1A8DF6:  ADD.W           R0, R10, R4
1A8DFA:  B               loc_1A8D48
