; =========================================================
; Game Engine Function: _ZN19FxInfoAttractLine_cD0Ev
; Address            : 0x36BEC4 - 0x36BEE8
; =========================================================

36BEC4:  PUSH            {R4,R6,R7,LR}
36BEC6:  ADD             R7, SP, #8
36BEC8:  MOV             R4, R0
36BECA:  LDR             R0, =(_ZTV19FxInfoAttractLine_c_ptr - 0x36BED0)
36BECC:  ADD             R0, PC; _ZTV19FxInfoAttractLine_c_ptr
36BECE:  LDR             R0, [R0]; `vtable for'FxInfoAttractLine_c ...
36BED0:  ADD.W           R1, R0, #8
36BED4:  MOV             R0, R4
36BED6:  STR.W           R1, [R0],#8; this
36BEDA:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BEDE:  MOV             R0, R4; void *
36BEE0:  POP.W           {R4,R6,R7,LR}
36BEE4:  B.W             j__ZdlPv; operator delete(void *)
