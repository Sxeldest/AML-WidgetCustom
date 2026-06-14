; =========================================================
; Game Engine Function: _ZN17FxInterpInfo255_cC2Ev
; Address            : 0x36CAFC - 0x36CB10
; =========================================================

36CAFC:  LDR             R1, =(_ZTV17FxInterpInfo255_c_ptr - 0x36CB06)
36CAFE:  MOVS            R2, #0
36CB00:  STRB            R2, [R0,#4]
36CB02:  ADD             R1, PC; _ZTV17FxInterpInfo255_c_ptr
36CB04:  STRD.W          R2, R2, [R0,#8]
36CB08:  LDR             R1, [R1]; `vtable for'FxInterpInfo255_c ...
36CB0A:  ADDS            R1, #8
36CB0C:  STR             R1, [R0]
36CB0E:  BX              LR
