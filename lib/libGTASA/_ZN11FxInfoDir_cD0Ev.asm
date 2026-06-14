; =========================================================
; Game Engine Function: _ZN11FxInfoDir_cD0Ev
; Address            : 0x36C2A0 - 0x36C2C4
; =========================================================

36C2A0:  PUSH            {R4,R6,R7,LR}
36C2A2:  ADD             R7, SP, #8
36C2A4:  MOV             R4, R0
36C2A6:  LDR             R0, =(_ZTV11FxInfoDir_c_ptr - 0x36C2AC)
36C2A8:  ADD             R0, PC; _ZTV11FxInfoDir_c_ptr
36C2AA:  LDR             R0, [R0]; `vtable for'FxInfoDir_c ...
36C2AC:  ADD.W           R1, R0, #8
36C2B0:  MOV             R0, R4
36C2B2:  STR.W           R1, [R0],#8; this
36C2B6:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C2BA:  MOV             R0, R4; void *
36C2BC:  POP.W           {R4,R6,R7,LR}
36C2C0:  B.W             j__ZdlPv; operator delete(void *)
