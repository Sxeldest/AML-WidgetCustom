; =========================================================
; Game Engine Function: _ZN14FxInfoEmRate_cD2Ev
; Address            : 0x36BAC4 - 0x36BAE2
; =========================================================

36BAC4:  PUSH            {R4,R6,R7,LR}
36BAC6:  ADD             R7, SP, #8
36BAC8:  MOV             R4, R0
36BACA:  LDR             R0, =(_ZTV14FxInfoEmRate_c_ptr - 0x36BAD0)
36BACC:  ADD             R0, PC; _ZTV14FxInfoEmRate_c_ptr
36BACE:  LDR             R0, [R0]; `vtable for'FxInfoEmRate_c ...
36BAD0:  ADD.W           R1, R0, #8
36BAD4:  MOV             R0, R4
36BAD6:  STR.W           R1, [R0],#8; this
36BADA:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BADE:  MOV             R0, R4
36BAE0:  POP             {R4,R6,R7,PC}
