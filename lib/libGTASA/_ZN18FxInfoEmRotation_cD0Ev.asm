; =========================================================
; Game Engine Function: _ZN18FxInfoEmRotation_cD0Ev
; Address            : 0x36BD48 - 0x36BD6C
; =========================================================

36BD48:  PUSH            {R4,R6,R7,LR}
36BD4A:  ADD             R7, SP, #8
36BD4C:  MOV             R4, R0
36BD4E:  LDR             R0, =(_ZTV18FxInfoEmRotation_c_ptr - 0x36BD54)
36BD50:  ADD             R0, PC; _ZTV18FxInfoEmRotation_c_ptr
36BD52:  LDR             R0, [R0]; `vtable for'FxInfoEmRotation_c ...
36BD54:  ADD.W           R1, R0, #8
36BD58:  MOV             R0, R4
36BD5A:  STR.W           R1, [R0],#8; this
36BD5E:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BD62:  MOV             R0, R4; void *
36BD64:  POP.W           {R4,R6,R7,LR}
36BD68:  B.W             j__ZdlPv; operator delete(void *)
