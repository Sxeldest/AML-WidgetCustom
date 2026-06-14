; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr24LoadCutsceneData_loadingEv
; Address            : 0x464738 - 0x464954
; =========================================================

464738:  PUSH            {R4-R7,LR}
46473A:  ADD             R7, SP, #0xC
46473C:  PUSH.W          {R8-R11}
464740:  SUB             SP, SP, #0x74
464742:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x464748)
464744:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
464746:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
464748:  LDR             R0, [R0]; this
46474A:  CMP             R0, #1
46474C:  BLT             loc_46477E
46474E:  LDR             R2, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x464758)
464750:  MOVS            R1, #0
464752:  LDR             R3, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46475A)
464754:  ADD             R2, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
464756:  ADD             R3, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
464758:  LDR             R2, [R2]; CCutsceneMgr::ms_iModelIndex ...
46475A:  LDR             R3, [R3]; CStreaming::ms_aInfoForModel ...
46475C:  LDR.W           R6, [R2,R1,LSL#2]
464760:  SUB.W           R5, R6, #0x12C
464764:  CMP             R5, #0x13
464766:  BHI             loc_464778
464768:  ADD.W           R6, R6, R6,LSL#2
46476C:  ADD.W           R6, R3, R6,LSL#2
464770:  LDRB            R6, [R6,#0x10]
464772:  CMP             R6, #1
464774:  BNE.W           loc_46494C
464778:  ADDS            R1, #1
46477A:  CMP             R1, R0
46477C:  BLT             loc_46475C
46477E:  BLX             j__ZN12CCutsceneMgr25LoadCutsceneData_postloadEv; CCutsceneMgr::LoadCutsceneData_postload(void)
464782:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x464788)
464784:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
464786:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
464788:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames
46478A:  CMP             R0, #1
46478C:  BLT             loc_4647DA
46478E:  LDR             R0, =(_ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr - 0x464798)
464790:  MOVS            R6, #0
464792:  MOVS            R5, #0
464794:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr
464796:  LDR             R4, [R0]; CCutsceneMgr::ms_cLoadAnimName ...
464798:  LDR             R0, =(_ZN12CCutsceneMgr16ms_bRepeatObjectE_ptr - 0x46479E)
46479A:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_bRepeatObjectE_ptr
46479C:  LDR.W           R8, [R0]; CCutsceneMgr::ms_bRepeatObject ...
4647A0:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x4647A6)
4647A2:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
4647A4:  LDR.W           R9, [R0]; CCutsceneMgr::ms_iModelIndex ...
4647A8:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x4647AE)
4647AA:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
4647AC:  LDR.W           R10, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
4647B0:  LDRB.W          R0, [R8,R6]
4647B4:  CBNZ            R0, loc_4647C0
4647B6:  LDR.W           R0, [R9,R6,LSL#2]; this
4647BA:  BLX             j__ZN12CCutsceneMgr20CreateCutsceneObjectEi; CCutsceneMgr::CreateCutsceneObject(int)
4647BE:  MOV             R5, R0
4647C0:  LDRB            R0, [R4]; CCutsceneMgr::ms_cLoadAnimName
4647C2:  CMP             R0, #0
4647C4:  ITTT NE
4647C6:  MOVNE           R0, R4; this
4647C8:  MOVNE           R1, R5; char *
4647CA:  BLXNE           j__ZN12CCutsceneMgr15SetCutsceneAnimEPKcP7CObject; CCutsceneMgr::SetCutsceneAnim(char const*,CObject *)
4647CE:  LDR.W           R0, [R10]; CCutsceneMgr::ms_numLoadObjectNames
4647D2:  ADDS            R6, #1
4647D4:  ADDS            R4, #0x20 ; ' '
4647D6:  CMP             R6, R0
4647D8:  BLT             loc_4647B0
4647DA:  LDR             R0, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x4647E0)
4647DC:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
4647DE:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumParticleEffects ...
4647E0:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumParticleEffects
4647E2:  CMP             R0, #1
4647E4:  BLT.W           loc_4648F8
4647E8:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr - 0x4647F8)
4647EA:  ADD             R4, SP, #0x90+var_5C
4647EC:  ADD.W           R11, SP, #0x90+var_68
4647F0:  ADD.W           R10, SP, #0x90+var_74
4647F4:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr
4647F6:  MOV.W           R9, #0
4647FA:  LDR             R0, [R0]; CCutsceneMgr::ms_pParticleEffects ...
4647FC:  ADD.W           R8, R0, #0x50 ; 'P'
464800:  LDR             R0, =(g_fx_ptr - 0x464806)
464802:  ADD             R0, PC; g_fx_ptr
464804:  LDR             R6, [R0]; g_fx
464806:  LDR             R0, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x46480C)
464808:  ADD             R0, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
46480A:  LDR             R0, [R0]; CCutsceneMgr::ms_numCutsceneObjs ...
46480C:  STR             R0, [SP,#0x90+var_80]
46480E:  LDR             R0, =(g_fxMan_ptr - 0x464814)
464810:  ADD             R0, PC; g_fxMan_ptr
464812:  LDR             R0, [R0]; g_fxMan
464814:  STR             R0, [SP,#0x90+var_78]
464816:  LDR             R0, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x46481C)
464818:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
46481A:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumParticleEffects ...
46481C:  STR             R0, [SP,#0x90+var_7C]
46481E:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x464824)
464820:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
464822:  LDR             R0, [R0]; CCutsceneMgr::ms_pCutsceneObjects ...
464824:  STR             R0, [SP,#0x90+var_84]
464826:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr - 0x46482C)
464828:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr
46482A:  LDR             R0, [R0]; CCutsceneMgr::ms_pParticleEffects ...
46482C:  STR             R0, [SP,#0x90+var_88]
46482E:  LDM.W           R8, {R0-R2}
464832:  ADD             R3, SP, #0x90+var_68
464834:  STM             R3!, {R0-R2}
464836:  ADD.W           R2, R8, #0xC
46483A:  ADD             R3, SP, #0x90+var_74
46483C:  LDM             R2, {R0-R2}
46483E:  STM             R3!, {R0-R2}
464840:  MOV             R0, R6
464842:  MOV             R1, R4
464844:  MOV             R2, R11
464846:  MOV             R3, R10
464848:  BLX             j__ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_; Fx_c::CreateMatFromVec(RwMatrixTag *,CVector *,CVector *)
46484C:  LDR.W           R0, [R8,#-0x24]
464850:  MOVS            R5, #0
464852:  CMP             R0, #1
464854:  BLT             loc_4648D2
464856:  LDR             R1, [SP,#0x90+var_80]
464858:  LDR             R1, [R1]
46485A:  CMP             R0, R1
46485C:  BGT             loc_4648D2
46485E:  LDR             R1, [SP,#0x90+var_84]
464860:  ADD.W           R0, R1, R0,LSL#2
464864:  LDR.W           R0, [R0,#-4]
464868:  LDR             R5, [R0,#0x18]
46486A:  MOV             R0, R5
46486C:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
464870:  CBZ             R0, loc_4648AE
464872:  LDR             R0, [R0,#0x18]
464874:  BLX             j_RpSkinGeometryGetSkin
464878:  SUB.W           R1, R8, #0x20 ; ' '
46487C:  CBZ             R0, loc_4648BA
46487E:  MOV             R0, R1; char *
464880:  BLX             atoi
464884:  MOV             R10, R11
464886:  MOV             R11, R4
464888:  MOV             R4, R0
46488A:  MOV             R0, R5
46488C:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
464890:  MOV             R1, R4
464892:  MOV             R5, R0
464894:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
464898:  MOV             R4, R0
46489A:  MOV             R0, R5
46489C:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4648A0:  ADD.W           R5, R0, R4,LSL#6
4648A4:  MOV             R4, R11
4648A6:  MOV             R11, R10
4648A8:  ADD.W           R10, SP, #0x90+var_74
4648AC:  B               loc_4648C8
4648AE:  MOVS            R0, #0x6C ; 'l'
4648B0:  LDR             R1, [SP,#0x90+var_88]
4648B2:  MLA.W           R0, R9, R0, R1
4648B6:  ADD.W           R1, R0, #0x30 ; '0'
4648BA:  MOV             R0, R5
4648BC:  BLX             j__ZN15CClumpModelInfo16GetFrameFromNameEP7RpClumpPKc; CClumpModelInfo::GetFrameFromName(RpClump *,char const*)
4648C0:  CBZ             R0, loc_4648D0
4648C2:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
4648C6:  MOV             R5, R0
4648C8:  MOV             R0, R5
4648CA:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
4648CE:  B               loc_4648D2
4648D0:  MOVS            R5, #0
4648D2:  MOVS            R0, #1
4648D4:  SUB.W           R1, R8, #0x50 ; 'P'; this
4648D8:  STR             R0, [SP,#0x90+var_90]; int
4648DA:  MOV             R2, R4; int
4648DC:  LDR             R0, [SP,#0x90+var_78]; int
4648DE:  MOV             R3, R5; int
4648E0:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP11RwMatrixTagS2_h; FxManager_c::CreateFxSystem(char *,RwMatrixTag *,RwMatrixTag *,uchar)
4648E4:  STR.W           R0, [R8,#-0x30]
4648E8:  ADD.W           R8, R8, #0x6C ; 'l'
4648EC:  LDR             R0, [SP,#0x90+var_7C]
4648EE:  ADD.W           R9, R9, #1
4648F2:  LDR             R0, [R0]
4648F4:  CMP             R9, R0
4648F6:  BLT             loc_46482E
4648F8:  LDR             R0, =(_ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr - 0x4648FE)
4648FA:  ADD             R0, PC; _ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr
4648FC:  LDR             R0, [R0]; CCutsceneMgr::ms_numAttachObjectToBones ...
4648FE:  LDR             R0, [R0]; CCutsceneMgr::ms_numAttachObjectToBones
464900:  CMP             R0, #1
464902:  BLT             loc_46494C
464904:  LDR             R0, =(_ZN12CCutsceneMgr22ms_iAttachObjectToBoneE_ptr - 0x46490C)
464906:  MOVS            R6, #0
464908:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iAttachObjectToBoneE_ptr
46490A:  LDR             R0, [R0]; CCutsceneMgr::ms_iAttachObjectToBone ...
46490C:  ADDS            R5, R0, #4
46490E:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x464914)
464910:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
464912:  LDR.W           R8, [R0]; CCutsceneMgr::ms_pCutsceneObjects ...
464916:  LDR             R0, =(_ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr - 0x46491C)
464918:  ADD             R0, PC; _ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr
46491A:  LDR.W           R9, [R0]; CCutsceneMgr::ms_numAttachObjectToBones ...
46491E:  LDR.W           R0, [R5,#-4]; CCutsceneMgr::ms_iAttachObjectToBone
464922:  LDRD.W          R1, R10, [R5]
464926:  LDR.W           R11, [R8,R0,LSL#2]
46492A:  LDR.W           R4, [R8,R1,LSL#2]
46492E:  LDR.W           R0, [R11,#0x18]
464932:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
464936:  MOV             R1, R10
464938:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
46493C:  STRD.W          R0, R11, [R4,#0x184]
464940:  ADDS            R5, #0xC
464942:  LDR.W           R0, [R9]; CCutsceneMgr::ms_numAttachObjectToBones
464946:  ADDS            R6, #1
464948:  CMP             R6, R0
46494A:  BLT             loc_46491E
46494C:  ADD             SP, SP, #0x74 ; 't'
46494E:  POP.W           {R8-R11}
464952:  POP             {R4-R7,PC}
