; =========================================================
; Game Engine Function: _ZN13FxInfoFloat_cC2Ev
; Address            : 0x36B330 - 0x36B356
; =========================================================

36B330:  PUSH            {R4,R6,R7,LR}
36B332:  ADD             R7, SP, #8
36B334:  MOV             R4, R0
36B336:  LDR             R0, =(_ZTV13FxInfoFloat_c_ptr - 0x36B33C)
36B338:  ADD             R0, PC; _ZTV13FxInfoFloat_c_ptr
36B33A:  LDR             R0, [R0]; `vtable for'FxInfoFloat_c ...
36B33C:  ADDS            R0, #8
36B33E:  STR             R0, [R4]
36B340:  ADD.W           R0, R4, #8; this
36B344:  BLX             j__ZN19FxInterpInfoFloat_cC2Ev; FxInterpInfoFloat_c::FxInterpInfoFloat_c(void)
36B348:  MOVS            R0, #0
36B34A:  STRB            R0, [R4,#0xE]
36B34C:  MOV.W           R0, #0x2200
36B350:  STRH            R0, [R4,#4]
36B352:  MOV             R0, R4
36B354:  POP             {R4,R6,R7,PC}
