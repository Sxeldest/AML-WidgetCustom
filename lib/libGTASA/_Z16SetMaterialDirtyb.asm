; =========================================================
; Game Engine Function: _Z16SetMaterialDirtyb
; Address            : 0x1B9AD8 - 0x1B9AE2
; =========================================================

1B9AD8:  LDR             R1, =(MaterialDirty_ptr - 0x1B9ADE)
1B9ADA:  ADD             R1, PC; MaterialDirty_ptr
1B9ADC:  LDR             R1, [R1]; MaterialDirty
1B9ADE:  STRB            R0, [R1]
1B9AE0:  BX              LR
