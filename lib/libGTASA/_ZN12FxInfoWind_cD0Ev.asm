; =========================================================
; Game Engine Function: _ZN12FxInfoWind_cD0Ev
; Address            : 0x36BF5C - 0x36BF80
; =========================================================

36BF5C:  PUSH            {R4,R6,R7,LR}
36BF5E:  ADD             R7, SP, #8
36BF60:  MOV             R4, R0
36BF62:  LDR             R0, =(_ZTV12FxInfoWind_c_ptr - 0x36BF68)
36BF64:  ADD             R0, PC; _ZTV12FxInfoWind_c_ptr
36BF66:  LDR             R0, [R0]; `vtable for'FxInfoWind_c ...
36BF68:  ADD.W           R1, R0, #8
36BF6C:  MOV             R0, R4
36BF6E:  STR.W           R1, [R0],#8; this
36BF72:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BF76:  MOV             R0, R4; void *
36BF78:  POP.W           {R4,R6,R7,LR}
36BF7C:  B.W             j__ZdlPv; operator delete(void *)
