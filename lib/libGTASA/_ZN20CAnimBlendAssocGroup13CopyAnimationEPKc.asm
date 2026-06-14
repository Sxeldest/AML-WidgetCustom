; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup13CopyAnimationEPKc
; Address            : 0x389828 - 0x389874
; =========================================================

389828:  PUSH            {R4,R6,R7,LR}
38982A:  ADD             R7, SP, #8
38982C:  MOV             R4, R0
38982E:  MOV             R0, R1; this
389830:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
389834:  LDR.W           R12, [R4,#8]
389838:  CMP.W           R12, #1
38983C:  BLT             loc_389856
38983E:  LDR             R4, [R4,#4]
389840:  MOVS            R3, #0
389842:  LDR             R1, [R4,#0x10]; CAnimBlendHierarchy *
389844:  LDR             R2, [R1]
389846:  CMP             R2, R0
389848:  BEQ             loc_38985A
38984A:  ADDS            R3, #1
38984C:  ADDS            R4, #0x14
38984E:  CMP             R3, R12
389850:  BLT             loc_389842
389852:  MOVS            R0, #0
389854:  POP             {R4,R6,R7,PC}
389856:  MOVS            R0, #0
389858:  POP             {R4,R6,R7,PC}
38985A:  CBZ             R4, loc_389870
38985C:  MOV             R0, R1; this
38985E:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
389862:  MOVS            R0, #0x3C ; '<'; unsigned int
389864:  BLX             _Znwj; operator new(uint)
389868:  MOV             R1, R4; CAnimBlendStaticAssociation *
38986A:  BLX             j__ZN21CAnimBlendAssociationC2ER27CAnimBlendStaticAssociation; CAnimBlendAssociation::CAnimBlendAssociation(CAnimBlendStaticAssociation &)
38986E:  POP             {R4,R6,R7,PC}
389870:  MOVS            R0, #0
389872:  POP             {R4,R6,R7,PC}
