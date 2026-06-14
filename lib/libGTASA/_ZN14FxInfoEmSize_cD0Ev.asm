; =========================================================
; Game Engine Function: _ZN14FxInfoEmSize_cD0Ev
; Address            : 0x36BB34 - 0x36BB58
; =========================================================

36BB34:  PUSH            {R4,R6,R7,LR}
36BB36:  ADD             R7, SP, #8
36BB38:  MOV             R4, R0
36BB3A:  LDR             R0, =(_ZTV14FxInfoEmSize_c_ptr - 0x36BB40)
36BB3C:  ADD             R0, PC; _ZTV14FxInfoEmSize_c_ptr
36BB3E:  LDR             R0, [R0]; `vtable for'FxInfoEmSize_c ...
36BB40:  ADD.W           R1, R0, #8
36BB44:  MOV             R0, R4
36BB46:  STR.W           R1, [R0],#8; this
36BB4A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BB4E:  MOV             R0, R4; void *
36BB50:  POP.W           {R4,R6,R7,LR}
36BB54:  B.W             j__ZdlPv; operator delete(void *)
