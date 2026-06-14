; =========================================================
; Game Engine Function: _Z16GetMaterialDirtyv
; Address            : 0x1B9AC8 - 0x1B9AD2
; =========================================================

1B9AC8:  LDR             R0, =(MaterialDirty_ptr - 0x1B9ACE)
1B9ACA:  ADD             R0, PC; MaterialDirty_ptr
1B9ACC:  LDR             R0, [R0]; MaterialDirty
1B9ACE:  LDRB            R0, [R0]
1B9AD0:  BX              LR
