; =========================================================
; Game Engine Function: sub_13B500
; Address            : 0x13B500 - 0x13B6D2
; =========================================================

13B500:  PUSH            {R4-R7,LR}
13B502:  ADD             R7, SP, #0xC
13B504:  PUSH.W          {R8-R11}
13B508:  SUB             SP, SP, #0x24
13B50A:  LDR             R4, [R1,#4]
13B50C:  MOV             R10, R1
13B50E:  LDRSH.W         R11, [R2]
13B512:  MOV             R9, R0
13B514:  CBZ             R4, loc_13B54C
13B516:  MOV.W           R0, #0x55555555
13B51A:  MOV.W           R1, #0x33333333
13B51E:  AND.W           R0, R0, R4,LSR#1
13B522:  STR             R3, [SP,#0x40+var_2C]
13B524:  SUBS            R0, R4, R0
13B526:  AND.W           R1, R1, R0,LSR#2
13B52A:  BIC.W           R0, R0, #0xCCCCCCCC
13B52E:  ADD             R0, R1
13B530:  MOV.W           R1, #0x1010101
13B534:  ADD.W           R0, R0, R0,LSR#4
13B538:  BIC.W           R0, R0, #0xF0F0F0F0
13B53C:  MULS            R0, R1
13B53E:  LSRS            R5, R0, #0x18
13B540:  CMP             R5, #1
13B542:  BHI             loc_13B54E
13B544:  SUBS            R0, R4, #1
13B546:  AND.W           R6, R0, R11
13B54A:  B               loc_13B55E
13B54C:  B               loc_13B5C2
13B54E:  CMP             R4, R11
13B550:  MOV             R6, R11
13B552:  BHI             loc_13B55E
13B554:  MOV             R0, R11
13B556:  MOV             R1, R4
13B558:  BLX             sub_221798
13B55C:  MOV             R6, R1
13B55E:  LDR.W           R0, [R10]
13B562:  LDR.W           R8, [R0,R6,LSL#2]
13B566:  CMP.W           R8, #0
13B56A:  BEQ             loc_13B5C0
13B56C:  SUBS            R1, R4, #1
13B56E:  STR.W           R9, [SP,#0x40+var_34]
13B572:  UXTH.W          R9, R11
13B576:  STR             R6, [SP,#0x40+var_30]
13B578:  LDR.W           R8, [R8]
13B57C:  CMP.W           R8, #0
13B580:  BEQ             loc_13B5BC
13B582:  LDR.W           R0, [R8,#4]
13B586:  CMP             R0, R11
13B588:  BEQ             loc_13B5AC
13B58A:  CMP             R5, #1
13B58C:  BHI             loc_13B592
13B58E:  ANDS            R0, R1
13B590:  B               loc_13B5A8
13B592:  CMP             R0, R4
13B594:  BCC             loc_13B5A8
13B596:  MOV             R6, R10
13B598:  MOV             R10, R1
13B59A:  MOV             R1, R4
13B59C:  BLX             sub_221798
13B5A0:  MOV             R0, R1
13B5A2:  MOV             R1, R10
13B5A4:  MOV             R10, R6
13B5A6:  LDR             R6, [SP,#0x40+var_30]
13B5A8:  CMP             R0, R6
13B5AA:  BNE             loc_13B5BC
13B5AC:  LDRH.W          R0, [R8,#8]
13B5B0:  CMP             R0, R9
13B5B2:  BNE             loc_13B578
13B5B4:  MOVS            R0, #0
13B5B6:  LDR.W           R9, [SP,#0x40+var_34]
13B5BA:  B               loc_13B6C2
13B5BC:  LDR.W           R9, [SP,#0x40+var_34]
13B5C0:  LDR             R3, [SP,#0x40+var_2C]
13B5C2:  ADD.W           R8, SP, #0x40+var_28
13B5C6:  LDRD.W          R1, R0, [R7,#arg_0]
13B5CA:  STRD.W          R1, R0, [SP,#0x40+var_40]
13B5CE:  MOV             R1, R10
13B5D0:  MOV             R0, R8
13B5D2:  MOV             R2, R11
13B5D4:  BL              sub_13B6E8
13B5D8:  LDR.W           R0, [R10,#0xC]
13B5DC:  VLDR            S0, [R10,#0x10]
13B5E0:  ADD.W           R0, R0, #1
13B5E4:  VMOV            S2, R0
13B5E8:  VCVT.F32.U32    S2, S2
13B5EC:  CBZ             R4, loc_13B608
13B5EE:  VMOV            S4, R4
13B5F2:  VCVT.F32.U32    S4, S4
13B5F6:  VMUL.F32        S4, S0, S4
13B5FA:  VCMP.F32        S4, S2
13B5FE:  VMRS            APSR_nzcv, FPSCR
13B602:  BMI             loc_13B608
13B604:  MOV             R11, R6
13B606:  B               loc_13B660
13B608:  LSLS            R6, R4, #1
13B60A:  CMP             R4, #3
13B60C:  BCC             loc_13B618
13B60E:  SUBS            R0, R4, #1
13B610:  ANDS            R4, R0
13B612:  IT NE
13B614:  MOVNE           R4, #1
13B616:  B               loc_13B61A
13B618:  MOVS            R4, #1
13B61A:  VDIV.F32        S0, S2, S0
13B61E:  VMOV            R0, S0; x
13B622:  BLX             ceilf
13B626:  VMOV            S0, R0
13B62A:  ORR.W           R1, R4, R6
13B62E:  VCVT.U32.F32    S0, S0
13B632:  VMOV            R0, S0
13B636:  CMP             R1, R0
13B638:  IT CC
13B63A:  MOVCC           R1, R0; this
13B63C:  MOV             R0, R10; int
13B63E:  BL              sub_13B260
13B642:  LDR.W           R4, [R10,#4]
13B646:  SUBS            R0, R4, #1
13B648:  TST             R4, R0
13B64A:  BNE             loc_13B652
13B64C:  AND.W           R11, R11, R0
13B650:  B               loc_13B660
13B652:  CMP             R4, R11
13B654:  BHI             loc_13B660
13B656:  MOV             R0, R11
13B658:  MOV             R1, R4
13B65A:  BLX             sub_221798
13B65E:  MOV             R11, R1
13B660:  LDR.W           R0, [R10]
13B664:  LDR.W           R0, [R0,R11,LSL#2]
13B668:  CBZ             R0, loc_13B676
13B66A:  LDR             R1, [SP,#0x40+var_28]
13B66C:  LDR             R2, [R0]
13B66E:  STR             R2, [R1]
13B670:  LDR             R1, [SP,#0x40+var_28]
13B672:  STR             R1, [R0]
13B674:  B               loc_13B6B2
13B676:  LDR             R0, [SP,#0x40+var_28]
13B678:  MOV             R1, R10
13B67A:  LDR.W           R2, [R1,#8]!
13B67E:  STR             R2, [R0]
13B680:  LDR.W           R0, [R10]
13B684:  LDR             R2, [SP,#0x40+var_28]
13B686:  STR             R2, [R1]
13B688:  STR.W           R1, [R0,R11,LSL#2]
13B68C:  LDR             R5, [SP,#0x40+var_28]
13B68E:  LDR             R0, [R5]
13B690:  CBZ             R0, loc_13B6B2
13B692:  LDR             R0, [R0,#4]
13B694:  SUBS            R1, R4, #1
13B696:  TST             R4, R1
13B698:  BNE             loc_13B69E
13B69A:  ANDS            R0, R1
13B69C:  B               loc_13B6AA
13B69E:  CMP             R0, R4
13B6A0:  BCC             loc_13B6AA
13B6A2:  MOV             R1, R4
13B6A4:  BLX             sub_221798
13B6A8:  MOV             R0, R1
13B6AA:  LDR.W           R1, [R10]
13B6AE:  STR.W           R5, [R1,R0,LSL#2]
13B6B2:  LDR.W           R0, [R10,#0xC]
13B6B6:  LDR.W           R8, [SP,#0x40+var_28]
13B6BA:  ADDS            R0, #1
13B6BC:  STR.W           R0, [R10,#0xC]
13B6C0:  MOVS            R0, #1
13B6C2:  STRB.W          R0, [R9,#4]
13B6C6:  STR.W           R8, [R9]
13B6CA:  ADD             SP, SP, #0x24 ; '$'
13B6CC:  POP.W           {R8-R11}
13B6D0:  POP             {R4-R7,PC}
