; =========================================================
; Game Engine Function: _ZN8FxPrim_cC2Ev
; Address            : 0x36DCD8 - 0x36DCEE
; =========================================================

36DCD8:  LDR             R1, =(_ZTV8FxPrim_c_ptr - 0x36DCE6)
36DCDA:  MOVS            R2, #0
36DCDC:  STRD.W          R2, R2, [R0,#4]
36DCE0:  MOVS            R2, #1
36DCE2:  ADD             R1, PC; _ZTV8FxPrim_c_ptr
36DCE4:  STRB            R2, [R0,#0xC]
36DCE6:  LDR             R1, [R1]; `vtable for'FxPrim_c ...
36DCE8:  ADDS            R1, #8
36DCEA:  STR             R1, [R0]
36DCEC:  BX              LR
