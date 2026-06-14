; =========================================================
; Game Engine Function: _ZN19FxInterpInfoFloat_cC2Ev
; Address            : 0x36C460 - 0x36C474
; =========================================================

36C460:  LDR             R1, =(_ZTV19FxInterpInfoFloat_c_ptr - 0x36C46A)
36C462:  MOVS            R2, #0
36C464:  STRB            R2, [R0,#4]
36C466:  ADD             R1, PC; _ZTV19FxInterpInfoFloat_c_ptr
36C468:  STRD.W          R2, R2, [R0,#8]
36C46C:  LDR             R1, [R1]; `vtable for'FxInterpInfoFloat_c ...
36C46E:  ADDS            R1, #8
36C470:  STR             R1, [R0]
36C472:  BX              LR
