; =========================================================
; Game Engine Function: _ZN21FxInfoGroundCollide_cD2Ev
; Address            : 0x36BEEC - 0x36BF0A
; =========================================================

36BEEC:  PUSH            {R4,R6,R7,LR}
36BEEE:  ADD             R7, SP, #8
36BEF0:  MOV             R4, R0
36BEF2:  LDR             R0, =(_ZTV21FxInfoGroundCollide_c_ptr - 0x36BEF8)
36BEF4:  ADD             R0, PC; _ZTV21FxInfoGroundCollide_c_ptr
36BEF6:  LDR             R0, [R0]; `vtable for'FxInfoGroundCollide_c ...
36BEF8:  ADD.W           R1, R0, #8
36BEFC:  MOV             R0, R4
36BEFE:  STR.W           R1, [R0],#8; this
36BF02:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BF06:  MOV             R0, R4
36BF08:  POP             {R4,R6,R7,PC}
