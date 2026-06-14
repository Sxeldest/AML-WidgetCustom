; =========================================================
; Game Engine Function: _ZNK27CTaskComplexMoveBackAndJump13CreateSubTaskEi
; Address            : 0x50E5B8 - 0x50E60A
; =========================================================

50E5B8:  PUSH            {R4,R5,R7,LR}
50E5BA:  ADD             R7, SP, #8
50E5BC:  SUB             SP, SP, #0x10
50E5BE:  MOVW            R5, #0x19B
50E5C2:  MOVS            R4, #0
50E5C4:  CMP             R1, R5
50E5C6:  BEQ             loc_50E5DC
50E5C8:  CMP             R1, #0xD3
50E5CA:  BNE             loc_50E604
50E5CC:  MOVS            R0, #dword_14; this
50E5CE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E5D2:  MOVS            R1, #0; int
50E5D4:  MOV             R4, R0
50E5D6:  BLX             j__ZN16CTaskComplexJumpC2Ei; CTaskComplexJump::CTaskComplexJump(int)
50E5DA:  B               loc_50E604
50E5DC:  MOVS            R0, #dword_20; this
50E5DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E5E2:  LDR             R1, =(aHitwall - 0x50E5EE); "HitWall"
50E5E4:  MOVS            R2, #0x26 ; '&'
50E5E6:  MOV.W           R3, #0x40800000
50E5EA:  ADD             R1, PC; "HitWall"
50E5EC:  STRD.W          R5, R1, [SP,#0x18+var_18]
50E5F0:  MOVS            R1, #0
50E5F2:  STR             R4, [SP,#0x18+var_10]
50E5F4:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50E5F8:  LDR             R1, =(_ZTV18CTaskSimpleHitWall_ptr - 0x50E600)
50E5FA:  MOV             R4, R0
50E5FC:  ADD             R1, PC; _ZTV18CTaskSimpleHitWall_ptr
50E5FE:  LDR             R1, [R1]; `vtable for'CTaskSimpleHitWall ...
50E600:  ADDS            R1, #8
50E602:  STR             R1, [R0]
50E604:  MOV             R0, R4
50E606:  ADD             SP, SP, #0x10
50E608:  POP             {R4,R5,R7,PC}
