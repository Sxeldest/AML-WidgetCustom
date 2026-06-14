; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputeAreaCodesResponseEP6CEventP5CTaskS3_
; Address            : 0x383A9C - 0x383ABA
; =========================================================

383A9C:  PUSH            {R4,R5,R7,LR}
383A9E:  ADD             R7, SP, #8
383AA0:  LDR             R5, [R1,#0xC]
383AA2:  MOV             R4, R0
383AA4:  CMP             R5, #0
383AA6:  IT EQ
383AA8:  POPEQ           {R4,R5,R7,PC}
383AAA:  MOVS            R0, #dword_24; this
383AAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383AB0:  MOV             R1, R5; CPed *
383AB2:  BLX             j__ZN34CTaskSimpleWaitUntilAreaCodesMatchC2EP4CPed; CTaskSimpleWaitUntilAreaCodesMatch::CTaskSimpleWaitUntilAreaCodesMatch(CPed *)
383AB6:  STR             R0, [R4,#0x24]
383AB8:  POP             {R4,R5,R7,PC}
