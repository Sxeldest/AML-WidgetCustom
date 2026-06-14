; =========================================================
; Game Engine Function: _Z16AND_ThreadOnMainv
; Address            : 0x26C1CC - 0x26C1E8
; =========================================================

26C1CC:  PUSH            {R7,LR}
26C1CE:  MOV             R7, SP
26C1D0:  LDR             R0, =(ANDThreadStorageKey_ptr - 0x26C1D6)
26C1D2:  ADD             R0, PC; ANDThreadStorageKey_ptr
26C1D4:  LDR             R0, [R0]; ANDThreadStorageKey
26C1D6:  LDR             R0, [R0]; key
26C1D8:  BLX             pthread_getspecific
26C1DC:  LDR             R1, [R0]
26C1DE:  MOVS            R0, #0
26C1E0:  CMP             R1, #0
26C1E2:  IT EQ
26C1E4:  MOVEQ           R0, #1
26C1E6:  POP             {R7,PC}
