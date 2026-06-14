; =========================================================
; Game Engine Function: _ZN20FxInfoColourBright_cD2Ev
; Address            : 0x36C3AC - 0x36C3CA
; =========================================================

36C3AC:  PUSH            {R4,R6,R7,LR}
36C3AE:  ADD             R7, SP, #8
36C3B0:  MOV             R4, R0
36C3B2:  LDR             R0, =(_ZTV20FxInfoColourBright_c_ptr - 0x36C3B8)
36C3B4:  ADD             R0, PC; _ZTV20FxInfoColourBright_c_ptr
36C3B6:  LDR             R0, [R0]; `vtable for'FxInfoColourBright_c ...
36C3B8:  ADD.W           R1, R0, #8
36C3BC:  MOV             R0, R4
36C3BE:  STR.W           R1, [R0],#8; this
36C3C2:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C3C6:  MOV             R0, R4
36C3C8:  POP             {R4,R6,R7,PC}
