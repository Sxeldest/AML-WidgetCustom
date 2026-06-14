; =========================================================
; Game Engine Function: _ZN12FxInfoSize_cD2Ev
; Address            : 0x36C100 - 0x36C11E
; =========================================================

36C100:  PUSH            {R4,R6,R7,LR}
36C102:  ADD             R7, SP, #8
36C104:  MOV             R4, R0
36C106:  LDR             R0, =(_ZTV12FxInfoSize_c_ptr - 0x36C10C)
36C108:  ADD             R0, PC; _ZTV12FxInfoSize_c_ptr
36C10A:  LDR             R0, [R0]; `vtable for'FxInfoSize_c ...
36C10C:  ADD.W           R1, R0, #8
36C110:  MOV             R0, R4
36C112:  STR.W           R1, [R0],#8; this
36C116:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C11A:  MOV             R0, R4
36C11C:  POP             {R4,R6,R7,PC}
