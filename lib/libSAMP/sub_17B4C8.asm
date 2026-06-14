; =========================================================
; Game Engine Function: sub_17B4C8
; Address            : 0x17B4C8 - 0x17B904
; =========================================================

17B4C8:  PUSH            {R4-R7,LR}
17B4CA:  ADD             R7, SP, #0xC
17B4CC:  PUSH.W          {R8-R11}
17B4D0:  SUB             SP, SP, #4
17B4D2:  VPUSH           {D8-D15}
17B4D6:  SUB             SP, SP, #0x38
17B4D8:  MOV             R5, R0
17B4DA:  LDR             R0, =(off_234E80 - 0x17B4E0)
17B4DC:  ADD             R0, PC; off_234E80
17B4DE:  LDR             R0, [R0]; dword_381B58
17B4E0:  LDR.W           R11, [R0]
17B4E4:  MOVW            R0, #0x19AC
17B4E8:  LDR.W           R6, [R11,R0]
17B4EC:  LDRB.W          R0, [R6,#0x7F]
17B4F0:  CBZ             R0, loc_17B4F6
17B4F2:  MOVS            R0, #0
17B4F4:  B               loc_17B8F6
17B4F6:  VLDR            S0, [R5]
17B4FA:  MOVS            R0, #0
17B4FC:  VLDR            S2, [R5,#8]
17B500:  VSUB.F32        S0, S2, S0
17B504:  VCMP.F32        S0, #0.0
17B508:  VMRS            APSR_nzcv, FPSCR
17B50C:  ITTTT HI
17B50E:  VLDRHI          S2, [R5,#4]
17B512:  VLDRHI          S4, [R5,#0xC]
17B516:  VSUBHI.F32      S2, S4, S2
17B51A:  VCMPHI.F32      S2, #0.0
17B51E:  IT HI
17B520:  VMRSHI          APSR_nzcv, FPSCR
17B524:  BLS.W           loc_17B8F6
17B528:  VMOV.F32        S28, #1.0
17B52C:  MOV             R9, R2
17B52E:  MOVW            R0, #0x1554
17B532:  ADD.W           R2, R11, R0
17B536:  MOV             R8, R3
17B538:  MOV             R10, R1
17B53A:  CMP.W           R9, #1
17B53E:  VMOV.F32        S16, S28
17B542:  BNE             loc_17B596
17B544:  VLDR            S6, [R2]
17B548:  VMOV.F32        S16, S28
17B54C:  VLDR            S4, [R2,#0x374]
17B550:  VADD.F32        S6, S6, S6
17B554:  VADD.F32        S8, S6, S4
17B558:  VCMP.F32        S2, S8
17B55C:  VMRS            APSR_nzcv, FPSCR
17B560:  BPL             loc_17B596
17B562:  VSUB.F32        S4, S2, S4
17B566:  MOVS            R0, #0
17B568:  VDIV.F32        S16, S4, S6
17B56C:  VMOV.F32        S4, #1.0
17B570:  VCMP.F32        S16, S4
17B574:  VMRS            APSR_nzcv, FPSCR
17B578:  VCMP.F32        S16, #0.0
17B57C:  IT GT
17B57E:  VMOVGT.F32      S16, S4
17B582:  VMRS            APSR_nzcv, FPSCR
17B586:  BMI.W           loc_17B8F6
17B58A:  VCMP.F32        S16, #0.0
17B58E:  VMRS            APSR_nzcv, FPSCR
17B592:  BLS.W           loc_17B8F6
17B596:  VMOV.F32        S4, #-2.0
17B59A:  ADD             R4, SP, #0x98+var_70
17B59C:  VMOV.F32        S18, #0.5
17B5A0:  VLDR            S22, =0.0
17B5A4:  SUB.W           R3, R7, #-var_71
17B5A8:  VLDR            S24, [R7,#arg_4]
17B5AC:  VLDR            S20, [R7,#arg_0]
17B5B0:  VADD.F32        S2, S2, S4
17B5B4:  VADD.F32        S0, S0, S4
17B5B8:  VMOV.F32        S4, #3.0
17B5BC:  VMUL.F32        S2, S2, S18
17B5C0:  VMUL.F32        S0, S0, S18
17B5C4:  VCVT.S32.F32    S2, S2
17B5C8:  VCVT.S32.F32    S0, S0
17B5CC:  VMOV            R0, S2
17B5D0:  VMOV            R1, S0
17B5D4:  VCVT.F32.S32    S2, S2
17B5D8:  VCVT.F32.S32    S0, S0
17B5DC:  VCMP.F32        S2, S4
17B5E0:  VMRS            APSR_nzcv, FPSCR
17B5E4:  VCMP.F32        S0, S4
17B5E8:  IT GT
17B5EA:  VMOVGT.F32      S2, S4
17B5EE:  VMRS            APSR_nzcv, FPSCR
17B5F2:  IT GT
17B5F4:  VMOVGT.F32      S0, S4
17B5F8:  CMP             R0, #0
17B5FA:  IT MI
17B5FC:  VMOVMI.F32      S2, S22
17B600:  VLD1.32         {D16-D17}, [R5]
17B604:  CMP             R1, #0
17B606:  MOV.W           R0, #4
17B60A:  MOV             R1, R4
17B60C:  IT MI
17B60E:  VMOVMI.F32      S0, S22
17B612:  VST1.64         {D16-D17}, [R1],R0
17B616:  MOVS            R0, #0
17B618:  VLDR            S4, [R1]
17B61C:  VLDR            S6, [SP,#0x98+var_70]
17B620:  VLDR            S8, [SP,#0x98+var_68]
17B624:  VADD.F32        S30, S2, S4
17B628:  VLDR            S10, [SP,#0x98+var_64]
17B62C:  VADD.F32        S17, S0, S6
17B630:  VSUB.F32        S19, S8, S0
17B634:  VLDR            S23, [R2,#0x34]
17B638:  VSUB.F32        S21, S10, S2
17B63C:  STR             R2, [SP,#0x98+var_88]
17B63E:  STRB.W          R0, [R7,#var_71]
17B642:  SUB.W           R2, R7, #-var_72
17B646:  STRB.W          R0, [R7,#var_72]
17B64A:  MOV.W           R0, #0x2000
17B64E:  STR             R0, [SP,#0x98+var_98]
17B650:  MOV             R0, R4
17B652:  VSTR            S30, [R1]
17B656:  MOV             R1, R10
17B658:  VSTR            S17, [SP,#0x98+var_70]
17B65C:  VSTR            S19, [SP,#0x98+var_68]
17B660:  VSTR            S21, [SP,#0x98+var_64]
17B664:  BL              sub_17AD64
17B668:  VCMP.F32        S24, S20
17B66C:  VMOV.F32        S0, S20
17B670:  VMRS            APSR_nzcv, FPSCR
17B674:  IT GE
17B676:  VMOVGE.F32      S0, S24
17B67A:  VCMP.F32        S0, S28
17B67E:  VMOV.F32        S2, S28
17B682:  VMRS            APSR_nzcv, FPSCR
17B686:  IT GE
17B688:  VMOVGE.F32      S2, S0
17B68C:  VDIV.F32        S0, S20, S2
17B690:  VSUB.F32        S26, S24, S20
17B694:  VSUB.F32        S24, S21, S30
17B698:  VSUB.F32        S2, S19, S17
17B69C:  VCMP.F32        S26, S28
17B6A0:  VMRS            APSR_nzcv, FPSCR
17B6A4:  IT LS
17B6A6:  VMOVLS.F32      S26, S28
17B6AA:  VLDR            S4, [R8]
17B6AE:  CMP.W           R9, #0
17B6B2:  IT EQ
17B6B4:  VMOVEQ.F32      S24, S2
17B6B8:  VMUL.F32        S20, S0, S24
17B6BC:  VDIV.F32        S2, S4, S26
17B6C0:  VCMP.F32        S20, S24
17B6C4:  VMRS            APSR_nzcv, FPSCR
17B6C8:  VCMP.F32        S20, S23
17B6CC:  IT GT
17B6CE:  VMOVGT.F32      S20, S24
17B6D2:  VMRS            APSR_nzcv, FPSCR
17B6D6:  IT MI
17B6D8:  VMOVMI.F32      S20, S23
17B6DC:  VSUB.F32        S30, S24, S20
17B6E0:  VCMP.F32        S2, S28
17B6E4:  VMRS            APSR_nzcv, FPSCR
17B6E8:  VCMP.F32        S2, #0.0
17B6EC:  IT GT
17B6EE:  VMOVGT.F32      S2, S28
17B6F2:  VMRS            APSR_nzcv, FPSCR
17B6F6:  IT MI
17B6F8:  VMOVMI.F32      S2, S22
17B6FC:  LDRB.W          R0, [R7,#var_71]
17B700:  CMP             R0, #0
17B702:  VMUL.F32        S0, S30, S2
17B706:  VDIV.F32        S28, S0, S24
17B70A:  BEQ             loc_17B7A8
17B70C:  VMOV.F32        S19, #1.0
17B710:  VCMP.F32        S16, S19
17B714:  VMRS            APSR_nzcv, FPSCR
17B718:  BLT             loc_17B7A8
17B71A:  VDIV.F32        S17, S20, S24
17B71E:  VCMP.F32        S17, S19
17B722:  VMRS            APSR_nzcv, FPSCR
17B726:  BPL             loc_17B7A8
17B728:  MOVW            R0, #0x2CCC
17B72C:  CMP.W           R9, #0
17B730:  ADD             R0, R11
17B732:  STR             R0, [SP,#0x98+var_8C]
17B734:  MOV.W           R0, #0xE4
17B738:  IT EQ
17B73A:  MOVEQ           R0, #0xE0
17B73C:  ADD             R0, R11
17B73E:  VLDR            S21, [R0]
17B742:  MOV             R0, R10
17B744:  IT NE
17B746:  ADDNE           R4, #4
17B748:  VLDR            S23, [R4]
17B74C:  BL              sub_167004
17B750:  VSUB.F32        S0, S21, S23
17B754:  VDIV.F32        S0, S0, S24
17B758:  VCMP.F32        S0, S19
17B75C:  VMRS            APSR_nzcv, FPSCR
17B760:  VCMP.F32        S0, #0.0
17B764:  IT GT
17B766:  VMOVGT.F32      S0, S19
17B76A:  VMRS            APSR_nzcv, FPSCR
17B76E:  IT MI
17B770:  VMOVMI.F32      S0, S22
17B774:  LDR             R0, [SP,#0x98+var_88]
17B776:  LDRB.W          R0, [R0,#0x488]
17B77A:  CBZ             R0, loc_17B7AE
17B77C:  LDR             R1, [SP,#0x98+var_8C]
17B77E:  VCMP.F32        S0, S28
17B782:  VMRS            APSR_nzcv, FPSCR
17B786:  BMI             loc_17B7B8
17B788:  VADD.F32        S2, S17, S28
17B78C:  VCMP.F32        S0, S2
17B790:  VMRS            APSR_nzcv, FPSCR
17B794:  BGT             loc_17B7B8
17B796:  VMOV.F32        S4, #-0.5
17B79A:  VSUB.F32        S2, S0, S28
17B79E:  VMLA.F32        S2, S17, S4
17B7A2:  VSTR            S2, [R1]
17B7A6:  B               loc_17B7B4
17B7A8:  LDR.W           R10, [R7,#arg_8]
17B7AC:  B               loc_17B840
17B7AE:  LDR             R1, [SP,#0x98+var_8C]
17B7B0:  VLDR            S2, [R1]
17B7B4:  MOVS            R0, #0
17B7B6:  B               loc_17B7C2
17B7B8:  MOVS            R0, #0
17B7BA:  VMOV.F32        S2, S22
17B7BE:  STR             R0, [R1]
17B7C0:  MOVS            R0, #1
17B7C2:  VSUB.F32        S2, S0, S2
17B7C6:  LDR.W           R10, [R7,#arg_8]
17B7CA:  VSUB.F32        S4, S19, S17
17B7CE:  VMLS.F32        S2, S17, S18
17B7D2:  VDIV.F32        S2, S2, S4
17B7D6:  VMOV.F32        S4, S18
17B7DA:  VCMP.F32        S2, S19
17B7DE:  VMRS            APSR_nzcv, FPSCR
17B7E2:  VCMP.F32        S2, #0.0
17B7E6:  IT GT
17B7E8:  VMOVGT.F32      S2, S19
17B7EC:  VMRS            APSR_nzcv, FPSCR
17B7F0:  IT MI
17B7F2:  VMOVMI.F32      S2, S22
17B7F6:  VMLA.F32        S4, S2, S26
17B7FA:  VCVT.S32.F32    S2, S4
17B7FE:  VCVT.F32.S32    S2, S2
17B802:  VDIV.F32        S4, S2, S26
17B806:  VCMP.F32        S4, S19
17B80A:  VMRS            APSR_nzcv, FPSCR
17B80E:  VCMP.F32        S4, #0.0
17B812:  IT GT
17B814:  VMOVGT.F32      S4, S19
17B818:  VMRS            APSR_nzcv, FPSCR
17B81C:  IT MI
17B81E:  VMOVMI.F32      S4, S22
17B822:  VMUL.F32        S4, S30, S4
17B826:  VSTR            S2, [R8]
17B82A:  VDIV.F32        S28, S4, S24
17B82E:  CBZ             R0, loc_17B840
17B830:  VNEG.F32        S2, S17
17B834:  VSUB.F32        S0, S0, S28
17B838:  VMLA.F32        S0, S2, S18
17B83C:  VSTR            S0, [R1]
17B840:  MOVS            R0, #0xE
17B842:  MOV.W           R1, #0x3F800000
17B846:  LDR.W           R4, [R6,#0x27C]
17B84A:  BL              sub_16586C
17B84E:  MOV             R3, R0; int
17B850:  LDR             R0, [R6,#0x44]
17B852:  ADD.W           R2, R5, #8; int
17B856:  STRD.W          R0, R10, [SP,#0x98+var_98]; float
17B85A:  MOV             R0, R4; int
17B85C:  MOV             R1, R5; int
17B85E:  BL              sub_174194
17B862:  VMOV            R1, S16
17B866:  LDRB.W          R2, [R7,#var_72]
17B86A:  MOVS            R0, #0x10
17B86C:  LDRB.W          R3, [R7,#var_71]
17B870:  CMP             R2, #0
17B872:  IT EQ
17B874:  MOVEQ           R0, #0xF
17B876:  CMP             R3, #0
17B878:  IT NE
17B87A:  MOVNE           R0, #0x11
17B87C:  BL              sub_16586C
17B880:  VLDR            S0, [SP,#0x98+var_70]
17B884:  MOV             R3, R0; int
17B886:  CMP.W           R9, #0
17B88A:  BEQ             loc_17B8AC
17B88C:  VLDR            S2, [SP,#0x98+var_6C]
17B890:  VLDR            S6, [SP,#0x98+var_64]
17B894:  VLDR            S4, [SP,#0x98+var_68]
17B898:  VSUB.F32        S6, S6, S2
17B89C:  VMLA.F32        S2, S6, S28
17B8A0:  VADD.F32        S6, S20, S2
17B8A4:  B               loc_17B8C4
17B8A6:  ALIGN 4
17B8A8:  DCD off_234E80 - 0x17B4E0
17B8AC:  VLDR            S4, [SP,#0x98+var_68]
17B8B0:  VLDR            S2, [SP,#0x98+var_6C]
17B8B4:  VSUB.F32        S4, S4, S0
17B8B8:  VLDR            S6, [SP,#0x98+var_64]
17B8BC:  VMLA.F32        S0, S4, S28
17B8C0:  VADD.F32        S4, S20, S0
17B8C4:  LDR             R1, [SP,#0x98+var_88]
17B8C6:  MOVS            R2, #0xF
17B8C8:  VSTR            S6, [SP,#0x98+var_78]
17B8CC:  VSTR            S4, [SP,#0x98+var_7C]
17B8D0:  VSTR            S2, [SP,#0x98+var_80]
17B8D4:  VSTR            S0, [SP,#0x98+var_84]
17B8D8:  LDR             R1, [R1,#0x30]
17B8DA:  LDR.W           R0, [R6,#0x27C]; int
17B8DE:  STRD.W          R1, R2, [SP,#0x98+var_98]; float
17B8E2:  ADD             R1, SP, #0x98+var_84; int
17B8E4:  ADD.W           R2, R1, #8; int
17B8E8:  BL              sub_174194
17B8EC:  LDRB.W          R0, [R7,#var_71]
17B8F0:  CMP             R0, #0
17B8F2:  IT NE
17B8F4:  MOVNE           R0, #1
17B8F6:  ADD             SP, SP, #0x38 ; '8'
17B8F8:  VPOP            {D8-D15}
17B8FC:  ADD             SP, SP, #4
17B8FE:  POP.W           {R8-R11}
17B902:  POP             {R4-R7,PC}
