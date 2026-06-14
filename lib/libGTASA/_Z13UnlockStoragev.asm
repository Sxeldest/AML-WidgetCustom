; =========================================================
; Game Engine Function: _Z13UnlockStoragev
; Address            : 0x26FF60 - 0x26FF6C
; =========================================================

26FF60:  LDR             R0, =(storageMutex_ptr - 0x26FF66)
26FF62:  ADD             R0, PC; storageMutex_ptr
26FF64:  LDR             R0, [R0]; storageMutex
26FF66:  LDR             R0, [R0]; mutex
26FF68:  B.W             j_pthread_mutex_unlock
