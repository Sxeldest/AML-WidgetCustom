; =========================================================
; Game Engine Function: _ZN15FxInfoSelfLit_cD0Ev
; Address            : 0x36C384 - 0x36C3A8
; =========================================================

36C384:  PUSH            {R4,R6,R7,LR}
36C386:  ADD             R7, SP, #8
36C388:  MOV             R4, R0
36C38A:  LDR             R0, =(_ZTV15FxInfoSelfLit_c_ptr - 0x36C390)
36C38C:  ADD             R0, PC; _ZTV15FxInfoSelfLit_c_ptr
36C38E:  LDR             R0, [R0]; `vtable for'FxInfoSelfLit_c ...
36C390:  ADD.W           R1, R0, #8
36C394:  MOV             R0, R4
36C396:  STR.W           R1, [R0],#8; this
36C39A:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C39E:  MOV             R0, R4; void *
36C3A0:  POP.W           {R4,R6,R7,LR}
36C3A4:  B.W             j__ZdlPv; operator delete(void *)
