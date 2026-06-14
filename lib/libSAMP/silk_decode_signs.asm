; =========================================================
; Game Engine Function: silk_decode_signs
; Address            : 0x195944 - 0x195B94
; =========================================================

195944:  PUSH            {R4-R7,LR}
195946:  ADD             R7, SP, #0xC
195948:  PUSH.W          {R8-R11}
19594C:  SUB             SP, SP, #0xC
19594E:  MOV             R5, R0
195950:  LDR             R0, =(__stack_chk_guard_ptr - 0x195958)
195952:  MOV             R4, R1
195954:  ADD             R0, PC; __stack_chk_guard_ptr
195956:  LDR             R0, [R0]; __stack_chk_guard
195958:  LDR             R0, [R0]
19595A:  STR             R0, [SP,#0x28+var_20]
19595C:  MOVS            R0, #0
19595E:  STRB.W          R0, [R7,#var_21]
195962:  ADD.W           R0, R2, #8
195966:  MOV.W           R9, R0,ASR#4
19596A:  CMP.W           R9, #1
19596E:  BLT.W           loc_195B7A
195972:  LDR             R0, =(silk_sign_iCDF_ptr - 0x195982)
195974:  SUB.W           R8, R7, #-var_22
195978:  LDR             R1, [R7,#arg_0]
19597A:  MOV.W           R11, #0xFFFFFFFF
19597E:  ADD             R0, PC; silk_sign_iCDF_ptr
195980:  LDR             R6, [R7,#arg_4]
195982:  ADD.W           R1, R1, R3,LSL#1
195986:  LDR             R0, [R0]; silk_sign_iCDF
195988:  SXTH            R1, R1
19598A:  RSB.W           R1, R1, R1,LSL#3
19598E:  ADD.W           R10, R0, R1
195992:  LDR             R0, [R6]
195994:  CMP             R0, #1
195996:  BLT.W           loc_195B6C
19599A:  AND.W           R0, R0, #0x1F
19599E:  CMP             R0, #6
1959A0:  IT CS
1959A2:  MOVCS           R0, #6
1959A4:  LDRB.W          R0, [R10,R0]
1959A8:  STRB.W          R0, [R7,#var_22]
1959AC:  LDRSH.W         R0, [R4]
1959B0:  CMP             R0, #1
1959B2:  BLT             loc_1959C8
1959B4:  MOV             R0, R5
1959B6:  MOV             R1, R8
1959B8:  MOVS            R2, #8
1959BA:  BLX             j_ec_dec_icdf
1959BE:  LDRH            R1, [R4]
1959C0:  ADD.W           R0, R11, R0,LSL#1
1959C4:  MULS            R0, R1
1959C6:  STRH            R0, [R4]
1959C8:  LDRSH.W         R0, [R4,#2]
1959CC:  CMP             R0, #0
1959CE:  BLE             loc_1959E4
1959D0:  MOV             R0, R5
1959D2:  MOV             R1, R8
1959D4:  MOVS            R2, #8
1959D6:  BLX             j_ec_dec_icdf
1959DA:  LDRH            R1, [R4,#2]
1959DC:  ADD.W           R0, R11, R0,LSL#1
1959E0:  MULS            R0, R1
1959E2:  STRH            R0, [R4,#2]
1959E4:  LDRSH.W         R0, [R4,#4]
1959E8:  CMP             R0, #1
1959EA:  BLT             loc_195A00
1959EC:  MOV             R0, R5
1959EE:  MOV             R1, R8
1959F0:  MOVS            R2, #8
1959F2:  BLX             j_ec_dec_icdf
1959F6:  LDRH            R1, [R4,#4]
1959F8:  ADD.W           R0, R11, R0,LSL#1
1959FC:  MULS            R0, R1
1959FE:  STRH            R0, [R4,#4]
195A00:  LDRSH.W         R0, [R4,#6]
195A04:  CMP             R0, #1
195A06:  BLT             loc_195A1C
195A08:  MOV             R0, R5
195A0A:  MOV             R1, R8
195A0C:  MOVS            R2, #8
195A0E:  BLX             j_ec_dec_icdf
195A12:  LDRH            R1, [R4,#6]
195A14:  ADD.W           R0, R11, R0,LSL#1
195A18:  MULS            R0, R1
195A1A:  STRH            R0, [R4,#6]
195A1C:  LDRSH.W         R0, [R4,#8]
195A20:  CMP             R0, #1
195A22:  BLT             loc_195A38
195A24:  MOV             R0, R5
195A26:  MOV             R1, R8
195A28:  MOVS            R2, #8
195A2A:  BLX             j_ec_dec_icdf
195A2E:  LDRH            R1, [R4,#8]
195A30:  ADD.W           R0, R11, R0,LSL#1
195A34:  MULS            R0, R1
195A36:  STRH            R0, [R4,#8]
195A38:  LDRSH.W         R0, [R4,#0xA]
195A3C:  CMP             R0, #1
195A3E:  BLT             loc_195A54
195A40:  MOV             R0, R5
195A42:  MOV             R1, R8
195A44:  MOVS            R2, #8
195A46:  BLX             j_ec_dec_icdf
195A4A:  LDRH            R1, [R4,#0xA]
195A4C:  ADD.W           R0, R11, R0,LSL#1
195A50:  MULS            R0, R1
195A52:  STRH            R0, [R4,#0xA]
195A54:  LDRSH.W         R0, [R4,#0xC]
195A58:  CMP             R0, #1
195A5A:  BLT             loc_195A70
195A5C:  MOV             R0, R5
195A5E:  MOV             R1, R8
195A60:  MOVS            R2, #8
195A62:  BLX             j_ec_dec_icdf
195A66:  LDRH            R1, [R4,#0xC]
195A68:  ADD.W           R0, R11, R0,LSL#1
195A6C:  MULS            R0, R1
195A6E:  STRH            R0, [R4,#0xC]
195A70:  LDRSH.W         R0, [R4,#0xE]
195A74:  CMP             R0, #1
195A76:  BLT             loc_195A8C
195A78:  MOV             R0, R5
195A7A:  MOV             R1, R8
195A7C:  MOVS            R2, #8
195A7E:  BLX             j_ec_dec_icdf
195A82:  LDRH            R1, [R4,#0xE]
195A84:  ADD.W           R0, R11, R0,LSL#1
195A88:  MULS            R0, R1
195A8A:  STRH            R0, [R4,#0xE]
195A8C:  LDRSH.W         R0, [R4,#0x10]
195A90:  CMP             R0, #1
195A92:  BLT             loc_195AA8
195A94:  MOV             R0, R5
195A96:  MOV             R1, R8
195A98:  MOVS            R2, #8
195A9A:  BLX             j_ec_dec_icdf
195A9E:  LDRH            R1, [R4,#0x10]
195AA0:  ADD.W           R0, R11, R0,LSL#1
195AA4:  MULS            R0, R1
195AA6:  STRH            R0, [R4,#0x10]
195AA8:  LDRSH.W         R0, [R4,#0x12]
195AAC:  CMP             R0, #1
195AAE:  BLT             loc_195AC4
195AB0:  MOV             R0, R5
195AB2:  MOV             R1, R8
195AB4:  MOVS            R2, #8
195AB6:  BLX             j_ec_dec_icdf
195ABA:  LDRH            R1, [R4,#0x12]
195ABC:  ADD.W           R0, R11, R0,LSL#1
195AC0:  MULS            R0, R1
195AC2:  STRH            R0, [R4,#0x12]
195AC4:  LDRSH.W         R0, [R4,#0x14]
195AC8:  CMP             R0, #1
195ACA:  BLT             loc_195AE0
195ACC:  MOV             R0, R5
195ACE:  MOV             R1, R8
195AD0:  MOVS            R2, #8
195AD2:  BLX             j_ec_dec_icdf
195AD6:  LDRH            R1, [R4,#0x14]
195AD8:  ADD.W           R0, R11, R0,LSL#1
195ADC:  MULS            R0, R1
195ADE:  STRH            R0, [R4,#0x14]
195AE0:  LDRSH.W         R0, [R4,#0x16]
195AE4:  CMP             R0, #1
195AE6:  BLT             loc_195AFC
195AE8:  MOV             R0, R5
195AEA:  MOV             R1, R8
195AEC:  MOVS            R2, #8
195AEE:  BLX             j_ec_dec_icdf
195AF2:  LDRH            R1, [R4,#0x16]
195AF4:  ADD.W           R0, R11, R0,LSL#1
195AF8:  MULS            R0, R1
195AFA:  STRH            R0, [R4,#0x16]
195AFC:  LDRSH.W         R0, [R4,#0x18]
195B00:  CMP             R0, #1
195B02:  BLT             loc_195B18
195B04:  MOV             R0, R5
195B06:  MOV             R1, R8
195B08:  MOVS            R2, #8
195B0A:  BLX             j_ec_dec_icdf
195B0E:  LDRH            R1, [R4,#0x18]
195B10:  ADD.W           R0, R11, R0,LSL#1
195B14:  MULS            R0, R1
195B16:  STRH            R0, [R4,#0x18]
195B18:  LDRSH.W         R0, [R4,#0x1A]
195B1C:  CMP             R0, #1
195B1E:  BLT             loc_195B34
195B20:  MOV             R0, R5
195B22:  MOV             R1, R8
195B24:  MOVS            R2, #8
195B26:  BLX             j_ec_dec_icdf
195B2A:  LDRH            R1, [R4,#0x1A]
195B2C:  ADD.W           R0, R11, R0,LSL#1
195B30:  MULS            R0, R1
195B32:  STRH            R0, [R4,#0x1A]
195B34:  LDRSH.W         R0, [R4,#0x1C]
195B38:  CMP             R0, #1
195B3A:  BLT             loc_195B50
195B3C:  MOV             R0, R5
195B3E:  MOV             R1, R8
195B40:  MOVS            R2, #8
195B42:  BLX             j_ec_dec_icdf
195B46:  LDRH            R1, [R4,#0x1C]
195B48:  ADD.W           R0, R11, R0,LSL#1
195B4C:  MULS            R0, R1
195B4E:  STRH            R0, [R4,#0x1C]
195B50:  LDRSH.W         R0, [R4,#0x1E]
195B54:  CMP             R0, #1
195B56:  BLT             loc_195B6C
195B58:  MOV             R0, R5
195B5A:  MOV             R1, R8
195B5C:  MOVS            R2, #8
195B5E:  BLX             j_ec_dec_icdf
195B62:  LDRH            R1, [R4,#0x1E]
195B64:  ADD.W           R0, R11, R0,LSL#1
195B68:  MULS            R0, R1
195B6A:  STRH            R0, [R4,#0x1E]
195B6C:  ADDS            R6, #4
195B6E:  SUBS.W          R9, R9, #1
195B72:  ADD.W           R4, R4, #0x20 ; ' '
195B76:  BNE.W           loc_195992
195B7A:  LDR             R0, =(__stack_chk_guard_ptr - 0x195B82)
195B7C:  LDR             R1, [SP,#0x28+var_20]
195B7E:  ADD             R0, PC; __stack_chk_guard_ptr
195B80:  LDR             R0, [R0]; __stack_chk_guard
195B82:  LDR             R0, [R0]
195B84:  SUBS            R0, R0, R1
195B86:  ITTT EQ
195B88:  ADDEQ           SP, SP, #0xC
195B8A:  POPEQ.W         {R8-R11}
195B8E:  POPEQ           {R4-R7,PC}
195B90:  BLX             __stack_chk_fail
