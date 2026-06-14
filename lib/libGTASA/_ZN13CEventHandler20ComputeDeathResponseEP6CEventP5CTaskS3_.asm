; =========================================================
; Game Engine Function: _ZN13CEventHandler20ComputeDeathResponseEP6CEventP5CTaskS3_
; Address            : 0x37F7DC - 0x37F800
; =========================================================

37F7DC:  PUSH            {R4-R7,LR}
37F7DE:  ADD             R7, SP, #0xC
37F7E0:  PUSH.W          {R11}
37F7E4:  MOV             R4, R0
37F7E6:  MOVS            R0, #word_10; this
37F7E8:  LDRB            R5, [R1,#9]
37F7EA:  LDR             R6, [R1,#0xC]
37F7EC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F7F0:  MOV             R1, R6; int
37F7F2:  MOV             R2, R5; bool
37F7F4:  BLX             j__ZN15CTaskSimpleDeadC2Eib; CTaskSimpleDead::CTaskSimpleDead(int,bool)
37F7F8:  STR             R0, [R4,#0x24]
37F7FA:  POP.W           {R11}
37F7FE:  POP             {R4-R7,PC}
