; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup18CreateAssociationsEPKc
; Address            : 0x389298 - 0x3893DA
; =========================================================

389298:  PUSH            {R4-R7,LR}
38929A:  ADD             R7, SP, #0xC
38929C:  PUSH.W          {R8-R11}
3892A0:  SUB             SP, SP, #4
3892A2:  MOV             R9, R0
3892A4:  MOV             R5, R1
3892A6:  LDR.W           R0, [R9,#4]
3892AA:  CBZ             R0, loc_3892D6
3892AC:  LDR.W           R1, [R0,#-4]
3892B0:  SUB.W           R8, R0, #8
3892B4:  CBZ             R1, loc_3892CA
3892B6:  SUB.W           R4, R0, #0x14
3892BA:  ADD.W           R0, R1, R1,LSL#2
3892BE:  LSLS            R6, R0, #2
3892C0:  ADDS            R0, R4, R6; this
3892C2:  BLX             j__ZN27CAnimBlendStaticAssociationD2Ev; CAnimBlendStaticAssociation::~CAnimBlendStaticAssociation()
3892C6:  SUBS            R6, #0x14
3892C8:  BNE             loc_3892C0
3892CA:  MOV             R0, R8; void *
3892CC:  BLX             _ZdaPv; operator delete[](void *)
3892D0:  MOVS            R0, #0
3892D2:  STRD.W          R0, R0, [R9,#4]
3892D6:  MOV             R0, R5; this
3892D8:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
3892DC:  MOV             R6, R0
3892DE:  MOVS            R4, #0x14
3892E0:  STR.W           R6, [R9]
3892E4:  LDR             R5, [R6,#0x18]
3892E6:  UMULL.W         R1, R2, R5, R4
3892EA:  ADD.W           R0, R1, #8
3892EE:  CMP             R0, R1
3892F0:  IT CC
3892F2:  MOVCC.W         R0, #0xFFFFFFFF
3892F6:  CMP             R2, #0
3892F8:  IT NE
3892FA:  MOVNE           R2, #1
3892FC:  CMP             R2, #0
3892FE:  IT NE
389300:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
389304:  BLX             _Znaj; operator new[](uint)
389308:  STRD.W          R4, R5, [R0]
38930C:  ADD.W           R4, R0, #8
389310:  CBZ             R5, loc_38932A
389312:  ADD.W           R0, R5, R5,LSL#2
389316:  LSLS            R5, R0, #2
389318:  MOV             R0, R4; this
38931A:  BLX             j__ZN27CAnimBlendStaticAssociationC2Ev; CAnimBlendStaticAssociation::CAnimBlendStaticAssociation(void)
38931E:  SUBS            R5, #0x14
389320:  ADD.W           R0, R0, #0x14
389324:  BNE             loc_38931A
389326:  LDR.W           R6, [R9]
38932A:  MOVS            R0, #0
38932C:  STRD.W          R4, R0, [R9,#4]
389330:  LDR             R0, [R6,#0x18]
389332:  CMP             R0, #1
389334:  BLT             loc_3893CE
389336:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x389340)
389338:  MOVS            R4, #0
38933A:  MOVS            R5, #0
38933C:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38933E:  LDR.W           R10, [R0]; CAnimManager::ms_aAnimations ...
389342:  LDR             R0, =(_Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr - 0x389348)
389344:  ADD             R0, PC; _Z26AtomicRemoveAnimFromSkinCBP8RpAtomicPv_ptr
389346:  LDR.W           R8, [R0]; AtomicRemoveAnimFromSkinCB(RpAtomic *,void *)
38934A:  LDR             R0, [R6,#0x14]
38934C:  MOVS            R1, #0; unsigned int
38934E:  ADD             R0, R5
389350:  ADD.W           R6, R0, R0,LSL#1
389354:  LDR.W           R0, [R10,R6,LSL#3]; this
389358:  BLX             j__ZN10CModelInfo23GetModelInfoFromHashKeyEjPi; CModelInfo::GetModelInfoFromHashKey(uint,int *)
38935C:  CBZ             R0, loc_3893B6
38935E:  LDR             R1, [R0]
389360:  ADD.W           R11, R10, R6,LSL#3
389364:  LDR             R1, [R1,#0x2C]
389366:  BLX             R1
389368:  MOV             R6, R0
38936A:  BLX             j__Z20RpAnimBlendClumpInitP7RpClump; RpAnimBlendClumpInit(RpClump *)
38936E:  LDR.W           R0, [R9,#4]
389372:  MOV             R1, R6
389374:  MOV             R2, R11
389376:  ADD             R0, R4
389378:  BLX             j__ZN27CAnimBlendStaticAssociation4InitEP7RpClumpP19CAnimBlendHierarchy; CAnimBlendStaticAssociation::Init(RpClump *,CAnimBlendHierarchy *)
38937C:  MOV             R0, R6
38937E:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
389382:  CBZ             R0, loc_389396
389384:  LDR             R0, [R0,#0x18]
389386:  BLX             j_RpSkinGeometryGetSkin
38938A:  CBZ             R0, loc_389396
38938C:  MOV             R0, R6
38938E:  MOV             R1, R8
389390:  MOVS            R2, #0
389392:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
389396:  MOV             R0, R6
389398:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
38939C:  LDR.W           R0, [R9,#4]
3893A0:  LDR.W           R1, [R9,#0xC]
3893A4:  ADD             R0, R4
3893A6:  ADD             R1, R5
3893A8:  STRH            R1, [R0,#6]
3893AA:  LDR.W           R0, [R9,#4]
3893AE:  LDR.W           R1, [R9,#0x10]
3893B2:  ADD             R0, R4
3893B4:  STRH            R1, [R0,#8]
3893B6:  LDR.W           R0, [R9,#8]
3893BA:  ADDS            R4, #0x14
3893BC:  LDR.W           R6, [R9]
3893C0:  ADDS            R5, #1
3893C2:  ADDS            R0, #1
3893C4:  STR.W           R0, [R9,#8]
3893C8:  LDR             R0, [R6,#0x18]
3893CA:  CMP             R5, R0
3893CC:  BLT             loc_38934A
3893CE:  STR.W           R0, [R9,#8]
3893D2:  ADD             SP, SP, #4
3893D4:  POP.W           {R8-R11}
3893D8:  POP             {R4-R7,PC}
