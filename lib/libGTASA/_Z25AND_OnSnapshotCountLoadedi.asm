; =========================================================
; Game Engine Function: _Z25AND_OnSnapshotCountLoadedi
; Address            : 0x26EE1C - 0x26EE3E
; =========================================================

26EE1C:  PUSH            {R4,R5,R7,LR}
26EE1E:  ADD             R7, SP, #8
26EE20:  MOV             R4, R0
26EE22:  LDR             R0, =(gameServiceMutex_ptr - 0x26EE28)
26EE24:  ADD             R0, PC; gameServiceMutex_ptr
26EE26:  LDR             R5, [R0]; gameServiceMutex
26EE28:  LDR             R0, [R5]; mutex
26EE2A:  BLX             pthread_mutex_lock
26EE2E:  LDR             R1, =(dword_6855DC - 0x26EE36)
26EE30:  LDR             R0, [R5]; mutex
26EE32:  ADD             R1, PC; dword_6855DC
26EE34:  STR             R4, [R1]
26EE36:  POP.W           {R4,R5,R7,LR}
26EE3A:  B.W             j_pthread_mutex_unlock
