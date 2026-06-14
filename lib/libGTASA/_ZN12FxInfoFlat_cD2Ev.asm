; =========================================================
; Game Engine Function: _ZN12FxInfoFlat_cD2Ev
; Address            : 0x36C230 - 0x36C24E
; =========================================================

36C230:  PUSH            {R4,R6,R7,LR}
36C232:  ADD             R7, SP, #8
36C234:  MOV             R4, R0
36C236:  LDR             R0, =(_ZTV12FxInfoFlat_c_ptr - 0x36C23C)
36C238:  ADD             R0, PC; _ZTV12FxInfoFlat_c_ptr
36C23A:  LDR             R0, [R0]; `vtable for'FxInfoFlat_c ...
36C23C:  ADD.W           R1, R0, #8
36C240:  MOV             R0, R4
36C242:  STR.W           R1, [R0],#8; this
36C246:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C24A:  MOV             R0, R4
36C24C:  POP             {R4,R6,R7,PC}
