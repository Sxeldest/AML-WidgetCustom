; =========================================================
; Game Engine Function: _ZN18FxInfoUnderwater_cD0Ev
; Address            : 0x36C08C - 0x36C0B0
; =========================================================

36C08C:  PUSH            {R4,R6,R7,LR}
36C08E:  ADD             R7, SP, #8
36C090:  MOV             R4, R0
36C092:  LDR             R0, =(_ZTV18FxInfoUnderwater_c_ptr - 0x36C098)
36C094:  ADD             R0, PC; _ZTV18FxInfoUnderwater_c_ptr
36C096:  LDR             R0, [R0]; `vtable for'FxInfoUnderwater_c ...
36C098:  ADD.W           R1, R0, #8
36C09C:  MOV             R0, R4
36C09E:  STR.W           R1, [R0],#8; this
36C0A2:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C0A6:  MOV             R0, R4; void *
36C0A8:  POP.W           {R4,R6,R7,LR}
36C0AC:  B.W             j__ZdlPv; operator delete(void *)
