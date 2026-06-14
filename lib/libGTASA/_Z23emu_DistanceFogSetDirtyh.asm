; =========================================================
; Game Engine Function: _Z23emu_DistanceFogSetDirtyh
; Address            : 0x1C07C0 - 0x1C07CA
; =========================================================

1C07C0:  LDR             R1, =(emu_fogdirty_ptr - 0x1C07C6)
1C07C2:  ADD             R1, PC; emu_fogdirty_ptr
1C07C4:  LDR             R1, [R1]; emu_fogdirty
1C07C6:  STRB            R0, [R1]
1C07C8:  BX              LR
