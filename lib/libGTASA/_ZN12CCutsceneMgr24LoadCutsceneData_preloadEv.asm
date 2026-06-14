; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr24LoadCutsceneData_preloadEv
; Address            : 0x463744 - 0x464254
; =========================================================

463744:  PUSH            {R4-R7,LR}
463746:  ADD             R7, SP, #0xC
463748:  PUSH.W          {R8-R11}
46374C:  SUB             SP, SP, #4
46374E:  VPUSH           {D8-D9}
463752:  SUB.W           SP, SP, #0x508
463756:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x463762)
46375A:  LDR.W           R2, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x463768)
46375E:  ADD             R0, PC; __stack_chk_guard_ptr
463760:  LDR.W           R1, =(aFinale - 0x46376C); "finale"
463764:  ADD             R2, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
463766:  LDR             R0, [R0]; __stack_chk_guard
463768:  ADD             R1, PC; "finale"
46376A:  LDR             R3, [R0]
46376C:  LDR             R0, [R2]; char *
46376E:  STR.W           R3, [R7,#var_34]
463772:  BLX             strcasecmp
463776:  CBZ             R0, loc_4637BC
463778:  LDR.W           R0, =(off_667F90 - 0x463784); "BCESAR2" ...
46377C:  LDR.W           R1, =(aBcesar2 - 0x46378C); "BCESAR2"
463780:  ADD             R0, PC; off_667F90
463782:  ADDS            R5, R0, #4
463784:  LDR.W           R0, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x46378E)
463788:  ADD             R1, PC; "BCESAR2"
46378A:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
46378C:  LDR             R4, [R0]; CCutsceneMgr::ms_cutsceneName ...
46378E:  MOV             R0, R4; char *
463790:  BLX             strcasecmp
463794:  CBZ             R0, loc_4637A0
463796:  LDR             R1, [R5,#4]; "BCESAR4" ...
463798:  ADDS            R5, #8
46379A:  CMP             R1, #0
46379C:  BNE             loc_46378E
46379E:  B               loc_4637BC
4637A0:  LDR             R0, [R5]
4637A2:  MOVW            R2, #0xFFFF
4637A6:  UXTH            R1, R0
4637A8:  CMP             R1, R2
4637AA:  BEQ             loc_4637BC
4637AC:  LDR.W           R2, =(AudioEngine_ptr - 0x4637B6)
4637B0:  SXTH            R1, R0; __int16
4637B2:  ADD             R2, PC; AudioEngine_ptr
4637B4:  LDR             R0, [R2]; AudioEngine ; this
4637B6:  MOVS            R2, #1; unsigned __int8
4637B8:  BLX             j__ZN12CAudioEngine20PreloadCutsceneTrackEsh; CAudioEngine::PreloadCutsceneTrack(short,uchar)
4637BC:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4637D0)
4637C0:  MOVW            R10, #:lower16:locret_252A26
4637C4:  ADR.W           R8, dword_46427C
4637C8:  MOV.W           R4, #(elf_hash_bucket+0x30)
4637CC:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4637CE:  MOVT            R10, #:upper16:locret_252A26
4637D2:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4637D4:  ADD.W           R6, R0, #0x1780
4637D8:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4637E0)
4637DC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4637DE:  LDR.W           R11, [R0]; CModelInfo::ms_modelInfoPtrs ...
4637E2:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4637EA)
4637E6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4637E8:  LDR.W           R9, [R0]; CModelInfo::ms_modelInfoPtrs ...
4637EC:  LDR.W           R5, [R11,R4,LSL#2]
4637F0:  LDRSH.W         R0, [R5,#0x1E]
4637F4:  CMP             R0, #0
4637F6:  BGT             loc_463814
4637F8:  LDRB            R0, [R6]
4637FA:  CMP             R0, #1
4637FC:  BNE             loc_463808
4637FE:  MOV             R0, R4; this
463800:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
463804:  LDR.W           R5, [R9,R4,LSL#2]
463808:  MOV             R0, R8; this
46380A:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
46380E:  STR             R0, [R5,#4]
463810:  STR.W           R10, [R5,#8]
463814:  ADDS            R4, #1
463816:  ADDS            R6, #0x14
463818:  CMP.W           R4, #0x140
46381C:  BNE             loc_4637EC
46381E:  LDR.W           R1, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x46382A)
463822:  LDR.W           R5, =(_ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr - 0x463830)
463826:  ADD             R1, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
463828:  LDR.W           R0, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x463838)
46382C:  ADD             R5, PC; _ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr
46382E:  LDR.W           R4, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x46383C)
463832:  LDR             R2, [R1]; CCarCtrl::CarDensityMultiplier ...
463834:  ADD             R0, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
463836:  LDR             R1, [R5]; CCutsceneMgr::ms_aUncompressedCutsceneAnims ...
463838:  ADD             R4, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
46383A:  LDR.W           R12, =(_ZN12CCutsceneMgr17m_fPrevCarDensityE_ptr - 0x463848)
46383E:  LDR             R5, [R2]; CCarCtrl::CarDensityMultiplier
463840:  LDR.W           R2, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x46384E)
463844:  ADD             R12, PC; _ZN12CCutsceneMgr17m_fPrevCarDensityE_ptr
463846:  LDR.W           R6, =(_ZN12CCutsceneMgr19m_PrevExtraColourOnE_ptr - 0x463856)
46384A:  ADD             R2, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
46384C:  LDR.W           LR, =(byte_9AE230 - 0x46385A)
463850:  LDR             R3, [R0]; CTimeCycle::m_bExtraColourOn ...
463852:  ADD             R6, PC; _ZN12CCutsceneMgr19m_PrevExtraColourOnE_ptr
463854:  LDR             R2, [R2]; CCutsceneMgr::ms_cutsceneOffset ...
463856:  ADD             LR, PC; byte_9AE230
463858:  LDR             R0, [R4]; CCutsceneMgr::ms_iModelIndex ...
46385A:  MOVS            R4, #0
46385C:  LDR.W           R8, [R12]; CCutsceneMgr::m_fPrevCarDensity ...
463860:  LDR.W           R12, [R6]; CCutsceneMgr::m_PrevExtraColourOn ...
463864:  LDR             R6, [R3]; CTimeCycle::m_bExtraColourOn
463866:  STRB.W          R4, [LR]
46386A:  STRD.W          R4, R4, [R2]; CCutsceneMgr::ms_cutsceneOffset
46386E:  CMP             R6, #0
463870:  STR             R4, [R2,#(dword_9ABFA0 - 0x9ABF98)]
463872:  LDR.W           R2, =(_ZN12CCutsceneMgr16ms_numTextOutputE_ptr - 0x46387E)
463876:  LDR.W           R3, =(_ZN10CTimeCycle13m_ExtraColourE_ptr - 0x463884)
46387A:  ADD             R2, PC; _ZN12CCutsceneMgr16ms_numTextOutputE_ptr
46387C:  STR.W           R5, [R8]; CCutsceneMgr::m_fPrevCarDensity
463880:  ADD             R3, PC; _ZN10CTimeCycle13m_ExtraColourE_ptr
463882:  LDR             R2, [R2]; CCutsceneMgr::ms_numTextOutput ...
463884:  LDR             R3, [R3]; CTimeCycle::m_ExtraColour ...
463886:  STR             R4, [R2]; CCutsceneMgr::ms_numTextOutput
463888:  LDR.W           R2, =(_ZN12CCutsceneMgr17ms_currTextOutputE_ptr - 0x463892)
46388C:  LDR             R3, [R3]; CTimeCycle::m_ExtraColour
46388E:  ADD             R2, PC; _ZN12CCutsceneMgr17ms_currTextOutputE_ptr
463890:  LDR             R2, [R2]; CCutsceneMgr::ms_currTextOutput ...
463892:  STR             R4, [R2]; CCutsceneMgr::ms_currTextOutput
463894:  LDR.W           R2, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x46389C)
463898:  ADD             R2, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
46389A:  LDR             R2, [R2]; CCutsceneMgr::ms_numLoadObjectNames ...
46389C:  STR             R4, [R2]; CCutsceneMgr::ms_numLoadObjectNames
46389E:  LDR.W           R2, =(_ZN12CCutsceneMgr31ms_numUncompressedCutsceneAnimsE_ptr - 0x4638A6)
4638A2:  ADD             R2, PC; _ZN12CCutsceneMgr31ms_numUncompressedCutsceneAnimsE_ptr
4638A4:  LDR             R2, [R2]; CCutsceneMgr::ms_numUncompressedCutsceneAnims ...
4638A6:  STR             R4, [R2]; CCutsceneMgr::ms_numUncompressedCutsceneAnims
4638A8:  LDR.W           R2, =(_ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr - 0x4638B0)
4638AC:  ADD             R2, PC; _ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr
4638AE:  LDR             R2, [R2]; CCutsceneMgr::ms_numAttachObjectToBones ...
4638B0:  STR             R4, [R2]; CCutsceneMgr::ms_numAttachObjectToBones
4638B2:  LDR.W           R2, =(_ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr - 0x4638BA)
4638B6:  ADD             R2, PC; _ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr
4638B8:  LDR             R2, [R2]; CCutsceneMgr::ms_iNumHiddenEntities ...
4638BA:  STR             R4, [R2]; CCutsceneMgr::ms_iNumHiddenEntities
4638BC:  LDR.W           R2, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x4638C4)
4638C0:  ADD             R2, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
4638C2:  LDR             R2, [R2]; CCutsceneMgr::ms_iNumParticleEffects ...
4638C4:  STR             R4, [R2]; CCutsceneMgr::ms_iNumParticleEffects
4638C6:  LDR.W           R2, =(_ZN12CCutsceneMgr17m_PrevExtraColourE_ptr - 0x4638CE)
4638CA:  ADD             R2, PC; _ZN12CCutsceneMgr17m_PrevExtraColourE_ptr
4638CC:  LDR             R2, [R2]; CCutsceneMgr::m_PrevExtraColour ...
4638CE:  STR             R3, [R2]; CCutsceneMgr::m_PrevExtraColour
4638D0:  LDR.W           R3, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x4638DC)
4638D4:  LDR.W           R2, =(_ZN12CCutsceneMgr17m_fPrevPedDensityE_ptr - 0x4638DE)
4638D8:  ADD             R3, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
4638DA:  ADD             R2, PC; _ZN12CCutsceneMgr17m_fPrevPedDensityE_ptr
4638DC:  LDR             R3, [R3]; CPopulation::PedDensityMultiplier ...
4638DE:  LDR             R2, [R2]; CCutsceneMgr::m_fPrevPedDensity ...
4638E0:  LDR             R3, [R3]; CPopulation::PedDensityMultiplier
4638E2:  STR             R3, [R2]; CCutsceneMgr::m_fPrevPedDensity
4638E4:  IT NE
4638E6:  MOVNE           R6, #1
4638E8:  STRB.W          R4, [R1,#(byte_9AD1E4 - 0x9AD1C4)]
4638EC:  STRB            R4, [R1]; CCutsceneMgr::ms_aUncompressedCutsceneAnims
4638EE:  STRB.W          R4, [R1,#(byte_9AD204 - 0x9AD1C4)]
4638F2:  STRB.W          R4, [R1,#(byte_9AD224 - 0x9AD1C4)]
4638F6:  STRB.W          R4, [R1,#(byte_9AD244 - 0x9AD1C4)]
4638FA:  STRB.W          R4, [R1,#(byte_9AD264 - 0x9AD1C4)]
4638FE:  STRB.W          R4, [R1,#(byte_9AD284 - 0x9AD1C4)]
463902:  STRB.W          R4, [R1,#(byte_9AD2A4 - 0x9AD1C4)]
463906:  MOVS            R1, #0xC8
463908:  STRB.W          R6, [R12]; CCutsceneMgr::m_PrevExtraColourOn
46390C:  BLX             j___aeabi_memclr8_0
463910:  LDR.W           R0, =(TheCamera_ptr - 0x463920)
463914:  MOV             R1, #0x3DCCCCCD; float
46391C:  ADD             R0, PC; TheCamera_ptr
46391E:  LDR             R0, [R0]; TheCamera ; this
463920:  BLX             j__ZN7CCamera17SetNearClipScriptEf; CCamera::SetNearClipScript(float)
463924:  MOVS            R0, #0; this
463926:  BLX             j__ZN8CRubbish13SetVisibilityEb; CRubbish::SetVisibility(bool)
46392A:  MOV.W           R0, #0xFFFFFFFF; int
46392E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
463932:  MOV             R6, R0
463934:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x463944)
463938:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x463946)
46393C:  MOV.W           R2, #0x194
463940:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
463942:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
463944:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
463946:  LDR             R1, [R1]; CWorld::Players ...
463948:  LDR             R0, [R0]; CWorld::PlayerInFocus
46394A:  SMLABB.W        R5, R0, R2, R1
46394E:  LDR.W           R0, [R6,#0x444]
463952:  CMP             R0, #0
463954:  IT NE
463956:  LDRNE           R4, [R0]
463958:  MOV             R0, R4; this
46395A:  BLX             j__ZN7CWanted13ClearQdCrimesEv; CWanted::ClearQdCrimes(void)
46395E:  LDR             R0, [R6,#0x1C]
463960:  BIC.W           R0, R0, #0x80
463964:  STR             R0, [R6,#0x1C]
463966:  MOV             R0, R6; this
463968:  BLX             j__ZN10CPlayerPed17ResetSprintEnergyEv; CPlayerPed::ResetSprintEnergy(void)
46396C:  MOVS            R0, #0; this
46396E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
463972:  LDRH.W          R1, [R0,#0x110]
463976:  MOV             R2, #0x461C4000; float
46397E:  MOV.W           R11, #1
463982:  ORR.W           R1, R1, #0x80
463986:  STRH.W          R1, [R0,#0x110]
46398A:  MOV             R0, R5; this
46398C:  MOVS            R1, #1; bool
46398E:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
463992:  LDR.W           R0, =(gString_ptr - 0x46399E)
463996:  LDR.W           R1, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x4639A0)
46399A:  ADD             R0, PC; gString_ptr
46399C:  ADD             R1, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
46399E:  LDR             R4, [R0]; gString
4639A0:  LDR             R2, [R1]; CCutsceneMgr::ms_cutsceneName ...
4639A2:  ADR.W           R1, aSCut; "%s.CUT"
4639A6:  MOV             R0, R4
4639A8:  BL              sub_5E6BC0
4639AC:  LDR.W           R0, =(_ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr - 0x4639BA)
4639B0:  ADD             R2, SP, #0x538+var_480; unsigned int *
4639B2:  ADD             R3, SP, #0x538+var_47C; unsigned int *
4639B4:  MOV             R1, R4; char *
4639B6:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr
4639B8:  LDR             R0, [R0]; CCutsceneMgr::ms_pCutsceneDir ...
4639BA:  LDR             R0, [R0]; this
4639BC:  BLX             j__ZN10CDirectory8FindItemEPKcRjS2_; CDirectory::FindItem(char const*,uint &,uint &)
4639C0:  CMP             R0, #0
4639C2:  BEQ.W           loc_46422A
4639C6:  LDR             R0, [SP,#0x538+var_480]
4639C8:  LSLS            R0, R0, #0xB
4639CA:  STR             R0, [SP,#0x538+var_480]
4639CC:  LDR             R0, [SP,#0x538+var_47C]
4639CE:  LSLS            R0, R0, #0xB; unsigned int
4639D0:  STR             R0, [SP,#0x538+var_47C]
4639D2:  BLX             _Znaj; operator new[](uint)
4639D6:  LDR.W           R2, =(aAnimCutsImg_0 - 0x4639E4); "ANIM\\CUTS.IMG"
4639DA:  MOV             R4, R0
4639DC:  MOVS            R0, #2
4639DE:  MOVS            R1, #1
4639E0:  ADD             R2, PC; "ANIM\\CUTS.IMG"
4639E2:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
4639E6:  LDR             R1, [SP,#0x538+var_480]
4639E8:  MOV             R5, R0
4639EA:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
4639EE:  LDR             R2, [SP,#0x538+var_47C]; size_t
4639F0:  MOV             R0, R5; int
4639F2:  MOV             R1, R4; void *
4639F4:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
4639F8:  MOV             R0, R5
4639FA:  MOVS            R1, #0
4639FC:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
463A00:  ADD.W           R10, SP, #0x538+var_434
463A04:  LDR.W           R1, =(_ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr - 0x463A16)
463A08:  ADD.W           R0, R10, #7
463A0C:  STR             R0, [SP,#0x538+s]
463A0E:  LDR.W           R0, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x463A20)
463A12:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr
463A14:  VMOV.I32        Q4, #0
463A18:  MOVW            R9, #0x2401
463A1C:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
463A1E:  MOV.W           R8, #0
463A22:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneOffset ...
463A24:  STR             R0, [SP,#0x538+var_4F4]
463A26:  LDR.W           R0, =(RwEngineInstance_ptr - 0x463A2E)
463A2A:  ADD             R0, PC; RwEngineInstance_ptr
463A2C:  LDR             R0, [R0]; RwEngineInstance
463A2E:  STR             R0, [SP,#0x538+var_4A4]
463A30:  LDR.W           R0, =(RwEngineInstance_ptr - 0x463A38)
463A34:  ADD             R0, PC; RwEngineInstance_ptr
463A36:  LDR             R0, [R0]; RwEngineInstance
463A38:  STR             R0, [SP,#0x538+var_4D0]
463A3A:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x463A42)
463A3E:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
463A40:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
463A42:  STR             R0, [SP,#0x538+var_4D4]
463A44:  LDR             R0, [R1]; CCutsceneMgr::ms_cLoadObjectName ...
463A46:  STR             R0, [SP,#0x538+var_4D8]
463A48:  LDR.W           R0, =(_ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr - 0x463A54)
463A4C:  LDR.W           R1, =(_ZN12CCutsceneMgr16ms_bRepeatObjectE_ptr - 0x463A56)
463A50:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr
463A52:  ADD             R1, PC; _ZN12CCutsceneMgr16ms_bRepeatObjectE_ptr
463A54:  LDR             R0, [R0]; CCutsceneMgr::ms_cLoadAnimName ...
463A56:  STR             R0, [SP,#0x538+var_4DC]
463A58:  LDR.W           R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x463A60)
463A5C:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
463A5E:  LDR             R0, [R0]; CCutsceneMgr::ms_iModelIndex ...
463A60:  STR             R0, [SP,#0x538+var_4E0]
463A62:  LDR             R0, [R1]; CCutsceneMgr::ms_bRepeatObject ...
463A64:  STR             R0, [SP,#0x538+var_4E4]
463A66:  LDR.W           R0, =(RwEngineInstance_ptr - 0x463A72)
463A6A:  LDR.W           R1, =(_ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr - 0x463A74)
463A6E:  ADD             R0, PC; RwEngineInstance_ptr
463A70:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr
463A72:  LDR             R0, [R0]; RwEngineInstance
463A74:  STR             R0, [SP,#0x538+var_4E8]
463A76:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x463A80)
463A7A:  LDR             R3, [R1]; CCutsceneMgr::ms_cLoadObjectName ...
463A7C:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
463A7E:  LDR.W           R1, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x463A88)
463A82:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
463A84:  ADD             R1, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
463A86:  STR             R0, [SP,#0x538+var_4EC]
463A88:  LDR.W           R0, =(_ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr - 0x463A92)
463A8C:  LDR             R5, [R1]; CCutsceneMgr::ms_iModelIndex ...
463A8E:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr
463A90:  LDR.W           R1, =(_ZN12CCutsceneMgr14ms_cTextOutputE_ptr - 0x463A9C)
463A94:  LDR.W           R12, [R0]; CCutsceneMgr::ms_cLoadAnimName ...
463A98:  ADD             R1, PC; _ZN12CCutsceneMgr14ms_cTextOutputE_ptr
463A9A:  LDR.W           R0, =(_ZN12CCutsceneMgr16ms_bRepeatObjectE_ptr - 0x463AA2)
463A9E:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_bRepeatObjectE_ptr
463AA0:  LDR.W           LR, [R0]; CCutsceneMgr::ms_bRepeatObject ...
463AA4:  LDR.W           R0, =(_ZN12CCutsceneMgr16ms_numTextOutputE_ptr - 0x463AAC)
463AA8:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_numTextOutputE_ptr
463AAA:  LDR             R0, [R0]; CCutsceneMgr::ms_numTextOutput ...
463AAC:  STR             R0, [SP,#0x538+var_4A8]
463AAE:  LDR             R0, [R1]; CCutsceneMgr::ms_cTextOutput ...
463AB0:  STR             R0, [SP,#0x538+var_4AC]
463AB2:  LDR.W           R0, =(_ZN12CCutsceneMgr17ms_iTextStartTimeE_ptr - 0x463ABE)
463AB6:  LDR.W           R1, =(_ZN12CCutsceneMgr16ms_iTextDurationE_ptr - 0x463AC0)
463ABA:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_iTextStartTimeE_ptr
463ABC:  ADD             R1, PC; _ZN12CCutsceneMgr16ms_iTextDurationE_ptr
463ABE:  LDR             R0, [R0]; CCutsceneMgr::ms_iTextStartTime ...
463AC0:  STR             R0, [SP,#0x538+var_4B0]
463AC2:  LDR             R0, [R1]; CCutsceneMgr::ms_iTextDuration ...
463AC4:  STR             R0, [SP,#0x538+var_4B4]
463AC6:  LDR.W           R0, =(_ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr - 0x463ACE)
463ACA:  ADD             R0, PC; _ZN12CCutsceneMgr25ms_numAttachObjectToBonesE_ptr
463ACC:  LDR             R0, [R0]; CCutsceneMgr::ms_numAttachObjectToBones ...
463ACE:  STR             R0, [SP,#0x538+var_4B8]
463AD0:  LDR.W           R0, =(_ZN12CCutsceneMgr22ms_iAttachObjectToBoneE_ptr - 0x463AD8)
463AD4:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iAttachObjectToBoneE_ptr
463AD6:  LDR             R0, [R0]; CCutsceneMgr::ms_iAttachObjectToBone ...
463AD8:  STR             R0, [SP,#0x538+var_4BC]
463ADA:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr - 0x463AE2)
463ADE:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr
463AE0:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumHiddenEntities ...
463AE2:  STR             R0, [SP,#0x538+var_4C0]
463AE4:  LDR.W           R0, =(_ZN12CCutsceneMgr16ms_crToHideItemsE_ptr - 0x463AEC)
463AE8:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_crToHideItemsE_ptr
463AEA:  LDR             R0, [R0]; CCutsceneMgr::ms_crToHideItems ...
463AEC:  STR             R0, [SP,#0x538+var_4C4]
463AEE:  LDR.W           R0, =(_ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr - 0x463AF6)
463AF2:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr
463AF4:  LDR             R0, [R0]; CCutsceneMgr::ms_pParticleEffects ...
463AF6:  STR             R0, [SP,#0x538+var_4C8]
463AF8:  LDR.W           R0, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x463B00)
463AFC:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
463AFE:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumParticleEffects ...
463B00:  STR             R0, [SP,#0x538+var_4CC]
463B02:  MOVS            R0, #0
463B04:  STRD.W          R4, R0, [SP,#0x538+var_4A0]
463B08:  B               def_463B80; jumptable 00463B80 default case
463B0A:  LDRD.W          R12, R3, [SP,#0x538+var_490]
463B0E:  LDRD.W          R5, LR, [SP,#0x538+var_498]
463B12:  MOV             R6, R8; jumptable 00463B80 default case
463B14:  B               loc_463B18
463B16:  ADDS            R4, #1
463B18:  LDRB            R0, [R4]
463B1A:  CMP             R0, #0xA
463B1C:  IT NE
463B1E:  CMPNE           R0, #0xD
463B20:  BEQ             loc_463B16
463B22:  CMP             R0, #0
463B24:  BEQ.W           loc_464096
463B28:  MOVS            R1, #0
463B2A:  B               loc_463B36
463B2C:  STRB.W          R0, [R10,R1]
463B30:  ADDS            R0, R4, R1
463B32:  ADDS            R1, #1
463B34:  LDRB            R0, [R0,#1]
463B36:  UXTB            R2, R0
463B38:  CMP             R2, #0xD
463B3A:  BHI             loc_463B2C
463B3C:  LSL.W           R2, R11, R2
463B40:  TST.W           R2, R9
463B44:  BEQ             loc_463B2C
463B46:  ADDS            R4, R4, R1
463B48:  MOV.W           R0, #0
463B4C:  STRB.W          R0, [R10,R1]
463B50:  BEQ.W           loc_464096
463B54:  ADR.W           R1, off_4642F0; char *
463B58:  MOV             R0, R10; char *
463B5A:  STRD.W          R12, R3, [SP,#0x538+var_490]
463B5E:  STRD.W          R5, LR, [SP,#0x538+var_498]
463B62:  BLX             strcmp
463B66:  LDRD.W          R5, LR, [SP,#0x538+var_498]
463B6A:  ADR.W           R1, dword_464328; char *
463B6E:  LDRD.W          R12, R3, [SP,#0x538+var_490]
463B72:  MOV.W           R8, #0
463B76:  CMP             R0, #0
463B78:  BEQ             def_463B80; jumptable 00463B80 default case
463B7A:  CMP             R6, #8; switch 9 cases
463B7C:  MOV             R8, R6
463B7E:  BHI             def_463B80; jumptable 00463B80 default case
463B80:  TBH.W           [PC,R6,LSL#1]; switch jump
463B84:  DCW 9; jump table for switch statement
463B86:  DCW 0x58
463B88:  DCW 0xA6
463B8A:  DCW 0x125
463B8C:  DCW 0x15D
463B8E:  DCW 0x169
463B90:  DCW 0x18A
463B92:  DCW 0x1B1
463B94:  DCW 0x26D
463B96:  ADR.W           R1, aInfo; jumptable 00463B80 case 0
463B9A:  MOV             R0, R10; char *
463B9C:  BLX             strcmp
463BA0:  ADR.W           R1, aModel; "model"
463BA4:  CMP             R0, #0
463BA6:  MOV.W           R8, #0
463BAA:  MOV             R0, R10; char *
463BAC:  IT EQ
463BAE:  MOVEQ.W         R8, #1
463BB2:  BLX             strcmp
463BB6:  ADR.W           R1, aText_0; "text"
463BBA:  CMP             R0, #0
463BBC:  MOV             R0, R10; char *
463BBE:  IT EQ
463BC0:  MOVEQ.W         R8, #2
463BC4:  BLX             strcmp
463BC8:  ADR.W           R1, aUncompress_0; "uncompress"
463BCC:  CMP             R0, #0
463BCE:  MOV             R0, R10; char *
463BD0:  IT EQ
463BD2:  MOVEQ.W         R8, #3
463BD6:  BLX             strcmp
463BDA:  ADR.W           R1, aAttach; "attach"
463BDE:  CMP             R0, #0
463BE0:  MOV             R0, R10; char *
463BE2:  IT EQ
463BE4:  MOVEQ.W         R8, #4
463BE8:  BLX             strcmp
463BEC:  ADR.W           R1, aRemove_0; "remove"
463BF0:  CMP             R0, #0
463BF2:  MOV             R0, R10; char *
463BF4:  IT EQ
463BF6:  MOVEQ.W         R8, #5
463BFA:  BLX             strcmp
463BFE:  ADR.W           R1, aPeffect; "peffect"
463C02:  CMP             R0, #0
463C04:  MOV             R0, R10; char *
463C06:  IT EQ
463C08:  MOVEQ.W         R8, #6
463C0C:  BLX             strcmp
463C10:  ADR.W           R1, aExtracol; "extracol"
463C14:  CMP             R0, #0
463C16:  MOV             R0, R10; char *
463C18:  IT EQ
463C1A:  MOVEQ.W         R8, #7
463C1E:  BLX             strcmp
463C22:  CMP             R0, #0
463C24:  LDRD.W          R5, LR, [SP,#0x538+var_498]
463C28:  LDRD.W          R12, R3, [SP,#0x538+var_490]
463C2C:  IT EQ
463C2E:  MOVEQ.W         R8, #8
463C32:  B               def_463B80; jumptable 00463B80 default case
463C34:  ADR.W           R1, aOffset; jumptable 00463B80 case 1
463C38:  MOV             R0, R10; char *
463C3A:  MOVS            R2, #6; size_t
463C3C:  BLX             strncmp
463C40:  LDRD.W          R5, LR, [SP,#0x538+var_498]
463C44:  MOV.W           R8, #1
463C48:  LDRD.W          R12, R3, [SP,#0x538+var_490]
463C4C:  CMP             R0, #0
463C4E:  BNE.W           def_463B80; jumptable 00463B80 default case
463C52:  ADD             R0, SP, #0x538+var_488
463C54:  STR             R0, [SP,#0x538+var_538]
463C56:  LDR             R0, [SP,#0x538+s]; s
463C58:  ADR.W           R1, aFFF; "%f %f %f"
463C5C:  ADD             R2, SP, #0x538+var_478
463C5E:  ADD             R3, SP, #0x538+var_484
463C60:  BLX             sscanf
463C64:  MOV.W           R0, #0xFFFFFFFF; int
463C68:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
463C6C:  MOV             R5, R0
463C6E:  ADD             R6, SP, #0x538+var_458
463C70:  LDRB.W          R0, [R5,#0x485]
463C74:  LSLS            R0, R0, #0x1F
463C76:  ITT NE
463C78:  LDRNE.W         R1, [R5,#0x590]; CVehicle *
463C7C:  CMPNE           R1, #0
463C7E:  BEQ             loc_463C9A
463C80:  MOV             R0, R6; this
463C82:  MOVS            R2, #0; int
463C84:  MOVS            R3, #1; bool
463C86:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
463C8A:  MOV             R1, R5; CPed *
463C8C:  STRB.W          R11, [SP,#0x538+var_447]
463C90:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
463C94:  MOV             R0, R6; this
463C96:  BLX             j__ZN23CTaskSimpleCarSetPedOutD2Ev; CTaskSimpleCarSetPedOut::~CTaskSimpleCarSetPedOut()
463C9A:  LDR             R3, [SP,#0x538+var_478]
463C9C:  LDRD.W          R2, R1, [SP,#0x538+var_488]; CVector *
463CA0:  LDR             R0, [SP,#0x538+var_4F4]; this
463CA2:  STRD.W          R3, R1, [R0]
463CA6:  STR             R2, [R0,#8]
463CA8:  BLX             j__ZN9CIplStore19AddIplsNeededAtPosnERK7CVector; CIplStore::AddIplsNeededAtPosn(CVector const&)
463CAC:  MOVS            R0, #0; this
463CAE:  BLX             j__ZN10CStreaming26SetLoadVehiclesInLoadSceneEb; CStreaming::SetLoadVehiclesInLoadScene(bool)
463CB2:  LDRD.W          R1, R0, [SP,#0x538+var_488]; CVector *
463CB6:  LDR             R2, [SP,#0x538+var_478]
463CB8:  STRD.W          R2, R0, [SP,#0x538+var_458]
463CBC:  MOV             R0, R6; this
463CBE:  STR             R1, [SP,#0x538+var_450]
463CC0:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
463CC4:  MOVS            R0, #(stderr+1); this
463CC6:  MOV.W           R8, #1
463CCA:  BLX             j__ZN10CStreaming26SetLoadVehiclesInLoadSceneEb; CStreaming::SetLoadVehiclesInLoadScene(bool)
463CCE:  B               loc_463B0A
463CD0:  MOV             R0, R10; jumptable 00463B80 case 2
463CD2:  MOV             R6, R1
463CD4:  BLX             strtok
463CD8:  ADR.W           R1, dword_464348; format
463CDC:  ADD             R2, SP, #0x538+var_484
463CDE:  BLX             sscanf
463CE2:  MOVS            R0, #0; char *
463CE4:  MOV             R1, R6; char *
463CE6:  BLX             strtok
463CEA:  ADD.W           R8, SP, #0x538+var_458
463CEE:  MOV             R1, R0; char *
463CF0:  MOV             R0, R8; char *
463CF2:  BLX             strcpy
463CF6:  MOVS            R0, #0; char *
463CF8:  MOV             R1, R6; char *
463CFA:  BLX             strtok
463CFE:  MOV             R5, R0
463D00:  LDR             R0, [SP,#0x538+var_4A4]
463D02:  LDR             R0, [R0]
463D04:  LDR.W           R1, [R0,#0x120]
463D08:  MOV             R0, R8
463D0A:  BLX             R1
463D0C:  ADD             R6, SP, #0x538+var_478
463D0E:  CMP             R5, #0
463D10:  MOV.W           R0, #0
463D14:  BEQ             loc_463DC8
463D16:  STRB.W          R0, [SP,#0x538+var_478]
463D1A:  MOV             R0, R6; char *
463D1C:  MOV             R1, R5; char *
463D1E:  BLX             strcpy
463D22:  LDR             R0, [SP,#0x538+var_4D0]
463D24:  LDR             R0, [R0]
463D26:  LDR.W           R1, [R0,#0x120]
463D2A:  MOV             R0, R6
463D2C:  BLX             R1
463D2E:  LDR.W           R8, [SP,#0x538+var_4D4]
463D32:  LDR             R1, [SP,#0x538+var_4D8]
463D34:  LDR.W           R0, [R8]
463D38:  ADD.W           R0, R1, R0,LSL#5; char *
463D3C:  ADD             R1, SP, #0x538+var_458; char *
463D3E:  BLX             strcpy
463D42:  LDR.W           R0, [R8]
463D46:  LDR             R1, [SP,#0x538+var_4DC]
463D48:  ADD.W           R0, R1, R0,LSL#5; char *
463D4C:  MOV             R1, R6; char *
463D4E:  BLX             strcpy
463D52:  LDR.W           R0, [R8]
463D56:  MOVS            R1, #2
463D58:  LDR             R2, [SP,#0x538+var_4E0]
463D5A:  STR.W           R1, [R2,R0,LSL#2]
463D5E:  MOVS            R2, #0
463D60:  LDR             R1, [SP,#0x538+var_4E4]
463D62:  STRB            R2, [R1,R0]
463D64:  ADDS            R0, #1
463D66:  STR.W           R0, [R8]
463D6A:  LDRD.W          R5, R8, [SP,#0x538+var_4EC]
463D6E:  B               loc_463DB6
463D70:  STRB.W          R0, [SP,#0x538+var_478]
463D74:  MOV             R0, R6; char *
463D76:  BLX             strcpy
463D7A:  LDR.W           R0, [R8]
463D7E:  LDR.W           R1, [R0,#0x120]
463D82:  MOV             R0, R6
463D84:  BLX             R1
463D86:  LDR             R0, [R5]
463D88:  LDR             R1, [SP,#0x538+var_48C]
463D8A:  ADD.W           R0, R1, R0,LSL#5; char *
463D8E:  ADD             R1, SP, #0x538+var_458; char *
463D90:  BLX             strcpy
463D94:  LDR             R0, [R5]
463D96:  LDR             R1, [SP,#0x538+var_490]
463D98:  ADD.W           R0, R1, R0,LSL#5; char *
463D9C:  MOV             R1, R6; char *
463D9E:  BLX             strcpy
463DA2:  LDR             R0, [R5]
463DA4:  MOVS            R2, #3
463DA6:  LDR             R1, [SP,#0x538+var_494]
463DA8:  STRB.W          R11, [R1,R0]
463DAC:  LDR             R1, [SP,#0x538+var_498]
463DAE:  STR.W           R2, [R1,R0,LSL#2]
463DB2:  ADDS            R0, #1
463DB4:  STR             R0, [R5]
463DB6:  ADR.W           R1, dword_464328; char *
463DBA:  MOVS            R0, #0; char *
463DBC:  BLX             strtok
463DC0:  MOV             R1, R0; char *
463DC2:  MOVS            R0, #0
463DC4:  CMP             R1, #0
463DC6:  BNE             loc_463D70
463DC8:  MOV.W           R8, #2
463DCC:  B               loc_463B0A
463DCE:  ADR.W           R1, aDDS; jumptable 00463B80 case 3
463DD2:  ADD             R2, SP, #0x538+var_478
463DD4:  ADD             R3, SP, #0x538+var_484
463DD6:  MOV             R0, R10; s
463DD8:  ADD.W           R8, SP, #0x538+var_458
463DDC:  STR.W           R8, [SP,#0x538+var_538]
463DE0:  BLX             sscanf
463DE4:  MOV             R0, R8; char *
463DE6:  BLX             strlen
463DEA:  CBZ             R0, loc_463E12
463DEC:  MOVS            R5, #0
463DEE:  MOVS            R6, #0
463DF0:  LDRB.W          R0, [R8,R5]
463DF4:  ADDS            R6, #1
463DF6:  SUB.W           R1, R0, #0x61 ; 'a'
463DFA:  UXTB            R1, R1
463DFC:  CMP             R1, #0x19
463DFE:  ITT LS
463E00:  ADDLS           R0, #0xE0
463E02:  STRBLS.W        R0, [R8,R5]
463E06:  UXTB            R5, R6
463E08:  MOV             R0, R8; char *
463E0A:  BLX             strlen
463E0E:  CMP             R0, R5
463E10:  BHI             loc_463DF0
463E12:  LDR             R5, [SP,#0x538+var_4A8]
463E14:  LDR             R1, [SP,#0x538+var_4AC]
463E16:  LDR             R0, [R5]
463E18:  ADD.W           R0, R1, R0,LSL#3; char *
463E1C:  MOV             R1, R8; char *
463E1E:  BLX             strcpy
463E22:  LDR             R0, [R5]
463E24:  MOV.W           R8, #3
463E28:  LDR             R2, [SP,#0x538+var_4B0]
463E2A:  LDR             R1, [SP,#0x538+var_478]
463E2C:  STR.W           R1, [R2,R0,LSL#2]
463E30:  LDR             R2, [SP,#0x538+var_4B4]
463E32:  LDR             R1, [SP,#0x538+var_484]
463E34:  STR.W           R1, [R2,R0,LSL#2]
463E38:  ADDS            R0, #1
463E3A:  STR             R0, [R5]
463E3C:  B               loc_463B0A
463E3E:  MOV             R0, R10; jumptable 00463B80 case 4
463E40:  BLX             strtok
463E44:  BLX             j__ZN12CCutsceneMgr25LoadAnimationUncompressedEPKc; CCutsceneMgr::LoadAnimationUncompressed(char const*)
463E48:  LDRD.W          R5, LR, [SP,#0x538+var_498]
463E4C:  MOV.W           R8, #4
463E50:  LDRD.W          R12, R3, [SP,#0x538+var_490]
463E54:  B               def_463B80; jumptable 00463B80 default case
463E56:  ADD             R0, SP, #0x538+var_484; jumptable 00463B80 case 5
463E58:  ADR.W           R1, aDDD; "%d,%d,%d"
463E5C:  ADD             R2, SP, #0x538+var_458
463E5E:  ADD             R3, SP, #0x538+var_478
463E60:  STR             R0, [SP,#0x538+var_538]
463E62:  MOV             R0, R10; s
463E64:  BLX             sscanf
463E68:  LDRD.W          R5, LR, [SP,#0x538+var_498]
463E6C:  MOV.W           R8, #5
463E70:  LDR             R6, [SP,#0x538+var_4B8]
463E72:  LDR             R3, [SP,#0x538+var_4BC]
463E74:  LDR             R1, [SP,#0x538+var_458]
463E76:  LDR             R0, [R6]
463E78:  LDR.W           R12, [SP,#0x538+var_490]
463E7C:  ADD.W           R2, R0, R0,LSL#1
463E80:  ADDS            R0, #1
463E82:  STR.W           R1, [R3,R2,LSL#2]
463E86:  ADD.W           R2, R3, R2,LSL#2
463E8A:  LDR             R3, [SP,#0x538+var_484]
463E8C:  LDR             R1, [SP,#0x538+var_478]
463E8E:  STRD.W          R1, R3, [R2,#4]
463E92:  LDR             R3, [SP,#0x538+var_48C]
463E94:  STR             R0, [R6]
463E96:  B               def_463B80; jumptable 00463B80 default case
463E98:  ADD             R0, SP, #0x538+var_488; jumptable 00463B80 case 6
463E9A:  ADR.W           R1, aFFFS; "%f,%f,%f,%s"
463E9E:  ADD             R2, SP, #0x538+var_478
463EA0:  ADD             R3, SP, #0x538+var_484
463EA2:  STR             R0, [SP,#0x538+var_538]
463EA4:  MOV             R0, R10; s
463EA6:  ADD             R5, SP, #0x538+var_458
463EA8:  STR             R5, [SP,#0x538+var_534]
463EAA:  BLX             sscanf
463EAE:  LDR             R6, [SP,#0x538+var_4C0]
463EB0:  MOVS            R2, #0x2C ; ','
463EB2:  LDR             R3, [SP,#0x538+var_4C4]
463EB4:  LDR             R0, [R6]
463EB6:  MUL.W           R1, R0, R2
463EBA:  MLA.W           R0, R0, R2, R3
463EBE:  LDR             R2, [SP,#0x538+var_478]
463EC0:  STR             R2, [R3,R1]
463EC2:  LDRD.W          R2, R1, [SP,#0x538+var_488]
463EC6:  STRD.W          R1, R2, [R0,#4]
463ECA:  ADDS            R0, #0xC; char *
463ECC:  MOV             R1, R5; char *
463ECE:  BLX             strcpy
463ED2:  LDRD.W          R5, LR, [SP,#0x538+var_498]
463ED6:  MOV.W           R8, #6
463EDA:  LDRD.W          R12, R3, [SP,#0x538+var_490]
463EDE:  LDR             R0, [R6]
463EE0:  ADDS            R0, #1
463EE2:  STR             R0, [R6]
463EE4:  B               def_463B80; jumptable 00463B80 default case
463EE6:  ADD             R6, SP, #0x538+var_458; jumptable 00463B80 case 7
463EE8:  ADD.W           R8, SP, #0x538+var_478
463EEC:  ADR.W           R5, dword_4642F4
463EF0:  MOV             R0, R6
463EF2:  VST1.64         {D8-D9}, [R0]!
463EF6:  MOV             R1, R5; char *
463EF8:  VST1.64         {D8-D9}, [R0]
463EFC:  MOV             R0, R8
463EFE:  VST1.64         {D8-D9}, [R0]!
463F02:  VST1.64         {D8-D9}, [R0]
463F06:  MOV             R0, R10; char *
463F08:  BLX             strtok
463F0C:  MOV             R1, R0; char *
463F0E:  MOV             R0, R6; char *
463F10:  MOVS            R2, #0x1F; size_t
463F12:  BLX             strncpy
463F16:  MOVS            R0, #0; char *
463F18:  MOV             R1, R5; char *
463F1A:  BLX             strtok
463F1E:  BLX             atoi
463F22:  STR             R0, [SP,#0x538+var_4F8]
463F24:  MOVS            R0, #0; char *
463F26:  MOV             R1, R5; char *
463F28:  BLX             strtok
463F2C:  BLX             atoi
463F30:  STR             R0, [SP,#0x538+var_4FC]
463F32:  MOVS            R0, #0; char *
463F34:  MOV             R1, R5; char *
463F36:  BLX             strtok
463F3A:  BLX             atoi
463F3E:  STR             R0, [SP,#0x538+var_500]
463F40:  MOVS            R0, #0; char *
463F42:  MOV             R1, R5; char *
463F44:  BLX             strtok
463F48:  MOV             R1, R0; char *
463F4A:  MOV             R0, R8; char *
463F4C:  MOVS            R2, #0x1F; size_t
463F4E:  BLX             strncpy
463F52:  MOVS            R0, #0; char *
463F54:  MOV             R1, R5; char *
463F56:  BLX             strtok
463F5A:  BLX             atof
463F5E:  STRD.W          R1, R0, [SP,#0x538+var_508]
463F62:  MOVS            R0, #0; char *
463F64:  MOV             R1, R5; char *
463F66:  BLX             strtok
463F6A:  BLX             atof
463F6E:  STRD.W          R1, R0, [SP,#0x538+var_510]
463F72:  MOVS            R0, #0; char *
463F74:  MOV             R1, R5; char *
463F76:  BLX             strtok
463F7A:  BLX             atof
463F7E:  STRD.W          R1, R0, [SP,#0x538+var_518]
463F82:  MOVS            R0, #0; char *
463F84:  MOV             R1, R5; char *
463F86:  BLX             strtok
463F8A:  BLX             atof
463F8E:  STRD.W          R1, R0, [SP,#0x538+var_520]
463F92:  MOVS            R0, #0; char *
463F94:  MOV             R1, R5; char *
463F96:  BLX             strtok
463F9A:  BLX             atof
463F9E:  STRD.W          R1, R0, [SP,#0x538+var_528]
463FA2:  MOVS            R0, #0; char *
463FA4:  MOV             R1, R5; char *
463FA6:  BLX             strtok
463FAA:  BLX             atof
463FAE:  STRD.W          R1, R0, [SP,#0x538+var_530]
463FB2:  MOVS            R1, #0x6C ; 'l'
463FB4:  LDR             R6, [SP,#0x538+var_4CC]
463FB6:  MOVS            R5, #0
463FB8:  LDR.W           R8, [SP,#0x538+var_4C8]
463FBC:  LDR             R0, [R6]
463FBE:  MLA.W           R0, R0, R1, R8
463FC2:  LDR             R1, [SP,#0x538+var_4F8]
463FC4:  STR             R5, [R0,#0x20]
463FC6:  STR             R1, [R0,#0x24]
463FC8:  LDR             R1, [SP,#0x538+var_4FC]
463FCA:  STR             R1, [R0,#0x28]
463FCC:  LDR             R1, [SP,#0x538+var_500]
463FCE:  STR             R1, [R0,#0x2C]
463FD0:  ADDS            R0, #0x30 ; '0'; char *
463FD2:  ADD             R1, SP, #0x538+var_478; char *
463FD4:  BLX             strcpy
463FD8:  LDRD.W          R1, R0, [SP,#0x538+var_518]
463FDC:  VMOV            D16, R0, R1
463FE0:  LDRD.W          R1, R0, [SP,#0x538+var_508]
463FE4:  VCVT.F32.F64    S4, D16
463FE8:  VMOV            D17, R0, R1
463FEC:  LDRD.W          R1, R0, [SP,#0x538+var_510]
463FF0:  VCVT.F32.F64    S2, D17
463FF4:  VMOV            D18, R0, R1
463FF8:  LDRD.W          R1, R0, [SP,#0x538+var_520]
463FFC:  VCVT.F32.F64    S0, D18
464000:  VMOV            D19, R0, R1
464004:  LDRD.W          R1, R0, [SP,#0x538+var_528]
464008:  VCVT.F32.F64    S6, D19
46400C:  VMOV            D20, R0, R1
464010:  LDRD.W          R1, R0, [SP,#0x538+var_530]
464014:  VCVT.F32.F64    S8, D20
464018:  VMOV            D16, R0, R1
46401C:  LDR             R0, [R6]
46401E:  MOVS            R1, #0x6C ; 'l'
464020:  VCVT.F32.F64    S10, D16
464024:  MLA.W           R0, R0, R1, R8; char *
464028:  ADD             R1, SP, #0x538+var_458; char *
46402A:  VSTR            S2, [R0,#0x50]
46402E:  VSTR            S0, [R0,#0x54]
464032:  VSTR            S4, [R0,#0x58]
464036:  VSTR            S6, [R0,#0x5C]
46403A:  VSTR            S8, [R0,#0x60]
46403E:  VSTR            S10, [R0,#0x64]
464042:  STRH.W          R5, [R0,#0x68]
464046:  BLX             strcpy
46404A:  LDRD.W          R5, LR, [SP,#0x538+var_498]
46404E:  MOV.W           R8, #7
464052:  LDRD.W          R12, R3, [SP,#0x538+var_490]
464056:  LDR             R0, [R6]
464058:  ADDS            R0, #1
46405A:  STR             R0, [R6]
46405C:  B               def_463B80; jumptable 00463B80 default case
46405E:  LDR             R0, [SP,#0x538+var_49C]; jumptable 00463B80 case 8
464060:  MOV.W           R8, #8
464064:  LSLS            R0, R0, #0x1F
464066:  MOV.W           R0, #1
46406A:  STR             R0, [SP,#0x538+var_49C]
46406C:  BNE.W           def_463B80; jumptable 00463B80 default case
464070:  ADR             R1, dword_464348; format
464072:  ADD             R2, SP, #0x538+var_458
464074:  MOV             R0, R10; s
464076:  BLX             sscanf
46407A:  LDR             R0, [SP,#0x538+var_458]
46407C:  CBZ             R0, loc_46408C
46407E:  SUBS            R0, #1; this
464080:  MOVS            R1, #0; int
464082:  STR             R0, [SP,#0x538+var_458]
464084:  BLX             j__ZN10CTimeCycle16StartExtraColourEib; CTimeCycle::StartExtraColour(int,bool)
464088:  MOVS            R0, #1
46408A:  B               loc_46408E
46408C:  MOVS            R0, #0
46408E:  MOV.W           R8, #8
464092:  STR             R0, [SP,#0x538+var_49C]
464094:  B               loc_463B0A
464096:  LDR             R0, [SP,#0x538+var_4A0]; void *
464098:  BLX             _ZdaPv; operator delete[](void *)
46409C:  LDR             R0, [SP,#0x538+var_49C]
46409E:  LSLS            R0, R0, #0x1F
4640A0:  ITT EQ
4640A2:  MOVEQ           R0, #0; this
4640A4:  BLXEQ           j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
4640A8:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x4640B0)
4640AA:  LDR             R1, =(_ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr - 0x4640B2)
4640AC:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
4640AE:  ADD             R1, PC; _ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr
4640B0:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
4640B2:  LDR             R1, [R1]; CCutsceneMgr::ms_numAppendObjectNames ...
4640B4:  LDR.W           R9, [R0]; CCutsceneMgr::ms_numLoadObjectNames
4640B8:  LDR             R0, [R1]; CCutsceneMgr::ms_numAppendObjectNames
4640BA:  CMP             R0, #1
4640BC:  BLT             loc_464130
4640BE:  LDR             R0, =(_ZN12CCutsceneMgr20ms_cAppendObjectNameE_ptr - 0x4640C8)
4640C0:  MOVS            R6, #0
4640C2:  LDR             R1, =(_ZN12CCutsceneMgr18ms_cAppendAnimNameE_ptr - 0x4640CA)
4640C4:  ADD             R0, PC; _ZN12CCutsceneMgr20ms_cAppendObjectNameE_ptr
4640C6:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_cAppendAnimNameE_ptr
4640C8:  LDR             R4, [R0]; CCutsceneMgr::ms_cAppendObjectName ...
4640CA:  LDR             R0, =(_ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr - 0x4640D2)
4640CC:  LDR             R5, [R1]; CCutsceneMgr::ms_cAppendAnimName ...
4640CE:  ADD             R0, PC; _ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr
4640D0:  LDR             R1, =(_ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr - 0x4640D8)
4640D2:  LDR             R0, [R0]; CCutsceneMgr::ms_cLoadObjectName ...
4640D4:  ADD             R1, PC; _ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr
4640D6:  STR             R0, [SP,#0x538+var_48C]
4640D8:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x4640DE)
4640DA:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
4640DC:  LDR.W           R10, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
4640E0:  LDR             R0, [R1]; CCutsceneMgr::ms_cLoadAnimName ...
4640E2:  LDR             R1, =(_ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr - 0x4640EC)
4640E4:  STR             R0, [SP,#0x538+var_490]
4640E6:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x4640EE)
4640E8:  ADD             R1, PC; _ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr
4640EA:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
4640EC:  LDR.W           R11, [R1]; CCutsceneMgr::ms_numAppendObjectNames ...
4640F0:  LDR.W           R8, [R0]; CCutsceneMgr::ms_iModelIndex ...
4640F4:  LDR             R0, [SP,#0x538+var_48C]
4640F6:  MOV             R1, R4; char *
4640F8:  ADD.W           R0, R0, R9,LSL#5; char *
4640FC:  BLX             strcpy
464100:  LDR.W           R0, [R10]; CCutsceneMgr::ms_numLoadObjectNames
464104:  LDR             R1, [SP,#0x538+var_490]
464106:  ADD.W           R0, R1, R0,LSL#5; char *
46410A:  MOV             R1, R5; char *
46410C:  BLX             strcpy
464110:  LDR.W           R0, [R10]; CCutsceneMgr::ms_numLoadObjectNames
464114:  MOVS            R1, #2
464116:  ADDS            R5, #0x20 ; ' '
464118:  ADDS            R4, #0x20 ; ' '
46411A:  ADD.W           R9, R0, #1
46411E:  ADDS            R6, #1
464120:  STR.W           R1, [R8,R0,LSL#2]
464124:  LDR.W           R0, [R11]; CCutsceneMgr::ms_numAppendObjectNames
464128:  STR.W           R9, [R10]; CCutsceneMgr::ms_numLoadObjectNames
46412C:  CMP             R6, R0
46412E:  BLT             loc_4640F4
464130:  LDR             R0, =(_ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr - 0x46413E)
464132:  CMP.W           R9, #0
464136:  MOV.W           R1, #0
46413A:  ADD             R0, PC; _ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr
46413C:  LDR             R0, [R0]; CCutsceneMgr::ms_numAppendObjectNames ...
46413E:  STR             R1, [R0]; CCutsceneMgr::ms_numAppendObjectNames
464140:  BEQ             loc_46422A
464142:  CMP.W           R9, #1
464146:  BLT             loc_464218
464148:  LDR             R0, =(_ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr - 0x464156)
46414A:  ADR             R6, aCsplay; "csplay"
46414C:  MOVS            R4, #0
46414E:  MOV.W           R11, #0
464152:  ADD             R0, PC; _ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr
464154:  LDR.W           R10, [R0]; CCutsceneMgr::ms_cLoadObjectName ...
464158:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x46415E)
46415A:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
46415C:  LDR             R0, [R0]; CCutsceneMgr::ms_iModelIndex ...
46415E:  STR             R0, [SP,#0x538+var_48C]
464160:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x464166)
464162:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
464164:  LDR.W           R8, [R0]; CCutsceneMgr::ms_iModelIndex ...
464168:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x46416E)
46416A:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
46416C:  LDR             R0, [R0]; CCutsceneMgr::ms_iModelIndex ...
46416E:  STR             R0, [SP,#0x538+var_490]
464170:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x464176)
464172:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
464174:  LDR             R0, [R0]; CCutsceneMgr::ms_iModelIndex ...
464176:  STR             R0, [SP,#0x538+var_49C]
464178:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46417E)
46417A:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46417C:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
46417E:  STR             R0, [SP,#0x538+var_4A0]
464180:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x464186)
464182:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
464184:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
464186:  STR             R0, [SP,#0x538+var_494]
464188:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x46418E)
46418A:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
46418C:  LDR             R0, [R0]; CCutsceneMgr::ms_iModelIndex ...
46418E:  STR             R0, [SP,#0x538+var_498]
464190:  ADD.W           R5, R10, R11,LSL#5
464194:  MOV             R1, R6; char *
464196:  MOV             R0, R5; char *
464198:  BLX             strcasecmp
46419C:  CBZ             R0, loc_4641C4
46419E:  LDR.W           R0, [R8,R11,LSL#2]
4641A2:  CMP             R0, #3
4641A4:  BEQ             loc_4641CE
4641A6:  CMP             R0, #2
4641A8:  BNE             loc_464210
4641AA:  ADD             R1, SP, #0x538+var_458; char *
4641AC:  MOV             R0, R5; this
4641AE:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
4641B2:  CBZ             R0, loc_4641DE
4641B4:  LDR             R1, [SP,#0x538+var_498]
4641B6:  LDR             R0, [SP,#0x538+var_458]; this
4641B8:  STR.W           R0, [R1,R11,LSL#2]
4641BC:  MOVS            R1, #0x1C; int
4641BE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4641C2:  B               loc_46420A
4641C4:  LDR             R0, [SP,#0x538+var_48C]
4641C6:  MOVS            R1, #1
4641C8:  STR.W           R1, [R0,R11,LSL#2]
4641CC:  B               loc_464210
4641CE:  LDR             R1, [SP,#0x538+var_490]
4641D0:  ADD.W           R0, R1, R11,LSL#2
4641D4:  LDR.W           R0, [R0,#-4]
4641D8:  STR.W           R0, [R1,R11,LSL#2]
4641DC:  B               loc_464210
4641DE:  LDR             R1, [SP,#0x538+var_49C]
4641E0:  ADD.W           R0, R4, #0x12C; this
4641E4:  MOVS            R2, #dword_1C; char *
4641E6:  STR.W           R0, [R1,R11,LSL#2]
4641EA:  MOV             R1, R5; CKeyGen *
4641EC:  BLX             j__ZN10CStreaming19RequestSpecialModelEiPKci; CStreaming::RequestSpecialModel(int,char const*,int)
4641F0:  ADD.W           R0, R4, R4,LSL#2
4641F4:  LDR             R1, [SP,#0x538+var_4A0]
4641F6:  ADD.W           R0, R1, R0,LSL#2
4641FA:  MOVW            R1, #0x1794
4641FE:  ADD             R0, R1
464200:  LDRB.W          R1, [R0],#0x14; bool
464204:  ADDS            R4, #1
464206:  CMP             R1, #1
464208:  BEQ             loc_464200
46420A:  LDR             R0, [SP,#0x538+var_494]
46420C:  LDR.W           R9, [R0]
464210:  ADD.W           R11, R11, #1
464214:  CMP             R11, R9
464216:  BLT             loc_464190
464218:  MOVS            R0, #(stderr+1); this
46421A:  MOVS            R4, #1
46421C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
464220:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x464226)
464222:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
464224:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
464226:  STR             R4, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus
464228:  B               loc_46422E
46422A:  BLX             j__ZN12CCutsceneMgr25LoadCutsceneData_postloadEv; CCutsceneMgr::LoadCutsceneData_postload(void)
46422E:  LDR             R0, =(__stack_chk_guard_ptr - 0x464238)
464230:  LDR.W           R1, [R7,#var_34]
464234:  ADD             R0, PC; __stack_chk_guard_ptr
464236:  LDR             R0, [R0]; __stack_chk_guard
464238:  LDR             R0, [R0]
46423A:  SUBS            R0, R0, R1
46423C:  ITTTT EQ
46423E:  ADDEQ.W         SP, SP, #0x508
464242:  VPOPEQ          {D8-D9}
464246:  ADDEQ           SP, SP, #4
464248:  POPEQ.W         {R8-R11}
46424C:  IT EQ
46424E:  POPEQ           {R4-R7,PC}
464250:  BLX             __stack_chk_fail
