; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute14CalcBlendRatioEP4CPedb
; Address            : 0x520634 - 0x5207B4
; =========================================================

520634:  PUSH            {R4-R7,LR}
520636:  ADD             R7, SP, #0xC
520638:  PUSH.W          {R11}
52063C:  VPUSH           {D8-D9}
520640:  MOV             R6, R2
520642:  MOV             R4, R0
520644:  CMP             R6, #1
520646:  BNE             loc_52069A
520648:  LDR             R2, [R4,#0x38]
52064A:  LDR             R0, [R1,#0x14]
52064C:  LDR             R3, [R4,#0x30]
52064E:  ADD.W           R5, R0, #0x30 ; '0'
520652:  CMP             R0, #0
520654:  ADD.W           R0, R2, R2,LSL#1
520658:  IT EQ
52065A:  ADDEQ           R5, R1, #4
52065C:  VLDR            S0, [R5]
520660:  ADD.W           R0, R3, R0,LSL#2
520664:  VLDR            S2, [R5,#4]
520668:  VLDR            S4, [R5,#8]
52066C:  VLDR            S6, [R0,#4]
520670:  VLDR            S8, [R0,#8]
520674:  VSUB.F32        S0, S6, S0
520678:  VLDR            S10, [R0,#0xC]
52067C:  VSUB.F32        S2, S8, S2
520680:  VSUB.F32        S4, S10, S4
520684:  VMUL.F32        S0, S0, S0
520688:  VMUL.F32        S2, S2, S2
52068C:  VMUL.F32        S4, S4, S4
520690:  VADD.F32        S2, S0, S2
520694:  VLDR            S0, [R4,#0x50]
520698:  B               loc_52070E
52069A:  LDR             R3, [R4,#0x30]
52069C:  LDR             R2, [R1,#0x14]
52069E:  LDR             R5, [R3]
5206A0:  ADD.W           R0, R2, #0x30 ; '0'
5206A4:  CMP             R2, #0
5206A6:  IT EQ
5206A8:  ADDEQ           R0, R1, #4
5206AA:  CMP             R5, #1
5206AC:  BNE             loc_5206BA
5206AE:  ADD.W           R1, R3, #0xC
5206B2:  ADD.W           R2, R3, #8
5206B6:  ADDS            R3, #4
5206B8:  B               loc_5206D6
5206BA:  LDR             R1, [R4,#0x38]
5206BC:  CBZ             R1, loc_5206CE
5206BE:  ADD.W           R1, R1, R1,LSL#1
5206C2:  ADD.W           R1, R3, R1,LSL#2
5206C6:  SUBS            R2, R1, #4
5206C8:  SUB.W           R3, R1, #8
5206CC:  B               loc_5206D6
5206CE:  ADD.W           R1, R0, #8
5206D2:  ADDS            R2, R0, #4
5206D4:  MOV             R3, R0
5206D6:  VLDR            S0, [R0]
5206DA:  VLDR            S8, [R3]
5206DE:  VLDR            S2, [R0,#4]
5206E2:  VLDR            S6, [R2]
5206E6:  VSUB.F32        S0, S0, S8
5206EA:  VLDR            S4, [R0,#8]
5206EE:  VSUB.F32        S2, S2, S6
5206F2:  VLDR            S6, [R1]
5206F6:  VSUB.F32        S4, S4, S6
5206FA:  VMUL.F32        S0, S0, S0
5206FE:  VMUL.F32        S2, S2, S2
520702:  VMUL.F32        S4, S4, S4
520706:  VADD.F32        S2, S0, S2
52070A:  VLDR            S0, [R4,#0x54]
52070E:  VMUL.F32        S0, S0, S0
520712:  VADD.F32        S2, S2, S4
520716:  VCMPE.F32       S2, S0
52071A:  VMRS            APSR_nzcv, FPSCR
52071E:  BGE             loc_520734
520720:  VDIV.F32        S0, S2, S0
520724:  VCMPE.F32       S0, #0.0
520728:  VMRS            APSR_nzcv, FPSCR
52072C:  BGE             loc_52073A
52072E:  VLDR            S0, =0.0
520732:  B               loc_52074C
520734:  VMOV.F32        S0, #-1.0
520738:  B               loc_5207A6
52073A:  VMOV.F32        S2, #1.0
52073E:  VCMPE.F32       S0, S2
520742:  VMRS            APSR_nzcv, FPSCR
520746:  IT GT
520748:  VMOVGT.F32      S0, S2
52074C:  VLDR            S2, =3.1416
520750:  VMUL.F32        S0, S0, S2
520754:  VMOV            R0, S0; x
520758:  BLX             cosf
52075C:  VMOV.F32        S0, #0.5
520760:  CMP             R6, #0
520762:  VMOV            S2, R0
520766:  ADD.W           R0, R4, #0x5C ; '\'
52076A:  IT NE
52076C:  ADDNE.W         R0, R4, #0x58 ; 'X'
520770:  VMOV.F32        S16, #0.75
520774:  VMUL.F32        S2, S2, S0
520778:  VADD.F32        S0, S2, S0
52077C:  VLDR            S2, [R0]
520780:  LDR             R0, [R4,#0x18]
520782:  VMUL.F32        S18, S2, S0
520786:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
52078A:  MOV             R4, R0
52078C:  MOVS            R0, #4
52078E:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
520792:  VMOV            S0, R0
520796:  VMOV            S2, R4
52079A:  VADD.F32        S0, S0, S16
52079E:  VSUB.F32        S2, S2, S18
5207A2:  VMAX.F32        D0, D0, D1
5207A6:  VMOV            R0, S0
5207AA:  VPOP            {D8-D9}
5207AE:  POP.W           {R11}
5207B2:  POP             {R4-R7,PC}
