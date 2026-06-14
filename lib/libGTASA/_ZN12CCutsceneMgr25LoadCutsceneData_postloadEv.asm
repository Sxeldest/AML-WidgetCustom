; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr25LoadCutsceneData_postloadEv
; Address            : 0x464438 - 0x4645CA
; =========================================================

464438:  PUSH            {R4-R7,LR}
46443A:  ADD             R7, SP, #0xC
46443C:  PUSH.W          {R8}
464440:  SUB             SP, SP, #0x18
464442:  MOVS            R0, #0; this
464444:  MOVS            R6, #0
464446:  BLX             j__ZN9CMessages20ClearThisBigPrintNowEj; CMessages::ClearThisBigPrintNow(uint)
46444A:  LDR             R0, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x464458)
46444C:  MOV.W           R8, #1
464450:  LDR             R1, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x46445A)
464452:  LDR             R2, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x46445C)
464454:  ADD             R0, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
464456:  ADD             R1, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
464458:  ADD             R2, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
46445A:  LDR             R0, [R0]; CCarCtrl::CarDensityMultiplier ...
46445C:  LDR             R1, [R1]; CPopulation::PedDensityMultiplier ...
46445E:  LDR             R3, [R2]; CStreaming::ms_disableStreaming ...
464460:  LDR             R2, =(aAnimCutsImg_0 - 0x46446A); "ANIM\\CUTS.IMG"
464462:  STR             R6, [R0]; CCarCtrl::CarDensityMultiplier
464464:  MOVS            R0, #2
464466:  ADD             R2, PC; "ANIM\\CUTS.IMG"
464468:  STR             R6, [R1]; CPopulation::PedDensityMultiplier
46446A:  MOVS            R1, #1
46446C:  STRB            R6, [R3]; CStreaming::ms_disableStreaming
46446E:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
464472:  MOV             R4, R0
464474:  LDR             R0, =(gString_ptr - 0x46447C)
464476:  LDR             R1, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x46447E)
464478:  ADD             R0, PC; gString_ptr
46447A:  ADD             R1, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
46447C:  LDR             R5, [R0]; gString
46447E:  LDR             R2, [R1]; CCutsceneMgr::ms_cutsceneName ...
464480:  ADR             R1, aSIfp; "%s.IFP"
464482:  MOV             R0, R5
464484:  BL              sub_5E6BC0
464488:  LDR             R0, =(_ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr - 0x464494)
46448A:  ADD             R2, SP, #0x28+var_18; unsigned int *
46448C:  ADD             R3, SP, #0x28+var_14; unsigned int *
46448E:  MOV             R1, R5; char *
464490:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr
464492:  LDR             R0, [R0]; CCutsceneMgr::ms_pCutsceneDir ...
464494:  LDR             R0, [R0]; this
464496:  BLX             j__ZN10CDirectory8FindItemEPKcRjS2_; CDirectory::FindItem(char const*,uint &,uint &)
46449A:  CMP             R0, #1
46449C:  BNE             loc_464524
46449E:  LDR             R0, [SP,#0x28+var_14]
4644A0:  LSLS            R0, R0, #0xA; this
4644A2:  BLX             j__ZN10CStreaming12MakeSpaceForEi; CStreaming::MakeSpaceFor(int)
4644A6:  BLX             j__ZN10CStreaming25ImGonnaUseStreamingMemoryEv; CStreaming::ImGonnaUseStreamingMemory(void)
4644AA:  LDR             R0, [SP,#0x28+var_18]
4644AC:  LSLS            R1, R0, #0xB
4644AE:  MOV             R0, R4
4644B0:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
4644B4:  LDR             R0, [SP,#0x28+var_14]
4644B6:  LSLS            R5, R0, #0xB
4644B8:  MOV             R0, R5; byte_count
4644BA:  STR             R5, [SP,#0x28+var_1C]
4644BC:  BLX             malloc
4644C0:  MOV             R1, R0; void *
4644C2:  MOV             R0, R4; int
4644C4:  MOV             R2, R5; size_t
4644C6:  STR             R1, [SP,#0x28+p]
4644C8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
4644CC:  ADD             R2, SP, #0x28+p
4644CE:  MOVS            R0, #3
4644D0:  MOVS            R1, #1
4644D2:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
4644D6:  MOV             R5, R0
4644D8:  LDR             R0, =(_ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr - 0x4644E0)
4644DA:  MOVS            R1, #1
4644DC:  ADD             R0, PC; _ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr
4644DE:  LDR             R2, [R0]; CCutsceneMgr::ms_aUncompressedCutsceneAnims ...
4644E0:  MOV             R0, R5
4644E2:  BLX             j__ZN12CAnimManager12LoadAnimFileEP8RwStreambPA32_Kc; CAnimManager::LoadAnimFile(RwStream *,bool,char const(*)[32])
4644E6:  MOV             R0, R5
4644E8:  MOVS            R1, #0
4644EA:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
4644EE:  LDR             R0, [SP,#0x28+p]; p
4644F0:  BLX             free
4644F4:  LDR             R0, =(_ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr - 0x464500)
4644F6:  MOVS            R6, #0x20 ; ' '
4644F8:  LDR             R1, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x464504)
4644FA:  LDR             R2, =(_ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr - 0x464506)
4644FC:  ADD             R0, PC; _ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr
4644FE:  LDR             R3, =(_ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr - 0x46450A)
464500:  ADD             R1, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
464502:  ADD             R2, PC; _ZN12CCutsceneMgr16ms_cLoadAnimNameE_ptr
464504:  LDR             R0, [R0]; this
464506:  ADD             R3, PC; _ZN12CCutsceneMgr18ms_cLoadObjectNameE_ptr
464508:  LDR             R1, [R1]; CAnimManager *
46450A:  LDR             R2, [R2]; char *
46450C:  LDR             R3, [R3]; char *
46450E:  STR             R6, [SP,#0x28+var_28]; int
464510:  BLX             j__ZN20CAnimBlendAssocGroup18CreateAssociationsEPKcS1_S1_i; CAnimBlendAssocGroup::CreateAssociations(char const*,char const*,char const*,int)
464514:  BLX             j__ZN10CStreaming24IHaveUsedStreamingMemoryEv; CStreaming::IHaveUsedStreamingMemory(void)
464518:  LDR             R0, =(_ZN12CCutsceneMgr13ms_animLoadedE_ptr - 0x46451E)
46451A:  ADD             R0, PC; _ZN12CCutsceneMgr13ms_animLoadedE_ptr
46451C:  LDR             R0, [R0]; CCutsceneMgr::ms_animLoaded ...
46451E:  STRB.W          R8, [R0]; CCutsceneMgr::ms_animLoaded
464522:  B               loc_46452C
464524:  LDR             R0, =(_ZN12CCutsceneMgr13ms_animLoadedE_ptr - 0x46452A)
464526:  ADD             R0, PC; _ZN12CCutsceneMgr13ms_animLoadedE_ptr
464528:  LDR             R0, [R0]; CCutsceneMgr::ms_animLoaded ...
46452A:  STRB            R6, [R0]; CCutsceneMgr::ms_animLoaded
46452C:  MOV             R0, R4
46452E:  MOVS            R1, #0
464530:  MOVS            R5, #0
464532:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
464536:  LDR             R0, =(aAnimCutsImg_0 - 0x46453E); "ANIM\\CUTS.IMG"
464538:  ADR             R1, dword_464610; char *
46453A:  ADD             R0, PC; "ANIM\\CUTS.IMG"
46453C:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
464540:  MOV             R4, R0
464542:  LDR             R0, =(gString_ptr - 0x46454A)
464544:  LDR             R1, =(_ZN12CCutsceneMgr15ms_cutsceneNameE_ptr - 0x46454C)
464546:  ADD             R0, PC; gString_ptr
464548:  ADD             R1, PC; _ZN12CCutsceneMgr15ms_cutsceneNameE_ptr
46454A:  LDR             R6, [R0]; gString
46454C:  LDR             R2, [R1]; CCutsceneMgr::ms_cutsceneName ...
46454E:  ADR             R1, aSDat_0; "%s.DAT"
464550:  MOV             R0, R6
464552:  BL              sub_5E6BC0
464556:  LDR             R0, =(_ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr - 0x464562)
464558:  ADD             R2, SP, #0x28+var_18; unsigned int *
46455A:  ADD             R3, SP, #0x28+var_14; unsigned int *
46455C:  MOV             R1, R6; char *
46455E:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr
464560:  LDR             R0, [R0]; CCutsceneMgr::ms_pCutsceneDir ...
464562:  LDR             R0, [R0]; this
464564:  BLX             j__ZN10CDirectory8FindItemEPKcRjS2_; CDirectory::FindItem(char const*,uint &,uint &)
464568:  CMP             R0, #1
46456A:  MOV.W           R0, #0; this
46456E:  BNE             loc_464592
464570:  BLX             j__ZN10CStreaming25ImGonnaUseStreamingMemoryEv; CStreaming::ImGonnaUseStreamingMemory(void)
464574:  LDR             R0, [SP,#0x28+var_18]
464576:  MOVS            R2, #0; int
464578:  LSLS            R1, R0, #0xB; unsigned int
46457A:  MOV             R0, R4; this
46457C:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
464580:  LDR             R0, =(TheCamera_ptr - 0x464588)
464582:  MOV             R1, R4; CFileLoader *
464584:  ADD             R0, PC; TheCamera_ptr
464586:  LDR             R0, [R0]; TheCamera ; this
464588:  BLX             j__ZN7CCamera15LoadPathSplinesEj; CCamera::LoadPathSplines(uint)
46458C:  BLX             j__ZN10CStreaming24IHaveUsedStreamingMemoryEv; CStreaming::IHaveUsedStreamingMemory(void)
464590:  MOVS            R0, #1
464592:  LDR             R1, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x46459A)
464594:  LDR             R2, =(_ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr - 0x46459E)
464596:  ADD             R1, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
464598:  LDR             R3, =(byte_9AE231 - 0x4645A0)
46459A:  ADD             R2, PC; _ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr
46459C:  ADD             R3, PC; byte_9AE231
46459E:  LDR             R1, [R1]; CCutsceneMgr::ms_cutsceneLoadStatus ...
4645A0:  LDR             R2, [R2]; CCutsceneMgr::ms_cutsceneTimer ...
4645A2:  STRB            R0, [R3]
4645A4:  MOVS            R0, #2
4645A6:  STR             R0, [R1]; CCutsceneMgr::ms_cutsceneLoadStatus
4645A8:  MOV.W           R0, #0xFFFFFFFF; int
4645AC:  STR             R5, [R2]; CCutsceneMgr::ms_cutsceneTimer
4645AE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4645B2:  LDR.W           R0, [R0,#0x444]
4645B6:  CMP             R0, #0
4645B8:  IT NE
4645BA:  LDRNE           R5, [R0]
4645BC:  MOV             R0, R5; this
4645BE:  BLX             j__ZN7CWanted13ClearQdCrimesEv; CWanted::ClearQdCrimes(void)
4645C2:  ADD             SP, SP, #0x18
4645C4:  POP.W           {R8}
4645C8:  POP             {R4-R7,PC}
