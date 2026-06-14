; =========================================================
; Game Engine Function: _ZN17FxInfoAttractPt_cD2Ev
; Address            : 0x36BE54 - 0x36BE72
; =========================================================

36BE54:  PUSH            {R4,R6,R7,LR}
36BE56:  ADD             R7, SP, #8
36BE58:  MOV             R4, R0
36BE5A:  LDR             R0, =(_ZTV17FxInfoAttractPt_c_ptr - 0x36BE60)
36BE5C:  ADD             R0, PC; _ZTV17FxInfoAttractPt_c_ptr
36BE5E:  LDR             R0, [R0]; `vtable for'FxInfoAttractPt_c ...
36BE60:  ADD.W           R1, R0, #8
36BE64:  MOV             R0, R4
36BE66:  STR.W           R1, [R0],#8; this
36BE6A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BE6E:  MOV             R0, R4
36BE70:  POP             {R4,R6,R7,PC}
