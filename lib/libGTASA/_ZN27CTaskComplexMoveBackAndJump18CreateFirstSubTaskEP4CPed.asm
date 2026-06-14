; =========================================================
; Game Engine Function: _ZN27CTaskComplexMoveBackAndJump18CreateFirstSubTaskEP4CPed
; Address            : 0x50E614 - 0x50E64A
; =========================================================

50E614:  PUSH            {R7,LR}
50E616:  MOV             R7, SP
50E618:  SUB             SP, SP, #0x10
50E61A:  MOVS            R0, #dword_20; this
50E61C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E620:  LDR             R1, =(aHitwall - 0x50E62C); "HitWall"
50E622:  MOVS            R2, #0
50E624:  MOVW            R3, #0x19B
50E628:  ADD             R1, PC; "HitWall"
50E62A:  STRD.W          R3, R1, [SP,#0x18+var_18]
50E62E:  MOVS            R1, #0
50E630:  STR             R2, [SP,#0x18+var_10]
50E632:  MOVS            R2, #0x26 ; '&'
50E634:  MOV.W           R3, #0x40800000
50E638:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50E63C:  LDR             R1, =(_ZTV18CTaskSimpleHitWall_ptr - 0x50E642)
50E63E:  ADD             R1, PC; _ZTV18CTaskSimpleHitWall_ptr
50E640:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitWall ...
50E642:  ADDS            R1, #8
50E644:  STR             R1, [R0]
50E646:  ADD             SP, SP, #0x10
50E648:  POP             {R7,PC}
