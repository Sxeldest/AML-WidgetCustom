; =========================================================
; Game Engine Function: _ZN12FxInfoWind_cD2Ev
; Address            : 0x36BF38 - 0x36BF56
; =========================================================

36BF38:  PUSH            {R4,R6,R7,LR}
36BF3A:  ADD             R7, SP, #8
36BF3C:  MOV             R4, R0
36BF3E:  LDR             R0, =(_ZTV12FxInfoWind_c_ptr - 0x36BF44)
36BF40:  ADD             R0, PC; _ZTV12FxInfoWind_c_ptr
36BF42:  LDR             R0, [R0]; `vtable for'FxInfoWind_c ...
36BF44:  ADD.W           R1, R0, #8
36BF48:  MOV             R0, R4
36BF4A:  STR.W           R1, [R0],#8; this
36BF4E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BF52:  MOV             R0, R4
36BF54:  POP             {R4,R6,R7,PC}
