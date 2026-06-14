; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup18CreateAssociationsEPKcP7RpClump
; Address            : 0x389594 - 0x38969C
; =========================================================

389594:  PUSH            {R4-R7,LR}
389596:  ADD             R7, SP, #0xC
389598:  PUSH.W          {R8-R11}
38959C:  SUB             SP, SP, #4
38959E:  MOV             R11, R0
3895A0:  MOV             R9, R2
3895A2:  LDR.W           R0, [R11,#4]
3895A6:  MOV             R6, R1
3895A8:  CBZ             R0, loc_3895D4
3895AA:  LDR.W           R1, [R0,#-4]
3895AE:  SUB.W           R8, R0, #8
3895B2:  CBZ             R1, loc_3895C8
3895B4:  SUB.W           R4, R0, #0x14
3895B8:  ADD.W           R0, R1, R1,LSL#2
3895BC:  LSLS            R5, R0, #2
3895BE:  ADDS            R0, R4, R5; this
3895C0:  BLX             j__ZN27CAnimBlendStaticAssociationD2Ev; CAnimBlendStaticAssociation::~CAnimBlendStaticAssociation()
3895C4:  SUBS            R5, #0x14
3895C6:  BNE             loc_3895BE
3895C8:  MOV             R0, R8; void *
3895CA:  BLX             _ZdaPv; operator delete[](void *)
3895CE:  MOVS            R0, #0
3895D0:  STRD.W          R0, R0, [R11,#4]
3895D4:  MOV             R0, R6; this
3895D6:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
3895DA:  MOV             R6, R0
3895DC:  MOVS            R5, #0x14
3895DE:  STR.W           R6, [R11]
3895E2:  LDR             R4, [R6,#0x18]
3895E4:  UMULL.W         R1, R2, R4, R5
3895E8:  ADD.W           R0, R1, #8
3895EC:  CMP             R0, R1
3895EE:  IT CC
3895F0:  MOVCC.W         R0, #0xFFFFFFFF
3895F4:  CMP             R2, #0
3895F6:  IT NE
3895F8:  MOVNE           R2, #1
3895FA:  CMP             R2, #0
3895FC:  IT NE
3895FE:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
389602:  BLX             _Znaj; operator new[](uint)
389606:  ADD.W           R8, R0, #8
38960A:  CMP             R4, #0
38960C:  STRD.W          R5, R4, [R0]
389610:  BEQ             loc_38962A
389612:  ADD.W           R0, R4, R4,LSL#2
389616:  LSLS            R4, R0, #2
389618:  MOV             R0, R8; this
38961A:  BLX             j__ZN27CAnimBlendStaticAssociationC2Ev; CAnimBlendStaticAssociation::CAnimBlendStaticAssociation(void)
38961E:  SUBS            R4, #0x14
389620:  ADD.W           R0, R0, #0x14
389624:  BNE             loc_38961A
389626:  LDR.W           R6, [R11]
38962A:  MOVS            R0, #0
38962C:  STRD.W          R8, R0, [R11,#4]
389630:  LDR             R0, [R6,#0x18]
389632:  CMP             R0, #1
389634:  BLT             loc_389690
389636:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x389640)
389638:  MOVS            R5, #0
38963A:  MOVS            R4, #0
38963C:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38963E:  LDR.W           R10, [R0]; CAnimManager::ms_aAnimations ...
389642:  B               loc_38964A
389644:  LDR.W           R8, [R11,#4]
389648:  ADDS            R5, #0x14
38964A:  LDR             R1, [R6,#0x14]
38964C:  ADD.W           R0, R8, R5
389650:  ADD             R1, R4
389652:  ADD.W           R1, R1, R1,LSL#1
389656:  ADD.W           R2, R10, R1,LSL#3
38965A:  MOV             R1, R9
38965C:  BLX             j__ZN27CAnimBlendStaticAssociation4InitEP7RpClumpP19CAnimBlendHierarchy; CAnimBlendStaticAssociation::Init(RpClump *,CAnimBlendHierarchy *)
389660:  LDR.W           R0, [R11,#4]
389664:  LDR.W           R1, [R11,#0xC]
389668:  ADD             R0, R5
38966A:  ADD             R1, R4
38966C:  ADDS            R4, #1
38966E:  STRH            R1, [R0,#6]
389670:  LDR.W           R0, [R11,#4]
389674:  LDR.W           R1, [R11,#0x10]
389678:  ADD             R0, R5
38967A:  STRH            R1, [R0,#8]
38967C:  LDR.W           R0, [R11,#8]
389680:  LDR.W           R6, [R11]
389684:  ADDS            R0, #1
389686:  STR.W           R0, [R11,#8]
38968A:  LDR             R0, [R6,#0x18]
38968C:  CMP             R4, R0
38968E:  BLT             loc_389644
389690:  STR.W           R0, [R11,#8]
389694:  ADD             SP, SP, #4
389696:  POP.W           {R8-R11}
38969A:  POP             {R4-R7,PC}
