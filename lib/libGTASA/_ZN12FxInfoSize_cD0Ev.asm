; =========================================================
; Game Engine Function: _ZN12FxInfoSize_cD0Ev
; Address            : 0x36C124 - 0x36C148
; =========================================================

36C124:  PUSH            {R4,R6,R7,LR}
36C126:  ADD             R7, SP, #8
36C128:  MOV             R4, R0
36C12A:  LDR             R0, =(_ZTV12FxInfoSize_c_ptr - 0x36C130)
36C12C:  ADD             R0, PC; _ZTV12FxInfoSize_c_ptr
36C12E:  LDR             R0, [R0]; `vtable for'FxInfoSize_c ...
36C130:  ADD.W           R1, R0, #8
36C134:  MOV             R0, R4
36C136:  STR.W           R1, [R0],#8; this
36C13A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C13E:  MOV             R0, R4; void *
36C140:  POP.W           {R4,R6,R7,LR}
36C144:  B.W             j__ZdlPv; operator delete(void *)
