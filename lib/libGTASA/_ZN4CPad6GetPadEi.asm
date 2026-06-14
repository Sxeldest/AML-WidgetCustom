; =========================================================
; Game Engine Function: _ZN4CPad6GetPadEi
; Address            : 0x3F8CA4 - 0x3F8CB4
; =========================================================

3F8CA4:  LDR             R1, =(Pads_ptr - 0x3F8CAE)
3F8CA6:  MOV.W           R2, #0x158
3F8CAA:  ADD             R1, PC; Pads_ptr
3F8CAC:  LDR             R1, [R1]; Pads
3F8CAE:  MLA.W           R0, R0, R2, R1
3F8CB2:  BX              LR
