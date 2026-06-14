; =========================================================
; Game Engine Function: _ZN14FxInfoColour_cD0Ev
; Address            : 0x36C0D8 - 0x36C0FC
; =========================================================

36C0D8:  PUSH            {R4,R6,R7,LR}
36C0DA:  ADD             R7, SP, #8
36C0DC:  MOV             R4, R0
36C0DE:  LDR             R0, =(_ZTV14FxInfoColour_c_ptr - 0x36C0E4)
36C0E0:  ADD             R0, PC; _ZTV14FxInfoColour_c_ptr
36C0E2:  LDR             R0, [R0]; `vtable for'FxInfoColour_c ...
36C0E4:  ADD.W           R1, R0, #8
36C0E8:  MOV             R0, R4
36C0EA:  STR.W           R1, [R0],#8; this
36C0EE:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C0F2:  MOV             R0, R4; void *
36C0F4:  POP.W           {R4,R6,R7,LR}
36C0F8:  B.W             j__ZdlPv; operator delete(void *)
