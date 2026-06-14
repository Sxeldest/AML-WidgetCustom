; =========================================================
; Game Engine Function: _ZN14FxInfoEmLife_cD0Ev
; Address            : 0x36BC64 - 0x36BC88
; =========================================================

36BC64:  PUSH            {R4,R6,R7,LR}
36BC66:  ADD             R7, SP, #8
36BC68:  MOV             R4, R0
36BC6A:  LDR             R0, =(_ZTV14FxInfoEmLife_c_ptr - 0x36BC70)
36BC6C:  ADD             R0, PC; _ZTV14FxInfoEmLife_c_ptr
36BC6E:  LDR             R0, [R0]; `vtable for'FxInfoEmLife_c ...
36BC70:  ADD.W           R1, R0, #8
36BC74:  MOV             R0, R4
36BC76:  STR.W           R1, [R0],#8; this
36BC7A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BC7E:  MOV             R0, R4; void *
36BC80:  POP.W           {R4,R6,R7,LR}
36BC84:  B.W             j__ZdlPv; operator delete(void *)
