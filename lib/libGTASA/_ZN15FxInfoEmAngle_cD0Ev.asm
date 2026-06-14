; =========================================================
; Game Engine Function: _ZN15FxInfoEmAngle_cD0Ev
; Address            : 0x36BC18 - 0x36BC3C
; =========================================================

36BC18:  PUSH            {R4,R6,R7,LR}
36BC1A:  ADD             R7, SP, #8
36BC1C:  MOV             R4, R0
36BC1E:  LDR             R0, =(_ZTV15FxInfoEmAngle_c_ptr - 0x36BC24)
36BC20:  ADD             R0, PC; _ZTV15FxInfoEmAngle_c_ptr
36BC22:  LDR             R0, [R0]; `vtable for'FxInfoEmAngle_c ...
36BC24:  ADD.W           R1, R0, #8
36BC28:  MOV             R0, R4
36BC2A:  STR.W           R1, [R0],#8; this
36BC2E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BC32:  MOV             R0, R4; void *
36BC34:  POP.W           {R4,R6,R7,LR}
36BC38:  B.W             j__ZdlPv; operator delete(void *)
