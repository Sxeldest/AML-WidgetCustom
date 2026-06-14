; =========================================================
; Game Engine Function: sub_168290
; Address            : 0x168290 - 0x1683B6
; =========================================================

168290:  PUSH            {R4-R7,LR}
168292:  ADD             R7, SP, #0xC
168294:  PUSH.W          {R11}
168298:  LDR             R6, =(dword_381B58 - 0x1682A2)
16829A:  MOVW            R0, #0x19D0
16829E:  ADD             R6, PC; dword_381B58
1682A0:  LDR             R5, [R6]
1682A2:  LDR             R0, [R5,R0]
1682A4:  CBNZ            R0, loc_1682B0
1682A6:  MOVW            R0, #0x196C
1682AA:  ADDS            R4, R5, R0
1682AC:  LDR             R0, [R4,#0x50]
1682AE:  CBZ             R0, loc_1682B6
1682B0:  POP.W           {R11}
1682B4:  POP             {R4-R7,PC}
1682B6:  LDR.W           R0, [R4,#0x148]
1682BA:  CBZ             R0, loc_1682C4
1682BC:  LDRB.W          R1, [R0,#0x80]
1682C0:  CMP             R1, #0
1682C2:  BNE             loc_1682B0
1682C4:  LDRB.W          R1, [R5,#0x3D8]
1682C8:  CMP             R1, #0
1682CA:  BEQ             loc_16835C
1682CC:  LDR             R1, [R4,#0x48]
1682CE:  CBZ             R1, loc_1682FE
1682D0:  LDR             R0, [R4,#0x44]
1682D2:  BL              sub_167F9C
1682D6:  LDRB.W          R0, [R5,#0xB0]
1682DA:  CMP             R0, #0
1682DC:  BEQ             loc_16835C
1682DE:  LDR             R0, [R4,#0x48]
1682E0:  LDRB            R1, [R0,#8]
1682E2:  LSLS            R1, R1, #0x1F
1682E4:  BNE             loc_16835C
1682E6:  VLDR            S4, [R5,#0x384]
1682EA:  VLDR            S6, [R0,#0xC]
1682EE:  VCMP.F32        S4, S6
1682F2:  VMRS            APSR_nzcv, FPSCR
1682F6:  BGE             loc_16830E
1682F8:  MOVS            R0, #0
1682FA:  STR             R0, [R4,#0x4C]
1682FC:  B               loc_16835C
1682FE:  CBZ             R0, loc_16835C
168300:  BL              sub_1683BC
168304:  CBNZ            R0, loc_16835C
168306:  MOVS            R0, #0
168308:  BL              sub_168010
16830C:  B               loc_16835C
16830E:  VLDR            S2, [R0,#0x10]
168312:  VLDR            S0, [R5,#0x388]
168316:  VCMP.F32        S0, S2
16831A:  VMRS            APSR_nzcv, FPSCR
16831E:  BLT             loc_1682F8
168320:  VLDR            S8, [R0,#0x1C]
168324:  VADD.F32        S6, S6, S8
168328:  VCMP.F32        S4, S6
16832C:  VMRS            APSR_nzcv, FPSCR
168330:  BPL             loc_1682F8
168332:  LDR             R2, [R6]
168334:  MOVW            R1, #0x1554
168338:  VLDR            S8, [R0,#0x274]
16833C:  ADD             R1, R2
16833E:  VLDR            S4, [R1]
168342:  VLDR            S6, [R1,#0x378]
168346:  VADD.F32        S4, S4, S4
16834A:  VMLA.F32        S4, S6, S8
16834E:  VADD.F32        S2, S2, S4
168352:  VCMP.F32        S0, S2
168356:  VMRS            APSR_nzcv, FPSCR
16835A:  BPL             loc_1682F8
16835C:  LDRB.W          R0, [R5,#0x3D9]
168360:  CMP             R0, #0
168362:  BEQ             loc_1682B0
168364:  BL              sub_1683BC
168368:  CLZ.W           R1, R0
16836C:  MOV.W           R1, R1,LSR#5
168370:  CBZ             R0, loc_1683A2
168372:  LDR             R2, [R4]
168374:  CMP             R2, #1
168376:  BLT             loc_1683A2
168378:  LDR             R1, [R4,#8]
16837A:  SUBS            R3, R1, #4
16837C:  MOVS            R1, #0
16837E:  LDR.W           R6, [R3,R2,LSL#2]
168382:  CMP             R6, R0
168384:  BEQ             loc_1683A2
168386:  LDR             R5, [R4,#0x44]
168388:  CMP             R2, #2
16838A:  SUB.W           R6, R6, R5
16838E:  CLZ.W           R6, R6
168392:  MOV.W           R6, R6,LSR#5
168396:  ORR.W           R1, R1, R6
16839A:  BCC             loc_1683A2
16839C:  SUBS            R2, #1
16839E:  LSLS            R6, R1, #0x1F
1683A0:  BEQ             loc_16837E
1683A2:  LSLS            R1, R1, #0x1F
1683A4:  IT NE
1683A6:  LDRNE           R0, [R4,#0x44]
1683A8:  MOVS            R1, #1
1683AA:  POP.W           {R11}
1683AE:  POP.W           {R4-R7,LR}
1683B2:  B.W             sub_1683F8
