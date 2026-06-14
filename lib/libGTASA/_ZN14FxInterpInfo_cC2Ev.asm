; =========================================================
; Game Engine Function: _ZN14FxInterpInfo_cC2Ev
; Address            : 0x36C444 - 0x36C456
; =========================================================

36C444:  LDR             R1, =(_ZTV14FxInterpInfo_c_ptr - 0x36C44E)
36C446:  MOVS            R2, #0
36C448:  STRB            R2, [R0,#4]
36C44A:  ADD             R1, PC; _ZTV14FxInterpInfo_c_ptr
36C44C:  STR             R2, [R0,#8]
36C44E:  LDR             R1, [R1]; `vtable for'FxInterpInfo_c ...
36C450:  ADDS            R1, #8
36C452:  STR             R1, [R0]
36C454:  BX              LR
