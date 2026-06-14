; =========================================================
; Game Engine Function: sub_A520E
; Address            : 0xA520E - 0xA52C8
; =========================================================

A520E:  PUSH            {R7,LR}
A5210:  MOV             R7, SP
A5212:  VLDR            S0, [R0,#8]
A5216:  VLDR            S4, [R0,#0x10]
A521A:  VLDR            S2, [R0,#0xC]
A521E:  VCMP.F32        S0, S4
A5222:  VMRS            APSR_nzcv, FPSCR
A5226:  BNE             loc_A5238
A5228:  VLDR            S4, [R0,#0x14]
A522C:  VCMP.F32        S2, S4
A5230:  VMRS            APSR_nzcv, FPSCR
A5234:  IT EQ
A5236:  POPEQ           {R7,PC}
A5238:  VCVT.S32.F32    S2, S2
A523C:  LDR             R3, [R0]
A523E:  VCVT.S32.F32    S0, S0
A5242:  VMOV            LR, S2
A5246:  VMOV            R2, S0
A524A:  CBZ             R3, loc_A5256
A524C:  LDR             R3, [R0,#0x1C]
A524E:  CMP             R3, R2
A5250:  BGE             loc_A5276
A5252:  STR             R2, [R0,#0x1C]
A5254:  B               loc_A527E
A5256:  LDRD.W          R12, R3, [R0,#0x28]
A525A:  RSB.W           R1, R3, R3,LSL#3
A525E:  STRH.W          R2, [R12,R1,LSL#1]
A5262:  ADD.W           R1, R12, R1,LSL#1
A5266:  MOVS            R2, #0
A5268:  STR             R2, [R1,#8]
A526A:  STR             R2, [R1,#4]
A526C:  MOVS            R2, #2
A526E:  STRB            R2, [R1,#0xC]
A5270:  STRH.W          LR, [R1,#2]
A5274:  B               loc_A52C2
A5276:  LDR             R3, [R0,#4]
A5278:  CMP             R3, #0
A527A:  IT EQ
A527C:  STREQ           R2, [R0,#0x1C]
A527E:  LDR             R3, [R0,#0x24]
A5280:  CMP             R3, LR
A5282:  BGE             loc_A528A
A5284:  STR.W           LR, [R0,#0x24]
A5288:  B               loc_A5294
A528A:  LDR             R3, [R0,#4]
A528C:  CMP             R3, #0
A528E:  IT EQ
A5290:  STREQ.W         LR, [R0,#0x24]
A5294:  LDR             R3, [R0,#0x18]
A5296:  CMP             R3, R2
A5298:  BLE             loc_A529E
A529A:  STR             R2, [R0,#0x18]
A529C:  B               loc_A52A6
A529E:  LDR             R3, [R0,#4]
A52A0:  CMP             R3, #0
A52A2:  IT EQ
A52A4:  STREQ           R2, [R0,#0x18]
A52A6:  LDR             R2, [R0,#0x20]
A52A8:  CMP             R2, LR
A52AA:  BLE             loc_A52B2
A52AC:  STR.W           LR, [R0,#0x20]
A52B0:  B               loc_A52BC
A52B2:  LDR             R2, [R0,#4]
A52B4:  CMP             R2, #0
A52B6:  IT EQ
A52B8:  STREQ.W         LR, [R0,#0x20]
A52BC:  MOVS            R1, #1
A52BE:  LDR             R3, [R0,#0x2C]
A52C0:  STR             R1, [R0,#4]
A52C2:  ADDS            R1, R3, #1
A52C4:  STR             R1, [R0,#0x2C]
A52C6:  POP             {R7,PC}
