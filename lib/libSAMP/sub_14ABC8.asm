; =========================================================
; Game Engine Function: sub_14ABC8
; Address            : 0x14ABC8 - 0x14AC76
; =========================================================

14ABC8:  PUSH            {R4-R7,LR}
14ABCA:  ADD             R7, SP, #0xC
14ABCC:  PUSH.W          {R8,R9,R11}
14ABD0:  MOV             R4, R0
14ABD2:  LDR             R0, =(off_23496C - 0x14ABDE)
14ABD4:  MOV             R5, R1
14ABD6:  VLD1.8          {D16-D17}, [R1]!
14ABDA:  ADD             R0, PC; off_23496C
14ABDC:  MOV.W           R9, #0
14ABE0:  VLD1.8          {D18}, [R1]
14ABE4:  ADD.W           R1, R4, #0xF8
14ABE8:  LDR             R0, [R0]; dword_23DEF4
14ABEA:  VST1.8          {D16-D17}, [R1]!
14ABEE:  VST1.8          {D18}, [R1]
14ABF2:  LDR             R0, [R0]
14ABF4:  LDRH            R6, [R5]
14ABF6:  LDRB            R2, [R5,#2]
14ABF8:  LDR.W           R1, [R0,#0x3B0]
14ABFC:  AND.W           R0, R2, #0x3F ; '?'
14AC00:  STRB.W          R0, [R4,#0x24]
14AC04:  LSRS            R0, R6, #4
14AC06:  CMP             R0, #0x7C ; '|'
14AC08:  MOV.W           R0, #0
14AC0C:  STRH            R6, [R4,#0x16]
14AC0E:  BHI             loc_14AC26
14AC10:  LDR.W           R8, [R1,#4]
14AC14:  MOV             R1, R6
14AC16:  MOV             R0, R8
14AC18:  BL              sub_F2396
14AC1C:  CMP             R0, #0
14AC1E:  ITE NE
14AC20:  LDRNE.W         R0, [R8,R6,LSL#2]
14AC24:  MOVEQ           R0, #0
14AC26:  LDRB            R1, [R5,#4]
14AC28:  LDRB            R2, [R5,#5]
14AC2A:  STR             R0, [R4,#4]
14AC2C:  MOVS            R0, #0x12
14AC2E:  VMOV            S0, R1
14AC32:  STRB            R0, [R4,#0x1A]
14AC34:  VMOV            S2, R2
14AC38:  VCVT.F32.U32    S0, S0
14AC3C:  VCVT.F32.U32    S2, S2
14AC40:  VSTR            S0, [R4,#8]
14AC44:  VSTR            S2, [R4,#0xC]
14AC48:  BL              sub_F0B30
14AC4C:  STR.W           R0, [R4,#0x120]
14AC50:  LDR.W           R0, [R4,#0x128]
14AC54:  STRB.W          R9, [R4,#0x1B]
14AC58:  CBZ             R0, loc_14AC66
14AC5A:  BL              sub_104108
14AC5E:  CBNZ            R0, loc_14AC66
14AC60:  MOV             R0, R4
14AC62:  BL              sub_14AA0C
14AC66:  LDRB            R0, [R4,#0x19]
14AC68:  CMP             R0, #0x12
14AC6A:  ITT NE
14AC6C:  MOVNE           R0, #0x12
14AC6E:  STRBNE          R0, [R4,#0x19]
14AC70:  POP.W           {R8,R9,R11}
14AC74:  POP             {R4-R7,PC}
