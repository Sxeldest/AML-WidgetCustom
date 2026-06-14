; =========================================================
; Game Engine Function: _ZN15FxInfoEmSpeed_cD2Ev
; Address            : 0x36BB5C - 0x36BB7A
; =========================================================

36BB5C:  PUSH            {R4,R6,R7,LR}
36BB5E:  ADD             R7, SP, #8
36BB60:  MOV             R4, R0
36BB62:  LDR             R0, =(_ZTV15FxInfoEmSpeed_c_ptr - 0x36BB68)
36BB64:  ADD             R0, PC; _ZTV15FxInfoEmSpeed_c_ptr
36BB66:  LDR             R0, [R0]; `vtable for'FxInfoEmSpeed_c ...
36BB68:  ADD.W           R1, R0, #8
36BB6C:  MOV             R0, R4
36BB6E:  STR.W           R1, [R0],#8; this
36BB72:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BB76:  MOV             R0, R4
36BB78:  POP             {R4,R6,R7,PC}
