; =========================================================
; Game Engine Function: _ZN13FxInfoNoise_cD0Ev
; Address            : 0x36BD94 - 0x36BDB8
; =========================================================

36BD94:  PUSH            {R4,R6,R7,LR}
36BD96:  ADD             R7, SP, #8
36BD98:  MOV             R4, R0
36BD9A:  LDR             R0, =(_ZTV13FxInfoNoise_c_ptr - 0x36BDA0)
36BD9C:  ADD             R0, PC; _ZTV13FxInfoNoise_c_ptr
36BD9E:  LDR             R0, [R0]; `vtable for'FxInfoNoise_c ...
36BDA0:  ADD.W           R1, R0, #8
36BDA4:  MOV             R0, R4
36BDA6:  STR.W           R1, [R0],#8; this
36BDAA:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_2; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36BDAE:  MOV             R0, R4; void *
36BDB0:  POP.W           {R4,R6,R7,LR}
36BDB4:  B.W             j__ZdlPv; operator delete(void *)
