; =========================================================
; Game Engine Function: _Z15AsyncFileUnlockv
; Address            : 0x266908 - 0x266914
; =========================================================

266908:  LDR             R0, =(fileMutex_ptr - 0x26690E)
26690A:  ADD             R0, PC; fileMutex_ptr
26690C:  LDR             R0, [R0]; fileMutex
26690E:  LDR             R0, [R0]; mutex
266910:  B.W             j_pthread_mutex_unlock
