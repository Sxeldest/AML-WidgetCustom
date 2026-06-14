; =========================================================
; Game Engine Function: sub_96288
; Address            : 0x96288 - 0x9632C
; =========================================================

96288:  PUSH            {R4-R7,LR}
9628A:  ADD             R7, SP, #0xC
9628C:  PUSH.W          {R11}
96290:  LDRB            R2, [R0]
96292:  CBZ             R2, loc_962D0
96294:  LDR             R5, =(unk_52D88 - 0x962A0)
96296:  ADDS            R1, R0, #1
96298:  MOV.W           R0, #0xFFFFFFFF
9629C:  ADD             R5, PC; unk_52D88
9629E:  B               loc_962B0
962A0:  UXTB            R4, R0
962A2:  EORS            R3, R4
962A4:  ADDS            R1, #1
962A6:  LDR.W           R3, [R5,R3,LSL#2]
962AA:  EOR.W           R0, R3, R0,LSR#8
962AE:  CBZ             R2, loc_962CC
962B0:  MOV             R3, R2
962B2:  LDRB            R2, [R1]
962B4:  CMP             R3, #0x23 ; '#'
962B6:  IT EQ
962B8:  CMPEQ           R2, #0x23 ; '#'
962BA:  BNE             loc_962A0
962BC:  LDRB            R2, [R1,#1]
962BE:  CMP             R2, #0x23 ; '#'
962C0:  MOV.W           R2, #0x23 ; '#'
962C4:  IT EQ
962C6:  MOVEQ.W         R0, #0xFFFFFFFF
962CA:  B               loc_962A0
962CC:  MVNS            R0, R0
962CE:  B               loc_962D2
962D0:  MOVS            R0, #0
962D2:  LDR             R1, =(dword_1ACF68 - 0x962DC)
962D4:  MOVW            R2, #0x199C
962D8:  ADD             R1, PC; dword_1ACF68
962DA:  LDR             R1, [R1]
962DC:  LDR.W           R12, [R1,R2]
962E0:  ADD             R1, R2
962E2:  LDR.W           LR, [R1,#8]
962E6:  CMP.W           R12, #0
962EA:  MOV             R1, LR
962EC:  BEQ             loc_9630E
962EE:  MOV             R1, LR
962F0:  MOV             R4, R12
962F2:  LSRS            R2, R4, #1
962F4:  MVN.W           R6, R4,LSR#1
962F8:  ADD.W           R5, R1, R2,LSL#3
962FC:  LDR.W           R3, [R5],#8
96300:  CMP             R3, R0
96302:  ITT CC
96304:  ADDCC           R2, R4, R6
96306:  MOVCC           R1, R5
96308:  CMP             R2, #0
9630A:  MOV             R4, R2
9630C:  BNE             loc_962F2
9630E:  ADD.W           R2, LR, R12,LSL#3
96312:  CMP             R1, R2
96314:  BEQ             loc_96324
96316:  LDR             R2, [R1]
96318:  CMP             R2, R0
9631A:  BNE             loc_96324
9631C:  LDR             R0, [R1,#4]
9631E:  POP.W           {R11}
96322:  POP             {R4-R7,PC}
96324:  MOVS            R0, #0
96326:  POP.W           {R11}
9632A:  POP             {R4-R7,PC}
