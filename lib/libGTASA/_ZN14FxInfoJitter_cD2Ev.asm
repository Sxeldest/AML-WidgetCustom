; =========================================================
; Game Engine Function: _ZN14FxInfoJitter_cD2Ev
; Address            : 0x36BF84 - 0x36BFA2
; =========================================================

36BF84:  PUSH            {R4,R6,R7,LR}
36BF86:  ADD             R7, SP, #8
36BF88:  MOV             R4, R0
36BF8A:  LDR             R0, =(_ZTV14FxInfoJitter_c_ptr - 0x36BF90)
36BF8C:  ADD             R0, PC; _ZTV14FxInfoJitter_c_ptr
36BF8E:  LDR             R0, [R0]; `vtable for'FxInfoJitter_c ...
36BF90:  ADD.W           R1, R0, #8
36BF94:  MOV             R0, R4
36BF96:  STR.W           R1, [R0],#8; this
36BF9A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BF9E:  MOV             R0, R4
36BFA0:  POP             {R4,R6,R7,PC}
