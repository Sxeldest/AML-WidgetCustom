; =========================================================
; Game Engine Function: _ZN13CEventHandler32ComputePlayerWantedLevelResponseEP6CEventP5CTaskS3_
; Address            : 0x382BF8 - 0x382C0C
; =========================================================

382BF8:  PUSH            {R4,R6,R7,LR}
382BFA:  ADD             R7, SP, #8
382BFC:  MOV             R4, R0
382BFE:  MOVS            R0, #off_18; this
382C00:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382C04:  BLX             j__ZN25CTaskComplexPolicePursuitC2Ev; CTaskComplexPolicePursuit::CTaskComplexPolicePursuit(void)
382C08:  STR             R0, [R4,#0x24]
382C0A:  POP             {R4,R6,R7,PC}
