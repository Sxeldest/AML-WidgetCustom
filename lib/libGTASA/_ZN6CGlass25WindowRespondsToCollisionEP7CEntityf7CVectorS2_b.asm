; =========================================================
; Game Engine Function: _ZN6CGlass25WindowRespondsToCollisionEP7CEntityf7CVectorS2_b
; Address            : 0x5AC644 - 0x5AC8F8
; =========================================================

5AC644:  PUSH            {R4-R7,LR}
5AC646:  ADD             R7, SP, #0xC
5AC648:  PUSH.W          {R8-R11}
5AC64C:  SUB             SP, SP, #4
5AC64E:  VPUSH           {D8-D10}
5AC652:  SUB             SP, SP, #0x98
5AC654:  MOV             R4, R0
5AC656:  MOV             R9, R3
5AC658:  LDR.W           R0, [R4,#0x144]
5AC65C:  MOV             R8, R2
5AC65E:  MOV             R5, R1
5AC660:  TST.W           R0, #0x20
5AC664:  BNE.W           loc_5AC8EA
5AC668:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5AC676)
5AC66A:  ORR.W           R0, R0, #0x10
5AC66E:  LDRSH.W         R2, [R4,#0x26]
5AC672:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5AC674:  STR.W           R0, [R4,#0x144]
5AC678:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
5AC67A:  LDR.W           R1, [R1,R2,LSL#2]
5AC67E:  LDR             R1, [R1,#0x2C]
5AC680:  LDR             R1, [R1,#0x2C]
5AC682:  CMP             R1, #0
5AC684:  BEQ.W           loc_5AC8DA
5AC688:  LDRH            R2, [R1,#4]
5AC68A:  CMP             R2, #2
5AC68C:  BNE.W           loc_5AC8DA
5AC690:  LDR             R0, [R1,#0x14]
5AC692:  MOVS            R6, #1
5AC694:  VLDR            D16, [R0]
5AC698:  LDR             R2, [R0,#8]
5AC69A:  STR             R2, [SP,#0xD0+var_60]
5AC69C:  VSTR            D16, [SP,#0xD0+var_68]
5AC6A0:  VLDR            D16, [R0,#0xC]
5AC6A4:  LDR             R0, [R0,#0x14]
5AC6A6:  STR             R0, [SP,#0xD0+var_54]
5AC6A8:  VSTR            D16, [SP,#0xD0+var_5C]
5AC6AC:  LDR             R0, [R1,#0x14]
5AC6AE:  VLDR            D16, [R0,#0x18]
5AC6B2:  LDR             R1, [R0,#0x20]
5AC6B4:  STR             R1, [SP,#0xD0+var_48]
5AC6B6:  VSTR            D16, [SP,#0xD0+var_50]
5AC6BA:  LDR             R1, [R0,#0x2C]
5AC6BC:  VLDR            S0, [SP,#0xD0+var_68]
5AC6C0:  VLDR            S6, [SP,#0xD0+var_5C]
5AC6C4:  VLDR            S10, [SP,#0xD0+var_50]
5AC6C8:  VLDR            S4, [SP,#0xD0+var_60]
5AC6CC:  VSUB.F32        S6, S6, S0
5AC6D0:  VLDR            S8, [SP,#0xD0+var_5C+4]
5AC6D4:  VSUB.F32        S10, S10, S0
5AC6D8:  VLDR            S12, [SP,#0xD0+var_50+4]
5AC6DC:  STR             R1, [SP,#0xD0+var_3C]
5AC6DE:  VLDR            S2, [SP,#0xD0+var_68+4]
5AC6E2:  VLDR            D16, [R0,#0x24]
5AC6E6:  VSUB.F32        S12, S12, S2
5AC6EA:  VLDR            S14, [SP,#0xD0+var_3C]
5AC6EE:  VSUB.F32        S8, S8, S2
5AC6F2:  VSTR            D16, [SP,#0xD0+var_44]
5AC6F6:  VMUL.F32        S10, S10, S10
5AC6FA:  VLDR            S1, [SP,#0xD0+var_44+4]
5AC6FE:  VMUL.F32        S6, S6, S6
5AC702:  VLDR            S3, [SP,#0xD0+var_44]
5AC706:  VSUB.F32        S1, S1, S2
5AC70A:  VLDR            S16, [SP,#0xD0+var_54]
5AC70E:  VSUB.F32        S3, S3, S0
5AC712:  VLDR            S18, [SP,#0xD0+var_48]
5AC716:  VMIN.F32        D18, D2, D8
5AC71A:  LDR             R1, [R4,#0x14]
5AC71C:  VMUL.F32        S12, S12, S12
5AC720:  VMUL.F32        S8, S8, S8
5AC724:  VMAX.F32        D19, D2, D8
5AC728:  VMAX.F32        D16, D9, D7
5AC72C:  VMUL.F32        S1, S1, S1
5AC730:  VMUL.F32        S3, S3, S3
5AC734:  VMIN.F32        D17, D9, D7
5AC738:  VADD.F32        S10, S10, S12
5AC73C:  VADD.F32        S6, S6, S8
5AC740:  VMAX.F32        D8, D19, D16
5AC744:  VMIN.F32        D9, D18, D17
5AC748:  VADD.F32        S8, S3, S1
5AC74C:  VSQRT.F32       S10, S10
5AC750:  VSQRT.F32       S6, S6
5AC754:  VCMPE.F32       S10, S6
5AC758:  VMRS            APSR_nzcv, FPSCR
5AC75C:  VMAX.F32        D2, D5, D3
5AC760:  VSQRT.F32       S8, S8
5AC764:  VCMPE.F32       S8, S4
5AC768:  IT GT
5AC76A:  MOVGT           R6, #2
5AC76C:  VMRS            APSR_nzcv, FPSCR
5AC770:  IT GT
5AC772:  MOVGT           R6, #3
5AC774:  CBZ             R1, loc_5AC780
5AC776:  VMOV            R0, S0
5AC77A:  VMOV            R2, S2
5AC77E:  B               loc_5AC794
5AC780:  MOV             R0, R4; this
5AC782:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5AC786:  LDR             R1, [R4,#0x14]; CMatrix *
5AC788:  ADDS            R0, R4, #4; this
5AC78A:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5AC78E:  LDRD.W          R0, R2, [SP,#0xD0+var_68]
5AC792:  LDR             R1, [R4,#0x14]
5AC794:  STRD.W          R0, R2, [SP,#0xD0+var_80]
5AC798:  ADD             R0, SP, #0xD0+var_74
5AC79A:  ADD             R2, SP, #0xD0+var_80
5AC79C:  VMOV            S20, R5
5AC7A0:  VSTR            S18, [SP,#0xD0+var_78]
5AC7A4:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AC7A8:  LDR             R1, [R4,#0x14]
5AC7AA:  CBNZ            R1, loc_5AC7BC
5AC7AC:  MOV             R0, R4; this
5AC7AE:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5AC7B2:  LDR             R1, [R4,#0x14]; CMatrix *
5AC7B4:  ADDS            R0, R4, #4; this
5AC7B6:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5AC7BA:  LDR             R1, [R4,#0x14]
5AC7BC:  ADD.W           R0, R6, R6,LSL#1
5AC7C0:  ADD             R2, SP, #0xD0+var_68
5AC7C2:  LDR.W           R3, [R2,R0,LSL#2]
5AC7C6:  ADD.W           R0, R2, R0,LSL#2
5AC7CA:  ADD             R2, SP, #0xD0+var_8C
5AC7CC:  LDR             R0, [R0,#4]
5AC7CE:  STRD.W          R3, R0, [SP,#0xD0+var_8C]
5AC7D2:  ADD             R0, SP, #0xD0+var_80
5AC7D4:  VSTR            S18, [SP,#0xD0+var_84]
5AC7D8:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AC7DC:  LDR             R0, =(AudioEngine_ptr - 0x5AC7E4)
5AC7DE:  LDR             R1, [R4,#0x14]
5AC7E0:  ADD             R0, PC; AudioEngine_ptr
5AC7E2:  ADD.W           R2, R1, #0x30 ; '0'
5AC7E6:  CMP             R1, #0
5AC7E8:  LDR             R0, [R0]; AudioEngine ; this
5AC7EA:  IT EQ
5AC7EC:  ADDEQ           R2, R4, #4; CVector *
5AC7EE:  MOVS            R1, #0x7E ; '~'; int
5AC7F0:  BLX.W           j__ZN12CAudioEngine25ReportGlassCollisionEventEiR7CVector; CAudioEngine::ReportGlassCollisionEvent(int,CVector &)
5AC7F4:  ADD             R3, SP, #0xD0+var_74
5AC7F6:  VSUB.F32        S0, S16, S18
5AC7FA:  LDM             R3, {R1-R3}
5AC7FC:  VLDR            S4, [SP,#0xD0+var_80]
5AC800:  VMOV            S12, R1
5AC804:  VLDR            S6, [SP,#0xD0+var_7C]
5AC808:  VMOV            S10, R2
5AC80C:  VLDR            S8, [SP,#0xD0+var_78]
5AC810:  VMOV            S2, R3
5AC814:  LDR.W           R0, [R4,#0x144]
5AC818:  VSUB.F32        S4, S4, S12
5AC81C:  VSUB.F32        S2, S8, S2
5AC820:  AND.W           R6, R0, #0x10
5AC824:  VSUB.F32        S6, S6, S10
5AC828:  VMOV            R12, S0
5AC82C:  VLDR            S0, =300.0
5AC830:  VCMPE.F32       S20, S0
5AC834:  VMRS            APSR_nzcv, FPSCR
5AC838:  VMOV            R10, S4
5AC83C:  VMOV            LR, S2
5AC840:  VMOV            R0, S6
5AC844:  BLE             loc_5AC88A
5AC846:  MOVS            R5, #0
5AC848:  MOV.W           R11, #1
5AC84C:  STR             R5, [SP,#0xD0+var_90]
5AC84E:  CMP             R6, #0
5AC850:  LDR             R5, [R7,#arg_10]
5AC852:  STR.W           R11, [SP,#0xD0+var_94]
5AC856:  STR             R5, [SP,#0xD0+var_98]
5AC858:  IT NE
5AC85A:  MOVNE           R6, #1
5AC85C:  STR             R6, [SP,#0xD0+var_9C]
5AC85E:  MOV             R6, #0x3DCCCCCD
5AC866:  STR             R6, [SP,#0xD0+var_A0]
5AC868:  LDR             R6, [R7,#arg_8]
5AC86A:  STR             R6, [SP,#0xD0+var_A8]
5AC86C:  LDR             R6, [R7,#arg_4]
5AC86E:  STR             R6, [SP,#0xD0+var_AC]
5AC870:  STRD.W          R8, R9, [SP,#0xD0+var_B8]
5AC874:  STRD.W          R10, R0, [SP,#0xD0+var_C4]
5AC878:  MOVS            R0, #0
5AC87A:  STRD.W          R0, R0, [SP,#0xD0+var_D0]
5AC87E:  LDR             R0, [R7,#arg_C]
5AC880:  STR             R0, [SP,#0xD0+var_A4]
5AC882:  LDR             R0, [R7,#arg_0]
5AC884:  STR             R0, [SP,#0xD0+var_B0]
5AC886:  MOVS            R0, #0
5AC888:  B               loc_5AC8CA
5AC88A:  MOV.W           R11, #0
5AC88E:  MOVS            R5, #1
5AC890:  STR.W           R11, [SP,#0xD0+var_90]
5AC894:  CMP             R6, #0
5AC896:  STR             R5, [SP,#0xD0+var_94]
5AC898:  LDR             R5, [R7,#arg_10]
5AC89A:  STR             R5, [SP,#0xD0+var_98]
5AC89C:  MOVW            R5, #0xCCCD
5AC8A0:  IT NE
5AC8A2:  MOVNE           R6, #1
5AC8A4:  MOVT            R5, #0x3DCC
5AC8A8:  STR             R6, [SP,#0xD0+var_9C]
5AC8AA:  STR             R5, [SP,#0xD0+var_A0]
5AC8AC:  LDR             R5, [R7,#arg_8]
5AC8AE:  STR             R5, [SP,#0xD0+var_A8]
5AC8B0:  LDR             R5, [R7,#arg_4]
5AC8B2:  STR             R5, [SP,#0xD0+var_AC]
5AC8B4:  STRD.W          R8, R9, [SP,#0xD0+var_B8]
5AC8B8:  STRD.W          R10, R0, [SP,#0xD0+var_C4]
5AC8BC:  LDR             R0, [R7,#arg_C]
5AC8BE:  STRD.W          R11, R11, [SP,#0xD0+var_D0]
5AC8C2:  STR             R0, [SP,#0xD0+var_A4]
5AC8C4:  LDR             R0, [R7,#arg_0]
5AC8C6:  STR             R0, [SP,#0xD0+var_B0]
5AC8C8:  MOVS            R0, #1
5AC8CA:  STR.W           LR, [SP,#0xD0+var_BC]
5AC8CE:  STR.W           R12, [SP,#0xD0+var_C8]
5AC8D2:  BLX.W           j__ZN6CGlass22GeneratePanesForWindowEj7CVectorS0_S0_S0_S0_fbbib; CGlass::GeneratePanesForWindow(uint,CVector,CVector,CVector,CVector,CVector,float,bool,bool,int,bool)
5AC8D6:  LDR.W           R0, [R4,#0x144]
5AC8DA:  LDR             R1, [R4,#0x1C]
5AC8DC:  ORR.W           R0, R0, #0x20 ; ' '
5AC8E0:  STR.W           R0, [R4,#0x144]
5AC8E4:  BIC.W           R0, R1, #0x81
5AC8E8:  STR             R0, [R4,#0x1C]
5AC8EA:  ADD             SP, SP, #0x98
5AC8EC:  VPOP            {D8-D10}
5AC8F0:  ADD             SP, SP, #4
5AC8F2:  POP.W           {R8-R11}
5AC8F6:  POP             {R4-R7,PC}
