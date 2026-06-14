; =========================================================
; Game Engine Function: sub_153352
; Address            : 0x153352 - 0x15351A
; =========================================================

153352:  PUSH            {R4-R7,LR}
153354:  ADD             R7, SP, #0xC
153356:  PUSH.W          {R8-R11}
15335A:  SUB             SP, SP, #0x14
15335C:  LDR             R4, [R1,#4]
15335E:  MOV             R11, R1
153360:  LDRH            R6, [R2]
153362:  STR             R0, [SP,#0x30+var_2C]
153364:  CBZ             R4, loc_15339E
153366:  MOV.W           R0, #0x55555555
15336A:  MOV.W           R1, #0x33333333
15336E:  AND.W           R0, R0, R4,LSR#1
153372:  SUBS            R0, R4, R0
153374:  AND.W           R1, R1, R0,LSR#2
153378:  BIC.W           R0, R0, #0xCCCCCCCC
15337C:  ADD             R0, R1
15337E:  MOV.W           R1, #0x1010101
153382:  ADD.W           R0, R0, R0,LSR#4
153386:  BIC.W           R0, R0, #0xF0F0F0F0
15338A:  MULS            R0, R1
15338C:  MOV.W           R10, R0,LSR#24
153390:  CMP.W           R10, #1
153394:  BHI             loc_1533A0
153396:  SUBS            R0, R4, #1
153398:  AND.W           R9, R0, R6
15339C:  B               loc_1533B0
15339E:  B               loc_1533F0
1533A0:  CMP             R4, R6
1533A2:  MOV             R9, R6
1533A4:  BHI             loc_1533B0
1533A6:  MOV             R0, R6
1533A8:  MOV             R1, R4
1533AA:  BLX             sub_221798
1533AE:  MOV             R9, R1
1533B0:  LDR.W           R0, [R11]
1533B4:  LDR.W           R5, [R0,R9,LSL#2]
1533B8:  CBZ             R5, loc_1533F0
1533BA:  SUB.W           R8, R4, #1
1533BE:  LDR             R5, [R5]
1533C0:  CBZ             R5, loc_1533F0
1533C2:  LDR             R0, [R5,#4]
1533C4:  CMP             R0, R6
1533C6:  BEQ             loc_1533E4
1533C8:  CMP.W           R10, #1
1533CC:  BHI             loc_1533D4
1533CE:  AND.W           R0, R0, R8
1533D2:  B               loc_1533E0
1533D4:  CMP             R0, R4
1533D6:  BCC             loc_1533E0
1533D8:  MOV             R1, R4
1533DA:  BLX             sub_221798
1533DE:  MOV             R0, R1
1533E0:  CMP             R0, R9
1533E2:  BNE             loc_1533F0
1533E4:  LDRH            R0, [R5,#8]
1533E6:  CMP             R0, R6
1533E8:  BNE             loc_1533BE
1533EA:  MOVS            R0, #0
1533EC:  LDR             R6, [SP,#0x30+var_2C]
1533EE:  B               loc_15350E
1533F0:  MOVS            R0, #0x10; unsigned int
1533F2:  LDRD.W          R5, R8, [R7,#arg_0]
1533F6:  BLX             j__Znwj; operator new(uint)
1533FA:  LDR.W           R2, [R11,#0xC]
1533FE:  ADD.W           R10, R11, #8
153402:  LDR             R1, [R5]
153404:  MOV.W           R12, #0
153408:  ADDS            R2, #1
15340A:  LDR.W           R3, [R8]
15340E:  VLDR            S0, [R11,#0x10]
153412:  VMOV            S2, R2
153416:  LDRH            R1, [R1]
153418:  LDR             R5, [R3]
15341A:  VCVT.F32.U32    S2, S2
15341E:  STR.W           R12, [R3]
153422:  STR             R6, [R0,#4]
153424:  STRH            R1, [R0,#8]
153426:  STR.W           R12, [R0]
15342A:  STR             R5, [R0,#0xC]
15342C:  STRD.W          R0, R10, [SP,#0x30+var_28]
153430:  MOV.W           R0, #1
153434:  STRB.W          R0, [SP,#0x30+var_20]
153438:  CBZ             R4, loc_153454
15343A:  VMOV            S4, R4
15343E:  VCVT.F32.U32    S4, S4
153442:  VMUL.F32        S4, S0, S4
153446:  VCMP.F32        S4, S2
15344A:  VMRS            APSR_nzcv, FPSCR
15344E:  BMI             loc_153454
153450:  MOV             R6, R9
153452:  B               loc_1534AA
153454:  LSLS            R5, R4, #1
153456:  CMP             R4, #3
153458:  BCC             loc_153464
15345A:  SUBS            R0, R4, #1
15345C:  ANDS            R4, R0
15345E:  IT NE
153460:  MOVNE           R4, #1
153462:  B               loc_153466
153464:  MOVS            R4, #1
153466:  VDIV.F32        S0, S2, S0
15346A:  VMOV            R0, S0; x
15346E:  BLX             ceilf
153472:  VMOV            S0, R0
153476:  ORR.W           R1, R4, R5
15347A:  VCVT.U32.F32    S0, S0
15347E:  VMOV            R0, S0
153482:  CMP             R1, R0
153484:  IT CC
153486:  MOVCC           R1, R0; this
153488:  MOV             R0, R11; int
15348A:  BL              sub_15352E
15348E:  LDR.W           R4, [R11,#4]
153492:  SUBS            R0, R4, #1
153494:  TST             R4, R0
153496:  BNE             loc_15349C
153498:  ANDS            R6, R0
15349A:  B               loc_1534AA
15349C:  CMP             R4, R6
15349E:  BHI             loc_1534AA
1534A0:  MOV             R0, R6
1534A2:  MOV             R1, R4
1534A4:  BLX             sub_221798
1534A8:  MOV             R6, R1
1534AA:  LDR.W           R0, [R11]
1534AE:  LDR.W           R0, [R0,R6,LSL#2]
1534B2:  CBZ             R0, loc_1534C2
1534B4:  LDR             R1, [SP,#0x30+var_28]
1534B6:  LDR             R2, [R0]
1534B8:  LDR             R6, [SP,#0x30+var_2C]
1534BA:  STR             R2, [R1]
1534BC:  LDR             R1, [SP,#0x30+var_28]
1534BE:  STR             R1, [R0]
1534C0:  B               loc_153500
1534C2:  LDR             R0, [SP,#0x30+var_28]
1534C4:  LDR.W           R1, [R11,#8]
1534C8:  STR             R1, [R0]
1534CA:  LDR.W           R0, [R11]
1534CE:  LDR             R1, [SP,#0x30+var_28]
1534D0:  STR.W           R1, [R11,#8]
1534D4:  STR.W           R10, [R0,R6,LSL#2]
1534D8:  LDR             R5, [SP,#0x30+var_28]
1534DA:  LDR             R6, [SP,#0x30+var_2C]
1534DC:  LDR             R0, [R5]
1534DE:  CBZ             R0, loc_153500
1534E0:  LDR             R0, [R0,#4]
1534E2:  SUBS            R1, R4, #1
1534E4:  TST             R4, R1
1534E6:  BNE             loc_1534EC
1534E8:  ANDS            R0, R1
1534EA:  B               loc_1534F8
1534EC:  CMP             R0, R4
1534EE:  BCC             loc_1534F8
1534F0:  MOV             R1, R4
1534F2:  BLX             sub_221798
1534F6:  MOV             R0, R1
1534F8:  LDR.W           R1, [R11]
1534FC:  STR.W           R5, [R1,R0,LSL#2]
153500:  LDR.W           R0, [R11,#0xC]
153504:  LDR             R5, [SP,#0x30+var_28]
153506:  ADDS            R0, #1
153508:  STR.W           R0, [R11,#0xC]
15350C:  MOVS            R0, #1
15350E:  STRB            R0, [R6,#4]
153510:  STR             R5, [R6]
153512:  ADD             SP, SP, #0x14
153514:  POP.W           {R8-R11}
153518:  POP             {R4-R7,PC}
