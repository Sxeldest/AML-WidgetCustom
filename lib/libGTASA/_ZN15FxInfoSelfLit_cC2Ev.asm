; =========================================================
; Game Engine Function: _ZN15FxInfoSelfLit_cC2Ev
; Address            : 0x36B928 - 0x36B94E
; =========================================================

36B928:  PUSH            {R4,R6,R7,LR}
36B92A:  ADD             R7, SP, #8
36B92C:  MOV             R4, R0
36B92E:  LDR             R0, =(_ZTV15FxInfoSelfLit_c_ptr - 0x36B934)
36B930:  ADD             R0, PC; _ZTV15FxInfoSelfLit_c_ptr
36B932:  LDR             R0, [R0]; `vtable for'FxInfoSelfLit_c ...
36B934:  ADDS            R0, #8
36B936:  STR             R0, [R4]
36B938:  ADD.W           R0, R4, #8; this
36B93C:  BLX             j__ZN18FxInterpInfoU255_cC2Ev; FxInterpInfoU255_c::FxInterpInfoU255_c(void)
36B940:  MOVS            R0, #0
36B942:  STRB            R0, [R4,#0xE]
36B944:  MOV.W           R0, #0x4200
36B948:  STRH            R0, [R4,#4]
36B94A:  MOV             R0, R4
36B94C:  POP             {R4,R6,R7,PC}
