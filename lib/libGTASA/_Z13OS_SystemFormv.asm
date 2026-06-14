; =========================================================
; Game Engine Function: _Z13OS_SystemFormv
; Address            : 0x26BB54 - 0x26BB5E
; =========================================================

26BB54:  LDR             R0, =(deviceForm_ptr - 0x26BB5A)
26BB56:  ADD             R0, PC; deviceForm_ptr
26BB58:  LDR             R0, [R0]; deviceForm
26BB5A:  LDR             R0, [R0]
26BB5C:  BX              LR
