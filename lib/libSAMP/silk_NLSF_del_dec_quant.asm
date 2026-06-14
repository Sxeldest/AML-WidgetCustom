; =========================================================
; Game Engine Function: silk_NLSF_del_dec_quant
; Address            : 0x1B199C - 0x1B1E4C
; =========================================================

1B199C:  PUSH            {R4-R7,LR}
1B199E:  ADD             R7, SP, #0xC
1B19A0:  PUSH.W          {R8-R11}
1B19A4:  SUB             SP, SP, #0x17C
1B19A6:  ADD.W           R12, SP, #0x198+dest
1B19AA:  LDRSH.W         R8, [R7,#arg_8]
1B19AE:  STM.W           R12, {R0-R3}
1B19B2:  MOVW            R4, #0xD800
1B19B6:  MOV             R2, #0xFFFFFFF6
1B19BA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B19CC)
1B19BE:  MOVT            R4, #0xFFFF
1B19C2:  LDR.W           R12, [R7,#arg_10]
1B19C6:  MOVS            R3, #0
1B19C8:  ADD             R0, PC; __stack_chk_guard_ptr
1B19CA:  MOV.W           LR, #0x400
1B19CE:  LDR             R0, [R0]; __stack_chk_guard
1B19D0:  LDR             R1, [R0]
1B19D2:  STR             R1, [SP,#0x198+var_20]
1B19D4:  MOV             R6, R4
1B19D6:  LSLS            R1, R2, #0x1A
1B19D8:  SUB.W           R0, R3, #0xA
1B19DC:  ADD.W           R4, R6, #0x400
1B19E0:  ASRS            R5, R1, #0x10
1B19E2:  CMP             R0, #1
1B19E4:  BLT             loc_1B19F0
1B19E6:  ADDW            R1, R6, #0x39A
1B19EA:  SUB.W           R6, R5, #0x66 ; 'f'
1B19EE:  B               loc_1B1A12
1B19F0:  ADD.W           R1, LR, R1,ASR#16
1B19F4:  CBZ             R6, loc_1B1A0C
1B19F6:  CMN.W           R6, #0x400
1B19FA:  ORR.W           R5, R5, #0x66 ; 'f'
1B19FE:  ITT NE
1B1A00:  ANDNE.W         R0, R4, #0xFC00
1B1A04:  ORRNE.W         R1, R0, #0x66 ; 'f'
1B1A08:  MOV             R6, R5
1B1A0A:  B               loc_1B1A12
1B1A0C:  SXTH            R0, R1
1B1A0E:  SUB.W           R1, R0, #0x66 ; 'f'
1B1A12:  SXTH            R0, R6
1B1A14:  SXTH            R1, R1
1B1A16:  SMULBB.W        R0, R0, R8
1B1A1A:  ADD             R5, SP, #0x198+var_110
1B1A1C:  SMULBB.W        R1, R1, R8
1B1A20:  ADDS            R2, #1
1B1A22:  CMP.W           R4, #0x2800
1B1A26:  MOV.W           R0, R0,ASR#16
1B1A2A:  STR.W           R0, [R5,R3,LSL#2]
1B1A2E:  MOV.W           R0, R1,ASR#16
1B1A32:  ADD             R1, SP, #0x198+var_160
1B1A34:  STR.W           R0, [R1,R3,LSL#2]
1B1A38:  ADD.W           R3, R3, #1
1B1A3C:  BNE             loc_1B19D4
1B1A3E:  LDR             R1, [R7,#n]
1B1A40:  MOV.W           R8, #0
1B1A44:  STR.W           R8, [SP,#0x198+var_A0]
1B1A48:  CMP             R1, #1
1B1A4A:  STRH.W          R8, [SP,#0x198+var_80]
1B1A4E:  BLT.W           loc_1B1DB2
1B1A52:  ADD             R0, SP, #0x198+var_70
1B1A54:  MOV             R6, R1
1B1A56:  SUBS            R2, R0, #1
1B1A58:  SXTH.W          R0, R12
1B1A5C:  STR             R0, [SP,#0x198+var_16C]
1B1A5E:  MOVS            R0, #1
1B1A60:  STR             R2, [SP,#0x198+var_198]
1B1A62:  STR             R0, [SP,#0x198+var_164]
1B1A64:  ADDS            R0, R2, R6
1B1A66:  MOV             R5, R6
1B1A68:  STRD.W          R5, R0, [SP,#0x198+var_17C]
1B1A6C:  SUBS            R0, R5, #1
1B1A6E:  LDR             R2, [SP,#0x198+var_164]
1B1A70:  STR             R0, [SP,#0x198+var_174]
1B1A72:  CMP             R2, #1
1B1A74:  BLT.W           loc_1B1B7E
1B1A78:  LDR             R0, [R7,#arg_0]
1B1A7A:  ADD.W           R12, SP, #0x198+var_80
1B1A7E:  LDR             R2, [SP,#0x198+var_174]
1B1A80:  ADD.W           R8, SP, #0x198+var_A0
1B1A84:  LDR             R1, [SP,#0x198+var_190]
1B1A86:  LDR.W           LR, [SP,#0x198+var_178]
1B1A8A:  LDRSH.W         R0, [R0,R2,LSL#1]
1B1A8E:  LDRSH.W         R9, [R1,R2,LSL#1]
1B1A92:  LDR             R1, [R7,#arg_4]
1B1A94:  ADD             R0, R1
1B1A96:  STR             R0, [SP,#0x198+var_170]
1B1A98:  LDR             R0, [SP,#0x198+var_18C]
1B1A9A:  LDRSH.W         R10, [R0,R2,LSL#1]
1B1A9E:  LDR             R0, [SP,#0x198+var_188]
1B1AA0:  LDRB            R0, [R0,R2]
1B1AA2:  LDR             R2, [SP,#0x198+var_164]
1B1AA4:  STR             R0, [SP,#0x198+var_168]
1B1AA6:  MOV             R5, R2
1B1AA8:  LDRSH.W         R0, [R12]
1B1AAC:  LDR             R1, [SP,#0x198+var_168]
1B1AAE:  SMULBB.W        R6, R0, R1
1B1AB2:  LDR             R1, [R7,#arg_C]
1B1AB4:  SUB.W           R0, R9, R6,ASR#8
1B1AB8:  SXTH            R0, R0
1B1ABA:  SMULBB.W        R3, R0, R1
1B1ABE:  MOVS            R1, #0x28 ; '('
1B1AC0:  ASRS            R0, R3, #0x10
1B1AC2:  CMN.W           R0, #0xA
1B1AC6:  MOV             R0, #0xFFFFFFF6
1B1ACA:  IT GT
1B1ACC:  ASRGT           R0, R3, #0x10
1B1ACE:  CMP             R0, #9
1B1AD0:  IT GE
1B1AD2:  MOVGE           R0, #9
1B1AD4:  ADD.W           R3, R1, R0,LSL#2
1B1AD8:  ADD             R1, SP, #0x198+var_110
1B1ADA:  CMP             R0, #3
1B1ADC:  STRB.W          R0, [LR]
1B1AE0:  LDR             R4, [R1,R3]
1B1AE2:  ADD             R1, SP, #0x198+var_160
1B1AE4:  LDR             R1, [R1,R3]
1B1AE6:  ADD.W           R3, R4, R6,ASR#8
1B1AEA:  STRH.W          R3, [R12]
1B1AEE:  ADD.W           R11, R1, R6,ASR#8
1B1AF2:  STRH.W          R11, [R12,R2,LSL#1]
1B1AF6:  BLT             loc_1B1B04
1B1AF8:  BNE             loc_1B1B18
1B1AFA:  LDR             R0, [SP,#0x198+var_170]
1B1AFC:  LDRB            R6, [R0,#7]
1B1AFE:  MOV.W           R0, #0x118
1B1B02:  B               loc_1B1B3A
1B1B04:  CMN.W           R0, #4
1B1B08:  BGT             loc_1B1B22
1B1B0A:  ADDS            R1, R0, #4
1B1B0C:  BNE             loc_1B1B2C
1B1B0E:  LDR             R0, [SP,#0x198+var_170]
1B1B10:  MOV.W           R6, #0x118
1B1B14:  LDRB            R0, [R0,#1]
1B1B16:  B               loc_1B1B3A
1B1B18:  MOVS            R1, #0x2B ; '+'
1B1B1A:  MULS            R1, R0
1B1B1C:  ADD.W           R0, R1, #0x97
1B1B20:  B               loc_1B1B36
1B1B22:  LDR             R1, [SP,#0x198+var_170]
1B1B24:  ADD             R0, R1
1B1B26:  LDRB            R6, [R0,#4]
1B1B28:  LDRB            R0, [R0,#5]
1B1B2A:  B               loc_1B1B3A
1B1B2C:  MOV             R1, #0xFFFFFFD5
1B1B30:  MULS            R1, R0
1B1B32:  ADD.W           R0, R1, #0x41 ; 'A'
1B1B36:  ADD.W           R6, R1, #0x6C ; 'l'
1B1B3A:  SUB.W           R1, R9, R11
1B1B3E:  SUB.W           R3, R9, R3
1B1B42:  LDR             R2, [SP,#0x198+var_16C]
1B1B44:  SXTH            R6, R6
1B1B46:  SMULBB.W        R3, R3, R3
1B1B4A:  LDR.W           R4, [R8]
1B1B4E:  SMULBB.W        R1, R1, R1
1B1B52:  SXTH            R0, R0
1B1B54:  SMLABB.W        R0, R0, R2, R4
1B1B58:  ADD.W           LR, LR, #0x10
1B1B5C:  SMLABB.W        R6, R6, R2, R4
1B1B60:  LDR             R2, [SP,#0x198+var_164]
1B1B62:  SUBS            R5, #1
1B1B64:  ADD.W           R12, R12, #2
1B1B68:  MLA.W           R3, R3, R10, R6
1B1B6C:  MLA.W           R0, R1, R10, R0
1B1B70:  STR.W           R3, [R8]
1B1B74:  STR.W           R0, [R8,R2,LSL#2]
1B1B78:  ADD.W           R8, R8, #4
1B1B7C:  BNE             loc_1B1AA8
1B1B7E:  CMP             R2, #3
1B1B80:  BLT.W           loc_1B1D5C
1B1B84:  LDR             R0, [SP,#0x198+var_A0]
1B1B86:  LDR             R3, [SP,#0x198+var_90]
1B1B88:  CMP             R0, R3
1B1B8A:  BLE             loc_1B1BA8
1B1B8C:  LDRH.W          R1, [SP,#0x198+var_78]
1B1B90:  MOV             R4, R3
1B1B92:  STR             R3, [SP,#0x198+var_A0]
1B1B94:  MOV             R3, R0
1B1B96:  LDRH.W          R2, [SP,#0x198+var_80]
1B1B9A:  STRH.W          R1, [SP,#0x198+var_80]
1B1B9E:  MOVS            R1, #4
1B1BA0:  STR             R0, [SP,#0x198+var_90]
1B1BA2:  STRH.W          R2, [SP,#0x198+var_78]
1B1BA6:  B               loc_1B1BAC
1B1BA8:  MOVS            R1, #0
1B1BAA:  MOV             R4, R0
1B1BAC:  LDR.W           R12, [SP,#0x198+var_9C]
1B1BB0:  ADD.W           R9, SP, #0x198+var_70
1B1BB4:  LDR             R0, [SP,#0x198+var_8C]
1B1BB6:  ADD.W           R10, SP, #0x198+var_30
1B1BBA:  ADD.W           R11, SP, #0x198+var_A0
1B1BBE:  MOV.W           R8, #0
1B1BC2:  CMP             R12, R0
1B1BC4:  STR             R4, [SP,#0x198+var_B0]
1B1BC6:  STR             R3, [SP,#0x198+var_C0]
1B1BC8:  STR             R1, [SP,#0x198+var_30]
1B1BCA:  BLE             loc_1B1BEA
1B1BCC:  LDRH.W          R1, [SP,#0x198+var_7E]
1B1BD0:  LDRH.W          R2, [SP,#0x198+var_76]
1B1BD4:  STRH.W          R2, [SP,#0x198+var_7E]
1B1BD8:  MOV             R2, R12
1B1BDA:  STR.W           R12, [SP,#0x198+var_8C]
1B1BDE:  MOV             R12, R0
1B1BE0:  STRH.W          R1, [SP,#0x198+var_76]
1B1BE4:  MOVS            R1, #5
1B1BE6:  STR             R0, [SP,#0x198+var_9C]
1B1BE8:  B               loc_1B1BEE
1B1BEA:  MOVS            R1, #1
1B1BEC:  MOV             R2, R0
1B1BEE:  LDR.W           LR, [SP,#0x198+var_98]
1B1BF2:  LDR             R0, [SP,#0x198+var_88]
1B1BF4:  STR             R2, [SP,#0x198+var_BC]
1B1BF6:  CMP             LR, R0
1B1BF8:  STR.W           R12, [SP,#0x198+var_AC]
1B1BFC:  STR             R1, [SP,#0x198+var_2C]
1B1BFE:  STR             R2, [SP,#0x198+var_168]
1B1C00:  BLE             loc_1B1C20
1B1C02:  LDRH.W          R1, [SP,#0x198+var_7C]
1B1C06:  LDRH.W          R2, [SP,#0x198+var_74]
1B1C0A:  STRH.W          R2, [SP,#0x198+var_7C]
1B1C0E:  MOV             R2, LR
1B1C10:  STR.W           LR, [SP,#0x198+var_88]
1B1C14:  MOV             LR, R0
1B1C16:  STRH.W          R1, [SP,#0x198+var_74]
1B1C1A:  MOVS            R1, #6
1B1C1C:  STR             R0, [SP,#0x198+var_98]
1B1C1E:  B               loc_1B1C24
1B1C20:  MOVS            R1, #2
1B1C22:  MOV             R2, R0
1B1C24:  LDR             R5, [SP,#0x198+var_94]
1B1C26:  LDR             R0, [SP,#0x198+var_84]
1B1C28:  STR             R2, [SP,#0x198+var_B8]
1B1C2A:  CMP             R5, R0
1B1C2C:  STR.W           LR, [SP,#0x198+var_A8]
1B1C30:  STR             R1, [SP,#0x198+var_28]
1B1C32:  BLE             loc_1B1C54
1B1C34:  MOV             R6, R2
1B1C36:  LDRH.W          R1, [SP,#0x198+var_7A]
1B1C3A:  LDRH.W          R2, [SP,#0x198+var_72]
1B1C3E:  STRH.W          R2, [SP,#0x198+var_7A]
1B1C42:  MOV             R2, R6
1B1C44:  STR             R0, [SP,#0x198+var_94]
1B1C46:  MOV             R6, R5
1B1C48:  STR             R5, [SP,#0x198+var_84]
1B1C4A:  MOV             R5, R0
1B1C4C:  STRH.W          R1, [SP,#0x198+var_72]
1B1C50:  MOVS            R1, #7
1B1C52:  B               loc_1B1C58
1B1C54:  MOVS            R1, #3
1B1C56:  MOV             R6, R0
1B1C58:  STR             R6, [SP,#0x198+var_B4]
1B1C5A:  STR             R5, [SP,#0x198+var_A4]
1B1C5C:  STR             R1, [SP,#0x198+var_24]
1B1C5E:  STRD.W          R6, R2, [SP,#0x198+var_184]
1B1C62:  LDR             R1, [SP,#0x198+var_168]
1B1C64:  STR             R3, [SP,#0x198+var_170]
1B1C66:  B               loc_1B1CCC
1B1C68:  LDR.W           R1, [R10,R0,LSL#2]
1B1C6C:  ADD.W           LR, SP, #0x198+var_B0
1B1C70:  EOR.W           R1, R1, #4
1B1C74:  STR.W           R1, [R10,R2,LSL#2]
1B1C78:  ORR.W           R1, R0, #4
1B1C7C:  LDR.W           R3, [R11,R1,LSL#2]
1B1C80:  STR.W           R3, [R11,R2,LSL#2]
1B1C84:  ADD             R3, SP, #0x198+var_80
1B1C86:  LDRH.W          R1, [R3,R1,LSL#1]
1B1C8A:  STRH.W          R1, [R3,R2,LSL#1]
1B1C8E:  ADD             R1, SP, #0x198+var_B0
1B1C90:  MOV             R3, #0x7FFFFFFF
1B1C94:  STR.W           R8, [R1,R2,LSL#2]
1B1C98:  ADD             R1, SP, #0x198+var_C0
1B1C9A:  STR.W           R3, [R1,R0,LSL#2]
1B1C9E:  LSLS            R1, R0, #4
1B1CA0:  ADD.W           R0, R9, R0,LSL#4
1B1CA4:  LDR.W           R1, [R9,R1]
1B1CA8:  LSLS            R3, R2, #4
1B1CAA:  LDR             R6, [R0,#4]
1B1CAC:  LDR             R5, [R0,#8]
1B1CAE:  LDR             R0, [R0,#0xC]
1B1CB0:  STR.W           R1, [R9,R3]
1B1CB4:  ADD.W           R1, R9, R2,LSL#4
1B1CB8:  STR             R0, [R1,#0xC]
1B1CBA:  STR             R5, [R1,#8]
1B1CBC:  STR             R6, [R1,#4]
1B1CBE:  LDM.W           LR, {R4,R12,LR}
1B1CC2:  LDR             R5, [SP,#0x198+var_A4]
1B1CC4:  LDRD.W          R3, R1, [SP,#0x198+var_C0]
1B1CC8:  LDRD.W          R2, R6, [SP,#0x198+var_B8]
1B1CCC:  CMP             R3, R1
1B1CCE:  MOV.W           R0, #0
1B1CD2:  ITT GT
1B1CD4:  MOVGT           R0, #1
1B1CD6:  MOVGT           R3, R1
1B1CD8:  CMP             R3, R2
1B1CDA:  ITT GT
1B1CDC:  MOVGT           R0, #2
1B1CDE:  MOVGT           R3, R2
1B1CE0:  MOVS            R2, #0
1B1CE2:  CMP             R3, R6
1B1CE4:  IT GT
1B1CE6:  MOVGT           R0, #3
1B1CE8:  CMP             R4, #0
1B1CEA:  IT LE
1B1CEC:  MOVLE           R4, R8
1B1CEE:  CMP             R4, R12
1B1CF0:  ITT LT
1B1CF2:  MOVLT           R2, #1
1B1CF4:  MOVLT           R4, R12
1B1CF6:  CMP             R4, LR
1B1CF8:  ITT LT
1B1CFA:  MOVLT           R2, #2
1B1CFC:  MOVLT           R4, LR
1B1CFE:  CMP             R4, R5
1B1D00:  IT LT
1B1D02:  MOVLT           R2, #3
1B1D04:  CMP             R3, R6
1B1D06:  IT GT
1B1D08:  MOVGT           R3, R6
1B1D0A:  CMP             R4, R5
1B1D0C:  IT LT
1B1D0E:  MOVLT           R4, R5
1B1D10:  CMP             R3, R4
1B1D12:  BLT             loc_1B1C68
1B1D14:  LDR             R5, [SP,#0x198+var_174]
1B1D16:  LDR             R0, [SP,#0x198+var_30]
1B1D18:  LDRB.W          R1, [R9,R5]
1B1D1C:  ADD.W           R0, R1, R0,LSR#2
1B1D20:  ADD.W           R1, R9, R5
1B1D24:  STRB.W          R0, [R9,R5]
1B1D28:  LDR             R0, [SP,#0x198+var_2C]
1B1D2A:  LDRB            R2, [R1,#0x10]
1B1D2C:  LDRB.W          R3, [R1,#0x20]
1B1D30:  ADD.W           R0, R2, R0,LSR#2
1B1D34:  LDRB.W          R6, [R1,#0x30]
1B1D38:  STRB            R0, [R1,#0x10]
1B1D3A:  LDR             R0, [SP,#0x198+var_28]
1B1D3C:  ADD.W           R0, R3, R0,LSR#2
1B1D40:  STRB.W          R0, [R1,#0x20]
1B1D44:  LDR             R0, [SP,#0x198+var_24]
1B1D46:  ADD.W           R0, R6, R0,LSR#2
1B1D4A:  STRB.W          R0, [R1,#0x30]
1B1D4E:  LDR             R0, [SP,#0x198+var_178]
1B1D50:  LDR             R1, [SP,#0x198+var_17C]
1B1D52:  SUBS            R0, #1
1B1D54:  CMP             R1, #1
1B1D56:  BGT.W           loc_1B1A68
1B1D5A:  B               loc_1B1DBA
1B1D5C:  LDRD.W          R5, R6, [SP,#0x198+var_178]
1B1D60:  CMP             R2, #1
1B1D62:  BLT             loc_1B1D7A
1B1D64:  LDR             R2, [SP,#0x198+var_164]
1B1D66:  MOV             R1, R5
1B1D68:  LSLS            R0, R2, #4
1B1D6A:  LDRB            R3, [R1]
1B1D6C:  SUBS            R2, #1
1B1D6E:  ADD.W           R3, R3, #1
1B1D72:  STRB            R3, [R0,R1]
1B1D74:  ADD.W           R1, R1, #0x10
1B1D78:  BNE             loc_1B1D6A
1B1D7A:  LDR             R1, [SP,#0x198+var_164]
1B1D7C:  MOV.W           R8, #0
1B1D80:  LSLS            R0, R1, #1
1B1D82:  CMP             R0, #3
1B1D84:  BGT             loc_1B1D96
1B1D86:  SUBS            R2, R0, #1
1B1D88:  LSLS            R1, R1, #5
1B1D8A:  LDRB            R3, [R5]
1B1D8C:  ADDS            R2, #1
1B1D8E:  STRB            R3, [R1,R5]
1B1D90:  ADDS            R5, #0x10
1B1D92:  CMP             R2, #3
1B1D94:  BLT             loc_1B1D8A
1B1D96:  LDR             R1, [SP,#0x198+var_17C]
1B1D98:  LDR             R2, [SP,#0x198+var_198]
1B1D9A:  CMP             R1, #1
1B1D9C:  BGT.W           loc_1B1A62
1B1DA0:  LDR             R0, [SP,#0x198+var_90]
1B1DA2:  STR             R0, [SP,#0x198+var_170]
1B1DA4:  LDR             R0, [SP,#0x198+var_8C]
1B1DA6:  STR             R0, [SP,#0x198+var_168]
1B1DA8:  LDR             R0, [SP,#0x198+var_88]
1B1DAA:  STR             R0, [SP,#0x198+var_180]
1B1DAC:  LDR             R0, [SP,#0x198+var_84]
1B1DAE:  STR             R0, [SP,#0x198+var_184]
1B1DB0:  B               loc_1B1DBA
1B1DB2:  STR             R0, [SP,#0x198+var_184]
1B1DB4:  STR             R0, [SP,#0x198+var_180]
1B1DB6:  STR             R0, [SP,#0x198+var_168]
1B1DB8:  STR             R0, [SP,#0x198+var_170]
1B1DBA:  LDRD.W          R4, R0, [SP,#0x198+var_A0]
1B1DBE:  LDRD.W          R1, R2, [SP,#0x198+var_98]
1B1DC2:  CMP             R4, R0
1B1DC4:  ITT GT
1B1DC6:  MOVGT.W         R8, #1
1B1DCA:  MOVGT           R4, R0
1B1DCC:  CMP             R4, R1
1B1DCE:  ITT GT
1B1DD0:  MOVGT.W         R8, #2
1B1DD4:  MOVGT           R4, R1
1B1DD6:  CMP             R4, R2
1B1DD8:  ITT GT
1B1DDA:  MOVGT.W         R8, #3
1B1DDE:  MOVGT           R4, R2
1B1DE0:  LDR             R0, [SP,#0x198+var_170]
1B1DE2:  LDR             R2, [R7,#n]; n
1B1DE4:  CMP             R4, R0
1B1DE6:  ITT GT
1B1DE8:  MOVGT.W         R8, #4
1B1DEC:  MOVGT           R4, R0
1B1DEE:  LDR             R0, [SP,#0x198+var_168]
1B1DF0:  CMP             R4, R0
1B1DF2:  ITT GT
1B1DF4:  MOVGT.W         R8, #5
1B1DF8:  MOVGT           R4, R0
1B1DFA:  LDR             R0, [SP,#0x198+var_180]
1B1DFC:  CMP             R4, R0
1B1DFE:  ITT GT
1B1E00:  MOVGT.W         R8, #6
1B1E04:  MOVGT           R4, R0
1B1E06:  LDR             R0, [SP,#0x198+var_184]
1B1E08:  CMP             R4, R0
1B1E0A:  ITT GT
1B1E0C:  MOVGT.W         R8, #7
1B1E10:  MOVGT           R4, R0
1B1E12:  LDR             R5, [SP,#0x198+dest]
1B1E14:  CMP             R2, #0
1B1E16:  BLE             loc_1B1E28
1B1E18:  AND.W           R0, R8, #3
1B1E1C:  ADD             R1, SP, #0x198+var_70
1B1E1E:  ADD.W           R1, R1, R0,LSL#4; src
1B1E22:  MOV             R0, R5; dest
1B1E24:  BLX             j_memcpy
1B1E28:  LDRB            R0, [R5]
1B1E2A:  ADD.W           R0, R0, R8,LSR#2
1B1E2E:  STRB            R0, [R5]
1B1E30:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B1E38)
1B1E32:  LDR             R1, [SP,#0x198+var_20]
1B1E34:  ADD             R0, PC; __stack_chk_guard_ptr
1B1E36:  LDR             R0, [R0]; __stack_chk_guard
1B1E38:  LDR             R0, [R0]
1B1E3A:  SUBS            R0, R0, R1
1B1E3C:  ITTTT EQ
1B1E3E:  MOVEQ           R0, R4
1B1E40:  ADDEQ           SP, SP, #0x17C
1B1E42:  POPEQ.W         {R8-R11}
1B1E46:  POPEQ           {R4-R7,PC}
1B1E48:  BLX             __stack_chk_fail
