; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup13CopyAnimationEj
; Address            : 0x389874 - 0x3898A0
; =========================================================

389874:  PUSH            {R4,R6,R7,LR}
389876:  ADD             R7, SP, #8
389878:  LDR             R2, [R0,#4]
38987A:  LDR             R0, [R0,#0xC]
38987C:  SUBS            R0, R1, R0
38987E:  ADD.W           R0, R0, R0,LSL#2
389882:  ADD.W           R4, R2, R0,LSL#2
389886:  CBZ             R4, loc_38989C
389888:  LDR             R0, [R4,#0x10]; this
38988A:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
38988E:  MOVS            R0, #0x3C ; '<'; unsigned int
389890:  BLX             _Znwj; operator new(uint)
389894:  MOV             R1, R4; CAnimBlendStaticAssociation *
389896:  BLX             j__ZN21CAnimBlendAssociationC2ER27CAnimBlendStaticAssociation; CAnimBlendAssociation::CAnimBlendAssociation(CAnimBlendStaticAssociation &)
38989A:  POP             {R4,R6,R7,PC}
38989C:  MOVS            R0, #0
38989E:  POP             {R4,R6,R7,PC}
