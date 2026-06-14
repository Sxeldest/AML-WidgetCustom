; =========================================================
; Game Engine Function: _ZN14FxInfoJitter_cD0Ev
; Address            : 0x36BFA8 - 0x36BFCC
; =========================================================

36BFA8:  PUSH            {R4,R6,R7,LR}
36BFAA:  ADD             R7, SP, #8
36BFAC:  MOV             R4, R0
36BFAE:  LDR             R0, =(_ZTV14FxInfoJitter_c_ptr - 0x36BFB4)
36BFB0:  ADD             R0, PC; _ZTV14FxInfoJitter_c_ptr
36BFB2:  LDR             R0, [R0]; `vtable for'FxInfoJitter_c ...
36BFB4:  ADD.W           R1, R0, #8
36BFB8:  MOV             R0, R4
36BFBA:  STR.W           R1, [R0],#8; this
36BFBE:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BFC2:  MOV             R0, R4; void *
36BFC4:  POP.W           {R4,R6,R7,LR}
36BFC8:  B.W             j__ZdlPv; operator delete(void *)
