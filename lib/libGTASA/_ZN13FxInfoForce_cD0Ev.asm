; =========================================================
; Game Engine Function: _ZN13FxInfoForce_cD0Ev
; Address            : 0x36BDE0 - 0x36BE04
; =========================================================

36BDE0:  PUSH            {R4,R6,R7,LR}
36BDE2:  ADD             R7, SP, #8
36BDE4:  MOV             R4, R0
36BDE6:  LDR             R0, =(_ZTV13FxInfoForce_c_ptr - 0x36BDEC)
36BDE8:  ADD             R0, PC; _ZTV13FxInfoForce_c_ptr
36BDEA:  LDR             R0, [R0]; `vtable for'FxInfoForce_c ...
36BDEC:  ADD.W           R1, R0, #8
36BDF0:  MOV             R0, R4
36BDF2:  STR.W           R1, [R0],#8; this
36BDF6:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BDFA:  MOV             R0, R4; void *
36BDFC:  POP.W           {R4,R6,R7,LR}
36BE00:  B.W             j__ZdlPv; operator delete(void *)
