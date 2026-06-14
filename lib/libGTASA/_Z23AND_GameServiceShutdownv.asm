; =========================================================
; Game Engine Function: _Z23AND_GameServiceShutdownv
; Address            : 0x26A770 - 0x26A79E
; =========================================================

26A770:  PUSH            {R4,R6,R7,LR}
26A772:  ADD             R7, SP, #8
26A774:  MOVS            R0, #1; bool
26A776:  BLX             j__Z24AND_ClearAchievementDatab; AND_ClearAchievementData(bool)
26A77A:  LDR             R0, =(billingMutex_ptr - 0x26A780)
26A77C:  ADD             R0, PC; billingMutex_ptr
26A77E:  LDR             R0, [R0]; billingMutex
26A780:  LDR             R4, [R0]
26A782:  CMP             R4, #0
26A784:  IT EQ
26A786:  POPEQ           {R4,R6,R7,PC}
26A788:  MOV             R0, R4; mutex
26A78A:  BLX             pthread_mutex_destroy
26A78E:  ADDS            R0, R4, #4; attr
26A790:  BLX             pthread_mutexattr_destroy
26A794:  MOV             R0, R4; void *
26A796:  POP.W           {R4,R6,R7,LR}
26A79A:  B.W             j__ZdlPv; operator delete(void *)
