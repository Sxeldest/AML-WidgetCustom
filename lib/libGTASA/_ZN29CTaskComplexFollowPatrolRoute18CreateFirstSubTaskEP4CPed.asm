; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute18CreateFirstSubTaskEP4CPed
; Address            : 0x525720 - 0x52596C
; =========================================================

525720:  PUSH            {R4-R7,LR}
525722:  ADD             R7, SP, #0xC
525724:  PUSH.W          {R8-R11}
525728:  SUB             SP, SP, #4
52572A:  VPUSH           {D8-D11}
52572E:  SUB             SP, SP, #0x10
525730:  MOV             R4, R0
525732:  LDRB.W          R2, [R4,#0x20]
525736:  LDR             R0, [R4,#0x1C]
525738:  AND.W           R2, R2, #0xFE
52573C:  STRB.W          R2, [R4,#0x20]
525740:  LDR.W           R10, [R0]
525744:  CMP.W           R10, #0
525748:  BEQ.W           def_525926; jumptable 00525926 default case
52574C:  LDR             R2, [R1,#0x14]
52574E:  ADD.W           R11, R2, #0x30 ; '0'
525752:  CMP             R2, #0
525754:  IT EQ
525756:  ADDEQ.W         R11, R1, #4
52575A:  CMP.W           R10, #1
52575E:  BLT.W           loc_5258EC
525762:  VLDR            S16, =3.4028e38
525766:  MOV.W           R6, #0xFFFFFFFF
52576A:  MOV.W           R5, #0x14C
52576E:  MOV.W           R8, #1
525772:  STR             R4, [SP,#0x50+var_50]
525774:  B               loc_52577E
525776:  ADD.W           R8, R8, #1
52577A:  LDR             R0, [R4,#0x1C]
52577C:  ADDS            R5, #0xC
52577E:  CMP             R10, R8
525780:  MOV             R4, R8
525782:  IT EQ
525784:  MOVEQ           R4, #0
525786:  ADD.W           R9, R0, R5
52578A:  ADD.W           R1, R4, R4,LSL#1
52578E:  VLDR            S0, [R9,#-8]
525792:  ADD.W           R0, R0, R1,LSL#2
525796:  VLDR            S2, [R0,#0x144]
52579A:  VLDR            S4, [R0,#0x148]
52579E:  VSUB.F32        S18, S2, S0
5257A2:  VLDR            S6, [R0,#0x14C]
5257A6:  ADD             R0, SP, #0x50+var_4C; this
5257A8:  VSTR            S18, [SP,#0x50+var_4C]
5257AC:  VLDR            S0, [R9,#-4]
5257B0:  VSUB.F32        S20, S4, S0
5257B4:  VSTR            S20, [SP,#0x50+var_48]
5257B8:  VLDR            S0, [R9]
5257BC:  VSUB.F32        S22, S6, S0
5257C0:  VSTR            S22, [SP,#0x50+var_44]
5257C4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5257C8:  VLDR            S2, [R9,#-8]
5257CC:  VLDR            S0, [R11]
5257D0:  VLDR            S10, [R9,#-4]
5257D4:  VLDR            S8, [R11,#4]
5257D8:  VSUB.F32        S5, S0, S2
5257DC:  VLDR            S12, [SP,#0x50+var_4C]
5257E0:  VSUB.F32        S3, S8, S10
5257E4:  VLDR            S1, [SP,#0x50+var_48]
5257E8:  VLDR            S6, [R9]
5257EC:  VLDR            S4, [R11,#8]
5257F0:  VLDR            S14, [SP,#0x50+var_44]
5257F4:  VSUB.F32        S7, S4, S6
5257F8:  VMUL.F32        S5, S5, S12
5257FC:  VMUL.F32        S3, S3, S1
525800:  VMUL.F32        S7, S7, S14
525804:  VADD.F32        S3, S5, S3
525808:  VADD.F32        S3, S3, S7
52580C:  VCMPE.F32       S3, #0.0
525810:  VMRS            APSR_nzcv, FPSCR
525814:  BLE             loc_525884
525816:  VMUL.F32        S5, S18, S18
52581A:  VMUL.F32        S7, S20, S20
52581E:  VADD.F32        S5, S5, S7
525822:  VMUL.F32        S7, S22, S22
525826:  VADD.F32        S5, S7, S5
52582A:  VSQRT.F32       S5, S5
52582E:  VCMPE.F32       S3, S5
525832:  VMRS            APSR_nzcv, FPSCR
525836:  BGE             loc_525884
525838:  VMUL.F32        S1, S1, S3
52583C:  VMUL.F32        S12, S12, S3
525840:  VMUL.F32        S14, S14, S3
525844:  VADD.F32        S10, S10, S1
525848:  VADD.F32        S2, S2, S12
52584C:  VADD.F32        S6, S6, S14
525850:  VSUB.F32        S8, S8, S10
525854:  VSUB.F32        S0, S0, S2
525858:  VSUB.F32        S2, S4, S6
52585C:  VMUL.F32        S4, S8, S8
525860:  VMUL.F32        S0, S0, S0
525864:  VMUL.F32        S2, S2, S2
525868:  VADD.F32        S0, S0, S4
52586C:  VMUL.F32        S4, S16, S16
525870:  VADD.F32        S0, S2, S0
525874:  VCMPE.F32       S0, S4
525878:  VMRS            APSR_nzcv, FPSCR
52587C:  ITT LT
52587E:  VMOVLT.F32      S16, S0
525882:  MOVLT           R6, R4
525884:  LDR             R4, [SP,#0x50+var_50]
525886:  CMP             R10, R8
525888:  BNE.W           loc_525776
52588C:  ADDS            R0, R6, #1
52588E:  BNE             loc_5258F0
525890:  CMP.W           R10, #1
525894:  BLT             loc_5258F0
525896:  LDR             R0, [R4,#0x1C]
525898:  MOVS            R1, #0
52589A:  VLDR            S0, =3.4028e38
52589E:  MOV.W           R6, #0xFFFFFFFF
5258A2:  VLDR            D16, [R11,#4]
5258A6:  ADD.W           R0, R0, #0x144
5258AA:  VLDR            S2, [R11]
5258AE:  VLDR            S4, [R0]
5258B2:  VMUL.F32        S8, S0, S0
5258B6:  VLDR            D17, [R0,#4]
5258BA:  ADDS            R0, #0xC
5258BC:  VSUB.F32        S4, S2, S4
5258C0:  VSUB.F32        D17, D16, D17
5258C4:  VMUL.F32        D3, D17, D17
5258C8:  VMUL.F32        S4, S4, S4
5258CC:  VADD.F32        S4, S4, S6
5258D0:  VADD.F32        S4, S4, S7
5258D4:  VCMPE.F32       S4, S8
5258D8:  VMRS            APSR_nzcv, FPSCR
5258DC:  ITT LT
5258DE:  VMOVLT.F32      S0, S4
5258E2:  MOVLT           R6, R1
5258E4:  ADDS            R1, #1
5258E6:  CMP             R10, R1
5258E8:  BNE             loc_5258AE
5258EA:  B               loc_5258F0
5258EC:  MOV.W           R6, #0xFFFFFFFF
5258F0:  LDRB.W          R0, [R4,#0x20]
5258F4:  STRH            R6, [R4,#0x12]
5258F6:  TST.W           R0, #2
5258FA:  AND.W           R1, R0, #0xFD
5258FE:  STRB.W          R1, [R4,#0x20]
525902:  BNE             loc_525942
525904:  LDR             R0, [R4,#0x1C]; this
525906:  LDR             R1, [R0]
525908:  CBZ             R1, loc_525948; jumptable 00525926 case 0
52590A:  SXTH            R2, R6
52590C:  ADDS            R3, R2, #1
52590E:  CMP             R3, R1
525910:  BLT             loc_525960
525912:  BEQ             loc_525966
525914:  CMP             R1, R2
525916:  BNE             def_525926; jumptable 00525926 default case
525918:  LDRH            R1, [R4,#0xE]
52591A:  LDRSH.W         R2, [R4,#0xC]
52591E:  ADDS            R3, R1, #1
525920:  STRH            R3, [R4,#0xE]
525922:  CMP             R2, #3; switch 4 cases
525924:  BHI             def_525926; jumptable 00525926 default case
525926:  TBB.W           [PC,R2]; switch jump
52592A:  DCB 0xF; jump table for switch statement
52592B:  DCB 6
52592C:  DCB 7
52592D:  DCB 2
52592E:  MOVS            R6, #0; jumptable 00525926 case 3
525930:  LDR             R0, [R4,#0x1C]
525932:  STRH            R6, [R4,#0x12]
525934:  B               loc_525906
525936:  CBNZ            R1, loc_525948; jumptable 00525926 case 1
525938:  BLX             j__ZN12CPatrolRoute7ReverseEv; jumptable 00525926 case 2
52593C:  B               loc_52592E; jumptable 00525926 case 3
52593E:  MOVS            R1, #0xC8; jumptable 00525926 default case
525940:  B               loc_52594C
525942:  MOVW            R1, #0x38A
525946:  B               loc_52594C
525948:  MOVW            R1, #0x516; jumptable 00525926 case 0
52594C:  MOV             R0, R4; this
52594E:  BLX             j__ZN29CTaskComplexFollowPatrolRoute13CreateSubTaskEi; CTaskComplexFollowPatrolRoute::CreateSubTask(int)
525952:  ADD             SP, SP, #0x10
525954:  VPOP            {D8-D11}
525958:  ADD             SP, SP, #4
52595A:  POP.W           {R8-R11}
52595E:  POP             {R4-R7,PC}
525960:  MOV.W           R1, #0x384
525964:  B               loc_52594C
525966:  MOVW            R1, #0x387
52596A:  B               loc_52594C
