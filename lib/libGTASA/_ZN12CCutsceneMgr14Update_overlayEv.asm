; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr14Update_overlayEv
; Address            : 0x4653A0 - 0x465722
; =========================================================

4653A0:  PUSH            {R4-R7,LR}
4653A2:  ADD             R7, SP, #0xC
4653A4:  PUSH.W          {R8-R11}
4653A8:  SUB             SP, SP, #4
4653AA:  VPUSH           {D8-D10}
4653AE:  SUB             SP, SP, #0x10
4653B0:  LDR.W           R0, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x4653B8)
4653B4:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
4653B6:  LDR             R0, [R0]; this
4653B8:  BLX             j__ZN9CIplStore19AddIplsNeededAtPosnERK7CVector; CIplStore::AddIplsNeededAtPosn(CVector const&)
4653BC:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x4653C4)
4653C0:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
4653C2:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
4653C4:  LDR             R0, [R0]; this
4653C6:  CMP             R0, #2
4653C8:  BEQ             loc_4653F0
4653CA:  CMP             R0, #1
4653CC:  BNE.W           loc_465714
4653D0:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
4653D4:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
4653D8:  BLX             j__ZN12CCutsceneMgr24LoadCutsceneData_loadingEv; CCutsceneMgr::LoadCutsceneData_loading(void)
4653DC:  ADD             SP, SP, #0x10
4653DE:  VPOP            {D8-D10}
4653E2:  ADD             SP, SP, #4
4653E4:  POP.W           {R8-R11}
4653E8:  POP.W           {R4-R7,LR}
4653EC:  B.W             sub_19F7CC
4653F0:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr - 0x4653F6)
4653F2:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr
4653F4:  LDR             R0, [R0]; CCutsceneMgr::ms_cutscenePlayStatus ...
4653F6:  LDR             R0, [R0]; this
4653F8:  SUBS            R1, R0, #2
4653FA:  CMP             R1, #2
4653FC:  BCC             loc_46543C
4653FE:  CMP             R0, #4
465400:  BEQ             loc_465440
465402:  CMP             R0, #1
465404:  BNE             loc_46544A
465406:  BLX             j__ZN12CCutsceneMgr20SetupCutsceneToStartEv; CCutsceneMgr::SetupCutsceneToStart(void)
46540A:  BLX             j__ZN12CCutsceneMgr20HideRequestedObjectsEv; CCutsceneMgr::HideRequestedObjects(void)
46540E:  LDR             R0, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x465416)
465410:  LDR             R1, =(aFinale - 0x465418); "finale"
465412:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
465414:  ADD             R1, PC; "finale"
465416:  LDR             R0, [R0]; char *
465418:  BLX             strcasecmp
46541C:  CBZ             R0, loc_465434
46541E:  LDR             R0, =(AudioEngine_ptr - 0x465424)
465420:  ADD             R0, PC; AudioEngine_ptr
465422:  LDR             R4, [R0]; AudioEngine
465424:  MOV             R0, R4; this
465426:  BLX             j__ZN12CAudioEngine21DisableEffectsLoadingEv; CAudioEngine::DisableEffectsLoading(void)
46542A:  BLX             j__ZN23CAEPedSpeechAudioEntity19DisableAllPedSpeechEv; CAEPedSpeechAudioEntity::DisableAllPedSpeech(void)
46542E:  MOV             R0, R4; this
465430:  BLX             j__ZN12CAudioEngine26PlayPreloadedCutsceneTrackEv; CAudioEngine::PlayPreloadedCutsceneTrack(void)
465434:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr - 0x46543A)
465436:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr
465438:  LDR             R0, [R0]; CCutsceneMgr::ms_cutscenePlayStatus ...
46543A:  LDR             R0, [R0]; CCutsceneMgr::ms_cutscenePlayStatus
46543C:  ADDS            R0, #1
46543E:  B               loc_465442
465440:  MOVS            R0, #0
465442:  LDR             R1, =(_ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr - 0x465448)
465444:  ADD             R1, PC; _ZN12CCutsceneMgr21ms_cutscenePlayStatusE_ptr
465446:  LDR             R1, [R1]; CCutsceneMgr::ms_cutscenePlayStatus ...
465448:  STR             R0, [R1]; CCutsceneMgr::ms_cutscenePlayStatus
46544A:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x465450)
46544C:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
46544E:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
465450:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
465452:  CMP             R0, #0
465454:  BEQ.W           loc_465714
465458:  LDR             R0, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x465462)
46545A:  VLDR            S0, =50.0
46545E:  ADD             R0, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
465460:  VLDR            S16, =1000.0
465464:  LDR             R1, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x46546C)
465466:  LDR             R0, [R0]; CTimer::ms_fTimeStepNonClipped ...
465468:  ADD             R1, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
46546A:  VLDR            S2, [R0]
46546E:  LDR             R0, =(_ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr - 0x46547A)
465470:  VDIV.F32        S0, S2, S0
465474:  LDR             R1, [R1]; CCutsceneMgr::ms_iNumParticleEffects ...
465476:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr
465478:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneTimer ...
46547A:  LDR             R1, [R1]; CCutsceneMgr::ms_iNumParticleEffects
46547C:  CMP             R1, #1
46547E:  VLDR            S2, [R0]
465482:  VADD.F32        S0, S2, S0
465486:  VMUL.F32        S2, S0, S16
46548A:  VCVT.U32.F32    S2, S2
46548E:  VSTR            S0, [R0]
465492:  VMOV            R9, S2
465496:  BLT             loc_465504
465498:  LDR             R0, =(_ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr - 0x4654A8)
46549A:  MOVS            R5, #0
46549C:  MOV.W           R8, #1
4654A0:  MOV.W           R10, #0x100
4654A4:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pParticleEffectsE_ptr
4654A6:  LDR             R0, [R0]; CCutsceneMgr::ms_pParticleEffects ...
4654A8:  ADD.W           R4, R0, #0x68 ; 'h'
4654AC:  LDR             R0, =(_ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr - 0x4654B2)
4654AE:  ADD             R0, PC; _ZN12CCutsceneMgr22ms_iNumParticleEffectsE_ptr
4654B0:  LDR             R6, [R0]; CCutsceneMgr::ms_iNumParticleEffects ...
4654B2:  LDRB            R0, [R4]
4654B4:  CBZ             R0, loc_4654D6
4654B6:  LDR.W           R1, [R4,#-0x40]
4654BA:  ADDS            R0, R1, #1
4654BC:  BEQ             loc_4654DA
4654BE:  LDR.W           R0, [R4,#-0x48]; this
4654C2:  CBZ             R0, loc_4654DA
4654C4:  LDR.W           R2, [R4,#-0x44]
4654C8:  ADD             R1, R2
4654CA:  CMP             R1, R9
4654CC:  BCS             loc_4654DA
4654CE:  BLX             j__ZN10FxSystem_c4StopEv; FxSystem_c::Stop(void)
4654D2:  STRH.W          R10, [R4]
4654D6:  MOVS            R1, #1
4654D8:  B               loc_4654DC
4654DA:  MOVS            R1, #0
4654DC:  LDR.W           R0, [R4,#-0x48]; this
4654E0:  CBZ             R0, loc_4654FA
4654E2:  CMP             R1, #1
4654E4:  BNE             loc_4654FA
4654E6:  LDR.W           R1, [R4,#-0x44]
4654EA:  CMP             R1, R9
4654EC:  BHI             loc_4654FA
4654EE:  LDRB            R1, [R4,#1]
4654F0:  CBNZ            R1, loc_4654FA
4654F2:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
4654F6:  STRB.W          R8, [R4]
4654FA:  LDR             R0, [R6]; CCutsceneMgr::ms_iNumParticleEffects
4654FC:  ADDS            R5, #1
4654FE:  ADDS            R4, #0x6C ; 'l'
465500:  CMP             R5, R0
465502:  BLT             loc_4654B2
465504:  LDR             R0, =(_ZN12CCutsceneMgr17ms_currTextOutputE_ptr - 0x46550C)
465506:  LDR             R1, =(_ZN12CCutsceneMgr16ms_numTextOutputE_ptr - 0x46550E)
465508:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_currTextOutputE_ptr
46550A:  ADD             R1, PC; _ZN12CCutsceneMgr16ms_numTextOutputE_ptr
46550C:  LDR             R0, [R0]; CCutsceneMgr::ms_currTextOutput ...
46550E:  LDR             R2, [R1]; CCutsceneMgr::ms_numTextOutput ...
465510:  LDR             R1, [R0]; CCutsceneMgr::ms_currTextOutput
465512:  LDR             R0, [R2]; CCutsceneMgr::ms_numTextOutput
465514:  CMP             R1, R0
465516:  BGE             loc_465562
465518:  LDR             R0, =(_ZN12CCutsceneMgr17ms_iTextStartTimeE_ptr - 0x46551E)
46551A:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_iTextStartTimeE_ptr
46551C:  LDR             R0, [R0]; CCutsceneMgr::ms_iTextStartTime ...
46551E:  LDR.W           R0, [R0,R1,LSL#2]
465522:  CMP             R0, R9
465524:  BCS             loc_465562
465526:  LDR             R0, =(_ZN12CCutsceneMgr14ms_cTextOutputE_ptr - 0x46552E)
465528:  LDR             R2, =(TheText_ptr - 0x465530)
46552A:  ADD             R0, PC; _ZN12CCutsceneMgr14ms_cTextOutputE_ptr
46552C:  ADD             R2, PC; TheText_ptr
46552E:  LDR             R4, [R0]; CCutsceneMgr::ms_cTextOutput ...
465530:  LDR             R0, [R2]; TheText ; this
465532:  ADD.W           R1, R4, R1,LSL#3; CKeyGen *
465536:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46553A:  MOV             R1, R0; char *
46553C:  LDR             R0, =(_ZN12CCutsceneMgr17ms_currTextOutputE_ptr - 0x465544)
46553E:  LDR             R2, =(_ZN12CCutsceneMgr16ms_iTextDurationE_ptr - 0x465546)
465540:  ADD             R0, PC; _ZN12CCutsceneMgr17ms_currTextOutputE_ptr
465542:  ADD             R2, PC; _ZN12CCutsceneMgr16ms_iTextDurationE_ptr
465544:  LDR             R5, [R0]; CCutsceneMgr::ms_currTextOutput ...
465546:  LDR             R0, [R2]; CCutsceneMgr::ms_iTextDuration ...
465548:  LDR             R3, [R5]; CCutsceneMgr::ms_currTextOutput
46554A:  LDR.W           R2, [R0,R3,LSL#2]; unsigned __int16 *
46554E:  MOVS            R0, #1
465550:  STR             R0, [SP,#0x48+var_48]; unsigned __int16
465552:  ADD.W           R0, R4, R3,LSL#3; this
465556:  MOVS            R3, #1; unsigned int
465558:  BLX             j__ZN9CMessages15AddMessageJumpQEPKcPtjtb; CMessages::AddMessageJumpQ(char const*,ushort *,uint,ushort,bool)
46555C:  LDR             R0, [R5]; CCutsceneMgr::ms_currTextOutput
46555E:  ADDS            R0, #1
465560:  STR             R0, [R5]; CCutsceneMgr::ms_currTextOutput
465562:  LDR             R0, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x46556C)
465564:  STR.W           R9, [SP,#0x48+var_44]
465568:  ADD             R0, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
46556A:  LDR             R0, [R0]; CCutsceneMgr::ms_numCutsceneObjs ...
46556C:  LDR             R0, [R0]; CCutsceneMgr::ms_numCutsceneObjs
46556E:  CMP             R0, #1
465570:  BLT             loc_465614
465572:  LDR             R1, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x465580)
465574:  VMOV.F32        S18, #20.0
465578:  LDR             R2, =(_Z31CalculateBoundingSphereRadiusCBP8RpAtomicPv_ptr - 0x465582)
46557A:  MOVS            R6, #0
46557C:  ADD             R1, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
46557E:  ADD             R2, PC; _Z31CalculateBoundingSphereRadiusCBP8RpAtomicPv_ptr
465580:  LDR             R5, [R1]; CCutsceneMgr::ms_pCutsceneObjects ...
465582:  LDR             R1, =(_ZN14CTempColModels17ms_colModelCutObjE_ptr - 0x46558C)
465584:  LDR.W           R11, [R2]; CalculateBoundingSphereRadiusCB(RpAtomic *,void *)
465588:  ADD             R1, PC; _ZN14CTempColModels17ms_colModelCutObjE_ptr
46558A:  LDR             R2, =(_ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr - 0x465592)
46558C:  LDR             R1, [R1]; CTempColModels::ms_colModelCutObj ...
46558E:  ADD             R2, PC; _ZN12CCutsceneMgr18ms_numCutsceneObjsE_ptr
465590:  STR             R1, [SP,#0x48+var_40]
465592:  LDR             R1, =(_ZN14CTempColModels17ms_colModelCutObjE_ptr - 0x46559C)
465594:  LDR.W           R9, [R2]; CCutsceneMgr::ms_numCutsceneObjs ...
465598:  ADD             R1, PC; _ZN14CTempColModels17ms_colModelCutObjE_ptr
46559A:  LDR             R4, [R1]; CTempColModels::ms_colModelCutObj ...
46559C:  LDR.W           R1, [R5,R6,LSL#2]
4655A0:  LDRSH.W         R2, [R1,#0x26]
4655A4:  SUB.W           R2, R2, #0x12C
4655A8:  CMP             R2, #0x13
4655AA:  BHI             loc_46560E
4655AC:  LDR             R0, [R1,#0x18]
4655AE:  ADD.W           R8, R2, R2,LSL#1
4655B2:  LDR             R1, [SP,#0x48+var_40]
4655B4:  ADD             R2, SP, #0x48+var_3C
4655B6:  ADD.W           R10, R1, R8,LSL#4
4655BA:  MOV             R1, R11
4655BC:  VLDR            S20, [R10,#0x24]
4655C0:  VSTR            S20, [SP,#0x48+var_3C]
4655C4:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
4655C8:  VMAX.F32        D1, D10, D9
4655CC:  VLDR            S0, [SP,#0x48+var_3C]
4655D0:  ADD.W           R0, R10, #0x24 ; '$'
4655D4:  VCMPE.F32       S0, S2
4655D8:  VMRS            APSR_nzcv, FPSCR
4655DC:  ITT GT
4655DE:  VSTRGT          S2, [SP,#0x48+var_3C]
4655E2:  VMOVGT.F32      S0, S2
4655E6:  VNEG.F32        S2, S0
4655EA:  VSTR            S0, [R0]
4655EE:  ADD.W           R0, R4, R8,LSL#4
4655F2:  VSTR            S2, [R0]
4655F6:  VSTR            S2, [R0,#4]
4655FA:  VSTR            S2, [R0,#8]
4655FE:  VSTR            S0, [R0,#0xC]
465602:  VSTR            S0, [R0,#0x10]
465606:  VSTR            S0, [R0,#0x14]
46560A:  LDR.W           R0, [R9]; CCutsceneMgr::ms_numCutsceneObjs
46560E:  ADDS            R6, #1
465610:  CMP             R6, R0
465612:  BLT             loc_46559C
465614:  LDR             R0, =(byte_9AE231 - 0x46561A)
465616:  ADD             R0, PC; byte_9AE231
465618:  LDRB            R0, [R0]
46561A:  CMP             R0, #0
46561C:  BEQ             loc_465714
46561E:  LDR             R0, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x465626)
465620:  LDR             R1, =(aFinale - 0x465628); "finale"
465622:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
465624:  ADD             R1, PC; "finale"
465626:  LDR             R0, [R0]; char *
465628:  BLX             strcasecmp
46562C:  CMP             R0, #0
46562E:  BEQ             loc_465714
465630:  LDR             R0, =(TheCamera_ptr - 0x465636)
465632:  ADD             R0, PC; TheCamera_ptr
465634:  LDR             R0, [R0]; TheCamera
465636:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
46563A:  ADD.W           R1, R1, R1,LSL#5
46563E:  ADD.W           R0, R0, R1,LSL#4
465642:  LDRH.W          R0, [R0,#0x17E]
465646:  CMP             R0, #0x11
465648:  BNE             loc_465714
46564A:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x465650)
46564C:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
46564E:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
465650:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus
465652:  CMP             R0, #2
465654:  BNE             loc_465714
465656:  LDR             R0, =(TheCamera_ptr - 0x46565C)
465658:  ADD             R0, PC; TheCamera_ptr
46565A:  LDR             R0, [R0]; TheCamera ; this
46565C:  BLX             j__ZN7CCamera21GetCutSceneFinishTimeEv; CCamera::GetCutSceneFinishTime(void)
465660:  LDR             R1, [SP,#0x48+var_44]
465662:  ADD.W           R1, R1, #0x3E8
465666:  CMP             R1, R0
465668:  BLS             loc_46568A
46566A:  LDR             R0, =(byte_9AE230 - 0x465670)
46566C:  ADD             R0, PC; byte_9AE230
46566E:  LDRB            R0, [R0]
465670:  CBNZ            R0, loc_46568A
465672:  LDR             R0, =(byte_9AE230 - 0x46567C)
465674:  MOVS            R2, #1
465676:  LDR             R1, =(TheCamera_ptr - 0x46567E)
465678:  ADD             R0, PC; byte_9AE230
46567A:  ADD             R1, PC; TheCamera_ptr
46567C:  STRB            R2, [R0]
46567E:  MOVS            R2, #0; __int16
465680:  LDR             R0, [R1]; TheCamera ; this
465682:  MOV.W           R1, #0x3F800000; float
465686:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
46568A:  BLX             j__ZN12CCutsceneMgr32IsCutsceneSkipButtonBeingPressedEv; CCutsceneMgr::IsCutsceneSkipButtonBeingPressed(void)
46568E:  CMP             R0, #1
465690:  BNE             loc_465714
465692:  LDR             R0, =(_ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr - 0x46569E)
465694:  MOVS            R3, #1
465696:  LDR             R1, =(_ZN4CHud12m_BigMessageE_ptr - 0x4656A0)
465698:  LDR             R2, =(byte_9AE231 - 0x4656A2)
46569A:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr
46569C:  ADD             R1, PC; _ZN4CHud12m_BigMessageE_ptr
46569E:  ADD             R2, PC; byte_9AE231
4656A0:  LDR             R0, [R0]; CCutsceneMgr::ms_wasCutsceneSkipped ...
4656A2:  LDR             R1, [R1]; CHud::m_BigMessage ...
4656A4:  LDRB            R2, [R2]
4656A6:  STRB            R3, [R0]; CCutsceneMgr::ms_wasCutsceneSkipped
4656A8:  MOVS            R0, #0
4656AA:  CMP             R2, #0
4656AC:  STRH.W          R0, [R1,#(word_99106C - 0x990F6C)]
4656B0:  BEQ             loc_4656DA
4656B2:  LDR             R0, =(TheCamera_ptr - 0x4656B8)
4656B4:  ADD             R0, PC; TheCamera_ptr
4656B6:  LDR             R4, [R0]; TheCamera
4656B8:  MOV             R0, R4; this
4656BA:  BLX             j__ZN7CCamera21GetCutSceneFinishTimeEv; CCamera::GetCutSceneFinishTime(void)
4656BE:  VMOV            S0, R0
4656C2:  LDR             R0, =(_ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr - 0x4656CC)
4656C4:  VCVT.F32.U32    S0, S0
4656C8:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr
4656CA:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneTimer ...
4656CC:  VDIV.F32        S0, S0, S16
4656D0:  VSTR            S0, [R0]
4656D4:  MOV             R0, R4; this
4656D6:  BLX             j__ZN7CCamera14FinishCutsceneEv; CCamera::FinishCutscene(void)
4656DA:  MOV.W           R0, #0xFFFFFFFF; int
4656DE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4656E2:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4656EA)
4656E4:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x4656F0)
4656E6:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
4656E8:  LDRD.W          R3, R6, [R0,#0x1C]
4656EC:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
4656EE:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
4656F0:  ORR.W           R3, R3, #0x80
4656F4:  LDR             R2, [R2]; CWorld::Players ...
4656F6:  LDR             R1, [R1]; CWorld::PlayerInFocus
4656F8:  STR             R3, [R0,#0x1C]
4656FA:  MOV.W           R3, #0x194
4656FE:  STR             R6, [R0,#0x20]
465700:  SMLABB.W        R1, R1, R3, R2
465704:  MOV             R2, #0x461C4000; float
46570C:  MOV             R0, R1; this
46570E:  MOVS            R1, #0; bool
465710:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
465714:  ADD             SP, SP, #0x10
465716:  VPOP            {D8-D10}
46571A:  ADD             SP, SP, #4
46571C:  POP.W           {R8-R11}
465720:  POP             {R4-R7,PC}
