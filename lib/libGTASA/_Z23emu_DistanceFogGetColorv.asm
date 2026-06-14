; =========================================================
; Game Engine Function: _Z23emu_DistanceFogGetColorv
; Address            : 0x1C0798 - 0x1C07A0
; =========================================================

1C0798:  LDR             R0, =(emu_fogcolor_ptr - 0x1C079E)
1C079A:  ADD             R0, PC; emu_fogcolor_ptr
1C079C:  LDR             R0, [R0]; emu_fogcolor
1C079E:  BX              LR
