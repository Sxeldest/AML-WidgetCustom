; =========================================================
; Game Engine Function: _ZN7CEntity14DestroyEffectsEv
; Address            : 0x3EB760 - 0x3EB8AA
; =========================================================

3EB760:  PUSH            {R4-R7,LR}
3EB762:  ADD             R7, SP, #0xC
3EB764:  PUSH.W          {R8-R11}
3EB768:  SUB             SP, SP, #0x44
3EB76A:  MOV             R4, R0
3EB76C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EB776)
3EB76E:  LDRSH.W         R1, [R4,#0x26]
3EB772:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EB774:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EB776:  LDR.W           R5, [R0,R1,LSL#2]
3EB77A:  LDRB.W          R6, [R5,#0x23]
3EB77E:  CMP             R6, #0
3EB780:  BEQ.W           loc_3EB8A2
3EB784:  ADDS            R0, R4, #4
3EB786:  STR             R0, [SP,#0x60+var_5C]
3EB788:  LDR             R0, =(g_fx_ptr - 0x3EB798)
3EB78A:  ADD.W           R11, SP, #0x60+var_28
3EB78E:  MOV.W           R10, #0
3EB792:  STR             R4, [SP,#0x60+var_54]
3EB794:  ADD             R0, PC; g_fx_ptr
3EB796:  LDR             R0, [R0]; g_fx
3EB798:  STR             R0, [SP,#0x60+var_4C]
3EB79A:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x3EB7A0)
3EB79C:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
3EB79E:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
3EB7A0:  STR             R0, [SP,#0x60+var_58]
3EB7A2:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3EB7A8)
3EB7A4:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3EB7A6:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3EB7A8:  STR             R0, [SP,#0x60+var_50]
3EB7AA:  MOV             R0, R5; this
3EB7AC:  MOV             R1, R10; int
3EB7AE:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
3EB7B2:  MOV             R8, R0
3EB7B4:  LDRB.W          R0, [R8,#0xC]
3EB7B8:  SUBS            R0, #1; switch 7 cases
3EB7BA:  CMP             R0, #6
3EB7BC:  BHI             def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB7BE:  TBB.W           [PC,R0]; switch jump
3EB7C2:  DCB 4; jump table for switch statement
3EB7C3:  DCB 0x6B
3EB7C4:  DCB 9
3EB7C5:  DCB 0x6B
3EB7C6:  DCB 0x6B
3EB7C7:  DCB 0x13
3EB7C8:  DCB 0x27
3EB7C9:  ALIGN 2
3EB7CA:  LDR             R0, [SP,#0x60+var_4C]; jumptable 003EB7BE case 1
3EB7CC:  MOV             R1, R4; CEntity *
3EB7CE:  BLX             j__ZN4Fx_c15DestroyEntityFxEP7CEntity; Fx_c::DestroyEntityFx(CEntity *)
3EB7D2:  B               def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB7D4:  LDRB.W          R0, [R8,#0x34]; jumptable 003EB7BE case 3
3EB7D8:  CMP             R0, #5
3EB7DA:  BNE             def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB7DC:  LDR             R0, [SP,#0x60+var_58]; this
3EB7DE:  ADD.W           R1, R8, #0x38 ; '8'; char *
3EB7E2:  BLX             j__ZN17CScriptsForBrains52MarkAttractorScriptBrainWithThisNameAsNoLongerNeededEPKc; CScriptsForBrains::MarkAttractorScriptBrainWithThisNameAsNoLongerNeeded(char const*)
3EB7E6:  B               def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB7E8:  LDR             R1, [R4,#0x14]; jumptable 003EB7BE case 6
3EB7EA:  CBZ             R1, loc_3EB846
3EB7EC:  VLDR            D16, [R8]
3EB7F0:  ADD             R2, SP, #0x60+var_38
3EB7F2:  LDR.W           R0, [R8,#8]
3EB7F6:  STR             R0, [SP,#0x60+var_30]
3EB7F8:  MOV             R0, R11
3EB7FA:  VSTR            D16, [SP,#0x60+var_38]
3EB7FE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EB802:  VLDR            D16, [SP,#0x60+var_28]
3EB806:  LDR             R0, [SP,#0x60+var_20]
3EB808:  STR             R0, [SP,#0x60+var_40]
3EB80A:  VSTR            D16, [SP,#0x60+var_48]
3EB80E:  B               loc_3EB850
3EB810:  LDR.W           R9, [R8,#0x2C]; jumptable 003EB7BE case 7
3EB814:  CMP.W           R9, #0
3EB818:  BEQ             def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB81A:  MOV             R4, R11
3EB81C:  LDR.W           R11, [R9,#4]
3EB820:  CMP.W           R11, #0
3EB824:  BEQ             loc_3EB834
3EB826:  MOV             R0, R9
3EB828:  MOVS            R1, #0
3EB82A:  BLX             j__Z16RpAtomicSetFrameP8RpAtomicP7RwFrame; RpAtomicSetFrame(RpAtomic *,RwFrame *)
3EB82E:  MOV             R0, R11
3EB830:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
3EB834:  MOV             R0, R9
3EB836:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
3EB83A:  MOVS            R0, #0
3EB83C:  MOV             R11, R4
3EB83E:  STR.W           R0, [R8,#0x2C]
3EB842:  LDR             R4, [SP,#0x60+var_54]
3EB844:  B               def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB846:  LDR             R1, [SP,#0x60+var_5C]
3EB848:  ADD             R0, SP, #0x60+var_48
3EB84A:  MOV             R2, R8
3EB84C:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EB850:  LDRD.W          R0, R1, [SP,#0x60+var_48]
3EB854:  MOV.W           R2, #0xFFFFFFFF
3EB858:  STRD.W          R0, R1, [SP,#0x60+var_28]
3EB85C:  MOV             R0, R11
3EB85E:  MOV.W           R1, #0x3FC00000
3EB862:  BLX             j__ZN17CEntryExitManager20FindNearestEntryExitERK9CVector2Dfi; CEntryExitManager::FindNearestEntryExit(CVector2D const&,float,int)
3EB866:  ADDS            R1, R0, #1
3EB868:  BEQ             def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB86A:  LDR             R1, [SP,#0x60+var_50]
3EB86C:  LDR             R1, [R1]
3EB86E:  LDR             R2, [R1,#4]
3EB870:  LDRSB           R2, [R2,R0]
3EB872:  CMP             R2, #0
3EB874:  BLT             loc_3EB882
3EB876:  LDR             R1, [R1]
3EB878:  RSB.W           R2, R0, R0,LSL#4
3EB87C:  ADD.W           R1, R1, R2,LSL#2
3EB880:  B               loc_3EB884
3EB882:  MOVS            R1, #0; int
3EB884:  LDRH            R2, [R1,#0x30]
3EB886:  TST.W           R2, #0x2000
3EB88A:  BNE             loc_3EB892
3EB88C:  BLX             j__ZN17CEntryExitManager9DeleteOneEi; CEntryExitManager::DeleteOne(int)
3EB890:  B               def_3EB7BE; jumptable 003EB7BE default case, cases 2,4,5
3EB892:  ORR.W           R0, R2, #0x8000
3EB896:  STRH            R0, [R1,#0x30]
3EB898:  ADD.W           R10, R10, #1; jumptable 003EB7BE default case, cases 2,4,5
3EB89C:  CMP             R6, R10
3EB89E:  BNE.W           loc_3EB7AA
3EB8A2:  ADD             SP, SP, #0x44 ; 'D'
3EB8A4:  POP.W           {R8-R11}
3EB8A8:  POP             {R4-R7,PC}
