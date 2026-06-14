; =========================================================
; Game Engine Function: _ZN13FxInfoForce_cD2Ev
; Address            : 0x36BDBC - 0x36BDDA
; =========================================================

36BDBC:  PUSH            {R4,R6,R7,LR}
36BDBE:  ADD             R7, SP, #8
36BDC0:  MOV             R4, R0
36BDC2:  LDR             R0, =(_ZTV13FxInfoForce_c_ptr - 0x36BDC8)
36BDC4:  ADD             R0, PC; _ZTV13FxInfoForce_c_ptr
36BDC6:  LDR             R0, [R0]; `vtable for'FxInfoForce_c ...
36BDC8:  ADD.W           R1, R0, #8
36BDCC:  MOV             R0, R4
36BDCE:  STR.W           R1, [R0],#8; this
36BDD2:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BDD6:  MOV             R0, R4
36BDD8:  POP             {R4,R6,R7,PC}
