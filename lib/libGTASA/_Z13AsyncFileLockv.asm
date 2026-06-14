; =========================================================
; Game Engine Function: _Z13AsyncFileLockv
; Address            : 0x2668F4 - 0x266900
; =========================================================

2668F4:  LDR             R0, =(fileMutex_ptr - 0x2668FA)
2668F6:  ADD             R0, PC; fileMutex_ptr
2668F8:  LDR             R0, [R0]; fileMutex
2668FA:  LDR             R0, [R0]; mutex
2668FC:  B.W             j_pthread_mutex_lock
