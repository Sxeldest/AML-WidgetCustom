; =========================================================
; Game Engine Function: _Z17AND_ThreadCleanupv
; Address            : 0x26A700 - 0x26A70C
; =========================================================

26A700:  LDR             R0, =(ANDThreadStorageKey_ptr - 0x26A706)
26A702:  ADD             R0, PC; ANDThreadStorageKey_ptr
26A704:  LDR             R0, [R0]; ANDThreadStorageKey
26A706:  LDR             R0, [R0]; key
26A708:  B.W             j_pthread_key_delete
