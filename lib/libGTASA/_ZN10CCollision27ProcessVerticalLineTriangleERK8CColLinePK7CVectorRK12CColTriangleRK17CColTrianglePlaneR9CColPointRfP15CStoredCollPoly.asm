; =========================================================
; Game Engine Function: _ZN10CCollision27ProcessVerticalLineTriangleERK8CColLinePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRfP15CStoredCollPoly
; Address            : 0x2DC6BC - 0x2DC9E2
; =========================================================

2DC6BC:  PUSH            {R4,R5,R7,LR}
2DC6BE:  ADD             R7, SP, #8
2DC6C0:  VPUSH           {D8-D15}
2DC6C4:  LDRD.W          R12, LR, [R2]
2DC6C8:  LDR             R5, [R2,#8]
2DC6CA:  ADD.W           R4, LR, LR,LSL#1
2DC6CE:  VLDR            S3, [R0]
2DC6D2:  ADD.W           R12, R12, R12,LSL#1
2DC6D6:  ADD.W           R4, R1, R4,LSL#2
2DC6DA:  ADD.W           R5, R5, R5,LSL#1
2DC6DE:  VLDR            S4, [R4]
2DC6E2:  ADD.W           R5, R1, R5,LSL#2
2DC6E6:  ADD.W           R1, R1, R12,LSL#2
2DC6EA:  VLDR            S6, [R4,#4]
2DC6EE:  VLDR            S12, [R1]
2DC6F2:  VLDR            S0, [R5]
2DC6F6:  VCMPE.F32       S3, S12
2DC6FA:  VLDR            S2, [R5,#4]
2DC6FE:  VLDR            S10, [R5,#8]
2DC702:  VLDR            S8, [R4,#8]
2DC706:  VLDR            S14, [R1,#4]
2DC70A:  VLDR            S1, [R1,#8]
2DC70E:  VMRS            APSR_nzcv, FPSCR
2DC712:  BGE             loc_2DC72C
2DC714:  VCMPE.F32       S3, S4
2DC718:  VMRS            APSR_nzcv, FPSCR
2DC71C:  ITT LT
2DC71E:  VCMPELT.F32     S3, S0
2DC722:  VMRSLT          APSR_nzcv, FPSCR
2DC726:  BLT.W           loc_2DC91C
2DC72A:  B               loc_2DC742
2DC72C:  VCMPE.F32       S3, S4
2DC730:  VMRS            APSR_nzcv, FPSCR
2DC734:  ITT GT
2DC736:  VCMPEGT.F32     S3, S0
2DC73A:  VMRSGT          APSR_nzcv, FPSCR
2DC73E:  BGT.W           loc_2DC91C
2DC742:  VLDR            S5, [R0,#4]
2DC746:  VCMPE.F32       S5, S14
2DC74A:  VMRS            APSR_nzcv, FPSCR
2DC74E:  BGE             loc_2DC768
2DC750:  VCMPE.F32       S5, S6
2DC754:  VMRS            APSR_nzcv, FPSCR
2DC758:  BGE             loc_2DC77E
2DC75A:  VCMPE.F32       S5, S2
2DC75E:  VMRS            APSR_nzcv, FPSCR
2DC762:  BLT.W           loc_2DC91C
2DC766:  B               loc_2DC77E
2DC768:  VCMPE.F32       S5, S6
2DC76C:  VMRS            APSR_nzcv, FPSCR
2DC770:  ITT GT
2DC772:  VCMPEGT.F32     S5, S2
2DC776:  VMRSGT          APSR_nzcv, FPSCR
2DC77A:  BGT.W           loc_2DC91C
2DC77E:  VLDR            S9, [R3]
2DC782:  VLDR            S15, [R0,#0x10]
2DC786:  VLDR            S11, [R3,#4]
2DC78A:  VMUL.F32        S26, S9, S3
2DC78E:  VLDR            S16, [R0,#0x14]
2DC792:  VMUL.F32        S28, S9, S15
2DC796:  VMUL.F32        S22, S11, S5
2DC79A:  VLDR            S18, [R0,#8]
2DC79E:  VMUL.F32        S24, S11, S16
2DC7A2:  VLDR            S7, [R0,#0x18]
2DC7A6:  VLDR            S13, [R3,#8]
2DC7AA:  VLDR            S20, [R3,#0xC]
2DC7AE:  VMUL.F32        S30, S13, S7
2DC7B2:  VADD.F32        S17, S26, S22
2DC7B6:  VADD.F32        S28, S28, S24
2DC7BA:  VMUL.F32        S24, S13, S18
2DC7BE:  VADD.F32        S28, S28, S30
2DC7C2:  VADD.F32        S30, S17, S24
2DC7C6:  VSUB.F32        S28, S28, S20
2DC7CA:  VSUB.F32        S30, S30, S20
2DC7CE:  VMUL.F32        S28, S30, S28
2DC7D2:  VCMPE.F32       S28, #0.0
2DC7D6:  VMRS            APSR_nzcv, FPSCR
2DC7DA:  BGT.W           loc_2DC91C
2DC7DE:  VSUB.F32        S20, S20, S26
2DC7E2:  LDRB            R0, [R3,#0x10]
2DC7E4:  VSUB.F32        S26, S7, S18
2DC7E8:  VMOV.F32        S28, S1
2DC7EC:  SUBS            R0, #1; switch 5 cases
2DC7EE:  VMOV.F32        S30, S10
2DC7F2:  CMP             R0, #4
2DC7F4:  VMOV.F32        S17, S6
2DC7F8:  VMOV.F32        S19, S8
2DC7FC:  VSUB.F32        S7, S20, S22
2DC800:  VMUL.F32        S20, S13, S26
2DC804:  VSUB.F32        S7, S7, S24
2DC808:  VMOV.F32        S24, S14
2DC80C:  VDIV.F32        S7, S7, S20
2DC810:  VMUL.F32        S20, S26, S7
2DC814:  VMOV.F32        S26, S2
2DC818:  VADD.F32        S18, S18, S20
2DC81C:  VMOV.F32        S20, S5
2DC820:  VMOV.F32        S22, S18
2DC824:  BHI             def_2DC826; jumptable 002DC826 default case
2DC826:  TBB.W           [PC,R0]; switch jump
2DC82A:  DCB 3; jump table for switch statement
2DC82B:  DCB 0x14
2DC82C:  DCB 0x25
2DC82D:  DCB 0x36
2DC82E:  DCB 0x47
2DC82F:  ALIGN 2
2DC830:  VMOV.F32        S20, S5; jumptable 002DC826 case 1
2DC834:  VMOV.F32        S22, S18
2DC838:  VMOV.F32        S24, S14
2DC83C:  VMOV.F32        S28, S1
2DC840:  VMOV.F32        S26, S6
2DC844:  VMOV.F32        S30, S8
2DC848:  VMOV.F32        S17, S2
2DC84C:  VMOV.F32        S19, S10
2DC850:  B               def_2DC826; jumptable 002DC826 default case
2DC852:  VMOV.F32        S20, S18; jumptable 002DC826 case 2
2DC856:  VMOV.F32        S22, S3
2DC85A:  VMOV.F32        S24, S1
2DC85E:  VMOV.F32        S28, S12
2DC862:  VMOV.F32        S26, S10
2DC866:  VMOV.F32        S30, S0
2DC86A:  VMOV.F32        S17, S8
2DC86E:  VMOV.F32        S19, S4
2DC872:  B               def_2DC826; jumptable 002DC826 default case
2DC874:  VMOV.F32        S20, S18; jumptable 002DC826 case 3
2DC878:  VMOV.F32        S22, S3
2DC87C:  VMOV.F32        S24, S1
2DC880:  VMOV.F32        S28, S12
2DC884:  VMOV.F32        S26, S8
2DC888:  VMOV.F32        S30, S4
2DC88C:  VMOV.F32        S17, S10
2DC890:  VMOV.F32        S19, S0
2DC894:  B               def_2DC826; jumptable 002DC826 default case
2DC896:  VMOV.F32        S20, S3; jumptable 002DC826 case 4
2DC89A:  VMOV.F32        S22, S5
2DC89E:  VMOV.F32        S24, S12
2DC8A2:  VMOV.F32        S28, S14
2DC8A6:  VMOV.F32        S26, S0
2DC8AA:  VMOV.F32        S30, S2
2DC8AE:  VMOV.F32        S17, S4
2DC8B2:  VMOV.F32        S19, S6
2DC8B6:  B               def_2DC826; jumptable 002DC826 default case
2DC8B8:  VMOV.F32        S20, S3; jumptable 002DC826 case 5
2DC8BC:  VMOV.F32        S22, S5
2DC8C0:  VMOV.F32        S24, S12
2DC8C4:  VMOV.F32        S28, S14
2DC8C8:  VMOV.F32        S26, S4
2DC8CC:  VMOV.F32        S30, S6
2DC8D0:  VMOV.F32        S17, S0
2DC8D4:  VMOV.F32        S19, S2
2DC8D8:  VSUB.F32        S25, S30, S28; jumptable 002DC826 default case
2DC8DC:  VSUB.F32        S21, S20, S24
2DC8E0:  VSUB.F32        S27, S26, S24
2DC8E4:  VSUB.F32        S23, S22, S28
2DC8E8:  VMUL.F32        S25, S21, S25
2DC8EC:  VMUL.F32        S27, S23, S27
2DC8F0:  VSUB.F32        S25, S27, S25
2DC8F4:  VCMPE.F32       S25, #0.0
2DC8F8:  VMRS            APSR_nzcv, FPSCR
2DC8FC:  BLT             loc_2DC91C
2DC8FE:  VSUB.F32        S28, S19, S28
2DC902:  VSUB.F32        S24, S17, S24
2DC906:  VMUL.F32        S28, S21, S28
2DC90A:  VMUL.F32        S24, S23, S24
2DC90E:  VSUB.F32        S24, S24, S28
2DC912:  VCMPE.F32       S24, #0.0
2DC916:  VMRS            APSR_nzcv, FPSCR
2DC91A:  BLE             loc_2DC924
2DC91C:  MOVS            R0, #0
2DC91E:  VPOP            {D8-D15}
2DC922:  POP             {R4,R5,R7,PC}
2DC924:  VSUB.F32        S20, S20, S26
2DC928:  MOVS            R0, #0
2DC92A:  VSUB.F32        S24, S19, S30
2DC92E:  VSUB.F32        S26, S17, S26
2DC932:  VSUB.F32        S22, S22, S30
2DC936:  VMUL.F32        S20, S20, S24
2DC93A:  VMUL.F32        S22, S22, S26
2DC93E:  VSUB.F32        S20, S22, S20
2DC942:  VCMPE.F32       S20, #0.0
2DC946:  VMRS            APSR_nzcv, FPSCR
2DC94A:  BLT             loc_2DC9DC
2DC94C:  LDR             R1, [R7,#arg_4]
2DC94E:  VLDR            S20, [R1]
2DC952:  VCMPE.F32       S7, S20
2DC956:  VMRS            APSR_nzcv, FPSCR
2DC95A:  BGE             loc_2DC9DC
2DC95C:  VSUB.F32        S16, S16, S5
2DC960:  LDR             R3, [R7,#arg_0]
2DC962:  VSUB.F32        S15, S15, S3
2DC966:  LDR             R0, [R7,#arg_8]
2DC968:  MOVS            R4, #0
2DC96A:  VSTR            S9, [R3,#0x10]
2DC96E:  CMP             R0, #0
2DC970:  VSTR            S11, [R3,#0x14]
2DC974:  VSTR            S13, [R3,#0x18]
2DC978:  VMUL.F32        S16, S7, S16
2DC97C:  VMUL.F32        S15, S7, S15
2DC980:  VADD.F32        S5, S5, S16
2DC984:  VADD.F32        S3, S3, S15
2DC988:  VSTR            S3, [R3]
2DC98C:  VSTR            S5, [R3,#4]
2DC990:  VSTR            S18, [R3,#8]
2DC994:  LDRB            R5, [R2,#0xC]
2DC996:  STRB.W          R4, [R3,#0x24]
2DC99A:  STRB.W          R5, [R3,#0x23]
2DC99E:  LDRB            R5, [R2,#0xD]
2DC9A0:  STRH            R4, [R3,#0x20]
2DC9A2:  STRB.W          R5, [R3,#0x25]
2DC9A6:  BEQ             loc_2DC9D6
2DC9A8:  MOVS            R3, #1
2DC9AA:  VSTR            S10, [R0,#0x20]
2DC9AE:  VSTR            S12, [R0]
2DC9B2:  VSTR            S14, [R0,#4]
2DC9B6:  VSTR            S1, [R0,#8]
2DC9BA:  VSTR            S4, [R0,#0xC]
2DC9BE:  VSTR            S6, [R0,#0x10]
2DC9C2:  VSTR            S8, [R0,#0x14]
2DC9C6:  VSTR            S0, [R0,#0x18]
2DC9CA:  VSTR            S2, [R0,#0x1C]
2DC9CE:  STRB.W          R3, [R0,#0x24]
2DC9D2:  LDRB            R2, [R2,#0xD]
2DC9D4:  STR             R2, [R0,#0x28]
2DC9D6:  MOVS            R0, #1
2DC9D8:  VSTR            S7, [R1]
2DC9DC:  VPOP            {D8-D15}
2DC9E0:  POP             {R4,R5,R7,PC}
