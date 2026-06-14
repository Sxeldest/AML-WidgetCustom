; =========================================================
; Game Engine Function: sub_7EFDC
; Address            : 0x7EFDC - 0x7EFE4
; =========================================================

7EFDC:  LDR             R0, =(dword_1A45F4 - 0x7EFE2)
7EFDE:  ADD             R0, PC; dword_1A45F4
7EFE0:  LDR             R0, [R0]
7EFE2:  BX              LR
