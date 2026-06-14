; =========================================================
; Game Engine Function: _ZN15FxInfoSelfLit_cD2Ev
; Address            : 0x36C360 - 0x36C37E
; =========================================================

36C360:  PUSH            {R4,R6,R7,LR}
36C362:  ADD             R7, SP, #8
36C364:  MOV             R4, R0
36C366:  LDR             R0, =(_ZTV15FxInfoSelfLit_c_ptr - 0x36C36C)
36C368:  ADD             R0, PC; _ZTV15FxInfoSelfLit_c_ptr
36C36A:  LDR             R0, [R0]; `vtable for'FxInfoSelfLit_c ...
36C36C:  ADD.W           R1, R0, #8
36C370:  MOV             R0, R4
36C372:  STR.W           R1, [R0],#8; this
36C376:  BLX             j__ZN19FxInterpInfoFloat_cD2Ev_1; FxInterpInfoFloat_c::~FxInterpInfoFloat_c()
36C37A:  MOV             R0, R4
36C37C:  POP             {R4,R6,R7,PC}
