; =========================================================
; Game Engine Function: sub_1596B2
; Address            : 0x1596B2 - 0x159876
; =========================================================

1596B2:  PUSH            {R4-R7,LR}
1596B4:  ADD             R7, SP, #0xC
1596B6:  PUSH.W          {R8-R11}
1596BA:  SUB             SP, SP, #0xC
1596BC:  LDR.W           R10, [R1,#4]
1596C0:  MOV             R5, R3
1596C2:  LDR             R4, [R2]
1596C4:  MOV             R9, R1
1596C6:  MOV             R8, R0
1596C8:  CMP.W           R10, #0
1596CC:  BEQ             loc_15970E
1596CE:  MOV.W           R0, #0x55555555
1596D2:  MOV.W           R1, #0x33333333
1596D6:  AND.W           R0, R0, R10,LSR#1
1596DA:  STRD.W          R5, R8, [SP,#0x28+var_24]
1596DE:  SUB.W           R0, R10, R0
1596E2:  AND.W           R1, R1, R0,LSR#2
1596E6:  BIC.W           R0, R0, #0xCCCCCCCC
1596EA:  ADD             R0, R1
1596EC:  MOV.W           R1, #0x1010101
1596F0:  ADD.W           R0, R0, R0,LSR#4
1596F4:  BIC.W           R0, R0, #0xF0F0F0F0
1596F8:  MULS            R0, R1
1596FA:  MOV.W           R8, R0,LSR#24
1596FE:  CMP.W           R8, #1
159702:  BHI             loc_159710
159704:  SUB.W           R0, R10, #1
159708:  AND.W           R11, R0, R4
15970C:  B               loc_159720
15970E:  B               loc_159764
159710:  CMP             R4, R10
159712:  MOV             R11, R4
159714:  BCC             loc_159720
159716:  MOV             R0, R4
159718:  MOV             R1, R10
15971A:  BLX             sub_221798
15971E:  MOV             R11, R1
159720:  LDR.W           R0, [R9]
159724:  LDR.W           R6, [R0,R11,LSL#2]
159728:  CBZ             R6, loc_159760
15972A:  SUB.W           R5, R10, #1
15972E:  LDR             R6, [R6]
159730:  CBZ             R6, loc_159760
159732:  LDR             R0, [R6,#4]
159734:  CMP             R0, R4
159736:  BEQ             loc_159752
159738:  CMP.W           R8, #1
15973C:  BHI             loc_159742
15973E:  ANDS            R0, R5
159740:  B               loc_15974E
159742:  CMP             R0, R10
159744:  BCC             loc_15974E
159746:  MOV             R1, R10
159748:  BLX             sub_221798
15974C:  MOV             R0, R1
15974E:  CMP             R0, R11
159750:  BNE             loc_159760
159752:  LDR             R0, [R6,#8]
159754:  CMP             R0, R4
159756:  BNE             loc_15972E
159758:  MOVS            R0, #0
15975A:  LDR.W           R8, [SP,#0x28+var_20]
15975E:  B               loc_159866
159760:  LDRD.W          R5, R8, [SP,#0x28+var_24]
159764:  MOVS            R0, #0x10; unsigned int
159766:  BLX             j__Znwj; operator new(uint)
15976A:  MOV             R6, R0
15976C:  LDR.W           R0, [R9,#0xC]
159770:  VLDR            S0, [R9,#0x10]
159774:  MOVS            R2, #0
159776:  ADDS            R0, #1
159778:  CMP.W           R10, #0
15977C:  STRD.W          R2, R4, [R6]
159780:  VMOV            S2, R0
159784:  LDRD.W          R0, R1, [R5]
159788:  STRD.W          R0, R1, [R6,#8]
15978C:  VCVT.F32.U32    S2, S2
159790:  BEQ             loc_1597AC
159792:  VMOV            S4, R10
159796:  VCVT.F32.U32    S4, S4
15979A:  VMUL.F32        S4, S0, S4
15979E:  VCMP.F32        S4, S2
1597A2:  VMRS            APSR_nzcv, FPSCR
1597A6:  BMI             loc_1597AC
1597A8:  MOV             R4, R11
1597AA:  B               loc_159812
1597AC:  MOV             R11, R8
1597AE:  MOV.W           R8, R10,LSL#1
1597B2:  CMP.W           R10, #3
1597B6:  BCC             loc_1597C6
1597B8:  SUB.W           R0, R10, #1
1597BC:  ANDS.W          R5, R10, R0
1597C0:  IT NE
1597C2:  MOVNE           R5, #1
1597C4:  B               loc_1597C8
1597C6:  MOVS            R5, #1
1597C8:  VDIV.F32        S0, S2, S0
1597CC:  VMOV            R0, S0; x
1597D0:  BLX             ceilf
1597D4:  VMOV            S0, R0
1597D8:  ORR.W           R1, R5, R8
1597DC:  VCVT.U32.F32    S0, S0
1597E0:  VMOV            R0, S0
1597E4:  CMP             R1, R0
1597E6:  IT CC
1597E8:  MOVCC           R1, R0; this
1597EA:  MOV             R0, R9; int
1597EC:  BL              sub_159880
1597F0:  LDR.W           R10, [R9,#4]
1597F4:  MOV             R8, R11
1597F6:  SUB.W           R0, R10, #1
1597FA:  TST.W           R10, R0
1597FE:  BNE             loc_159804
159800:  ANDS            R4, R0
159802:  B               loc_159812
159804:  CMP             R4, R10
159806:  BCC             loc_159812
159808:  MOV             R0, R4
15980A:  MOV             R1, R10
15980C:  BLX             sub_221798
159810:  MOV             R4, R1
159812:  LDR.W           R0, [R9]
159816:  LDR.W           R1, [R0,R4,LSL#2]
15981A:  CBZ             R1, loc_159824
15981C:  LDR             R0, [R1]
15981E:  STR             R0, [R6]
159820:  STR             R6, [R1]
159822:  B               loc_15985A
159824:  MOV             R1, R9
159826:  LDR.W           R2, [R1,#8]!
15982A:  STR             R2, [R6]
15982C:  STR             R6, [R1]
15982E:  STR.W           R1, [R0,R4,LSL#2]
159832:  LDR             R0, [R6]
159834:  CBZ             R0, loc_15985A
159836:  LDR             R0, [R0,#4]
159838:  SUB.W           R1, R10, #1
15983C:  TST.W           R10, R1
159840:  BNE             loc_159846
159842:  ANDS            R0, R1
159844:  B               loc_159852
159846:  CMP             R0, R10
159848:  BCC             loc_159852
15984A:  MOV             R1, R10
15984C:  BLX             sub_221798
159850:  MOV             R0, R1
159852:  LDR.W           R1, [R9]
159856:  STR.W           R6, [R1,R0,LSL#2]
15985A:  LDR.W           R0, [R9,#0xC]
15985E:  ADDS            R0, #1
159860:  STR.W           R0, [R9,#0xC]
159864:  MOVS            R0, #1
159866:  STRB.W          R0, [R8,#4]
15986A:  STR.W           R6, [R8]
15986E:  ADD             SP, SP, #0xC
159870:  POP.W           {R8-R11}
159874:  POP             {R4-R7,PC}
