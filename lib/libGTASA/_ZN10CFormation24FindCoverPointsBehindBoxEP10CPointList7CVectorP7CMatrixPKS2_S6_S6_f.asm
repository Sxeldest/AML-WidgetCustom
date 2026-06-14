; =========================================================
; Game Engine Function: _ZN10CFormation24FindCoverPointsBehindBoxEP10CPointList7CVectorP7CMatrixPKS2_S6_S6_f
; Address            : 0x54963C - 0x5498EA
; =========================================================

54963C:  PUSH            {R4-R7,LR}
54963E:  ADD             R7, SP, #0xC
549640:  PUSH.W          {R8-R11}
549644:  SUB             SP, SP, #4
549646:  VPUSH           {D8-D15}
54964A:  SUB             SP, SP, #0x58
54964C:  LDR             R6, [R7,#arg_0]
54964E:  VMOV            S0, R3
549652:  MOV             R8, R2
549654:  MOV             R9, R1
549656:  MOV             R4, R0
549658:  VLDR            S2, [R6,#0x38]
54965C:  VSUB.F32        S0, S0, S2
549660:  VMOV.F32        S2, #7.0
549664:  VABS.F32        S0, S0
549668:  VCMPE.F32       S0, S2
54966C:  VMRS            APSR_nzcv, FPSCR
549670:  BGE.W           loc_5498DC
549674:  LDRD.W          R11, R10, [R7,#arg_8]
549678:  ADD             R2, SP, #0xB8+var_AC
54967A:  MOVS            R5, #0
54967C:  VLDR            S16, [R7,#arg_10]
549680:  LDRD.W          R0, R1, [R11]
549684:  STRD.W          R0, R1, [SP,#0xB8+var_AC]
549688:  ADD             R0, SP, #0xB8+var_A0
54968A:  MOV             R1, R6
54968C:  STR             R5, [SP,#0xB8+var_A4]
54968E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
549692:  VLDR            D16, [SP,#0xB8+var_A0]
549696:  ADD             R2, SP, #0xB8+var_AC
549698:  LDR             R0, [SP,#0xB8+var_98]
54969A:  STR             R0, [SP,#0xB8+var_88]
54969C:  VSTR            D16, [SP,#0xB8+var_90]
5496A0:  LDR.W           R0, [R11]
5496A4:  LDR.W           R1, [R10,#4]
5496A8:  STM             R2!, {R0,R1,R5}
5496AA:  ADD             R0, SP, #0xB8+var_A0
5496AC:  ADD             R2, SP, #0xB8+var_AC
5496AE:  MOV             R1, R6
5496B0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5496B4:  VLDR            D16, [SP,#0xB8+var_A0]
5496B8:  ADD             R2, SP, #0xB8+var_AC
5496BA:  LDR             R0, [SP,#0xB8+var_98]
5496BC:  STR             R0, [SP,#0xB8+var_7C]
5496BE:  VSTR            D16, [SP,#0xB8+var_84]
5496C2:  LDRD.W          R0, R1, [R10]
5496C6:  STM             R2!, {R0,R1,R5}
5496C8:  ADD             R0, SP, #0xB8+var_A0
5496CA:  ADD             R2, SP, #0xB8+var_AC
5496CC:  MOV             R1, R6
5496CE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5496D2:  VLDR            D16, [SP,#0xB8+var_A0]
5496D6:  ADD             R2, SP, #0xB8+var_AC
5496D8:  LDR             R0, [SP,#0xB8+var_98]
5496DA:  STR             R0, [SP,#0xB8+var_70]
5496DC:  VSTR            D16, [SP,#0xB8+var_78]
5496E0:  LDR.W           R0, [R10]
5496E4:  LDR.W           R1, [R11,#4]
5496E8:  STM             R2!, {R0,R1,R5}
5496EA:  ADD             R0, SP, #0xB8+var_A0
5496EC:  ADD             R2, SP, #0xB8+var_AC
5496EE:  MOV             R1, R6
5496F0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5496F4:  VLDR            D16, [SP,#0xB8+var_A0]
5496F8:  VMOV            S18, R8
5496FC:  LDR             R0, [SP,#0xB8+var_98]
5496FE:  VMOV            S20, R9
549702:  STR             R0, [SP,#0xB8+var_64]
549704:  MOVS            R5, #0
549706:  VSTR            D16, [SP,#0xB8+var_6C]
54970A:  VMOV.F32        S22, #0.75
54970E:  VLDR            S0, [SP,#0xB8+var_90]
549712:  ADD             R1, SP, #0xB8+var_90
549714:  VLDR            S2, [SP,#0xB8+var_90+4]
549718:  ORR.W           R6, R1, #4
54971C:  VLDR            S4, [SP,#0xB8+var_84]
549720:  VSUB.F32        S0, S0, S20
549724:  VLDR            S6, [SP,#0xB8+var_84+4]
549728:  VSUB.F32        S2, S2, S18
54972C:  VSUB.F32        S4, S4, S20
549730:  VLDR            S8, [SP,#0xB8+var_78+4]
549734:  VSUB.F32        S6, S6, S18
549738:  VLDR            S10, [SP,#0xB8+var_78]
54973C:  VLDR            S12, [SP,#0xB8+var_6C+4]
549740:  VSUB.F32        S8, S8, S18
549744:  VLDR            S14, [SP,#0xB8+var_6C]
549748:  VSUB.F32        S10, S10, S20
54974C:  VSUB.F32        S12, S12, S18
549750:  ADD.W           R8, SP, #0xB8+var_A0
549754:  VMUL.F32        S0, S0, S0
549758:  MOV.W           R10, #0
54975C:  VMUL.F32        S2, S2, S2
549760:  MOV.W           R9, #0
549764:  VMUL.F32        S4, S4, S4
549768:  VMUL.F32        S6, S6, S6
54976C:  VSUB.F32        S14, S14, S20
549770:  VMUL.F32        S8, S8, S8
549774:  VMUL.F32        S10, S10, S10
549778:  VMUL.F32        S12, S12, S12
54977C:  VADD.F32        S0, S0, S2
549780:  VADD.F32        S4, S4, S6
549784:  VMUL.F32        S14, S14, S14
549788:  VADD.F32        S2, S10, S8
54978C:  VSQRT.F32       S0, S0
549790:  VSQRT.F32       S4, S4
549794:  VCMPE.F32       S4, S0
549798:  VMRS            APSR_nzcv, FPSCR
54979C:  VADD.F32        S6, S14, S12
5497A0:  VMOV.F64        D4, D0
5497A4:  VCMPE.F32       S4, S0
5497A8:  VSQRT.F32       S2, S2
5497AC:  IT LT
5497AE:  VMOVLT.F32      S8, S4
5497B2:  VMRS            APSR_nzcv, FPSCR
5497B6:  VCMPE.F32       S2, S8
5497BA:  VSQRT.F32       S6, S6
5497BE:  VSTR            S0, [SP,#0xB8+var_A0]
5497C2:  VMIN.F32        D5, D1, D4
5497C6:  VSTR            S4, [SP,#0xB8+var_A0+4]
5497CA:  VSTR            S2, [SP,#0xB8+var_98]
5497CE:  VSTR            S6, [SP,#0xB8+var_94]
5497D2:  IT LT
5497D4:  MOVLT           R5, #1
5497D6:  VMRS            APSR_nzcv, FPSCR
5497DA:  VCMPE.F32       S6, S10
5497DE:  IT LT
5497E0:  MOVLT           R5, #2
5497E2:  VMRS            APSR_nzcv, FPSCR
5497E6:  IT LT
5497E8:  MOVLT           R5, #3
5497EA:  ADDS            R0, R5, #2
5497EC:  AND.W           R0, R0, #3
5497F0:  ADD.W           R0, R0, R0,LSL#1
5497F4:  ADD.W           R0, R1, R0,LSL#2
5497F8:  STR             R0, [SP,#0xB8+var_B0]
5497FA:  ADDS            R0, #4
5497FC:  STR             R0, [SP,#0xB8+var_B4]
5497FE:  CMP             R5, R10
549800:  BEQ             loc_5498CC
549802:  ADD.W           R0, R10, #2
549806:  AND.W           R0, R0, #3
54980A:  CMP             R0, R5
54980C:  BEQ             loc_5498CC
54980E:  LDR             R0, [R4]
549810:  CMP             R0, #0x17
549812:  BGT             loc_5498CC
549814:  VLDR            S0, [R8]
549818:  VCMPE.F32       S0, S16
54981C:  VMRS            APSR_nzcv, FPSCR
549820:  BGE             loc_5498CC
549822:  LDR             R0, [SP,#0xB8+var_B4]
549824:  ADD.W           R11, SP, #0xB8+var_AC
549828:  VLDR            S26, [R6,#-4]
54982C:  VLDR            S28, [R6]
549830:  VLDR            S0, [R0]
549834:  LDR             R0, [SP,#0xB8+var_B0]
549836:  VSUB.F32        S0, S0, S28
54983A:  STR.W           R9, [SP,#0xB8+var_A4]
54983E:  VLDR            S24, [R6,#4]
549842:  VLDR            S2, [R0]
549846:  MOV             R0, R11; this
549848:  VSUB.F32        S2, S2, S26
54984C:  VSTR            S0, [SP,#0xB8+var_A8]
549850:  VSTR            S2, [SP,#0xB8+var_AC]
549854:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
549858:  VLDR            S0, [SP,#0xB8+var_AC]
54985C:  MOV             R0, R11; this
54985E:  VLDR            S2, [SP,#0xB8+var_A8]
549862:  VADD.F32        S26, S26, S0
549866:  VLDR            S30, [SP,#0xB8+var_A4]
54986A:  VADD.F32        S28, S28, S2
54986E:  STR.W           R9, [SP,#0xB8+var_A4]
549872:  VSUB.F32        S0, S26, S20
549876:  VSUB.F32        S2, S28, S18
54987A:  VSTR            S0, [SP,#0xB8+var_AC]
54987E:  VSTR            S2, [SP,#0xB8+var_A8]
549882:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
549886:  LDR             R0, [R4]
549888:  CMP             R0, #0x17
54988A:  BGT             loc_5498CC
54988C:  VLDR            S0, [SP,#0xB8+var_AC]
549890:  VADD.F32        S6, S24, S30
549894:  VLDR            S2, [SP,#0xB8+var_A8]
549898:  ADDS            R1, R0, #1
54989A:  VLDR            S4, [SP,#0xB8+var_A4]
54989E:  VMUL.F32        S0, S0, S22
5498A2:  VMUL.F32        S2, S2, S22
5498A6:  ADD.W           R0, R0, R0,LSL#1
5498AA:  VMUL.F32        S4, S4, S22
5498AE:  STR             R1, [R4]
5498B0:  ADD.W           R0, R4, R0,LSL#2
5498B4:  VADD.F32        S0, S26, S0
5498B8:  VADD.F32        S2, S28, S2
5498BC:  VADD.F32        S4, S6, S4
5498C0:  VSTR            S0, [R0,#4]
5498C4:  VSTR            S2, [R0,#8]
5498C8:  VSTR            S4, [R0,#0xC]
5498CC:  ADD.W           R10, R10, #1
5498D0:  ADDS            R6, #0xC
5498D2:  ADD.W           R8, R8, #4
5498D6:  CMP.W           R10, #4
5498DA:  BNE             loc_5497FE
5498DC:  ADD             SP, SP, #0x58 ; 'X'
5498DE:  VPOP            {D8-D15}
5498E2:  ADD             SP, SP, #4
5498E4:  POP.W           {R8-R11}
5498E8:  POP             {R4-R7,PC}
