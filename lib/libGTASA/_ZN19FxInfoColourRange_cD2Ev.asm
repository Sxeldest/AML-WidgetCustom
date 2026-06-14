; =========================================================
; Game Engine Function: _ZN19FxInfoColourRange_cD2Ev
; Address            : 0x36C314 - 0x36C332
; =========================================================

36C314:  PUSH            {R4,R6,R7,LR}
36C316:  ADD             R7, SP, #8
36C318:  MOV             R4, R0
36C31A:  LDR             R0, =(_ZTV19FxInfoColourRange_c_ptr - 0x36C320)
36C31C:  ADD             R0, PC; _ZTV19FxInfoColourRange_c_ptr
36C31E:  LDR             R0, [R0]; `vtable for'FxInfoColourRange_c ...
36C320:  ADD.W           R1, R0, #8
36C324:  MOV             R0, R4
36C326:  STR.W           R1, [R0],#8; this
36C32A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C32E:  MOV             R0, R4
36C330:  POP             {R4,R6,R7,PC}
