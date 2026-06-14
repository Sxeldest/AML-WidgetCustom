; =========================================================
; Game Engine Function: _ZN19FxInfoAttractLine_cD2Ev
; Address            : 0x36BEA0 - 0x36BEBE
; =========================================================

36BEA0:  PUSH            {R4,R6,R7,LR}
36BEA2:  ADD             R7, SP, #8
36BEA4:  MOV             R4, R0
36BEA6:  LDR             R0, =(_ZTV19FxInfoAttractLine_c_ptr - 0x36BEAC)
36BEA8:  ADD             R0, PC; _ZTV19FxInfoAttractLine_c_ptr
36BEAA:  LDR             R0, [R0]; `vtable for'FxInfoAttractLine_c ...
36BEAC:  ADD.W           R1, R0, #8
36BEB0:  MOV             R0, R4
36BEB2:  STR.W           R1, [R0],#8; this
36BEB6:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BEBA:  MOV             R0, R4
36BEBC:  POP             {R4,R6,R7,PC}
