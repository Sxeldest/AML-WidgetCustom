; =========================================================
; Game Engine Function: _Z13OS_SystemChipv
; Address            : 0x26BB44 - 0x26BB4E
; =========================================================

26BB44:  LDR             R0, =(deviceChip_ptr - 0x26BB4A)
26BB46:  ADD             R0, PC; deviceChip_ptr
26BB48:  LDR             R0, [R0]; deviceChip
26BB4A:  LDR             R0, [R0]
26BB4C:  BX              LR
