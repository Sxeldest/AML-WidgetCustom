; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo20ConvertAnimFileIndexEv
; Address            : 0x385554 - 0x385576
; =========================================================

385554:  PUSH            {R4,R5,R7,LR}
385556:  ADD             R7, SP, #8
385558:  MOV             R4, R0
38555A:  LDR             R0, [R4,#0x38]; this
38555C:  ADDS            R1, R0, #1; char *
38555E:  IT EQ
385560:  POPEQ           {R4,R5,R7,PC}
385562:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
385566:  MOV             R5, R0
385568:  LDR             R0, [R4,#0x38]; void *
38556A:  CMP             R0, #0
38556C:  IT NE
38556E:  BLXNE           _ZdaPv; operator delete[](void *)
385572:  STR             R5, [R4,#0x38]
385574:  POP             {R4,R5,R7,PC}
