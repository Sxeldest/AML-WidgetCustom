; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup18CreateAssociationsEPKcP7RpClumpPS1_i
; Address            : 0x3896A0 - 0x3897B0
; =========================================================

3896A0:  PUSH            {R4-R7,LR}
3896A2:  ADD             R7, SP, #0xC
3896A4:  PUSH.W          {R8-R11}
3896A8:  SUB             SP, SP, #4
3896AA:  MOV             R4, R0
3896AC:  LDR.W           R10, [R7,#arg_0]
3896B0:  LDR             R0, [R4,#4]
3896B2:  MOV             R9, R3
3896B4:  MOV             R11, R2
3896B6:  CBZ             R0, loc_3896E8
3896B8:  MOV             R8, R1
3896BA:  LDR.W           R1, [R0,#-4]
3896BE:  SUB.W           R2, R0, #8
3896C2:  STR             R2, [SP,#0x20+var_20]
3896C4:  CBZ             R1, loc_3896DA
3896C6:  SUB.W           R6, R0, #0x14
3896CA:  ADD.W           R0, R1, R1,LSL#2
3896CE:  LSLS            R5, R0, #2
3896D0:  ADDS            R0, R6, R5; this
3896D2:  BLX             j__ZN27CAnimBlendStaticAssociationD2Ev; CAnimBlendStaticAssociation::~CAnimBlendStaticAssociation()
3896D6:  SUBS            R5, #0x14
3896D8:  BNE             loc_3896D0
3896DA:  LDR             R0, [SP,#0x20+var_20]; void *
3896DC:  BLX             _ZdaPv; operator delete[](void *)
3896E0:  MOVS            R0, #0
3896E2:  MOV             R1, R8; char *
3896E4:  STRD.W          R0, R0, [R4,#4]
3896E8:  MOVS            R5, #0x14
3896EA:  MOV             R0, R1; this
3896EC:  UMULL.W         R6, R8, R10, R5
3896F0:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
3896F4:  STR             R0, [R4]
3896F6:  ADD.W           R0, R6, #8
3896FA:  CMP             R0, R6
3896FC:  IT CC
3896FE:  MOVCC.W         R0, #0xFFFFFFFF
389702:  CMP.W           R8, #0
389706:  IT NE
389708:  MOVNE.W         R8, #1
38970C:  CMP.W           R8, #0
389710:  IT NE
389712:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
389716:  BLX             _Znaj; operator new[](uint)
38971A:  STRD.W          R5, R10, [R0]
38971E:  ADD.W           R5, R0, #8
389722:  CMP.W           R10, #0
389726:  BEQ             loc_38979A
389728:  ADD.W           R0, R10, R10,LSL#2
38972C:  LSLS            R6, R0, #2
38972E:  MOV             R0, R5; this
389730:  BLX             j__ZN27CAnimBlendStaticAssociationC2Ev; CAnimBlendStaticAssociation::CAnimBlendStaticAssociation(void)
389734:  SUBS            R6, #0x14
389736:  ADD.W           R0, R0, #0x14
38973A:  BNE             loc_389730
38973C:  MOVS            R0, #0
38973E:  MOV             R8, R4
389740:  STR.W           R0, [R8,#8]!
389744:  CMP.W           R10, #1
389748:  STR.W           R5, [R8,#-4]
38974C:  BLT             loc_389796
38974E:  MOVS            R6, #0
389750:  MOVS            R5, #0
389752:  LDR.W           R0, [R9,R5,LSL#2]
389756:  LDRB            R1, [R0]
389758:  CBZ             R1, loc_389772
38975A:  LDR             R1, [R4]
38975C:  BLX             j__ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock; CAnimManager::GetAnimation(char const*,CAnimBlock const*)
389760:  MOV             R2, R0
389762:  LDR             R0, [R4,#4]
389764:  MOV             R1, R11
389766:  ADD             R0, R6
389768:  BLX             j__ZN27CAnimBlendStaticAssociation4InitEP7RpClumpP19CAnimBlendHierarchy; CAnimBlendStaticAssociation::Init(RpClump *,CAnimBlendHierarchy *)
38976C:  LDR             R0, [R4,#0xC]
38976E:  ADD             R0, R5
389770:  B               loc_389776
389772:  MOVW            R0, #0xFFFF
389776:  LDR             R1, [R4,#4]
389778:  ADDS            R5, #1
38977A:  CMP             R10, R5
38977C:  ADD             R1, R6
38977E:  STRH            R0, [R1,#6]
389780:  LDR             R0, [R4,#4]
389782:  LDR             R1, [R4,#0x10]
389784:  ADD             R0, R6
389786:  ADD.W           R6, R6, #0x14
38978A:  STRH            R1, [R0,#8]
38978C:  LDR             R0, [R4,#8]
38978E:  ADD.W           R0, R0, #1
389792:  STR             R0, [R4,#8]
389794:  BNE             loc_389752
389796:  MOV             R4, R8
389798:  B               loc_3897A4
38979A:  MOVS            R0, #0
38979C:  STR.W           R0, [R4,#8]!
3897A0:  STR.W           R5, [R4,#-4]
3897A4:  STR.W           R10, [R4]
3897A8:  ADD             SP, SP, #4
3897AA:  POP.W           {R8-R11}
3897AE:  POP             {R4-R7,PC}
