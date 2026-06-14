; =========================================================
; Game Engine Function: silk_quant_LTP_gains
; Address            : 0xD1A34 - 0xD1DE8
; =========================================================

D1A34:  PUSH            {R4-R7,LR}
D1A36:  ADD             R7, SP, #0xC
D1A38:  PUSH.W          {R8-R11}
D1A3C:  SUB             SP, SP, #0x64
D1A3E:  MOV             R6, R1
D1A40:  LDR             R1, =(__stack_chk_guard_ptr - 0xD1A4C)
D1A42:  LDR.W           R10, [R7,#n]
D1A46:  MOV             R5, R3
D1A48:  ADD             R1, PC; __stack_chk_guard_ptr
D1A4A:  LDR.W           R9, [R7,#arg_0]
D1A4E:  MOV             R4, R2
D1A50:  CMP.W           R10, #1
D1A54:  LDR             R1, [R1]; __stack_chk_guard
D1A56:  LDR             R1, [R1]
D1A58:  STR             R1, [SP,#0x80+var_20]
D1A5A:  BLT.W           loc_D1D70
D1A5E:  STR             R0, [SP,#0x80+var_5C]
D1A60:  LDR             R0, =(silk_LTP_vq_sizes_ptr - 0xD1A6A)
D1A62:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0xD1A6E)
D1A64:  LDR             R2, =(silk_LTP_gain_BITS_Q5_ptrs_ptr - 0xD1A70)
D1A66:  ADD             R0, PC; silk_LTP_vq_sizes_ptr
D1A68:  LDR             R3, =(silk_LTP_vq_gain_ptrs_Q7_ptr - 0xD1A74)
D1A6A:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
D1A6C:  ADD             R2, PC; silk_LTP_gain_BITS_Q5_ptrs_ptr
D1A6E:  LDR             R0, [R0]; silk_LTP_vq_sizes
D1A70:  ADD             R3, PC; silk_LTP_vq_gain_ptrs_Q7_ptr
D1A72:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
D1A74:  LDR             R2, [R2]; silk_LTP_gain_BITS_Q5_ptrs
D1A76:  STRD.W          R6, R4, [SP,#0x80+dest]
D1A7A:  MOV             R6, #0x7FFFFFFF
D1A7E:  LDR             R3, [R3]; silk_LTP_vq_gain_ptrs_Q7
D1A80:  LDRD.W          R9, R10, [R7,#arg_4]
D1A84:  STR             R5, [SP,#0x80+var_54]
D1A86:  LDR             R4, [R5]
D1A88:  MOVS            R5, #0
D1A8A:  LDRSB.W         R0, [R0]
D1A8E:  LDR.W           R11, [R1]; unk_588C0
D1A92:  LDR.W           R8, [R2]; unk_58888
D1A96:  STR             R0, [SP,#0x80+var_3C]
D1A98:  LDR             R0, [R3]; unk_589D8
D1A9A:  STR             R0, [SP,#0x80+var_40]
D1A9C:  MOVS            R0, #0
D1A9E:  STR             R0, [SP,#0x80+var_34]
D1AA0:  MOVW            R0, #0x1855
D1AA4:  SUBS            R0, R0, R4
D1AA6:  BLX             j_silk_log2lin
D1AAA:  STMEA.W         SP, {R9-R11}
D1AAE:  SUBS            R0, #0x33 ; '3'
D1AB0:  ADD             R2, SP, #0x80+var_2C
D1AB2:  LDR             R1, [SP,#0x80+var_40]
D1AB4:  ADD             R3, SP, #0x80+var_30
D1AB6:  STRD.W          R1, R8, [SP,#0x80+var_74]
D1ABA:  LDR             R1, [R7,#arg_C]
D1ABC:  STRD.W          R1, R0, [SP,#0x80+var_6C]
D1AC0:  ADD             R1, SP, #0x80+var_28
D1AC2:  LDR             R0, [SP,#0x80+var_3C]
D1AC4:  STR             R0, [SP,#0x80+var_64]
D1AC6:  ADD             R0, SP, #0x80+src
D1AC8:  ADD             R0, R5
D1ACA:  BLX             j_silk_VQ_WMat_EC_c
D1ACE:  LDR             R0, [SP,#0x80+var_2C]
D1AD0:  LDRD.W          R2, R1, [SP,#0x80+var_34]
D1AD4:  ADD             R0, R2
D1AD6:  MOV             R2, #0x7FFFFFFF
D1ADA:  CMP             R0, R6
D1ADC:  STR             R0, [SP,#0x80+var_38]
D1ADE:  IT CC
D1AE0:  MOVCC           R2, R0
D1AE2:  ADD.W           R0, R1, #0x33 ; '3'
D1AE6:  STR             R2, [SP,#0x80+var_34]
D1AE8:  BLX             j_silk_lin2log
D1AEC:  ADD             R0, R4
D1AEE:  CMP.W           R0, #0x380
D1AF2:  BGE             loc_D1AF8
D1AF4:  MOVS            R4, #0
D1AF6:  B               loc_D1B06
D1AF8:  LDR             R0, [SP,#0x80+var_30]
D1AFA:  ADDS            R0, #0x33 ; '3'
D1AFC:  BLX             j_silk_lin2log
D1B00:  ADD             R0, R4
D1B02:  SUB.W           R4, R0, #0x380
D1B06:  LDR             R0, [R7,#n]
D1B08:  ADDS            R5, #1
D1B0A:  ADD.W           R10, R10, #0x14
D1B0E:  ADD.W           R9, R9, #0x64 ; 'd'
D1B12:  CMP             R0, R5
D1B14:  BNE             loc_D1AA0
D1B16:  LDR             R0, [SP,#0x80+var_4C]
D1B18:  MOV.W           R11, #0
D1B1C:  STR             R4, [SP,#0x80+var_58]
D1B1E:  ADD             R1, SP, #0x80+src; src
D1B20:  LDR             R2, [R7,#n]; n
D1B22:  STRB.W          R11, [R0]
D1B26:  LDR             R0, [SP,#0x80+dest]; dest
D1B28:  BLX             j_memcpy
D1B2C:  LDR             R0, =(silk_LTP_vq_sizes_ptr - 0xD1B3C)
D1B2E:  MOV             R10, #0x7FFFFFFF
D1B32:  LDR             R3, =(silk_LTP_vq_gain_ptrs_Q7_ptr - 0xD1B42)
D1B34:  MOV.W           R8, #0
D1B38:  ADD             R0, PC; silk_LTP_vq_sizes_ptr
D1B3A:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0xD1B44)
D1B3C:  LDR             R2, =(silk_LTP_gain_BITS_Q5_ptrs_ptr - 0xD1B48)
D1B3E:  ADD             R3, PC; silk_LTP_vq_gain_ptrs_Q7_ptr
D1B40:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
D1B42:  LDR             R0, [R0]; silk_LTP_vq_sizes
D1B44:  ADD             R2, PC; silk_LTP_gain_BITS_Q5_ptrs_ptr
D1B46:  LDR.W           R9, [SP,#0x80+var_54]
D1B4A:  LDR             R3, [R3]; silk_LTP_vq_gain_ptrs_Q7
D1B4C:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
D1B4E:  LDR             R2, [R2]; silk_LTP_gain_BITS_Q5_ptrs
D1B50:  LDRSB.W         R0, [R0,#(byte_58A11 - 0x58A10)]
D1B54:  LDR.W           R5, [R9]
D1B58:  STR             R0, [SP,#0x80+var_3C]
D1B5A:  LDR             R0, [R3,#(off_1116F4 - 0x1116F0)]; unk_589E0
D1B5C:  STR             R0, [SP,#0x80+var_40]
D1B5E:  LDR             R0, [R1,#(off_1116E8 - 0x1116E4)]; unk_588E8
D1B60:  STR             R0, [SP,#0x80+var_44]
D1B62:  LDR             R0, [R2,#(off_1116DC - 0x1116D8)]; unk_58890
D1B64:  STR             R0, [SP,#0x80+var_48]
D1B66:  LDRD.W          R4, R6, [R7,#arg_4]
D1B6A:  MOVW            R0, #0x1855
D1B6E:  SUBS            R0, R0, R5
D1B70:  BLX             j_silk_log2lin
D1B74:  STRD.W          R4, R6, [SP,#0x80+var_80]
D1B78:  SUBS            R0, #0x33 ; '3'
D1B7A:  LDR             R1, [SP,#0x80+var_44]
D1B7C:  ADD             R2, SP, #0x80+var_2C
D1B7E:  STR             R1, [SP,#0x80+var_78]
D1B80:  ADD             R3, SP, #0x80+var_30
D1B82:  LDR             R1, [SP,#0x80+var_40]
D1B84:  STR             R1, [SP,#0x80+var_74]
D1B86:  LDR             R1, [SP,#0x80+var_48]
D1B88:  STR             R1, [SP,#0x80+var_70]
D1B8A:  LDR             R1, [R7,#arg_C]
D1B8C:  STRD.W          R1, R0, [SP,#0x80+var_6C]
D1B90:  ADD             R1, SP, #0x80+var_28
D1B92:  LDR             R0, [SP,#0x80+var_3C]
D1B94:  STR             R0, [SP,#0x80+var_64]
D1B96:  ADD             R0, SP, #0x80+src
D1B98:  ADD             R0, R11
D1B9A:  BLX             j_silk_VQ_WMat_EC_c
D1B9E:  LDRD.W          R1, R0, [SP,#0x80+var_30]
D1BA2:  ADD             R8, R0
D1BA4:  CMP             R8, R10
D1BA6:  ADD.W           R0, R1, #0x33 ; '3'
D1BAA:  IT CS
D1BAC:  MOVCS           R8, R10
D1BAE:  BLX             j_silk_lin2log
D1BB2:  ADD             R0, R5
D1BB4:  CMP.W           R0, #0x380
D1BB8:  BGE             loc_D1BBE
D1BBA:  MOVS            R5, #0
D1BBC:  B               loc_D1BCC
D1BBE:  LDR             R0, [SP,#0x80+var_30]
D1BC0:  ADDS            R0, #0x33 ; '3'
D1BC2:  BLX             j_silk_lin2log
D1BC6:  ADD             R0, R5
D1BC8:  SUB.W           R5, R0, #0x380
D1BCC:  LDR             R0, [R7,#n]
D1BCE:  ADD.W           R11, R11, #1
D1BD2:  ADDS            R6, #0x14
D1BD4:  ADDS            R4, #0x64 ; 'd'
D1BD6:  CMP             R0, R11
D1BD8:  BNE             loc_D1B6A
D1BDA:  LDR.W           R10, [R7,#n]
D1BDE:  LDR             R0, [SP,#0x80+var_34]
D1BE0:  CMP             R8, R0
D1BE2:  MOV             R2, R10; n
D1BE4:  BGT             loc_D1BFA
D1BE6:  LDR             R1, [SP,#0x80+var_4C]
D1BE8:  MOVS            R0, #1
D1BEA:  STRB            R0, [R1]
D1BEC:  ADD             R1, SP, #0x80+src; src
D1BEE:  LDR             R0, [SP,#0x80+dest]; dest
D1BF0:  BLX             j_memcpy
D1BF4:  STR.W           R8, [SP,#0x80+var_38]
D1BF8:  STR             R5, [SP,#0x80+var_58]
D1BFA:  LDR             R0, =(silk_LTP_vq_sizes_ptr - 0xD1C06)
D1BFC:  MOVS            R5, #0
D1BFE:  LDR             R3, =(silk_LTP_vq_gain_ptrs_Q7_ptr - 0xD1C0C)
D1C00:  MOVS            R6, #0
D1C02:  ADD             R0, PC; silk_LTP_vq_sizes_ptr
D1C04:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0xD1C0E)
D1C06:  LDR             R2, =(silk_LTP_gain_BITS_Q5_ptrs_ptr - 0xD1C12)
D1C08:  ADD             R3, PC; silk_LTP_vq_gain_ptrs_Q7_ptr
D1C0A:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
D1C0C:  LDR             R0, [R0]; silk_LTP_vq_sizes
D1C0E:  ADD             R2, PC; silk_LTP_gain_BITS_Q5_ptrs_ptr
D1C10:  LDR             R3, [R3]; silk_LTP_vq_gain_ptrs_Q7
D1C12:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
D1C14:  MOV.W           R8, #0
D1C18:  LDR             R2, [R2]; silk_LTP_gain_BITS_Q5_ptrs
D1C1A:  LDRSB.W         R0, [R0,#(byte_58A12 - 0x58A10)]
D1C1E:  LDR.W           R11, [R9]
D1C22:  STR             R0, [SP,#0x80+var_3C]
D1C24:  LDR             R0, [R3,#(off_1116F8 - 0x1116F0)]; unk_589F0
D1C26:  STR             R0, [SP,#0x80+var_40]
D1C28:  LDR             R0, [R1,#(off_1116EC - 0x1116E4)]; unk_58938
D1C2A:  STR             R0, [SP,#0x80+var_44]
D1C2C:  LDR             R0, [R2,#(off_1116E0 - 0x1116D8)]; unk_588A0
D1C2E:  STR             R0, [SP,#0x80+var_48]
D1C30:  LDRD.W          R4, R9, [R7,#arg_4]
D1C34:  MOVW            R0, #0x1855
D1C38:  SUB.W           R0, R0, R11
D1C3C:  BLX             j_silk_log2lin
D1C40:  LDR             R1, [SP,#0x80+var_44]
D1C42:  SUBS            R0, #0x33 ; '3'
D1C44:  STR             R4, [SP,#0x80+var_80]
D1C46:  ADD             R2, SP, #0x80+var_2C
D1C48:  STR.W           R9, [SP,#0x80+var_7C]
D1C4C:  ADD             R3, SP, #0x80+var_30
D1C4E:  STR             R1, [SP,#0x80+var_78]
D1C50:  MOV             R10, R9
D1C52:  LDR             R1, [SP,#0x80+var_40]
D1C54:  STR             R1, [SP,#0x80+var_74]
D1C56:  LDR             R1, [SP,#0x80+var_48]
D1C58:  STR             R1, [SP,#0x80+var_70]
D1C5A:  LDR             R1, [R7,#arg_C]
D1C5C:  STR             R4, [SP,#0x80+var_34]
D1C5E:  STRD.W          R1, R0, [SP,#0x80+var_6C]
D1C62:  ADD             R1, SP, #0x80+var_28
D1C64:  LDR             R0, [SP,#0x80+var_3C]
D1C66:  STR             R0, [SP,#0x80+var_64]
D1C68:  ADD             R0, SP, #0x80+src
D1C6A:  ADD             R0, R5
D1C6C:  BLX             j_silk_VQ_WMat_EC_c
D1C70:  LDRD.W          R1, R0, [SP,#0x80+var_30]
D1C74:  ADD             R6, R0
D1C76:  LDR             R2, [SP,#0x80+var_28]
D1C78:  MOV             R0, #0x7FFFFFFF
D1C7C:  CMP             R6, R0
D1C7E:  ADD             R8, R2
D1C80:  IT CS
D1C82:  MOVCS           R6, R0
D1C84:  CMP             R8, R0
D1C86:  IT CS
D1C88:  MOVCS           R8, R0
D1C8A:  ADD.W           R0, R1, #0x33 ; '3'
D1C8E:  BLX             j_silk_lin2log
D1C92:  ADD             R0, R11
D1C94:  CMP.W           R0, #0x380
D1C98:  BGE             loc_D1CA0
D1C9A:  MOV.W           R11, #0
D1C9E:  B               loc_D1CAE
D1CA0:  LDR             R0, [SP,#0x80+var_30]
D1CA2:  ADDS            R0, #0x33 ; '3'
D1CA4:  BLX             j_silk_lin2log
D1CA8:  ADD             R0, R11
D1CAA:  SUB.W           R11, R0, #0x380
D1CAE:  LDR             R4, [SP,#0x80+var_34]
D1CB0:  MOV             R9, R10
D1CB2:  LDR.W           R10, [R7,#n]
D1CB6:  ADDS            R5, #1
D1CB8:  ADD.W           R9, R9, #0x14
D1CBC:  ADDS            R4, #0x64 ; 'd'
D1CBE:  CMP             R10, R5
D1CC0:  BNE             loc_D1C34
D1CC2:  LDR             R0, [SP,#0x80+var_38]
D1CC4:  LDR.W           R12, [SP,#0x80+var_58]
D1CC8:  CMP             R6, R0
D1CCA:  LDR             R6, [SP,#0x80+dest]
D1CCC:  BGT             loc_D1CE0
D1CCE:  LDR             R1, [SP,#0x80+var_4C]
D1CD0:  MOVS            R0, #2
D1CD2:  MOV             R2, R10; n
D1CD4:  STRB            R0, [R1]
D1CD6:  ADD             R1, SP, #0x80+src; src
D1CD8:  MOV             R0, R6; dest
D1CDA:  BLX             j_memcpy
D1CDE:  MOV             R12, R11
D1CE0:  LDR             R5, [R7,#arg_0]
D1CE2:  CMP.W           R10, #1
D1CE6:  MOV             R9, R5
D1CE8:  LDR             R5, [SP,#0x80+var_54]
D1CEA:  BLT             loc_D1DA4
D1CEC:  LDR             R0, =(silk_LTP_vq_ptrs_Q7_ptr - 0xD1CF6)
D1CEE:  MOV             R2, R10
D1CF0:  LDR             R1, [SP,#0x80+var_4C]
D1CF2:  ADD             R0, PC; silk_LTP_vq_ptrs_Q7_ptr
D1CF4:  LDRSB.W         R1, [R1]
D1CF8:  LDR             R0, [R0]; silk_LTP_vq_ptrs_Q7
D1CFA:  LDR.W           R0, [R0,R1,LSL#2]
D1CFE:  LDR             R1, [SP,#0x80+var_5C]
D1D00:  ADDS            R1, #4
D1D02:  LDRSB.W         R3, [R6]
D1D06:  SUBS            R2, #1
D1D08:  ADD.W           R3, R3, R3,LSL#2
D1D0C:  LDRSB           R3, [R0,R3]
D1D0E:  MOV.W           R3, R3,LSL#7
D1D12:  STRH.W          R3, [R1,#-4]
D1D16:  LDRSB.W         R3, [R6]
D1D1A:  ADD.W           R3, R3, R3,LSL#2
D1D1E:  ADD             R3, R0
D1D20:  LDRSB.W         R3, [R3,#1]
D1D24:  MOV.W           R3, R3,LSL#7
D1D28:  STRH.W          R3, [R1,#-2]
D1D2C:  LDRSB.W         R3, [R6]
D1D30:  ADD.W           R3, R3, R3,LSL#2
D1D34:  ADD             R3, R0
D1D36:  LDRSB.W         R3, [R3,#2]
D1D3A:  MOV.W           R3, R3,LSL#7
D1D3E:  STRH            R3, [R1]
D1D40:  LDRSB.W         R3, [R6]
D1D44:  ADD.W           R3, R3, R3,LSL#2
D1D48:  ADD             R3, R0
D1D4A:  LDRSB.W         R3, [R3,#3]
D1D4E:  MOV.W           R3, R3,LSL#7
D1D52:  STRH            R3, [R1,#2]
D1D54:  LDRSB.W         R3, [R6],#1
D1D58:  ADD.W           R3, R3, R3,LSL#2
D1D5C:  ADD             R3, R0
D1D5E:  LDRSB.W         R3, [R3,#4]
D1D62:  MOV.W           R3, R3,LSL#7
D1D66:  STRH            R3, [R1,#4]
D1D68:  ADD.W           R1, R1, #0xA
D1D6C:  BNE             loc_D1D02
D1D6E:  B               loc_D1DA4
D1D70:  ADD.W           R8, SP, #0x80+src
D1D74:  MOV             R0, R6; dest
D1D76:  MOV             R2, R10; n
D1D78:  MOV             R1, R8; src
D1D7A:  BLX             j_memcpy
D1D7E:  MOVS            R0, #1
D1D80:  MOV             R1, R8; src
D1D82:  STRB            R0, [R4]
D1D84:  MOV             R0, R6; dest
D1D86:  MOV             R2, R10; n
D1D88:  BLX             j_memcpy
D1D8C:  MOVS            R0, #2
D1D8E:  LDR.W           R11, [R5]
D1D92:  STRB            R0, [R4]
D1D94:  MOV             R0, R6; dest
D1D96:  MOV             R1, R8; src
D1D98:  MOV             R2, R10; n
D1D9A:  BLX             j_memcpy
D1D9E:  MOV             R12, R11
D1DA0:  MOV.W           R8, #0
D1DA4:  MOVS            R0, #2
D1DA6:  CMP.W           R10, #2
D1DAA:  STR.W           R12, [R5]
D1DAE:  IT EQ
D1DB0:  MOVEQ           R0, #1
D1DB2:  LSR.W           R0, R8, R0
D1DB6:  BLX             j_silk_lin2log
D1DBA:  MOVS            R1, #0xF8800000
D1DC0:  ADD.W           R0, R1, R0,LSL#16
D1DC4:  ASRS            R0, R0, #0x10
D1DC6:  SUB.W           R0, R0, R0,LSL#2
D1DCA:  STR.W           R0, [R9]
D1DCE:  LDR             R0, =(__stack_chk_guard_ptr - 0xD1DD6)
D1DD0:  LDR             R1, [SP,#0x80+var_20]
D1DD2:  ADD             R0, PC; __stack_chk_guard_ptr
D1DD4:  LDR             R0, [R0]; __stack_chk_guard
D1DD6:  LDR             R0, [R0]
D1DD8:  SUBS            R0, R0, R1
D1DDA:  ITTT EQ
D1DDC:  ADDEQ           SP, SP, #0x64 ; 'd'
D1DDE:  POPEQ.W         {R8-R11}
D1DE2:  POPEQ           {R4-R7,PC}
D1DE4:  BLX             __stack_chk_fail
