; =========================================================
; Game Engine Function: _ZN14FxInfoColour_cD2Ev
; Address            : 0x36C0B4 - 0x36C0D2
; =========================================================

36C0B4:  PUSH            {R4,R6,R7,LR}
36C0B6:  ADD             R7, SP, #8
36C0B8:  MOV             R4, R0
36C0BA:  LDR             R0, =(_ZTV14FxInfoColour_c_ptr - 0x36C0C0)
36C0BC:  ADD             R0, PC; _ZTV14FxInfoColour_c_ptr
36C0BE:  LDR             R0, [R0]; `vtable for'FxInfoColour_c ...
36C0C0:  ADD.W           R1, R0, #8
36C0C4:  MOV             R0, R4
36C0C6:  STR.W           R1, [R0],#8; this
36C0CA:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C0CE:  MOV             R0, R4
36C0D0:  POP             {R4,R6,R7,PC}
