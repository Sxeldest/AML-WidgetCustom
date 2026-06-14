; =========================================================
; Game Engine Function: _ZN12FxInfoFlat_cD0Ev
; Address            : 0x36C254 - 0x36C278
; =========================================================

36C254:  PUSH            {R4,R6,R7,LR}
36C256:  ADD             R7, SP, #8
36C258:  MOV             R4, R0
36C25A:  LDR             R0, =(_ZTV12FxInfoFlat_c_ptr - 0x36C260)
36C25C:  ADD             R0, PC; _ZTV12FxInfoFlat_c_ptr
36C25E:  LDR             R0, [R0]; `vtable for'FxInfoFlat_c ...
36C260:  ADD.W           R1, R0, #8
36C264:  MOV             R0, R4
36C266:  STR.W           R1, [R0],#8; this
36C26A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_0; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C26E:  MOV             R0, R4; void *
36C270:  POP.W           {R4,R6,R7,LR}
36C274:  B.W             j__ZdlPv; operator delete(void *)
