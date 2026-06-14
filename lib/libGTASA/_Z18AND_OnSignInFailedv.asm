; =========================================================
; Game Engine Function: _Z18AND_OnSignInFailedv
; Address            : 0x26D344 - 0x26D36E
; =========================================================

26D344:  PUSH            {R4,R6,R7,LR}
26D346:  ADD             R7, SP, #8
26D348:  LDR             R0, =(gameServiceMutex_ptr - 0x26D34E)
26D34A:  ADD             R0, PC; gameServiceMutex_ptr
26D34C:  LDR             R4, [R0]; gameServiceMutex
26D34E:  LDR             R0, [R4]; mutex
26D350:  BLX             pthread_mutex_lock
26D354:  LDR             R0, =(byte_6D712C - 0x26D35E)
26D356:  MOVS            R2, #0
26D358:  LDR             R1, =(byte_6D712E - 0x26D360)
26D35A:  ADD             R0, PC; byte_6D712C
26D35C:  ADD             R1, PC; byte_6D712E
26D35E:  STRB            R2, [R0]
26D360:  MOVS            R2, #1
26D362:  LDR             R0, [R4]; mutex
26D364:  STRB            R2, [R1]
26D366:  POP.W           {R4,R6,R7,LR}
26D36A:  B.W             j_pthread_mutex_unlock
