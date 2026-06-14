; =========================================================
; Game Engine Function: _ZN18FxInfoEmRotation_cD2Ev
; Address            : 0x36BD24 - 0x36BD42
; =========================================================

36BD24:  PUSH            {R4,R6,R7,LR}
36BD26:  ADD             R7, SP, #8
36BD28:  MOV             R4, R0
36BD2A:  LDR             R0, =(_ZTV18FxInfoEmRotation_c_ptr - 0x36BD30)
36BD2C:  ADD             R0, PC; _ZTV18FxInfoEmRotation_c_ptr
36BD2E:  LDR             R0, [R0]; `vtable for'FxInfoEmRotation_c ...
36BD30:  ADD.W           R1, R0, #8
36BD34:  MOV             R0, R4
36BD36:  STR.W           R1, [R0],#8; this
36BD3A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BD3E:  MOV             R0, R4
36BD40:  POP             {R4,R6,R7,PC}
