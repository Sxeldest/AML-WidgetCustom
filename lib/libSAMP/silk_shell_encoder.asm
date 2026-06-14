; =========================================================
; Game Engine Function: silk_shell_encoder
; Address            : 0x194950 - 0x194BEC
; =========================================================

194950:  PUSH            {R4-R7,LR}
194952:  ADD             R7, SP, #0xC
194954:  PUSH.W          {R8-R11}
194958:  SUB             SP, SP, #0x2C
19495A:  MOV             R8, R1
19495C:  STR             R0, [SP,#0x48+var_44]
19495E:  LDR.W           R0, [R8]
194962:  ADD.W           R11, R8, #0x34 ; '4'
194966:  STR             R0, [SP,#0x48+var_20]
194968:  LDR.W           R0, [R8,#4]
19496C:  STR             R0, [SP,#0x48+var_24]
19496E:  LDR.W           R0, [R8,#8]
194972:  STR             R0, [SP,#0x48+var_28]
194974:  LDR.W           R0, [R8,#0xC]
194978:  STR             R0, [SP,#0x48+var_2C]
19497A:  LDRD.W          R9, LR, [R8,#0x10]
19497E:  LDRD.W          R12, R1, [R8,#0x18]
194982:  LDR.W           R0, [R8,#0x20]
194986:  ADD             LR, R9
194988:  STR             R0, [SP,#0x48+var_30]
19498A:  ADD.W           R4, R1, R12
19498E:  LDRD.W          R3, R2, [R8,#0x24]
194992:  LDRD.W          R10, R0, [R8,#0x2C]
194996:  LDM.W           R11, {R5,R6,R11}
19499A:  ADD             R2, R10
19499C:  ADDS            R1, R5, R0
19499E:  ADD.W           R0, R11, R6
1949A2:  LDR             R6, [SP,#0x48+var_30]
1949A4:  LDR.W           R11, [SP,#0x48+var_44]
1949A8:  ADD             R3, R6
1949AA:  LDRD.W          R5, R6, [SP,#0x48+var_24]
1949AE:  ADD.W           R10, R5, R6
1949B2:  LDRD.W          R5, R6, [SP,#0x48+var_2C]
1949B6:  STRD.W          R1, R0, [SP,#0x48+var_24]
1949BA:  ADD             R0, R1
1949BC:  ADD             R6, R5
1949BE:  STRD.W          R3, R2, [SP,#0x48+var_30]
1949C2:  ADDS            R1, R2, R3
1949C4:  STR             R0, [SP,#0x48+var_28]
1949C6:  STR             R1, [SP,#0x48+var_34]
1949C8:  ADD.W           R5, R4, LR
1949CC:  STRD.W          LR, R4, [SP,#0x48+var_40]
1949D0:  ADD.W           R4, R6, R10
1949D4:  ADD             R0, R1
1949D6:  ADD.W           R9, R5, R4
1949DA:  STR             R0, [SP,#0x48+var_38]
1949DC:  ADD             R0, R9
1949DE:  CMP             R0, #1
1949E0:  BLT             loc_1949FC
1949E2:  LDR             R1, =(silk_shell_code_table_offsets_ptr - 0x1949EC)
1949E4:  MOVS            R3, #8
1949E6:  LDR             R2, =(silk_shell_code_table3_ptr - 0x1949EE)
1949E8:  ADD             R1, PC; silk_shell_code_table_offsets_ptr
1949EA:  ADD             R2, PC; silk_shell_code_table3_ptr
1949EC:  LDR             R1, [R1]; silk_shell_code_table_offsets
1949EE:  LDR             R2, [R2]; silk_shell_code_table3
1949F0:  LDRB            R0, [R1,R0]
1949F2:  MOV             R1, R9
1949F4:  ADD             R2, R0
1949F6:  MOV             R0, R11
1949F8:  BLX             j_ec_enc_icdf
1949FC:  CMP.W           R9, #1
194A00:  BLT             loc_194A1E
194A02:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194A0C)
194A04:  MOVS            R3, #8
194A06:  LDR             R1, =(silk_shell_code_table2_ptr - 0x194A0E)
194A08:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194A0A:  ADD             R1, PC; silk_shell_code_table2_ptr
194A0C:  LDR             R0, [R0]; silk_shell_code_table_offsets
194A0E:  LDR             R1, [R1]; silk_shell_code_table2
194A10:  LDRB.W          R0, [R0,R9]
194A14:  ADDS            R2, R1, R0
194A16:  MOV             R0, R11
194A18:  MOV             R1, R4
194A1A:  BLX             j_ec_enc_icdf
194A1E:  CMP             R4, #1
194A20:  BLT             loc_194A3C
194A22:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194A2C)
194A24:  MOVS            R3, #8
194A26:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194A2E)
194A28:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194A2A:  ADD             R1, PC; silk_shell_code_table1_ptr
194A2C:  LDR             R0, [R0]; silk_shell_code_table_offsets
194A2E:  LDR             R1, [R1]; silk_shell_code_table1
194A30:  LDRB            R0, [R0,R4]
194A32:  ADDS            R2, R1, R0
194A34:  MOV             R0, R11
194A36:  MOV             R1, R10
194A38:  BLX             j_ec_enc_icdf
194A3C:  CMP.W           R10, #1
194A40:  BLT             loc_194A60
194A42:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194A4C)
194A44:  MOVS            R3, #8
194A46:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194A4E)
194A48:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194A4A:  ADD             R1, PC; silk_shell_code_table0_ptr
194A4C:  LDR             R0, [R0]; silk_shell_code_table_offsets
194A4E:  LDR             R2, [R1]; silk_shell_code_table0
194A50:  LDR.W           R1, [R8]
194A54:  LDRB.W          R0, [R0,R10]
194A58:  ADD             R2, R0
194A5A:  MOV             R0, R11
194A5C:  BLX             j_ec_enc_icdf
194A60:  LDR.W           R9, [SP,#0x48+var_24]
194A64:  CMP             R6, #1
194A66:  BLT             loc_194A84
194A68:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194A72)
194A6A:  MOVS            R3, #8
194A6C:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194A74)
194A6E:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194A70:  ADD             R1, PC; silk_shell_code_table0_ptr
194A72:  LDR             R0, [R0]; silk_shell_code_table_offsets
194A74:  LDR             R2, [R1]; silk_shell_code_table0
194A76:  LDR.W           R1, [R8,#8]
194A7A:  LDRB            R0, [R0,R6]
194A7C:  ADD             R2, R0
194A7E:  MOV             R0, R11
194A80:  BLX             j_ec_enc_icdf
194A84:  CMP             R5, #1
194A86:  MOV             R2, R5
194A88:  LDR             R4, [SP,#0x48+var_20]
194A8A:  LDR             R5, [SP,#0x48+var_40]
194A8C:  BLT             loc_194AA8
194A8E:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194A98)
194A90:  MOVS            R3, #8
194A92:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194A9A)
194A94:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194A96:  ADD             R1, PC; silk_shell_code_table1_ptr
194A98:  LDR             R0, [R0]; silk_shell_code_table_offsets
194A9A:  LDR             R1, [R1]; silk_shell_code_table1
194A9C:  LDRB            R0, [R0,R2]
194A9E:  ADDS            R2, R1, R0
194AA0:  MOV             R0, R11
194AA2:  MOV             R1, R5
194AA4:  BLX             j_ec_enc_icdf
194AA8:  LDR             R6, [SP,#0x48+var_34]
194AAA:  CMP             R5, #1
194AAC:  BLT             loc_194ACA
194AAE:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194AB8)
194AB0:  MOVS            R3, #8
194AB2:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194ABA)
194AB4:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194AB6:  ADD             R1, PC; silk_shell_code_table0_ptr
194AB8:  LDR             R0, [R0]; silk_shell_code_table_offsets
194ABA:  LDR             R2, [R1]; silk_shell_code_table0
194ABC:  LDR.W           R1, [R8,#0x10]
194AC0:  LDRB            R0, [R0,R5]
194AC2:  ADD             R2, R0
194AC4:  MOV             R0, R11
194AC6:  BLX             j_ec_enc_icdf
194ACA:  LDR             R0, [SP,#0x48+var_3C]
194ACC:  LDRD.W          R5, R10, [SP,#0x48+var_30]
194AD0:  CMP             R0, #1
194AD2:  BLT             loc_194AF2
194AD4:  MOV             R3, R0
194AD6:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194ADE)
194AD8:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194AE0)
194ADA:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194ADC:  ADD             R1, PC; silk_shell_code_table0_ptr
194ADE:  LDR             R0, [R0]; silk_shell_code_table_offsets
194AE0:  LDR             R2, [R1]; silk_shell_code_table0
194AE2:  LDR.W           R1, [R8,#0x18]
194AE6:  LDRB            R0, [R0,R3]
194AE8:  MOVS            R3, #8
194AEA:  ADD             R2, R0
194AEC:  MOV             R0, R11
194AEE:  BLX             j_ec_enc_icdf
194AF2:  LDR             R0, [SP,#0x48+var_38]
194AF4:  CMP             R0, #1
194AF6:  BLT             loc_194B14
194AF8:  MOV             R2, R0
194AFA:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194B04)
194AFC:  LDR             R1, =(silk_shell_code_table2_ptr - 0x194B06)
194AFE:  MOVS            R3, #8
194B00:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194B02:  ADD             R1, PC; silk_shell_code_table2_ptr
194B04:  LDR             R0, [R0]; silk_shell_code_table_offsets
194B06:  LDR             R1, [R1]; silk_shell_code_table2
194B08:  LDRB            R0, [R0,R2]
194B0A:  ADDS            R2, R1, R0
194B0C:  MOV             R0, R11
194B0E:  MOV             R1, R6
194B10:  BLX             j_ec_enc_icdf
194B14:  CMP             R6, #1
194B16:  BLT             loc_194B32
194B18:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194B22)
194B1A:  MOVS            R3, #8
194B1C:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194B24)
194B1E:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194B20:  ADD             R1, PC; silk_shell_code_table1_ptr
194B22:  LDR             R0, [R0]; silk_shell_code_table_offsets
194B24:  LDR             R1, [R1]; silk_shell_code_table1
194B26:  LDRB            R0, [R0,R6]
194B28:  ADDS            R2, R1, R0
194B2A:  MOV             R0, R11
194B2C:  MOV             R1, R5
194B2E:  BLX             j_ec_enc_icdf
194B32:  CMP             R5, #1
194B34:  BLT             loc_194B52
194B36:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194B40)
194B38:  MOVS            R3, #8
194B3A:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194B42)
194B3C:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194B3E:  ADD             R1, PC; silk_shell_code_table0_ptr
194B40:  LDR             R0, [R0]; silk_shell_code_table_offsets
194B42:  LDR             R2, [R1]; silk_shell_code_table0
194B44:  LDR.W           R1, [R8,#0x20]
194B48:  LDRB            R0, [R0,R5]
194B4A:  ADD             R2, R0
194B4C:  MOV             R0, R11
194B4E:  BLX             j_ec_enc_icdf
194B52:  CMP.W           R10, #1
194B56:  BLT             loc_194B76
194B58:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194B62)
194B5A:  MOVS            R3, #8
194B5C:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194B64)
194B5E:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194B60:  ADD             R1, PC; silk_shell_code_table0_ptr
194B62:  LDR             R0, [R0]; silk_shell_code_table_offsets
194B64:  LDR             R2, [R1]; silk_shell_code_table0
194B66:  LDR.W           R1, [R8,#0x28]
194B6A:  LDRB.W          R0, [R0,R10]
194B6E:  ADD             R2, R0
194B70:  MOV             R0, R11
194B72:  BLX             j_ec_enc_icdf
194B76:  LDR             R2, [SP,#0x48+var_28]
194B78:  CMP             R2, #1
194B7A:  BLT             loc_194B96
194B7C:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194B86)
194B7E:  MOVS            R3, #8
194B80:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194B88)
194B82:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194B84:  ADD             R1, PC; silk_shell_code_table1_ptr
194B86:  LDR             R0, [R0]; silk_shell_code_table_offsets
194B88:  LDR             R1, [R1]; silk_shell_code_table1
194B8A:  LDRB            R0, [R0,R2]
194B8C:  ADDS            R2, R1, R0
194B8E:  MOV             R0, R11
194B90:  MOV             R1, R9
194B92:  BLX             j_ec_enc_icdf
194B96:  CMP.W           R9, #1
194B9A:  BLT             loc_194BBA
194B9C:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194BA6)
194B9E:  MOVS            R3, #8
194BA0:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194BA8)
194BA2:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194BA4:  ADD             R1, PC; silk_shell_code_table0_ptr
194BA6:  LDR             R0, [R0]; silk_shell_code_table_offsets
194BA8:  LDR             R2, [R1]; silk_shell_code_table0
194BAA:  LDR.W           R1, [R8,#0x30]
194BAE:  LDRB.W          R0, [R0,R9]
194BB2:  ADD             R2, R0
194BB4:  MOV             R0, R11
194BB6:  BLX             j_ec_enc_icdf
194BBA:  CMP             R4, #1
194BBC:  BLT             loc_194BE4
194BBE:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194BC8)
194BC0:  MOVS            R3, #8
194BC2:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194BCA)
194BC4:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194BC6:  ADD             R1, PC; silk_shell_code_table0_ptr
194BC8:  LDR             R0, [R0]; silk_shell_code_table_offsets
194BCA:  LDR             R1, [R1]; silk_shell_code_table0
194BCC:  LDRB            R0, [R0,R4]
194BCE:  ADDS            R2, R1, R0
194BD0:  LDR.W           R1, [R8,#0x38]
194BD4:  MOV             R0, R11
194BD6:  ADD             SP, SP, #0x2C ; ','
194BD8:  POP.W           {R8-R11}
194BDC:  POP.W           {R4-R7,LR}
194BE0:  B.W             sub_224400
194BE4:  ADD             SP, SP, #0x2C ; ','
194BE6:  POP.W           {R8-R11}
194BEA:  POP             {R4-R7,PC}
