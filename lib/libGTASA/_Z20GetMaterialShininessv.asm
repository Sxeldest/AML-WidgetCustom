; =========================================================
; Game Engine Function: _Z20GetMaterialShininessv
; Address            : 0x1B9AB8 - 0x1B9AC2
; =========================================================

1B9AB8:  LDR             R0, =(MaterialShininess_ptr - 0x1B9ABE)
1B9ABA:  ADD             R0, PC; MaterialShininess_ptr
1B9ABC:  LDR             R0, [R0]; MaterialShininess
1B9ABE:  LDR             R0, [R0]
1B9AC0:  BX              LR
