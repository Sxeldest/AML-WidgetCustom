; =========================================================
; Game Engine Function: _Z15ResetFenceCountv
; Address            : 0x483C44 - 0x483C58
; =========================================================

483C44:  LDR             R0, =(currentSaveFenceCount_ptr - 0x483C4E)
483C46:  MOVS            R2, #0
483C48:  LDR             R1, =(currentLoadFenceCount_ptr - 0x483C50)
483C4A:  ADD             R0, PC; currentSaveFenceCount_ptr
483C4C:  ADD             R1, PC; currentLoadFenceCount_ptr
483C4E:  LDR             R0, [R0]; currentSaveFenceCount
483C50:  LDR             R1, [R1]; currentLoadFenceCount
483C52:  STR             R2, [R0]
483C54:  STR             R2, [R1]
483C56:  BX              LR
