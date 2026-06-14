; =========================================================
; Game Engine Function: sub_10C50A
; Address            : 0x10C50A - 0x10C6CE
; =========================================================

10C50A:  PUSH            {R4-R7,LR}
10C50C:  ADD             R7, SP, #0xC
10C50E:  PUSH.W          {R8-R11}
10C512:  SUB             SP, SP, #0xC
10C514:  LDR.W           R9, [R1,#4]
10C518:  MOV             R5, R3
10C51A:  LDRH            R4, [R2]
10C51C:  MOV             R10, R1
10C51E:  CMP.W           R9, #0
10C522:  STR             R0, [SP,#0x28+var_20]
10C524:  BEQ             loc_10C560
10C526:  MOV.W           R0, #0x55555555
10C52A:  MOV.W           R1, #0x33333333
10C52E:  AND.W           R0, R0, R9,LSR#1
10C532:  STR             R5, [SP,#0x28+var_24]
10C534:  SUB.W           R0, R9, R0
10C538:  AND.W           R1, R1, R0,LSR#2
10C53C:  BIC.W           R0, R0, #0xCCCCCCCC
10C540:  ADD             R0, R1
10C542:  MOV.W           R1, #0x1010101
10C546:  ADD.W           R0, R0, R0,LSR#4
10C54A:  BIC.W           R0, R0, #0xF0F0F0F0
10C54E:  MULS            R0, R1
10C550:  LSRS            R5, R0, #0x18
10C552:  CMP             R5, #1
10C554:  BHI             loc_10C562
10C556:  SUB.W           R0, R9, #1
10C55A:  AND.W           R8, R0, R4
10C55E:  B               loc_10C572
10C560:  B               loc_10C5B8
10C562:  CMP             R9, R4
10C564:  MOV             R8, R4
10C566:  BHI             loc_10C572
10C568:  MOV             R0, R4
10C56A:  MOV             R1, R9
10C56C:  BLX             sub_221798
10C570:  MOV             R8, R1
10C572:  LDR.W           R0, [R10]
10C576:  LDR.W           R6, [R0,R8,LSL#2]
10C57A:  CBZ             R6, loc_10C5B6
10C57C:  SUB.W           R1, R9, #1
10C580:  LDR             R6, [R6]
10C582:  CBZ             R6, loc_10C5B6
10C584:  LDR             R0, [R6,#4]
10C586:  CMP             R0, R4
10C588:  BEQ             loc_10C5AA
10C58A:  CMP             R5, #1
10C58C:  BHI             loc_10C592
10C58E:  ANDS            R0, R1
10C590:  B               loc_10C5A6
10C592:  CMP             R0, R9
10C594:  BCC             loc_10C5A6
10C596:  MOV             R11, R10
10C598:  MOV             R10, R1
10C59A:  MOV             R1, R9
10C59C:  BLX             sub_221798
10C5A0:  MOV             R0, R1
10C5A2:  MOV             R1, R10
10C5A4:  MOV             R10, R11
10C5A6:  CMP             R0, R8
10C5A8:  BNE             loc_10C5B6
10C5AA:  LDRH            R0, [R6,#8]
10C5AC:  CMP             R0, R4
10C5AE:  BNE             loc_10C580
10C5B0:  MOVS            R0, #0
10C5B2:  LDR             R4, [SP,#0x28+var_20]
10C5B4:  B               loc_10C6C2
10C5B6:  LDR             R5, [SP,#0x28+var_24]
10C5B8:  MOVS            R0, #0x14; unsigned int
10C5BA:  BLX             j__Znwj; operator new(uint)
10C5BE:  LDR.W           R2, [R10,#0xC]
10C5C2:  MOV             R6, R0
10C5C4:  VLDR            S0, [R10,#0x10]
10C5C8:  CMP.W           R9, #0
10C5CC:  ADD.W           R2, R2, #1
10C5D0:  LDRD.W          R0, R1, [R5,#4]
10C5D4:  LDRH            R3, [R5]
10C5D6:  VMOV            S2, R2
10C5DA:  MOV.W           R2, #0
10C5DE:  STRD.W          R2, R4, [R6]
10C5E2:  VCVT.F32.U32    S2, S2
10C5E6:  STRD.W          R0, R1, [R6,#0xC]
10C5EA:  STRH            R3, [R6,#8]
10C5EC:  BEQ             loc_10C608
10C5EE:  VMOV            S4, R9
10C5F2:  VCVT.F32.U32    S4, S4
10C5F6:  VMUL.F32        S4, S0, S4
10C5FA:  VCMP.F32        S4, S2
10C5FE:  VMRS            APSR_nzcv, FPSCR
10C602:  BMI             loc_10C608
10C604:  MOV             R4, R8
10C606:  B               loc_10C66A
10C608:  MOV.W           R8, R9,LSL#1
10C60C:  CMP.W           R9, #3
10C610:  BCC             loc_10C620
10C612:  SUB.W           R0, R9, #1
10C616:  ANDS.W          R5, R9, R0
10C61A:  IT NE
10C61C:  MOVNE           R5, #1
10C61E:  B               loc_10C622
10C620:  MOVS            R5, #1
10C622:  VDIV.F32        S0, S2, S0
10C626:  VMOV            R0, S0; x
10C62A:  BLX             ceilf
10C62E:  VMOV            S0, R0
10C632:  ORR.W           R1, R5, R8
10C636:  VCVT.U32.F32    S0, S0
10C63A:  VMOV            R0, S0
10C63E:  CMP             R1, R0
10C640:  IT CC
10C642:  MOVCC           R1, R0; this
10C644:  MOV             R0, R10; int
10C646:  BL              sub_10C272
10C64A:  LDR.W           R9, [R10,#4]
10C64E:  SUB.W           R0, R9, #1
10C652:  TST.W           R9, R0
10C656:  BNE             loc_10C65C
10C658:  ANDS            R4, R0
10C65A:  B               loc_10C66A
10C65C:  CMP             R9, R4
10C65E:  BHI             loc_10C66A
10C660:  MOV             R0, R4
10C662:  MOV             R1, R9
10C664:  BLX             sub_221798
10C668:  MOV             R4, R1
10C66A:  LDR.W           R0, [R10]
10C66E:  LDR.W           R1, [R0,R4,LSL#2]
10C672:  CBZ             R1, loc_10C67E
10C674:  LDR             R4, [SP,#0x28+var_20]
10C676:  LDR             R0, [R1]
10C678:  STR             R0, [R6]
10C67A:  STR             R6, [R1]
10C67C:  B               loc_10C6B6
10C67E:  MOV             R1, R10
10C680:  LDR.W           R2, [R1,#8]!
10C684:  STR             R2, [R6]
10C686:  STR             R6, [R1]
10C688:  STR.W           R1, [R0,R4,LSL#2]
10C68C:  LDR             R0, [R6]
10C68E:  LDR             R4, [SP,#0x28+var_20]
10C690:  CBZ             R0, loc_10C6B6
10C692:  LDR             R0, [R0,#4]
10C694:  SUB.W           R1, R9, #1
10C698:  TST.W           R9, R1
10C69C:  BNE             loc_10C6A2
10C69E:  ANDS            R0, R1
10C6A0:  B               loc_10C6AE
10C6A2:  CMP             R0, R9
10C6A4:  BCC             loc_10C6AE
10C6A6:  MOV             R1, R9
10C6A8:  BLX             sub_221798
10C6AC:  MOV             R0, R1
10C6AE:  LDR.W           R1, [R10]
10C6B2:  STR.W           R6, [R1,R0,LSL#2]
10C6B6:  LDR.W           R0, [R10,#0xC]
10C6BA:  ADDS            R0, #1
10C6BC:  STR.W           R0, [R10,#0xC]
10C6C0:  MOVS            R0, #1
10C6C2:  STRB            R0, [R4,#4]
10C6C4:  STR             R6, [R4]
10C6C6:  ADD             SP, SP, #0xC
10C6C8:  POP.W           {R8-R11}
10C6CC:  POP             {R4-R7,PC}
