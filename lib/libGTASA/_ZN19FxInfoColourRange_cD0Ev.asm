; =========================================================
; Game Engine Function: _ZN19FxInfoColourRange_cD0Ev
; Address            : 0x36C338 - 0x36C35C
; =========================================================

36C338:  PUSH            {R4,R6,R7,LR}
36C33A:  ADD             R7, SP, #8
36C33C:  MOV             R4, R0
36C33E:  LDR             R0, =(_ZTV19FxInfoColourRange_c_ptr - 0x36C344)
36C340:  ADD             R0, PC; _ZTV19FxInfoColourRange_c_ptr
36C342:  LDR             R0, [R0]; `vtable for'FxInfoColourRange_c ...
36C344:  ADD.W           R1, R0, #8
36C348:  MOV             R0, R4
36C34A:  STR.W           R1, [R0],#8; this
36C34E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C352:  MOV             R0, R4; void *
36C354:  POP.W           {R4,R6,R7,LR}
36C358:  B.W             j__ZdlPv; operator delete(void *)
