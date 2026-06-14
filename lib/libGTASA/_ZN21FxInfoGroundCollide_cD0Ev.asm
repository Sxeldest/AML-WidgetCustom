; =========================================================
; Game Engine Function: _ZN21FxInfoGroundCollide_cD0Ev
; Address            : 0x36BF10 - 0x36BF34
; =========================================================

36BF10:  PUSH            {R4,R6,R7,LR}
36BF12:  ADD             R7, SP, #8
36BF14:  MOV             R4, R0
36BF16:  LDR             R0, =(_ZTV21FxInfoGroundCollide_c_ptr - 0x36BF1C)
36BF18:  ADD             R0, PC; _ZTV21FxInfoGroundCollide_c_ptr
36BF1A:  LDR             R0, [R0]; `vtable for'FxInfoGroundCollide_c ...
36BF1C:  ADD.W           R1, R0, #8
36BF20:  MOV             R0, R4
36BF22:  STR.W           R1, [R0],#8; this
36BF26:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BF2A:  MOV             R0, R4; void *
36BF2C:  POP.W           {R4,R6,R7,LR}
36BF30:  B.W             j__ZdlPv; operator delete(void *)
