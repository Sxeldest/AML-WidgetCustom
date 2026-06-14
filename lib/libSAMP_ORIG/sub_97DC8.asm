; =========================================================
; Game Engine Function: sub_97DC8
; Address            : 0x97DC8 - 0x97F10
; =========================================================

97DC8:  PUSH            {R4-R7,LR}
97DCA:  ADD             R7, SP, #0xC
97DCC:  PUSH.W          {R8-R11}
97DD0:  SUB             SP, SP, #0xC
97DD2:  LDR             R4, =(dword_1ACF68 - 0x97DE0)
97DD4:  MOVW            R1, #0x19AC
97DD8:  MOV.W           R12, #1
97DDC:  ADD             R4, PC; dword_1ACF68
97DDE:  LDR             R2, [R4]
97DE0:  ADD.W           R9, R2, R1
97DE4:  LDR             R5, [R2,R1]
97DE6:  MOVW            R1, #0x2D20
97DEA:  ADD.W           R10, R2, R1
97DEE:  LDRD.W          R6, R0, [R5,#0x19C]
97DF2:  ADD.W           R11, R6, #1
97DF6:  CMP             R0, R6
97DF8:  STRB.W          R12, [R5,#0x7C]
97DFC:  MOV             R8, R11
97DFE:  BGT             loc_97E7E
97E00:  CMP             R0, #0
97E02:  ITTE NE
97E04:  ADDNE.W         R1, R0, R0,LSR#31
97E08:  ADDNE.W         R1, R0, R1,ASR#1
97E0C:  MOVEQ           R1, #8
97E0E:  CMP             R1, R11
97E10:  IT GT
97E12:  MOVGT           R11, R1
97E14:  CMP             R0, R11
97E16:  BGE             loc_97E7E
97E18:  LDR             R1, =(off_117248 - 0x97E26)
97E1A:  MOVS            R0, #0x2C ; ','
97E1C:  LDR             R3, =(dword_1ACF70 - 0x97E28)
97E1E:  MUL.W           R0, R11, R0
97E22:  ADD             R1, PC; off_117248
97E24:  ADD             R3, PC; dword_1ACF70
97E26:  LDR.W           LR, [R2,#0x370]
97E2A:  LDR.W           R12, [R1]; sub_9A720
97E2E:  LDR             R1, [R3]
97E30:  STR             R3, [SP,#0x28+var_20]
97E32:  ADD.W           R3, LR, #1
97E36:  STR.W           R3, [R2,#0x370]
97E3A:  BLX             R12; sub_9A720
97E3C:  LDR.W           R1, [R5,#0x1A4]; src
97E40:  CBZ             R1, loc_97E76
97E42:  LDR.W           R2, [R5,#0x19C]
97E46:  MOVS            R3, #0x2C ; ','
97E48:  STR             R0, [SP,#0x28+var_24]
97E4A:  MULS            R2, R3; n
97E4C:  BLX             j_memcpy
97E50:  LDR.W           R0, [R5,#0x1A4]
97E54:  CMP             R0, #0
97E56:  ITTTT NE
97E58:  LDRNE           R1, [R4]
97E5A:  CMPNE           R1, #0
97E5C:  LDRNE.W         R2, [R1,#0x370]
97E60:  SUBNE           R2, #1
97E62:  IT NE
97E64:  STRNE.W         R2, [R1,#0x370]
97E68:  LDR             R2, =(off_11724C - 0x97E70)
97E6A:  LDR             R1, [SP,#0x28+var_20]
97E6C:  ADD             R2, PC; off_11724C
97E6E:  LDR             R1, [R1]
97E70:  LDR             R2, [R2]; j_opus_decoder_destroy_0
97E72:  BLX             R2; j_opus_decoder_destroy_0
97E74:  LDR             R0, [SP,#0x28+var_24]
97E76:  MOV.W           R12, #1
97E7A:  STRD.W          R11, R0, [R5,#0x1A0]
97E7E:  MOVS            R0, #0x2C ; ','
97E80:  LDR.W           R4, [R5,#0x1A4]
97E84:  MUL.W           R1, R6, R0
97E88:  LDRD.W          R2, R3, [R5,#0xC8]
97E8C:  STR.W           R8, [R5,#0x19C]
97E90:  MLA.W           R0, R6, R0, R4
97E94:  STR             R2, [R4,R1]
97E96:  STR             R3, [R0,#4]
97E98:  LDRD.W          R1, R2, [R5,#0xE0]
97E9C:  STRD.W          R1, R2, [R0,#8]
97EA0:  LDR.W           R1, [R5,#0x1B4]
97EA4:  STR             R1, [R0,#0x10]
97EA6:  LDR.W           R1, [R5,#0x1B8]
97EAA:  STR             R1, [R0,#0x14]
97EAC:  LDRD.W          R1, R2, [R5,#0xE8]
97EB0:  STRD.W          R1, R2, [R0,#0x18]
97EB4:  VLDR            S0, [R5,#0xC]
97EB8:  VLDR            S2, [R5,#0xC8]
97EBC:  VLDR            S4, [R5,#0x1BC]
97EC0:  VSUB.F32        S0, S2, S0
97EC4:  LDR.W           R1, [R9,#0x28]
97EC8:  LDR.W           R2, [R5,#0xF8]
97ECC:  LDRB.W          R3, [R9,#0x54]
97ED0:  STRB.W          R3, [R0,#0x28]
97ED4:  ADD.W           R3, R5, #0xE0
97ED8:  STRD.W          R2, R1, [R0,#0x20]
97EDC:  MOVS            R2, #0
97EDE:  STRB.W          R12, [R0,#0x29]
97EE2:  LDRD.W          R0, R1, [R5,#0xC8]
97EE6:  VSUB.F32        S0, S0, S4
97EEA:  STR.W           R2, [R5,#0xEC]
97EEE:  STM             R3!, {R0-R2}
97EF0:  LDRB.W          R0, [R10]
97EF4:  CMP             R0, #0
97EF6:  VSTR            S0, [R5,#0x1B4]
97EFA:  VSTR            S0, [R5,#0x1B8]
97EFE:  ITT NE
97F00:  MOVNE           R0, #0xFF7FFFFF
97F04:  STRNE.W         R0, [R10,#0x18]
97F08:  ADD             SP, SP, #0xC
97F0A:  POP.W           {R8-R11}
97F0E:  POP             {R4-R7,PC}
