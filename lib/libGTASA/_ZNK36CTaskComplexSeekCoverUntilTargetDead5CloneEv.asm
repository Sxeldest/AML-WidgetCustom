; =========================================================
; Game Engine Function: _ZNK36CTaskComplexSeekCoverUntilTargetDead5CloneEv
; Address            : 0x4EA708 - 0x4EA772
; =========================================================

4EA708:  PUSH            {R4-R7,LR}
4EA70A:  ADD             R7, SP, #0xC
4EA70C:  PUSH.W          {R11}
4EA710:  MOV             R5, R0
4EA712:  MOVS            R0, #off_18; this
4EA714:  LDR             R6, [R5,#0xC]
4EA716:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EA71A:  MOV             R4, R0
4EA71C:  CMP             R6, #0
4EA71E:  BLT             loc_4EA73C
4EA720:  MOV             R0, R4; this
4EA722:  LDR             R5, [R5,#0xC]
4EA724:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EA728:  LDR             R0, =(_ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr - 0x4EA732)
4EA72A:  MOVS            R1, #0
4EA72C:  STR             R5, [R4,#0xC]
4EA72E:  ADD             R0, PC; _ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr
4EA730:  STRD.W          R1, R1, [R4,#0x10]
4EA734:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekCoverUntilTargetDead ...
4EA736:  ADDS            R0, #8
4EA738:  STR             R0, [R4]
4EA73A:  B               loc_4EA76A
4EA73C:  MOV             R0, R4; this
4EA73E:  LDR             R5, [R5,#0x10]
4EA740:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EA744:  LDR             R0, =(_ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr - 0x4EA752)
4EA746:  MOV.W           R1, #0xFFFFFFFF
4EA74A:  STR             R1, [R4,#0xC]
4EA74C:  MOVS            R1, #0
4EA74E:  ADD             R0, PC; _ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr
4EA750:  STR             R1, [R4,#0x14]
4EA752:  MOV             R1, R4
4EA754:  CMP             R5, #0
4EA756:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekCoverUntilTargetDead ...
4EA758:  ADD.W           R0, R0, #8
4EA75C:  STR             R0, [R4]
4EA75E:  STR.W           R5, [R1,#0x10]!; CEntity **
4EA762:  ITT NE
4EA764:  MOVNE           R0, R5; this
4EA766:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EA76A:  MOV             R0, R4
4EA76C:  POP.W           {R11}
4EA770:  POP             {R4-R7,PC}
