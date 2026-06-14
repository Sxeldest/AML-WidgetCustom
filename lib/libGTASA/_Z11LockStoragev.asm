; =========================================================
; Game Engine Function: _Z11LockStoragev
; Address            : 0x26FF18 - 0x26FF58
; =========================================================

26FF18:  PUSH            {R4,R5,R7,LR}
26FF1A:  ADD             R7, SP, #8
26FF1C:  LDR             R0, =(storageMutex_ptr - 0x26FF22)
26FF1E:  ADD             R0, PC; storageMutex_ptr
26FF20:  LDR             R0, [R0]; storageMutex
26FF22:  LDR             R4, [R0]
26FF24:  CBNZ            R4, loc_26FF4E
26FF26:  MOVS            R0, #8; unsigned int
26FF28:  BLX             _Znwj; operator new(uint)
26FF2C:  MOV             R4, R0
26FF2E:  ADDS            R5, R4, #4
26FF30:  MOV             R0, R5; attr
26FF32:  BLX             pthread_mutexattr_init
26FF36:  MOV             R0, R5
26FF38:  MOVS            R1, #1
26FF3A:  BLX             pthread_mutexattr_settype
26FF3E:  MOV             R0, R4; mutex
26FF40:  MOV             R1, R5; mutexattr
26FF42:  BLX             pthread_mutex_init
26FF46:  LDR             R0, =(storageMutex_ptr - 0x26FF4C)
26FF48:  ADD             R0, PC; storageMutex_ptr
26FF4A:  LDR             R0, [R0]; storageMutex
26FF4C:  STR             R4, [R0]
26FF4E:  MOV             R0, R4; mutex
26FF50:  POP.W           {R4,R5,R7,LR}
26FF54:  B.W             j_pthread_mutex_lock
