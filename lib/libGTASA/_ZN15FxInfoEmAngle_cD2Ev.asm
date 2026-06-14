; =========================================================
; Game Engine Function: _ZN15FxInfoEmAngle_cD2Ev
; Address            : 0x36BBF4 - 0x36BC12
; =========================================================

36BBF4:  PUSH            {R4,R6,R7,LR}
36BBF6:  ADD             R7, SP, #8
36BBF8:  MOV             R4, R0
36BBFA:  LDR             R0, =(_ZTV15FxInfoEmAngle_c_ptr - 0x36BC00)
36BBFC:  ADD             R0, PC; _ZTV15FxInfoEmAngle_c_ptr
36BBFE:  LDR             R0, [R0]; `vtable for'FxInfoEmAngle_c ...
36BC00:  ADD.W           R1, R0, #8
36BC04:  MOV             R0, R4
36BC06:  STR.W           R1, [R0],#8; this
36BC0A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BC0E:  MOV             R0, R4
36BC10:  POP             {R4,R6,R7,PC}
