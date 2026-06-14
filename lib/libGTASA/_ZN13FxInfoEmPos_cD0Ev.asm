; =========================================================
; Game Engine Function: _ZN13FxInfoEmPos_cD0Ev
; Address            : 0x36BCB0 - 0x36BCD4
; =========================================================

36BCB0:  PUSH            {R4,R6,R7,LR}
36BCB2:  ADD             R7, SP, #8
36BCB4:  MOV             R4, R0
36BCB6:  LDR             R0, =(_ZTV13FxInfoEmPos_c_ptr - 0x36BCBC)
36BCB8:  ADD             R0, PC; _ZTV13FxInfoEmPos_c_ptr
36BCBA:  LDR             R0, [R0]; `vtable for'FxInfoEmPos_c ...
36BCBC:  ADD.W           R1, R0, #8
36BCC0:  MOV             R0, R4
36BCC2:  STR.W           R1, [R0],#8; this
36BCC6:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BCCA:  MOV             R0, R4; void *
36BCCC:  POP.W           {R4,R6,R7,LR}
36BCD0:  B.W             j__ZdlPv; operator delete(void *)
