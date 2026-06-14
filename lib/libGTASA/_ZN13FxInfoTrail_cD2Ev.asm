; =========================================================
; Game Engine Function: _ZN13FxInfoTrail_cD2Ev
; Address            : 0x36C1E4 - 0x36C202
; =========================================================

36C1E4:  PUSH            {R4,R6,R7,LR}
36C1E6:  ADD             R7, SP, #8
36C1E8:  MOV             R4, R0
36C1EA:  LDR             R0, =(_ZTV13FxInfoTrail_c_ptr - 0x36C1F0)
36C1EC:  ADD             R0, PC; _ZTV13FxInfoTrail_c_ptr
36C1EE:  LDR             R0, [R0]; `vtable for'FxInfoTrail_c ...
36C1F0:  ADD.W           R1, R0, #8
36C1F4:  MOV             R0, R4
36C1F6:  STR.W           R1, [R0],#8; this
36C1FA:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C1FE:  MOV             R0, R4
36C200:  POP             {R4,R6,R7,PC}
