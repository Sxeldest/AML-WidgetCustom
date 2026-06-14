; =========================================================
; Game Engine Function: SetRTPriority
; Address            : 0x2614C0 - 0x261502
; =========================================================

2614C0:  PUSH            {R7,LR}
2614C2:  MOV             R7, SP
2614C4:  SUB             SP, SP, #8
2614C6:  LDR             R0, =(RTPrioLevel_ptr - 0x2614CC)
2614C8:  ADD             R0, PC; RTPrioLevel_ptr
2614CA:  LDR             R0, [R0]; RTPrioLevel
2614CC:  LDR             R0, [R0]
2614CE:  CMP             R0, #1
2614D0:  BLT             loc_2614FE
2614D2:  MOVS            R0, #2; algorithm
2614D4:  BLX             sched_get_priority_min
2614D8:  STR             R0, [SP,#0x10+param]
2614DA:  BLX             pthread_self
2614DE:  ADD             R2, SP, #0x10+param; param
2614E0:  MOVS            R1, #2; policy
2614E2:  BLX             pthread_setschedparam
2614E6:  CBZ             R0, loc_2614FE
2614E8:  LDR             R0, =(LogLevel_ptr - 0x2614EE)
2614EA:  ADD             R0, PC; LogLevel_ptr
2614EC:  LDR             R0, [R0]; LogLevel
2614EE:  LDR             R0, [R0]
2614F0:  CBZ             R0, loc_2614FE
2614F2:  LDR             R0, =(aEe - 0x2614FC); "(EE)"
2614F4:  ADR             R1, aSetrtpriority_0; "SetRTPriority"
2614F6:  ADR             R2, aFailedToSetPri; "Failed to set priority level for thread"...
2614F8:  ADD             R0, PC; "(EE)"
2614FA:  BLX             j_al_print
2614FE:  ADD             SP, SP, #8
261500:  POP             {R7,PC}
