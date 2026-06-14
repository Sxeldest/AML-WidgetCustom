; =========================================================
; Game Engine Function: silk_NLSF_del_dec_quant
; Address            : 0xD3BDC - 0xD408C
; =========================================================

D3BDC:  PUSH            {R4-R7,LR}
D3BDE:  ADD             R7, SP, #0xC
D3BE0:  PUSH.W          {R8-R11}
D3BE4:  SUB             SP, SP, #0x17C
D3BE6:  ADD.W           R12, SP, #0x198+dest
D3BEA:  LDRSH.W         R8, [R7,#arg_8]
D3BEE:  STM.W           R12, {R0-R3}
D3BF2:  MOVW            R4, #0xD800
D3BF6:  MOV             R2, #0xFFFFFFF6
D3BFA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xD3C0C)
D3BFE:  MOVT            R4, #0xFFFF
D3C02:  LDR.W           R12, [R7,#arg_10]
D3C06:  MOVS            R3, #0
D3C08:  ADD             R0, PC; __stack_chk_guard_ptr
D3C0A:  MOV.W           LR, #0x400
D3C0E:  LDR             R0, [R0]; __stack_chk_guard
D3C10:  LDR             R1, [R0]
D3C12:  STR             R1, [SP,#0x198+var_20]
D3C14:  MOV             R6, R4
D3C16:  LSLS            R1, R2, #0x1A
D3C18:  SUB.W           R0, R3, #0xA
D3C1C:  ADD.W           R4, R6, #0x400
D3C20:  ASRS            R5, R1, #0x10
D3C22:  CMP             R0, #1
D3C24:  BLT             loc_D3C30
D3C26:  ADDW            R1, R6, #0x39A
D3C2A:  SUB.W           R6, R5, #0x66 ; 'f'
D3C2E:  B               loc_D3C52
D3C30:  ADD.W           R1, LR, R1,ASR#16
D3C34:  CBZ             R6, loc_D3C4C
D3C36:  CMN.W           R6, #0x400
D3C3A:  ORR.W           R5, R5, #0x66 ; 'f'
D3C3E:  ITT NE
D3C40:  ANDNE.W         R0, R4, #0xFC00
D3C44:  ORRNE.W         R1, R0, #0x66 ; 'f'
D3C48:  MOV             R6, R5
D3C4A:  B               loc_D3C52
D3C4C:  SXTH            R0, R1
D3C4E:  SUB.W           R1, R0, #0x66 ; 'f'
D3C52:  SXTH            R0, R6
D3C54:  SXTH            R1, R1
D3C56:  SMULBB.W        R0, R0, R8
D3C5A:  ADD             R5, SP, #0x198+var_110
D3C5C:  SMULBB.W        R1, R1, R8
D3C60:  ADDS            R2, #1
D3C62:  CMP.W           R4, #0x2800
D3C66:  MOV.W           R0, R0,ASR#16
D3C6A:  STR.W           R0, [R5,R3,LSL#2]
D3C6E:  MOV.W           R0, R1,ASR#16
D3C72:  ADD             R1, SP, #0x198+var_160
D3C74:  STR.W           R0, [R1,R3,LSL#2]
D3C78:  ADD.W           R3, R3, #1
D3C7C:  BNE             loc_D3C14
D3C7E:  LDR             R1, [R7,#n]
D3C80:  MOV.W           R8, #0
D3C84:  STR.W           R8, [SP,#0x198+var_A0]
D3C88:  CMP             R1, #1
D3C8A:  STRH.W          R8, [SP,#0x198+var_80]
D3C8E:  BLT.W           loc_D3FF2
D3C92:  ADD             R0, SP, #0x198+var_70
D3C94:  MOV             R6, R1
D3C96:  SUBS            R2, R0, #1
D3C98:  SXTH.W          R0, R12
D3C9C:  STR             R0, [SP,#0x198+var_16C]
D3C9E:  MOVS            R0, #1
D3CA0:  STR             R2, [SP,#0x198+var_198]
D3CA2:  STR             R0, [SP,#0x198+var_164]
D3CA4:  ADDS            R0, R2, R6
D3CA6:  MOV             R5, R6
D3CA8:  STRD.W          R5, R0, [SP,#0x198+var_17C]
D3CAC:  SUBS            R0, R5, #1
D3CAE:  LDR             R2, [SP,#0x198+var_164]
D3CB0:  STR             R0, [SP,#0x198+var_174]
D3CB2:  CMP             R2, #1
D3CB4:  BLT.W           loc_D3DBE
D3CB8:  LDR             R0, [R7,#arg_0]
D3CBA:  ADD.W           R12, SP, #0x198+var_80
D3CBE:  LDR             R2, [SP,#0x198+var_174]
D3CC0:  ADD.W           R8, SP, #0x198+var_A0
D3CC4:  LDR             R1, [SP,#0x198+var_190]
D3CC6:  LDR.W           LR, [SP,#0x198+var_178]
D3CCA:  LDRSH.W         R0, [R0,R2,LSL#1]
D3CCE:  LDRSH.W         R9, [R1,R2,LSL#1]
D3CD2:  LDR             R1, [R7,#arg_4]
D3CD4:  ADD             R0, R1
D3CD6:  STR             R0, [SP,#0x198+var_170]
D3CD8:  LDR             R0, [SP,#0x198+var_18C]
D3CDA:  LDRSH.W         R10, [R0,R2,LSL#1]
D3CDE:  LDR             R0, [SP,#0x198+var_188]
D3CE0:  LDRB            R0, [R0,R2]
D3CE2:  LDR             R2, [SP,#0x198+var_164]
D3CE4:  STR             R0, [SP,#0x198+var_168]
D3CE6:  MOV             R5, R2
D3CE8:  LDRSH.W         R0, [R12]
D3CEC:  LDR             R1, [SP,#0x198+var_168]
D3CEE:  SMULBB.W        R6, R0, R1
D3CF2:  LDR             R1, [R7,#arg_C]
D3CF4:  SUB.W           R0, R9, R6,ASR#8
D3CF8:  SXTH            R0, R0
D3CFA:  SMULBB.W        R3, R0, R1
D3CFE:  MOVS            R1, #0x28 ; '('
D3D00:  ASRS            R0, R3, #0x10
D3D02:  CMN.W           R0, #0xA
D3D06:  MOV             R0, #0xFFFFFFF6
D3D0A:  IT GT
D3D0C:  ASRGT           R0, R3, #0x10
D3D0E:  CMP             R0, #9
D3D10:  IT GE
D3D12:  MOVGE           R0, #9
D3D14:  ADD.W           R3, R1, R0,LSL#2
D3D18:  ADD             R1, SP, #0x198+var_110
D3D1A:  CMP             R0, #3
D3D1C:  STRB.W          R0, [LR]
D3D20:  LDR             R4, [R1,R3]
D3D22:  ADD             R1, SP, #0x198+var_160
D3D24:  LDR             R1, [R1,R3]
D3D26:  ADD.W           R3, R4, R6,ASR#8
D3D2A:  STRH.W          R3, [R12]
D3D2E:  ADD.W           R11, R1, R6,ASR#8
D3D32:  STRH.W          R11, [R12,R2,LSL#1]
D3D36:  BLT             loc_D3D44
D3D38:  BNE             loc_D3D58
D3D3A:  LDR             R0, [SP,#0x198+var_170]
D3D3C:  LDRB            R6, [R0,#7]
D3D3E:  MOV.W           R0, #0x118
D3D42:  B               loc_D3D7A
D3D44:  CMN.W           R0, #4
D3D48:  BGT             loc_D3D62
D3D4A:  ADDS            R1, R0, #4
D3D4C:  BNE             loc_D3D6C
D3D4E:  LDR             R0, [SP,#0x198+var_170]
D3D50:  MOV.W           R6, #0x118
D3D54:  LDRB            R0, [R0,#1]
D3D56:  B               loc_D3D7A
D3D58:  MOVS            R1, #0x2B ; '+'
D3D5A:  MULS            R1, R0
D3D5C:  ADD.W           R0, R1, #0x97
D3D60:  B               loc_D3D76
D3D62:  LDR             R1, [SP,#0x198+var_170]
D3D64:  ADD             R0, R1
D3D66:  LDRB            R6, [R0,#4]
D3D68:  LDRB            R0, [R0,#5]
D3D6A:  B               loc_D3D7A
D3D6C:  MOV             R1, #0xFFFFFFD5
D3D70:  MULS            R1, R0
D3D72:  ADD.W           R0, R1, #0x41 ; 'A'
D3D76:  ADD.W           R6, R1, #0x6C ; 'l'
D3D7A:  SUB.W           R1, R9, R11
D3D7E:  SUB.W           R3, R9, R3
D3D82:  LDR             R2, [SP,#0x198+var_16C]
D3D84:  SXTH            R6, R6
D3D86:  SMULBB.W        R3, R3, R3
D3D8A:  LDR.W           R4, [R8]
D3D8E:  SMULBB.W        R1, R1, R1
D3D92:  SXTH            R0, R0
D3D94:  SMLABB.W        R0, R0, R2, R4
D3D98:  ADD.W           LR, LR, #0x10
D3D9C:  SMLABB.W        R6, R6, R2, R4
D3DA0:  LDR             R2, [SP,#0x198+var_164]
D3DA2:  SUBS            R5, #1
D3DA4:  ADD.W           R12, R12, #2
D3DA8:  MLA.W           R3, R3, R10, R6
D3DAC:  MLA.W           R0, R1, R10, R0
D3DB0:  STR.W           R3, [R8]
D3DB4:  STR.W           R0, [R8,R2,LSL#2]
D3DB8:  ADD.W           R8, R8, #4
D3DBC:  BNE             loc_D3CE8
D3DBE:  CMP             R2, #3
D3DC0:  BLT.W           loc_D3F9C
D3DC4:  LDR             R0, [SP,#0x198+var_A0]
D3DC6:  LDR             R3, [SP,#0x198+var_90]
D3DC8:  CMP             R0, R3
D3DCA:  BLE             loc_D3DE8
D3DCC:  LDRH.W          R1, [SP,#0x198+var_78]
D3DD0:  MOV             R4, R3
D3DD2:  STR             R3, [SP,#0x198+var_A0]
D3DD4:  MOV             R3, R0
D3DD6:  LDRH.W          R2, [SP,#0x198+var_80]
D3DDA:  STRH.W          R1, [SP,#0x198+var_80]
D3DDE:  MOVS            R1, #4
D3DE0:  STR             R0, [SP,#0x198+var_90]
D3DE2:  STRH.W          R2, [SP,#0x198+var_78]
D3DE6:  B               loc_D3DEC
D3DE8:  MOVS            R1, #0
D3DEA:  MOV             R4, R0
D3DEC:  LDR.W           R12, [SP,#0x198+var_9C]
D3DF0:  ADD.W           R9, SP, #0x198+var_70
D3DF4:  LDR             R0, [SP,#0x198+var_8C]
D3DF6:  ADD.W           R10, SP, #0x198+var_30
D3DFA:  ADD.W           R11, SP, #0x198+var_A0
D3DFE:  MOV.W           R8, #0
D3E02:  CMP             R12, R0
D3E04:  STR             R4, [SP,#0x198+var_B0]
D3E06:  STR             R3, [SP,#0x198+var_C0]
D3E08:  STR             R1, [SP,#0x198+var_30]
D3E0A:  BLE             loc_D3E2A
D3E0C:  LDRH.W          R1, [SP,#0x198+var_7E]
D3E10:  LDRH.W          R2, [SP,#0x198+var_76]
D3E14:  STRH.W          R2, [SP,#0x198+var_7E]
D3E18:  MOV             R2, R12
D3E1A:  STR.W           R12, [SP,#0x198+var_8C]
D3E1E:  MOV             R12, R0
D3E20:  STRH.W          R1, [SP,#0x198+var_76]
D3E24:  MOVS            R1, #5
D3E26:  STR             R0, [SP,#0x198+var_9C]
D3E28:  B               loc_D3E2E
D3E2A:  MOVS            R1, #1
D3E2C:  MOV             R2, R0
D3E2E:  LDR.W           LR, [SP,#0x198+var_98]
D3E32:  LDR             R0, [SP,#0x198+var_88]
D3E34:  STR             R2, [SP,#0x198+var_BC]
D3E36:  CMP             LR, R0
D3E38:  STR.W           R12, [SP,#0x198+var_AC]
D3E3C:  STR             R1, [SP,#0x198+var_2C]
D3E3E:  STR             R2, [SP,#0x198+var_168]
D3E40:  BLE             loc_D3E60
D3E42:  LDRH.W          R1, [SP,#0x198+var_7C]
D3E46:  LDRH.W          R2, [SP,#0x198+var_74]
D3E4A:  STRH.W          R2, [SP,#0x198+var_7C]
D3E4E:  MOV             R2, LR
D3E50:  STR.W           LR, [SP,#0x198+var_88]
D3E54:  MOV             LR, R0
D3E56:  STRH.W          R1, [SP,#0x198+var_74]
D3E5A:  MOVS            R1, #6
D3E5C:  STR             R0, [SP,#0x198+var_98]
D3E5E:  B               loc_D3E64
D3E60:  MOVS            R1, #2
D3E62:  MOV             R2, R0
D3E64:  LDR             R5, [SP,#0x198+var_94]
D3E66:  LDR             R0, [SP,#0x198+var_84]
D3E68:  STR             R2, [SP,#0x198+var_B8]
D3E6A:  CMP             R5, R0
D3E6C:  STR.W           LR, [SP,#0x198+var_A8]
D3E70:  STR             R1, [SP,#0x198+var_28]
D3E72:  BLE             loc_D3E94
D3E74:  MOV             R6, R2
D3E76:  LDRH.W          R1, [SP,#0x198+var_7A]
D3E7A:  LDRH.W          R2, [SP,#0x198+var_72]
D3E7E:  STRH.W          R2, [SP,#0x198+var_7A]
D3E82:  MOV             R2, R6
D3E84:  STR             R0, [SP,#0x198+var_94]
D3E86:  MOV             R6, R5
D3E88:  STR             R5, [SP,#0x198+var_84]
D3E8A:  MOV             R5, R0
D3E8C:  STRH.W          R1, [SP,#0x198+var_72]
D3E90:  MOVS            R1, #7
D3E92:  B               loc_D3E98
D3E94:  MOVS            R1, #3
D3E96:  MOV             R6, R0
D3E98:  STR             R6, [SP,#0x198+var_B4]
D3E9A:  STR             R5, [SP,#0x198+var_A4]
D3E9C:  STR             R1, [SP,#0x198+var_24]
D3E9E:  STRD.W          R6, R2, [SP,#0x198+var_184]
D3EA2:  LDR             R1, [SP,#0x198+var_168]
D3EA4:  STR             R3, [SP,#0x198+var_170]
D3EA6:  B               loc_D3F0C
D3EA8:  LDR.W           R1, [R10,R0,LSL#2]
D3EAC:  ADD.W           LR, SP, #0x198+var_B0
D3EB0:  EOR.W           R1, R1, #4
D3EB4:  STR.W           R1, [R10,R2,LSL#2]
D3EB8:  ORR.W           R1, R0, #4
D3EBC:  LDR.W           R3, [R11,R1,LSL#2]
D3EC0:  STR.W           R3, [R11,R2,LSL#2]
D3EC4:  ADD             R3, SP, #0x198+var_80
D3EC6:  LDRH.W          R1, [R3,R1,LSL#1]
D3ECA:  STRH.W          R1, [R3,R2,LSL#1]
D3ECE:  ADD             R1, SP, #0x198+var_B0
D3ED0:  MOV             R3, #0x7FFFFFFF
D3ED4:  STR.W           R8, [R1,R2,LSL#2]
D3ED8:  ADD             R1, SP, #0x198+var_C0
D3EDA:  STR.W           R3, [R1,R0,LSL#2]
D3EDE:  LSLS            R1, R0, #4
D3EE0:  ADD.W           R0, R9, R0,LSL#4
D3EE4:  LDR.W           R1, [R9,R1]
D3EE8:  LSLS            R3, R2, #4
D3EEA:  LDR             R6, [R0,#4]
D3EEC:  LDR             R5, [R0,#8]
D3EEE:  LDR             R0, [R0,#0xC]
D3EF0:  STR.W           R1, [R9,R3]
D3EF4:  ADD.W           R1, R9, R2,LSL#4
D3EF8:  STR             R0, [R1,#0xC]
D3EFA:  STR             R5, [R1,#8]
D3EFC:  STR             R6, [R1,#4]
D3EFE:  LDM.W           LR, {R4,R12,LR}
D3F02:  LDR             R5, [SP,#0x198+var_A4]
D3F04:  LDRD.W          R3, R1, [SP,#0x198+var_C0]
D3F08:  LDRD.W          R2, R6, [SP,#0x198+var_B8]
D3F0C:  CMP             R3, R1
D3F0E:  MOV.W           R0, #0
D3F12:  ITT GT
D3F14:  MOVGT           R0, #1
D3F16:  MOVGT           R3, R1
D3F18:  CMP             R3, R2
D3F1A:  ITT GT
D3F1C:  MOVGT           R0, #2
D3F1E:  MOVGT           R3, R2
D3F20:  MOVS            R2, #0
D3F22:  CMP             R3, R6
D3F24:  IT GT
D3F26:  MOVGT           R0, #3
D3F28:  CMP             R4, #0
D3F2A:  IT LE
D3F2C:  MOVLE           R4, R8
D3F2E:  CMP             R4, R12
D3F30:  ITT LT
D3F32:  MOVLT           R2, #1
D3F34:  MOVLT           R4, R12
D3F36:  CMP             R4, LR
D3F38:  ITT LT
D3F3A:  MOVLT           R2, #2
D3F3C:  MOVLT           R4, LR
D3F3E:  CMP             R4, R5
D3F40:  IT LT
D3F42:  MOVLT           R2, #3
D3F44:  CMP             R3, R6
D3F46:  IT GT
D3F48:  MOVGT           R3, R6
D3F4A:  CMP             R4, R5
D3F4C:  IT LT
D3F4E:  MOVLT           R4, R5
D3F50:  CMP             R3, R4
D3F52:  BLT             loc_D3EA8
D3F54:  LDR             R5, [SP,#0x198+var_174]
D3F56:  LDR             R0, [SP,#0x198+var_30]
D3F58:  LDRB.W          R1, [R9,R5]
D3F5C:  ADD.W           R0, R1, R0,LSR#2
D3F60:  ADD.W           R1, R9, R5
D3F64:  STRB.W          R0, [R9,R5]
D3F68:  LDR             R0, [SP,#0x198+var_2C]
D3F6A:  LDRB            R2, [R1,#0x10]
D3F6C:  LDRB.W          R3, [R1,#0x20]
D3F70:  ADD.W           R0, R2, R0,LSR#2
D3F74:  LDRB.W          R6, [R1,#0x30]
D3F78:  STRB            R0, [R1,#0x10]
D3F7A:  LDR             R0, [SP,#0x198+var_28]
D3F7C:  ADD.W           R0, R3, R0,LSR#2
D3F80:  STRB.W          R0, [R1,#0x20]
D3F84:  LDR             R0, [SP,#0x198+var_24]
D3F86:  ADD.W           R0, R6, R0,LSR#2
D3F8A:  STRB.W          R0, [R1,#0x30]
D3F8E:  LDR             R0, [SP,#0x198+var_178]
D3F90:  LDR             R1, [SP,#0x198+var_17C]
D3F92:  SUBS            R0, #1
D3F94:  CMP             R1, #1
D3F96:  BGT.W           loc_D3CA8
D3F9A:  B               loc_D3FFA
D3F9C:  LDRD.W          R5, R6, [SP,#0x198+var_178]
D3FA0:  CMP             R2, #1
D3FA2:  BLT             loc_D3FBA
D3FA4:  LDR             R2, [SP,#0x198+var_164]
D3FA6:  MOV             R1, R5
D3FA8:  LSLS            R0, R2, #4
D3FAA:  LDRB            R3, [R1]
D3FAC:  SUBS            R2, #1
D3FAE:  ADD.W           R3, R3, #1
D3FB2:  STRB            R3, [R0,R1]
D3FB4:  ADD.W           R1, R1, #0x10
D3FB8:  BNE             loc_D3FAA
D3FBA:  LDR             R1, [SP,#0x198+var_164]
D3FBC:  MOV.W           R8, #0
D3FC0:  LSLS            R0, R1, #1
D3FC2:  CMP             R0, #3
D3FC4:  BGT             loc_D3FD6
D3FC6:  SUBS            R2, R0, #1
D3FC8:  LSLS            R1, R1, #5
D3FCA:  LDRB            R3, [R5]
D3FCC:  ADDS            R2, #1
D3FCE:  STRB            R3, [R1,R5]
D3FD0:  ADDS            R5, #0x10
D3FD2:  CMP             R2, #3
D3FD4:  BLT             loc_D3FCA
D3FD6:  LDR             R1, [SP,#0x198+var_17C]
D3FD8:  LDR             R2, [SP,#0x198+var_198]
D3FDA:  CMP             R1, #1
D3FDC:  BGT.W           loc_D3CA2
D3FE0:  LDR             R0, [SP,#0x198+var_90]
D3FE2:  STR             R0, [SP,#0x198+var_170]
D3FE4:  LDR             R0, [SP,#0x198+var_8C]
D3FE6:  STR             R0, [SP,#0x198+var_168]
D3FE8:  LDR             R0, [SP,#0x198+var_88]
D3FEA:  STR             R0, [SP,#0x198+var_180]
D3FEC:  LDR             R0, [SP,#0x198+var_84]
D3FEE:  STR             R0, [SP,#0x198+var_184]
D3FF0:  B               loc_D3FFA
D3FF2:  STR             R0, [SP,#0x198+var_184]
D3FF4:  STR             R0, [SP,#0x198+var_180]
D3FF6:  STR             R0, [SP,#0x198+var_168]
D3FF8:  STR             R0, [SP,#0x198+var_170]
D3FFA:  LDRD.W          R4, R0, [SP,#0x198+var_A0]
D3FFE:  LDRD.W          R1, R2, [SP,#0x198+var_98]
D4002:  CMP             R4, R0
D4004:  ITT GT
D4006:  MOVGT.W         R8, #1
D400A:  MOVGT           R4, R0
D400C:  CMP             R4, R1
D400E:  ITT GT
D4010:  MOVGT.W         R8, #2
D4014:  MOVGT           R4, R1
D4016:  CMP             R4, R2
D4018:  ITT GT
D401A:  MOVGT.W         R8, #3
D401E:  MOVGT           R4, R2
D4020:  LDR             R0, [SP,#0x198+var_170]
D4022:  LDR             R2, [R7,#n]; n
D4024:  CMP             R4, R0
D4026:  ITT GT
D4028:  MOVGT.W         R8, #4
D402C:  MOVGT           R4, R0
D402E:  LDR             R0, [SP,#0x198+var_168]
D4030:  CMP             R4, R0
D4032:  ITT GT
D4034:  MOVGT.W         R8, #5
D4038:  MOVGT           R4, R0
D403A:  LDR             R0, [SP,#0x198+var_180]
D403C:  CMP             R4, R0
D403E:  ITT GT
D4040:  MOVGT.W         R8, #6
D4044:  MOVGT           R4, R0
D4046:  LDR             R0, [SP,#0x198+var_184]
D4048:  CMP             R4, R0
D404A:  ITT GT
D404C:  MOVGT.W         R8, #7
D4050:  MOVGT           R4, R0
D4052:  LDR             R5, [SP,#0x198+dest]
D4054:  CMP             R2, #0
D4056:  BLE             loc_D4068
D4058:  AND.W           R0, R8, #3
D405C:  ADD             R1, SP, #0x198+var_70
D405E:  ADD.W           R1, R1, R0,LSL#4; src
D4062:  MOV             R0, R5; dest
D4064:  BLX             j_memcpy
D4068:  LDRB            R0, [R5]
D406A:  ADD.W           R0, R0, R8,LSR#2
D406E:  STRB            R0, [R5]
D4070:  LDR             R0, =(__stack_chk_guard_ptr - 0xD4078)
D4072:  LDR             R1, [SP,#0x198+var_20]
D4074:  ADD             R0, PC; __stack_chk_guard_ptr
D4076:  LDR             R0, [R0]; __stack_chk_guard
D4078:  LDR             R0, [R0]
D407A:  SUBS            R0, R0, R1
D407C:  ITTTT EQ
D407E:  MOVEQ           R0, R4
D4080:  ADDEQ           SP, SP, #0x17C
D4082:  POPEQ.W         {R8-R11}
D4086:  POPEQ           {R4-R7,PC}
D4088:  BLX             __stack_chk_fail
