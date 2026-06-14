; =========================================================
; Game Engine Function: _ZN13FxInfoSmoke_cD2Ev
; Address            : 0x36C3F8 - 0x36C416
; =========================================================

36C3F8:  PUSH            {R4,R6,R7,LR}
36C3FA:  ADD             R7, SP, #8
36C3FC:  MOV             R4, R0
36C3FE:  LDR             R0, =(_ZTV13FxInfoSmoke_c_ptr - 0x36C404)
36C400:  ADD             R0, PC; _ZTV13FxInfoSmoke_c_ptr
36C402:  LDR             R0, [R0]; `vtable for'FxInfoSmoke_c ...
36C404:  ADD.W           R1, R0, #8
36C408:  MOV             R0, R4
36C40A:  STR.W           R1, [R0],#8; this
36C40E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C412:  MOV             R0, R4
36C414:  POP             {R4,R6,R7,PC}
