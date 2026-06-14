; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr26DeleteCutsceneData_overlayEv
; Address            : 0x464BBC - 0x464EE0
; =========================================================

464BBC:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x464BC2)
464BBE:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
464BC0:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
464BC2:  LDR             R0, [R0]; this
464BC4:  CMP             R0, #0
464BC6:  IT EQ
464BC8:  BXEQ            LR
464BCA:  PUSH            {R4-R7,LR}
464BCC:  ADD             R7, SP, #0x14+var_8
464BCE:  PUSH.W          {R8-R10}
464BD2:  SUB             SP, SP, #0x10
464BD4:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
464BD8:  LDR             R1, =(_ZN12CCutsceneMgr19m_PrevExtraColourOnE_ptr - 0x464BE0)
464BDA:  LDR             R0, =(_ZN12CCutsceneMgr17m_fPrevPedDensityE_ptr - 0x464BE6)
464BDC:  ADD             R1, PC; _ZN12CCutsceneMgr19m_PrevExtraColourOnE_ptr
464BDE:  LDR             R2, =(_ZN12CCutsceneMgr17m_fPrevCarDensityE_ptr - 0x464BEA)
464BE0:  LDR             R3, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x464BEE)
464BE2:  ADD             R0, PC; _ZN12CCutsceneMgr17m_fPrevPedDensityE_ptr
464BE4:  LDR             R6, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x464BF0)
464BE6:  ADD             R2, PC; _ZN12CCutsceneMgr17m_fPrevCarDensityE_ptr
464BE8:  LDR             R1, [R1]; CCutsceneMgr::m_PrevExtraColourOn ...
464BEA:  ADD             R3, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
464BEC:  ADD             R6, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
464BEE:  LDR             R0, [R0]; CCutsceneMgr::m_fPrevPedDensity ...
464BF0:  LDR             R2, [R2]; CCutsceneMgr::m_fPrevCarDensity ...
464BF2:  LDRB            R1, [R1]; bool
464BF4:  LDR             R3, [R3]; CPopulation::PedDensityMultiplier ...
464BF6:  LDR             R6, [R6]; CCarCtrl::CarDensityMultiplier ...
464BF8:  CMP             R1, #0
464BFA:  LDR             R0, [R0]; CCutsceneMgr::m_fPrevPedDensity
464BFC:  LDR             R2, [R2]; bool
464BFE:  STR             R0, [R3]; CPopulation::PedDensityMultiplier
464C00:  STR             R2, [R6]; CCarCtrl::CarDensityMultiplier
464C02:  BEQ             loc_464C14
464C04:  LDR             R0, =(_ZN12CCutsceneMgr17m_PrevExtraColourE_ptr - 0x464C0C)
464C06:  MOVS            R1, #0; int
464C08:  ADD             R0, PC; _ZN12CCutsceneMgr17m_PrevExtraColourE_ptr
464C0A:  LDR             R0, [R0]; CCutsceneMgr::m_PrevExtraColour ...
464C0C:  LDR             R0, [R0]; this
464C0E:  BLX             j__ZN10CTimeCycle16StartExtraColourEib; CTimeCycle::StartExtraColour(int,bool)
464C12:  B               loc_464C1A
464C14:  MOVS            R0, #0; this
464C16:  BLX             j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
464C1A:  LDR             R0, =(_ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr - 0x464C20)
464C1C:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr
464C1E:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumHiddenEntities ...
464C20:  LDR             R1, [R0]; CCutsceneMgr::ms_iNumHiddenEntities
464C22:  CMP             R1, #1
464C24:  BLT             loc_464C52
464C26:  LDR             R0, =(_ZN12CCutsceneMgr18ms_pHiddenEntitiesE_ptr - 0x464C2E)
464C28:  MOVS            R5, #0
464C2A:  ADD             R0, PC; _ZN12CCutsceneMgr18ms_pHiddenEntitiesE_ptr
464C2C:  LDR             R4, [R0]; CCutsceneMgr::ms_pHiddenEntities ...
464C2E:  LDR             R0, =(_ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr - 0x464C34)
464C30:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr
464C32:  LDR             R6, [R0]; CCutsceneMgr::ms_iNumHiddenEntities ...
464C34:  LDR             R0, [R4]; this
464C36:  CBZ             R0, loc_464C4A
464C38:  MOV             R1, R4; CEntity **
464C3A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
464C3E:  LDR             R0, [R4]; CCutsceneMgr::ms_pHiddenEntities
464C40:  LDR             R1, [R0,#0x1C]
464C42:  ORR.W           R1, R1, #0x80
464C46:  STR             R1, [R0,#0x1C]
464C48:  LDR             R1, [R6]; CCutsceneMgr::ms_iNumHiddenEntities
464C4A:  ADDS            R5, #1
464C4C:  ADDS            R4, #4
464C4E:  CMP             R5, R1
464C50:  BLT             loc_464C34
464C52:  LDR             R0, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x464C5E)
464C54:  MOV.W           R8, #0
464C58:  LDR             R1, =(_ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr - 0x464C60)
464C5A:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
464C5C:  ADD             R1, PC; _ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr
464C5E:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumParticleEffects ...
464C60:  LDR             R1, [R1]; CCutsceneMgr::ms_iNumHiddenEntities ...
464C62:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumParticleEffects
464C64:  STR.W           R8, [R1]; CCutsceneMgr::ms_iNumHiddenEntities
464C68:  CMP             R0, #1
464C6A:  BLT             loc_464C9C
464C6C:  LDR             R1, =(_ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr - 0x464C74)
464C6E:  MOVS            R4, #0
464C70:  ADD             R1, PC; _ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr
464C72:  LDR             R1, [R1]; CCutsceneMgr::ms_pParticleEffects ...
464C74:  ADD.W           R6, R1, #0x20 ; ' '
464C78:  LDR             R1, =(g_fxMan_ptr - 0x464C7E)
464C7A:  ADD             R1, PC; g_fxMan_ptr
464C7C:  LDR.W           R9, [R1]; g_fxMan
464C80:  LDR             R1, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x464C86)
464C82:  ADD             R1, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
464C84:  LDR             R5, [R1]; CCutsceneMgr::ms_iNumParticleEffects ...
464C86:  LDR             R1, [R6]; FxSystem_c *
464C88:  CBZ             R1, loc_464C92
464C8A:  MOV             R0, R9; this
464C8C:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
464C90:  LDR             R0, [R5]; CCutsceneMgr::ms_iNumParticleEffects
464C92:  ADDS            R4, #1
464C94:  STR.W           R8, [R6],#0x6C
464C98:  CMP             R4, R0
464C9A:  BLT             loc_464C86
464C9C:  LDR             R0, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x464CA2)
464C9E:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
464CA0:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumParticleEffects ...
464CA2:  STR.W           R8, [R0]; CCutsceneMgr::ms_iNumParticleEffects
464CA6:  MOVS            R0, #0; this
464CA8:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
464CAC:  MOVS            R0, #(stderr+1); this
464CAE:  MOVS            R4, #1
464CB0:  BLX             j__ZN8CRubbish13SetVisibilityEb; CRubbish::SetVisibility(bool)
464CB4:  LDR             R0, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x464CBC)
464CB6:  LDR             R1, =(_ZN12CCutsceneMgr19ms_useLodMultiplierE_ptr - 0x464CC2)
464CB8:  ADD             R0, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
464CBA:  LDR             R2, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x464CC6)
464CBC:  LDR             R3, =(_ZN12CCutsceneMgr21ms_useCutsceneShadowsE_ptr - 0x464CC8)
464CBE:  ADD             R1, PC; _ZN12CCutsceneMgr19ms_useLodMultiplierE_ptr
464CC0:  LDR             R6, [R0]; CCutsceneMgr::ms_numCutsceneObjs ...
464CC2:  ADD             R2, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
464CC4:  ADD             R3, PC; _ZN12CCutsceneMgr21ms_useCutsceneShadowsE_ptr
464CC6:  LDR             R0, [R1]; CCutsceneMgr::ms_useLodMultiplier ...
464CC8:  LDR             R1, [R2]; CCutsceneMgr::ms_cutsceneProcessing ...
464CCA:  LDR             R2, [R3]; CCutsceneMgr::ms_useCutsceneShadows ...
464CCC:  LDR             R3, [R6]; CCutsceneMgr::ms_numCutsceneObjs
464CCE:  STRB.W          R8, [R0]; CCutsceneMgr::ms_useLodMultiplier
464CD2:  SUBS            R0, R3, #1
464CD4:  CMP             R3, #0
464CD6:  STRB.W          R8, [R1]; CCutsceneMgr::ms_cutsceneProcessing
464CDA:  STRB            R4, [R2]; CCutsceneMgr::ms_useCutsceneShadows
464CDC:  STR             R0, [R6]; CCutsceneMgr::ms_numCutsceneObjs
464CDE:  BEQ             loc_464D38
464CE0:  LDR             R1, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x464CEC)
464CE2:  MOV.W           R8, #0
464CE6:  LDR             R2, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x464CEE)
464CE8:  ADD             R1, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
464CEA:  ADD             R2, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
464CEC:  LDR             R4, [R1]; CCutsceneMgr::ms_pCutsceneObjects ...
464CEE:  LDR             R1, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x464CF6)
464CF0:  LDR             R6, [R2]; CCutsceneMgr::ms_numCutsceneObjs ...
464CF2:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
464CF4:  LDR             R5, [R1]; CCutsceneMgr::ms_numCutsceneObjs ...
464CF6:  LDR             R1, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x464CFC)
464CF8:  ADD             R1, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
464CFA:  LDR.W           R9, [R1]; CCutsceneMgr::ms_pCutsceneObjects ...
464CFE:  LDR             R1, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x464D04)
464D00:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr ; CEntity *
464D02:  LDR.W           R10, [R1]; CCutsceneMgr::ms_numCutsceneObjs ...
464D06:  LDR.W           R0, [R4,R0,LSL#2]; this
464D0A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
464D0E:  LDR             R0, [R5]; CCutsceneMgr::ms_numCutsceneObjs
464D10:  LDR.W           R0, [R4,R0,LSL#2]
464D14:  LDR             R1, [R0]
464D16:  LDR             R1, [R1,#0x24]
464D18:  BLX             R1
464D1A:  LDR             R1, [R5]; CCutsceneMgr::ms_numCutsceneObjs
464D1C:  LDR.W           R0, [R4,R1,LSL#2]
464D20:  CBZ             R0, loc_464D2C
464D22:  LDR             R1, [R0]
464D24:  LDR             R1, [R1,#4]
464D26:  BLX             R1
464D28:  LDR.W           R1, [R10]; CCutsceneMgr::ms_numCutsceneObjs
464D2C:  SUBS            R0, R1, #1
464D2E:  CMP             R1, #0
464D30:  STR.W           R8, [R9,R1,LSL#2]
464D34:  STR             R0, [R6]; CCutsceneMgr::ms_numCutsceneObjs
464D36:  BNE             loc_464D06
464D38:  LDR             R0, =(_ZN12CCutsceneMgr13ms_animLoadedE_ptr - 0x464D42)
464D3A:  MOVS            R4, #0
464D3C:  LDR             R1, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x464D44)
464D3E:  ADD             R0, PC; _ZN12CCutsceneMgr13ms_animLoadedE_ptr
464D40:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
464D42:  LDR             R0, [R0]; CCutsceneMgr::ms_animLoaded ...
464D44:  LDR             R1, [R1]; CCutsceneMgr::ms_numCutsceneObjs ...
464D46:  LDRB            R0, [R0]; this
464D48:  STR             R4, [R1]; CCutsceneMgr::ms_numCutsceneObjs
464D4A:  CMP             R0, #0
464D4C:  IT NE
464D4E:  BLXNE           j__ZN12CAnimManager18RemoveLastAnimFileEv; CAnimManager::RemoveLastAnimFile(void)
464D52:  LDR             R0, =(_ZN12CCutsceneMgr13ms_animLoadedE_ptr - 0x464D5A)
464D54:  LDR             R1, =(_ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr - 0x464D5C)
464D56:  ADD             R0, PC; _ZN12CCutsceneMgr13ms_animLoadedE_ptr
464D58:  ADD             R1, PC; _ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr
464D5A:  LDR             R2, [R0]; CCutsceneMgr::ms_animLoaded ...
464D5C:  LDR             R0, [R1]; this
464D5E:  STRB            R4, [R2]; CCutsceneMgr::ms_animLoaded
464D60:  BLX             j__ZN20CAnimBlendAssocGroup19DestroyAssociationsEv; CAnimBlendAssocGroup::DestroyAssociations(void)
464D64:  LDR             R0, =(_ZN12CCutsceneMgr31ms_numUncompressedCutsceneAnimsE_ptr - 0x464D6E)
464D66:  LDR             R1, =(_ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr - 0x464D70)
464D68:  LDR             R2, =(byte_9AE231 - 0x464D72)
464D6A:  ADD             R0, PC; _ZN12CCutsceneMgr31ms_numUncompressedCutsceneAnimsE_ptr
464D6C:  ADD             R1, PC; _ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr
464D6E:  ADD             R2, PC; byte_9AE231
464D70:  LDR             R0, [R0]; CCutsceneMgr::ms_numUncompressedCutsceneAnims ...
464D72:  LDR             R1, [R1]; CCutsceneMgr::ms_aUncompressedCutsceneAnims ...
464D74:  LDRB            R2, [R2]
464D76:  STR             R4, [R0]; CCutsceneMgr::ms_numUncompressedCutsceneAnims
464D78:  CMP             R2, #0
464D7A:  STRB            R4, [R1]; CCutsceneMgr::ms_aUncompressedCutsceneAnims
464D7C:  BEQ             loc_464D96
464D7E:  LDR             R0, =(TheCamera_ptr - 0x464D84)
464D80:  ADD             R0, PC; TheCamera_ptr
464D82:  LDR             R4, [R0]; TheCamera
464D84:  MOV             R0, R4; this
464D86:  BLX             j__ZN7CCamera18RestoreWithJumpCutEv; CCamera::RestoreWithJumpCut(void)
464D8A:  MOV             R0, R4; this
464D8C:  BLX             j__ZN7CCamera16SetWideScreenOffEv; CCamera::SetWideScreenOff(void)
464D90:  MOV             R0, R4; this
464D92:  BLX             j__ZN7CCamera27DeleteCutSceneCamDataMemoryEv; CCamera::DeleteCutSceneCamDataMemory(void)
464D96:  BLX             j__ZN9CIplStore21ClearIplsNeededAtPosnEv; CIplStore::ClearIplsNeededAtPosn(void)
464D9A:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x464DA6)
464D9C:  MOV.W           R8, #0
464DA0:  LDR             R1, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x464DA8)
464DA2:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
464DA4:  ADD             R1, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
464DA6:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
464DA8:  LDR             R1, [R1]; CCutsceneMgr::ms_cutsceneLoadStatus ...
464DAA:  STRB.W          R8, [R0]; CCutsceneMgr::ms_running
464DAE:  MOV.W           R0, #0xFFFFFFFF; int
464DB2:  STR.W           R8, [R1]; CCutsceneMgr::ms_cutsceneLoadStatus
464DB6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
464DBA:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x464DC2)
464DBC:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x464DC8)
464DBE:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
464DC0:  LDRD.W          R3, R6, [R0,#0x1C]
464DC4:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
464DC6:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
464DC8:  LDR             R5, [R2]; CWorld::Players ...
464DCA:  LDR             R4, [R1]; CWorld::PlayerInFocus
464DCC:  ORR.W           R1, R3, #0x80; int
464DD0:  STRD.W          R1, R6, [R0,#0x1C]
464DD4:  MOVS            R0, #0; this
464DD6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
464DDA:  MOV.W           R1, #0x194
464DDE:  LDRH.W          R2, [R0,#0x110]
464DE2:  SMLABB.W        R1, R4, R1, R5
464DE6:  BIC.W           R2, R2, #0x80
464DEA:  STRH.W          R2, [R0,#0x110]
464DEE:  MOV             R2, #0x461C4000; float
464DF6:  MOV             R0, R1; this
464DF8:  MOVS            R1, #0; bool
464DFA:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
464DFE:  LDR             R0, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x464E06)
464E00:  LDR             R1, =(aFinale - 0x464E08); "finale"
464E02:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
464E04:  ADD             R1, PC; "finale"
464E06:  LDR             R0, [R0]; char *
464E08:  BLX             strcasecmp
464E0C:  CBZ             R0, loc_464E26
464E0E:  LDR             R0, =(AudioEngine_ptr - 0x464E16)
464E10:  MOVS            R1, #1; unsigned __int8
464E12:  ADD             R0, PC; AudioEngine_ptr
464E14:  LDR             R4, [R0]; AudioEngine
464E16:  MOV             R0, R4; this
464E18:  BLX             j__ZN12CAudioEngine17StopCutsceneTrackEh; CAudioEngine::StopCutsceneTrack(uchar)
464E1C:  MOV             R0, R4; this
464E1E:  BLX             j__ZN12CAudioEngine20EnableEffectsLoadingEv; CAudioEngine::EnableEffectsLoading(void)
464E22:  BLX             j__ZN23CAEPedSpeechAudioEntity18EnableAllPedSpeechEv; CAEPedSpeechAudioEntity::EnableAllPedSpeech(void)
464E26:  LDR             R0, =(_ZN6CWorld20bProcessCutsceneOnlyE_ptr - 0x464E30)
464E28:  LDR             R1, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x464E32)
464E2A:  LDR             R2, =(byte_9AE231 - 0x464E34)
464E2C:  ADD             R0, PC; _ZN6CWorld20bProcessCutsceneOnlyE_ptr
464E2E:  ADD             R1, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
464E30:  ADD             R2, PC; byte_9AE231
464E32:  LDR             R0, [R0]; CWorld::bProcessCutsceneOnly ...
464E34:  LDR             R1, [R1]; CStreaming::ms_disableStreaming ...
464E36:  LDRB            R2, [R2]
464E38:  STRB.W          R8, [R0]; CWorld::bProcessCutsceneOnly
464E3C:  CMP             R2, #0
464E3E:  STRB.W          R8, [R1]; CStreaming::ms_disableStreaming
464E42:  BEQ             loc_464E5A
464E44:  LDR             R0, =(TheCamera_ptr - 0x464E4A)
464E46:  ADD             R0, PC; TheCamera_ptr
464E48:  LDR             R0, [R0]; TheCamera ; this
464E4A:  BLX             j__ZN7CCamera19GetScreenFadeStatusEv; CCamera::GetScreenFadeStatus(void)
464E4E:  CMP             R0, #2
464E50:  ITE NE
464E52:  MOVNE           R0, #0
464E54:  MOVEQ           R0, #(stderr+1); this
464E56:  BLX             j__ZN5CGame19DrasticTidyUpMemoryEb; CGame::DrasticTidyUpMemory(bool)
464E5A:  MOVS            R0, #0; this
464E5C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
464E60:  MOVS            R1, #0; bool
464E62:  MOVS            R2, #0; bool
464E64:  BLX             j__ZN4CPad5ClearEbb; CPad::Clear(bool,bool)
464E68:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x464E6E)
464E6A:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
464E6C:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
464E6E:  LDR             R0, [R0]; CCutsceneMgr::ms_numLoadObjectNames
464E70:  CMP             R0, #1
464E72:  BLT             loc_464EB2
464E74:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x464E7E)
464E76:  MOVS            R5, #0
464E78:  LDR             R1, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x464E80)
464E7A:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
464E7C:  ADD             R1, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
464E7E:  LDR.W           R9, [R0]; CCutsceneMgr::ms_iModelIndex ...
464E82:  LDR             R0, =(_ZN12CCutsceneMgr14ms_iModelIndexE_ptr - 0x464E8A)
464E84:  LDR             R4, [R1]; CTheScripts::ScriptResourceManager ...
464E86:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_iModelIndexE_ptr
464E88:  LDR.W           R8, [R0]; CCutsceneMgr::ms_iModelIndex ...
464E8C:  LDR             R0, =(_ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr - 0x464E92)
464E8E:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_numLoadObjectNamesE_ptr
464E90:  LDR             R6, [R0]; CCutsceneMgr::ms_numLoadObjectNames ...
464E92:  LDR.W           R1, [R9,R5,LSL#2]; int
464E96:  MOV             R0, R4; this
464E98:  MOVS            R2, #2; unsigned int
464E9A:  BLX             j__ZN22CScriptResourceManager24HasResourceBeenRequestedEij; CScriptResourceManager::HasResourceBeenRequested(int,uint)
464E9E:  CMP             R0, #0
464EA0:  ITT EQ
464EA2:  LDREQ.W         R0, [R8,R5,LSL#2]; this
464EA6:  BLXEQ           j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
464EAA:  LDR             R0, [R6]; CCutsceneMgr::ms_numLoadObjectNames
464EAC:  ADDS            R5, #1
464EAE:  CMP             R5, R0
464EB0:  BLT             loc_464E92
464EB2:  MOVS            R0, #(stderr+1); this
464EB4:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
464EB8:  ADD             R4, SP, #0x30+var_2C
464EBA:  MOV.W           R1, #0xFFFFFFFF
464EBE:  MOV             R0, R4; int
464EC0:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
464EC4:  MOV             R0, R4; this
464EC6:  BLX             j__ZN10CStreaming16StreamZoneModelsERK7CVector; CStreaming::StreamZoneModels(CVector const&)
464ECA:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
464ECE:  MOVS            R0, #(stderr+1); this
464ED0:  BLX             j__ZN10CStreaming16ForceLayerToReadEi; CStreaming::ForceLayerToRead(int)
464ED4:  ADD             SP, SP, #0x10
464ED6:  POP.W           {R8-R10}
464EDA:  POP.W           {R4-R7,LR}
464EDE:  BX              LR
