; =========================================================
; Game Engine Function: _ZN17FxInfoAttractPt_cD0Ev
; Address            : 0x36BE78 - 0x36BE9C
; =========================================================

36BE78:  PUSH            {R4,R6,R7,LR}
36BE7A:  ADD             R7, SP, #8
36BE7C:  MOV             R4, R0
36BE7E:  LDR             R0, =(_ZTV17FxInfoAttractPt_c_ptr - 0x36BE84)
36BE80:  ADD             R0, PC; _ZTV17FxInfoAttractPt_c_ptr
36BE82:  LDR             R0, [R0]; `vtable for'FxInfoAttractPt_c ...
36BE84:  ADD.W           R1, R0, #8
36BE88:  MOV             R0, R4
36BE8A:  STR.W           R1, [R0],#8; this
36BE8E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BE92:  MOV             R0, R4; void *
36BE94:  POP.W           {R4,R6,R7,LR}
36BE98:  B.W             j__ZdlPv; operator delete(void *)
