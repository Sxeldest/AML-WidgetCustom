; =========================================================
; Game Engine Function: _ZN16FxInfoRotSpeed_cD2Ev
; Address            : 0x36BFD0 - 0x36BFEE
; =========================================================

36BFD0:  PUSH            {R4,R6,R7,LR}
36BFD2:  ADD             R7, SP, #8
36BFD4:  MOV             R4, R0
36BFD6:  LDR             R0, =(_ZTV16FxInfoRotSpeed_c_ptr - 0x36BFDC)
36BFD8:  ADD             R0, PC; _ZTV16FxInfoRotSpeed_c_ptr
36BFDA:  LDR             R0, [R0]; `vtable for'FxInfoRotSpeed_c ...
36BFDC:  ADD.W           R1, R0, #8
36BFE0:  MOV             R0, R4
36BFE2:  STR.W           R1, [R0],#8; this
36BFE6:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BFEA:  MOV             R0, R4
36BFEC:  POP             {R4,R6,R7,PC}
