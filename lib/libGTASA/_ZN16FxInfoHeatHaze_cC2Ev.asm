; =========================================================
; Game Engine Function: _ZN16FxInfoHeatHaze_cC2Ev
; Address            : 0x36B58C - 0x36B5B2
; =========================================================

36B58C:  PUSH            {R4,R6,R7,LR}
36B58E:  ADD             R7, SP, #8
36B590:  MOV             R4, R0
36B592:  LDR             R0, =(_ZTV16FxInfoHeatHaze_c_ptr - 0x36B598)
36B594:  ADD             R0, PC; _ZTV16FxInfoHeatHaze_c_ptr
36B596:  LDR             R0, [R0]; `vtable for'FxInfoHeatHaze_c ...
36B598:  ADDS            R0, #8
36B59A:  STR             R0, [R4]
36B59C:  ADD.W           R0, R4, #8; this
36B5A0:  BLX             j__ZN17FxInterpInfo255_cC2Ev; FxInterpInfo255_c::FxInterpInfo255_c(void)
36B5A4:  MOVS            R0, #0
36B5A6:  STRB            R0, [R4,#0xE]
36B5A8:  MOVW            R0, #0x4008
36B5AC:  STRH            R0, [R4,#4]
36B5AE:  MOV             R0, R4
36B5B0:  POP             {R4,R6,R7,PC}
