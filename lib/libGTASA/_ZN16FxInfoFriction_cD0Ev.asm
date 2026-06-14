; =========================================================
; Game Engine Function: _ZN16FxInfoFriction_cD0Ev
; Address            : 0x36BE2C - 0x36BE50
; =========================================================

36BE2C:  PUSH            {R4,R6,R7,LR}
36BE2E:  ADD             R7, SP, #8
36BE30:  MOV             R4, R0
36BE32:  LDR             R0, =(_ZTV16FxInfoFriction_c_ptr - 0x36BE38)
36BE34:  ADD             R0, PC; _ZTV16FxInfoFriction_c_ptr
36BE36:  LDR             R0, [R0]; `vtable for'FxInfoFriction_c ...
36BE38:  ADD.W           R1, R0, #8
36BE3C:  MOV             R0, R4
36BE3E:  STR.W           R1, [R0],#8; this
36BE42:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BE46:  MOV             R0, R4; void *
36BE48:  POP.W           {R4,R6,R7,LR}
36BE4C:  B.W             j__ZdlPv; operator delete(void *)
