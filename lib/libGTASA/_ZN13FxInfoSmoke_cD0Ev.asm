; =========================================================
; Game Engine Function: _ZN13FxInfoSmoke_cD0Ev
; Address            : 0x36C41C - 0x36C440
; =========================================================

36C41C:  PUSH            {R4,R6,R7,LR}
36C41E:  ADD             R7, SP, #8
36C420:  MOV             R4, R0
36C422:  LDR             R0, =(_ZTV13FxInfoSmoke_c_ptr - 0x36C428)
36C424:  ADD             R0, PC; _ZTV13FxInfoSmoke_c_ptr
36C426:  LDR             R0, [R0]; `vtable for'FxInfoSmoke_c ...
36C428:  ADD.W           R1, R0, #8
36C42C:  MOV             R0, R4
36C42E:  STR.W           R1, [R0],#8; this
36C432:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C436:  MOV             R0, R4; void *
36C438:  POP.W           {R4,R6,R7,LR}
36C43C:  B.W             j__ZdlPv; operator delete(void *)
