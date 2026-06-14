; =========================================================
; Game Engine Function: _ZN13FxInfoEmDir_cD2Ev
; Address            : 0x36BBA8 - 0x36BBC6
; =========================================================

36BBA8:  PUSH            {R4,R6,R7,LR}
36BBAA:  ADD             R7, SP, #8
36BBAC:  MOV             R4, R0
36BBAE:  LDR             R0, =(_ZTV13FxInfoEmDir_c_ptr - 0x36BBB4)
36BBB0:  ADD             R0, PC; _ZTV13FxInfoEmDir_c_ptr
36BBB2:  LDR             R0, [R0]; `vtable for'FxInfoEmDir_c ...
36BBB4:  ADD.W           R1, R0, #8
36BBB8:  MOV             R0, R4
36BBBA:  STR.W           R1, [R0],#8; this
36BBBE:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BBC2:  MOV             R0, R4
36BBC4:  POP             {R4,R6,R7,PC}
