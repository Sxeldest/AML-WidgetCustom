; =========================================================
; Game Engine Function: _ZN14FxInfoEmRate_cD0Ev
; Address            : 0x36BAE8 - 0x36BB0C
; =========================================================

36BAE8:  PUSH            {R4,R6,R7,LR}
36BAEA:  ADD             R7, SP, #8
36BAEC:  MOV             R4, R0
36BAEE:  LDR             R0, =(_ZTV14FxInfoEmRate_c_ptr - 0x36BAF4)
36BAF0:  ADD             R0, PC; _ZTV14FxInfoEmRate_c_ptr
36BAF2:  LDR             R0, [R0]; `vtable for'FxInfoEmRate_c ...
36BAF4:  ADD.W           R1, R0, #8
36BAF8:  MOV             R0, R4
36BAFA:  STR.W           R1, [R0],#8; this
36BAFE:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BB02:  MOV             R0, R4; void *
36BB04:  POP.W           {R4,R6,R7,LR}
36BB08:  B.W             j__ZdlPv; operator delete(void *)
