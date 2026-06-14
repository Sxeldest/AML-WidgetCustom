; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup18CreateAssociationsEPKcS1_S1_i
; Address            : 0x3893E4 - 0x389588
; =========================================================

3893E4:  PUSH            {R4-R7,LR}
3893E6:  ADD             R7, SP, #0xC
3893E8:  PUSH.W          {R8-R11}
3893EC:  SUB             SP, SP, #0x14
3893EE:  MOV             R6, R0
3893F0:  MOV             R9, R1
3893F2:  CMP             R3, #0
3893F4:  MOV             R0, R3
3893F6:  STR             R2, [SP,#0x30+var_20]
3893F8:  STR             R0, [SP,#0x30+var_28]
3893FA:  BEQ.W           loc_389578
3893FE:  LDR             R0, [R6,#4]
389400:  LDR.W           R11, [R7,#arg_0]
389404:  CBZ             R0, loc_389430
389406:  LDR.W           R1, [R0,#-4]
38940A:  SUB.W           R8, R0, #8
38940E:  CBZ             R1, loc_389424
389410:  SUB.W           R5, R0, #0x14
389414:  ADD.W           R0, R1, R1,LSL#2
389418:  LSLS            R4, R0, #2
38941A:  ADDS            R0, R5, R4; this
38941C:  BLX             j__ZN27CAnimBlendStaticAssociationD2Ev; CAnimBlendStaticAssociation::~CAnimBlendStaticAssociation()
389420:  SUBS            R4, #0x14
389422:  BNE             loc_38941A
389424:  MOV             R0, R8; void *
389426:  BLX             _ZdaPv; operator delete[](void *)
38942A:  MOVS            R0, #0
38942C:  STRD.W          R0, R0, [R6,#4]
389430:  MOV             R0, R9; this
389432:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
389436:  MOV             R4, R0
389438:  MOV.W           R8, #0x14
38943C:  STR             R4, [R6]
38943E:  LDR             R5, [R4,#0x18]
389440:  UMULL.W         R1, R2, R5, R8
389444:  ADD.W           R0, R1, #8
389448:  CMP             R0, R1
38944A:  IT CC
38944C:  MOVCC.W         R0, #0xFFFFFFFF
389450:  CMP             R2, #0
389452:  IT NE
389454:  MOVNE           R2, #1
389456:  CMP             R2, #0
389458:  IT NE
38945A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
38945E:  BLX             _Znaj; operator new[](uint)
389462:  STRD.W          R8, R5, [R0]
389466:  ADD.W           R8, R0, #8
38946A:  CBZ             R5, loc_389482
38946C:  ADD.W           R0, R5, R5,LSL#2
389470:  LSLS            R4, R0, #2
389472:  MOV             R0, R8; this
389474:  BLX             j__ZN27CAnimBlendStaticAssociationC2Ev; CAnimBlendStaticAssociation::CAnimBlendStaticAssociation(void)
389478:  SUBS            R4, #0x14
38947A:  ADD.W           R0, R0, #0x14
38947E:  BNE             loc_389474
389480:  LDR             R4, [R6]
389482:  MOVS            R0, #0
389484:  STRD.W          R8, R0, [R6,#4]
389488:  LDR             R0, [R4,#0x18]
38948A:  CMP             R0, #1
38948C:  BLT             loc_389570
38948E:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x389498)
389490:  MOV.W           R9, #0
389494:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
389496:  LDR             R1, [R1]; CAnimManager::ms_aAnimations ...
389498:  STR             R1, [SP,#0x30+var_24]
38949A:  LDR             R1, =(_ZN10CModelInfo23ms_lastPositionSearchedE_ptr - 0x3894A0)
38949C:  ADD             R1, PC; _ZN10CModelInfo23ms_lastPositionSearchedE_ptr
38949E:  LDR             R1, [R1]; CModelInfo::ms_lastPositionSearched ...
3894A0:  STR             R1, [SP,#0x30+var_2C]
3894A2:  LDR             R1, =(_Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr - 0x3894A8)
3894A4:  ADD             R1, PC; _Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr
3894A6:  LDR             R1, [R1]; AtomicRemoveAnimFromSkinCB(RpAtomic *,void *)
3894A8:  STR             R1, [SP,#0x30+var_30]
3894AA:  CMP             R0, #1
3894AC:  BLT             loc_389564
3894AE:  LDR             R0, [R4,#0x14]
3894B0:  MOV.W           R10, #0xFFFFFFFF
3894B4:  LDR             R1, [SP,#0x30+var_24]; char *
3894B6:  MOV.W           R8, #0
3894BA:  ADD             R0, R9
3894BC:  LDR             R5, [SP,#0x30+var_20]
3894BE:  ADD.W           R0, R0, R0,LSL#1
3894C2:  ADD.W           R4, R1, R0,LSL#3
3894C6:  MOV             R0, R5; this
3894C8:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3894CC:  LDR             R1, [R4]
3894CE:  ADD             R5, R11
3894D0:  LDR             R2, [R6]
3894D2:  CMP             R0, R1
3894D4:  IT EQ
3894D6:  MOVEQ           R10, R8
3894D8:  ADD.W           R8, R8, #1
3894DC:  LDR             R0, [R2,#0x18]
3894DE:  CMP             R8, R0
3894E0:  BLT             loc_3894C6
3894E2:  ADDS.W          R0, R10, #1
3894E6:  BEQ             loc_389564
3894E8:  LDR             R0, [SP,#0x30+var_28]
3894EA:  MOVS            R1, #0
3894EC:  MLA.W           R0, R10, R11, R0; this
3894F0:  LDR             R2, [SP,#0x30+var_2C]; int *
3894F2:  STR             R1, [R2]
3894F4:  MOVS            R1, #0; char *
3894F6:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
3894FA:  CBZ             R0, loc_389564
3894FC:  LDR             R1, [R0]
3894FE:  LDR             R1, [R1,#0x2C]
389500:  BLX             R1
389502:  MOV             R5, R0
389504:  BLX             j__Z20RpAnimBlendClumpInitP7RpClump; RpAnimBlendClumpInit(RpClump *)
389508:  LDRD.W          R0, R1, [R6,#4]
38950C:  MOV             R2, R4
38950E:  ADD.W           R1, R1, R1,LSL#2
389512:  ADD.W           R0, R0, R1,LSL#2
389516:  MOV             R1, R5
389518:  BLX             j__ZN27CAnimBlendStaticAssociation4InitEP7RpClumpP19CAnimBlendHierarchy; CAnimBlendStaticAssociation::Init(RpClump *,CAnimBlendHierarchy *)
38951C:  MOV             R0, R5
38951E:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
389522:  CBZ             R0, loc_389536
389524:  LDR             R0, [R0,#0x18]
389526:  BLX             j_RpSkinGeometryGetSkin
38952A:  CBZ             R0, loc_389536
38952C:  LDR             R1, [SP,#0x30+var_30]
38952E:  MOV             R0, R5
389530:  MOVS            R2, #0
389532:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
389536:  MOV             R0, R5
389538:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
38953C:  ADDS            R2, R6, #4
38953E:  LDM             R2, {R0-R2}
389540:  ADD.W           R1, R1, R1,LSL#2
389544:  ADD.W           R0, R0, R1,LSL#2
389548:  ADD.W           R1, R2, R9
38954C:  STRH            R1, [R0,#6]
38954E:  LDRD.W          R0, R1, [R6,#4]
389552:  ADD.W           R1, R1, R1,LSL#2
389556:  LDR             R2, [R6,#0x10]
389558:  ADD.W           R0, R0, R1,LSL#2
38955C:  STRH            R2, [R0,#8]
38955E:  LDR             R0, [R6,#8]
389560:  ADDS            R0, #1
389562:  STR             R0, [R6,#8]
389564:  LDR             R4, [R6]
389566:  ADD.W           R9, R9, #1
38956A:  LDR             R0, [R4,#0x18]
38956C:  CMP             R9, R0
38956E:  BLT             loc_3894AA
389570:  ADD             SP, SP, #0x14
389572:  POP.W           {R8-R11}
389576:  POP             {R4-R7,PC}
389578:  MOV             R0, R6; this
38957A:  MOV             R1, R9; CAnimManager *
38957C:  ADD             SP, SP, #0x14
38957E:  POP.W           {R8-R11}
389582:  POP.W           {R4-R7,LR}
389586:  B               _ZN20CAnimBlendAssocGroup18CreateAssociationsEPKc; CAnimBlendAssocGroup::CreateAssociations(char const*)
