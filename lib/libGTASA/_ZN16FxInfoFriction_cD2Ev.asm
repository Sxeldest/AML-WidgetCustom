; =========================================================
; Game Engine Function: _ZN16FxInfoFriction_cD2Ev
; Address            : 0x36BE08 - 0x36BE26
; =========================================================

36BE08:  PUSH            {R4,R6,R7,LR}
36BE0A:  ADD             R7, SP, #8
36BE0C:  MOV             R4, R0
36BE0E:  LDR             R0, =(_ZTV16FxInfoFriction_c_ptr - 0x36BE14)
36BE10:  ADD             R0, PC; _ZTV16FxInfoFriction_c_ptr
36BE12:  LDR             R0, [R0]; `vtable for'FxInfoFriction_c ...
36BE14:  ADD.W           R1, R0, #8
36BE18:  MOV             R0, R4
36BE1A:  STR.W           R1, [R0],#8; this
36BE1E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BE22:  MOV             R0, R4
36BE24:  POP             {R4,R6,R7,PC}
