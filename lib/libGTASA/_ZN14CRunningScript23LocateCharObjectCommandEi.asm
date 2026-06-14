; =========================================================
; Game Engine Function: _ZN14CRunningScript23LocateCharObjectCommandEi
; Address            : 0x34B640 - 0x34B95C
; =========================================================

34B640:  PUSH            {R4-R7,LR}
34B642:  ADD             R7, SP, #0xC
34B644:  PUSH.W          {R8,R9,R11}
34B648:  VPUSH           {D8-D15}
34B64C:  SUB             SP, SP, #0x20; float
34B64E:  MOV             R8, R1
34B650:  SUBW            R9, R8, #0x474
34B654:  CMP.W           R9, #2
34B658:  MOV             R4, R0
34B65A:  ITE HI
34B65C:  MOVHI           R1, #5
34B65E:  MOVLS           R1, #6; __int16
34B660:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34B664:  LDR             R0, =(ScriptParams_ptr - 0x34B66A)
34B666:  ADD             R0, PC; ScriptParams_ptr
34B668:  LDR             R0, [R0]; ScriptParams
34B66A:  LDR             R1, [R0]
34B66C:  CMP             R1, #0
34B66E:  BLT             loc_34B690
34B670:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34B67A)
34B672:  UXTB            R3, R1
34B674:  LSRS            R1, R1, #8
34B676:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34B678:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34B67A:  LDR             R0, [R0]; CPools::ms_pPedPool
34B67C:  LDR             R2, [R0,#4]
34B67E:  LDRB            R2, [R2,R1]
34B680:  CMP             R2, R3
34B682:  BNE             loc_34B690
34B684:  MOVW            R2, #0x7CC
34B688:  LDR             R0, [R0]
34B68A:  MLA.W           R0, R1, R2, R0
34B68E:  B               loc_34B692
34B690:  MOVS            R0, #0
34B692:  LDR             R1, =(ScriptParams_ptr - 0x34B698)
34B694:  ADD             R1, PC; ScriptParams_ptr
34B696:  LDR             R1, [R1]; ScriptParams
34B698:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
34B69A:  CMP             R2, #0
34B69C:  BLT             loc_34B6BE
34B69E:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34B6A8)
34B6A0:  UXTB            R5, R2
34B6A2:  LSRS            R2, R2, #8
34B6A4:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34B6A6:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
34B6A8:  LDR             R1, [R1]; CPools::ms_pObjectPool
34B6AA:  LDR             R3, [R1,#4]
34B6AC:  LDRB            R3, [R3,R2]
34B6AE:  CMP             R3, R5
34B6B0:  BNE             loc_34B6BE
34B6B2:  MOV.W           R3, #0x1A4
34B6B6:  LDR             R1, [R1]
34B6B8:  MLA.W           R2, R2, R3, R1
34B6BC:  B               loc_34B6C0
34B6BE:  MOVS            R2, #0
34B6C0:  LDR.W           R1, [R0,#0x484]
34B6C4:  TST.W           R1, #0x100
34B6C8:  BEQ             loc_34B6D4
34B6CA:  LDR.W           R3, [R0,#0x590]
34B6CE:  CMP             R3, #0
34B6D0:  IT NE
34B6D2:  MOVNE           R0, R3
34B6D4:  LDR             R3, =(ScriptParams_ptr - 0x34B6DA)
34B6D6:  ADD             R3, PC; ScriptParams_ptr
34B6D8:  LDR             R5, [R3]; ScriptParams
34B6DA:  LDR             R3, [R2,#0x14]
34B6DC:  ADD.W           R6, R3, #0x30 ; '0'
34B6E0:  CMP             R3, #0
34B6E2:  VLDR            S4, [R5,#8]
34B6E6:  VLDR            S18, [R5,#0xC]
34B6EA:  VLDR            S2, [R5,#0x10]
34B6EE:  IT EQ
34B6F0:  ADDEQ           R6, R2, #4
34B6F2:  VLDR            S6, [R6]
34B6F6:  LDR             R2, [R0,#0x14]
34B6F8:  VADD.F32        S16, S6, S4
34B6FC:  VLDR            S22, [R6,#4]
34B700:  ADD.W           R3, R2, #0x30 ; '0'
34B704:  CMP             R2, #0
34B706:  VLDR            S0, [R6,#8]
34B70A:  IT EQ
34B70C:  ADDEQ           R3, R0, #4
34B70E:  VSUB.F32        S20, S6, S4
34B712:  VLDR            S6, [R3]
34B716:  MOVS            R6, #0
34B718:  VLDR            S4, [R3,#4]
34B71C:  LDR             R0, [R5,#(dword_81A91C - 0x81A908)]
34B71E:  MOVS            R2, #0
34B720:  VCMPE.F32       S6, S16
34B724:  VMRS            APSR_nzcv, FPSCR
34B728:  VCMPE.F32       S6, S20
34B72C:  IT GT
34B72E:  MOVGT           R6, #1
34B730:  VMRS            APSR_nzcv, FPSCR
34B734:  IT LT
34B736:  MOVLT           R2, #1
34B738:  CMP.W           R9, #3
34B73C:  ORR.W           R2, R2, R6
34B740:  IT CS
34B742:  VMOVCS          R0, S2
34B746:  CMP.W           R9, #2
34B74A:  BHI             loc_34B786
34B74C:  CBNZ            R2, loc_34B78C
34B74E:  VSUB.F32        S6, S22, S18
34B752:  MOVS            R2, #0
34B754:  VCMPE.F32       S4, S6
34B758:  VMRS            APSR_nzcv, FPSCR
34B75C:  BLT             loc_34B78E
34B75E:  VADD.F32        S6, S22, S18
34B762:  VCMPE.F32       S4, S6
34B766:  VMRS            APSR_nzcv, FPSCR
34B76A:  BGT             loc_34B78E
34B76C:  VSUB.F32        S6, S0, S2
34B770:  VLDR            S4, [R3,#8]
34B774:  MOVS            R2, #0
34B776:  VCMPE.F32       S4, S6
34B77A:  VMRS            APSR_nzcv, FPSCR
34B77E:  BLT             loc_34B78E
34B780:  VADD.F32        S2, S0, S2
34B784:  B               loc_34B924
34B786:  CMP             R2, #0
34B788:  BEQ.W           loc_34B90E
34B78C:  MOVS            R2, #0
34B78E:  LDRB.W          R1, [R4,#0xF2]
34B792:  LDRH.W          R3, [R4,#0xF0]
34B796:  CMP             R1, #0
34B798:  IT NE
34B79A:  MOVNE           R1, #1
34B79C:  CMP             R3, #0
34B79E:  EOR.W           R1, R1, R2
34B7A2:  BEQ             loc_34B7D4
34B7A4:  CMP             R3, #8
34B7A6:  BHI             loc_34B7B6
34B7A8:  LDRB.W          R2, [R4,#0xE5]
34B7AC:  SUBS            R3, #1
34B7AE:  STRH.W          R3, [R4,#0xF0]
34B7B2:  ANDS            R1, R2
34B7B4:  B               loc_34B7D4
34B7B6:  SUB.W           R2, R3, #0x15
34B7BA:  UXTH            R2, R2
34B7BC:  CMP             R2, #7
34B7BE:  BHI             loc_34B7D8
34B7C0:  LDRB.W          R2, [R4,#0xE5]; float
34B7C4:  SUBS            R6, R3, #1
34B7C6:  CMP             R3, #0x15
34B7C8:  ORR.W           R1, R1, R2
34B7CC:  IT EQ
34B7CE:  MOVEQ           R6, #0
34B7D0:  STRH.W          R6, [R4,#0xF0]
34B7D4:  STRB.W          R1, [R4,#0xE5]
34B7D8:  CMP             R0, #0
34B7DA:  BEQ             loc_34B8D6
34B7DC:  VADD.F32        S2, S22, S18
34B7E0:  LDR             R0, [R4,#0x14]
34B7E2:  VSUB.F32        S4, S22, S18
34B7E6:  CMP.W           R9, #2
34B7EA:  ADD             R4, R0
34B7EC:  BHI             loc_34B86A
34B7EE:  VMAX.F32        D9, D2, D1
34B7F2:  VMIN.F32        D1, D2, D1
34B7F6:  VMAX.F32        D11, D10, D8
34B7FA:  VMIN.F32        D3, D10, D8
34B7FE:  VMOV.F32        S4, #0.5
34B802:  VADD.F32        S2, S2, S18
34B806:  VADD.F32        S6, S6, S22
34B80A:  VMUL.F32        S20, S2, S4
34B80E:  VLDR            S2, =-100.0
34B812:  VMUL.F32        S16, S6, S4
34B816:  VCMPE.F32       S0, S2
34B81A:  VMRS            APSR_nzcv, FPSCR
34B81E:  VSTR            S20, [SP,#0x78+var_60]
34B822:  VSTR            S16, [SP,#0x78+var_64]
34B826:  BGT             loc_34B840
34B828:  VMOV            R0, S16; this
34B82C:  VMOV            R1, S20; float
34B830:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34B834:  VMOV.F32        S0, #2.0
34B838:  VMOV            S2, R0
34B83C:  VADD.F32        S0, S2, S0
34B840:  VSUB.F32        S2, S20, S18
34B844:  MOVS            R0, #0
34B846:  VSUB.F32        S4, S22, S16
34B84A:  ADD             R3, SP, #0x78+var_64; int
34B84C:  VSTR            S0, [SP,#0x78+var_5C]
34B850:  MOVS            R1, #2; int
34B852:  STR             R0, [SP,#0x78+var_68]
34B854:  MOVS            R2, #0; int
34B856:  STRD.W          R0, R0, [SP,#0x78+var_74]; int
34B85A:  MOV             R0, R4; this
34B85C:  VSTR            S2, [SP,#0x78+var_6C]
34B860:  VSTR            S4, [SP,#0x78+var_78]
34B864:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34B868:  B               loc_34B902
34B86A:  VMAX.F32        D13, D2, D1
34B86E:  VMIN.F32        D1, D2, D1
34B872:  VMAX.F32        D12, D10, D8
34B876:  VMIN.F32        D0, D10, D8
34B87A:  VMOV.F32        S6, #0.5
34B87E:  VADD.F32        S2, S2, S26
34B882:  VADD.F32        S0, S0, S24
34B886:  VMUL.F32        S30, S2, S6
34B88A:  VMUL.F32        S28, S0, S6
34B88E:  VMOV            R1, S30; float
34B892:  VSTR            S30, [SP,#0x78+var_60]
34B896:  VMOV            R0, S28; this
34B89A:  VSTR            S28, [SP,#0x78+var_64]
34B89E:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34B8A2:  VMOV.F32        S0, #2.0
34B8A6:  ADD             R3, SP, #0x78+var_64; int
34B8A8:  VMOV            S2, R0
34B8AC:  MOVS            R0, #0
34B8AE:  VSUB.F32        S4, S24, S28
34B8B2:  STR             R0, [SP,#0x78+var_68]
34B8B4:  MOVS            R1, #2; int
34B8B6:  MOVS            R2, #0; int
34B8B8:  VADD.F32        S0, S2, S0
34B8BC:  VSUB.F32        S2, S30, S26
34B8C0:  VSTR            S0, [SP,#0x78+var_5C]
34B8C4:  VSTR            S2, [SP,#0x78+var_6C]
34B8C8:  STRD.W          R0, R0, [SP,#0x78+var_74]; int
34B8CC:  MOV             R0, R4; this
34B8CE:  VSTR            S4, [SP,#0x78+var_78]
34B8D2:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34B8D6:  CMP.W           R9, #3
34B8DA:  BCC             loc_34B902
34B8DC:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34B8E2)
34B8DE:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34B8E0:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34B8E2:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34B8E4:  CBZ             R0, loc_34B902
34B8E6:  VSUB.F32        S0, S22, S18
34B8EA:  VADD.F32        S2, S22, S18
34B8EE:  VMOV            R0, S20; this
34B8F2:  VMOV            R2, S16; float
34B8F6:  VMOV            R1, S0; float
34B8FA:  VMOV            R3, S2; float
34B8FE:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
34B902:  ADD             SP, SP, #0x20 ; ' '
34B904:  VPOP            {D8-D15}
34B908:  POP.W           {R8,R9,R11}
34B90C:  POP             {R4-R7,PC}
34B90E:  VSUB.F32        S2, S22, S18
34B912:  MOVS            R2, #0
34B914:  VCMPE.F32       S4, S2
34B918:  VMRS            APSR_nzcv, FPSCR
34B91C:  BLT.W           loc_34B78E
34B920:  VADD.F32        S2, S22, S18
34B924:  VCMPE.F32       S4, S2
34B928:  VMRS            APSR_nzcv, FPSCR
34B92C:  BGT.W           loc_34B78E
34B930:  SUBW            R2, R8, #0x471
34B934:  CMP             R2, #5
34B936:  BHI.W           loc_34B78C
34B93A:  MOVS            R3, #1
34B93C:  LSL.W           R2, R3, R2
34B940:  TST.W           R2, #9
34B944:  BNE             loc_34B958
34B946:  TST.W           R2, #0x12
34B94A:  ITEE EQ
34B94C:  UBFXEQ.W        R2, R1, #8, #1
34B950:  MOVNE           R2, #1
34B952:  BICNE.W         R2, R2, R1,LSR#8
34B956:  B               loc_34B78E
34B958:  MOVS            R2, #1
34B95A:  B               loc_34B78E
