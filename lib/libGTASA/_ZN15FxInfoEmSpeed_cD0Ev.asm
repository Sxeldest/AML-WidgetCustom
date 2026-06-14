; =========================================================
; Game Engine Function: _ZN15FxInfoEmSpeed_cD0Ev
; Address            : 0x36BB80 - 0x36BBA4
; =========================================================

36BB80:  PUSH            {R4,R6,R7,LR}
36BB82:  ADD             R7, SP, #8
36BB84:  MOV             R4, R0
36BB86:  LDR             R0, =(_ZTV15FxInfoEmSpeed_c_ptr - 0x36BB8C)
36BB88:  ADD             R0, PC; _ZTV15FxInfoEmSpeed_c_ptr
36BB8A:  LDR             R0, [R0]; `vtable for'FxInfoEmSpeed_c ...
36BB8C:  ADD.W           R1, R0, #8
36BB90:  MOV             R0, R4
36BB92:  STR.W           R1, [R0],#8; this
36BB96:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BB9A:  MOV             R0, R4; void *
36BB9C:  POP.W           {R4,R6,R7,LR}
36BBA0:  B.W             j__ZdlPv; operator delete(void *)
