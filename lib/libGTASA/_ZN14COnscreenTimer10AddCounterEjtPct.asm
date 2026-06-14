; =========================================================
; Game Engine Function: _ZN14COnscreenTimer10AddCounterEjtPct
; Address            : 0x3150D2 - 0x315116
; =========================================================

3150D2:  PUSH            {R4,R5,R7,LR}
3150D4:  ADD             R7, SP, #8
3150D6:  MOV             R4, R2
3150D8:  LDR             R2, [R7,#arg_0]
3150DA:  ADD.W           R2, R2, R2,LSL#4
3150DE:  ADD.W           R5, R0, R2,LSL#2
3150E2:  MOV             R0, R5
3150E4:  LDR.W           R2, [R0,#0x40]!
3150E8:  CMP             R2, #0
3150EA:  IT NE
3150EC:  POPNE           {R4,R5,R7,PC}
3150EE:  STR             R1, [R0]
3150F0:  ADD.W           R0, R5, #0x48 ; 'H'; char *
3150F4:  CBZ             R3, loc_315100
3150F6:  MOV             R1, R3; char *
3150F8:  MOVS            R2, #0xA; size_t
3150FA:  BLX             strncpy
3150FE:  B               loc_315104
315100:  MOVS            R1, #0
315102:  STRB            R1, [R0]
315104:  MOVS            R0, #0
315106:  STRH.W          R4, [R5,#0x52]
31510A:  STR             R0, [R5,#0x44]
31510C:  MOVW            R0, #0x301
315110:  STRH.W          R0, [R5,#0x7F]
315114:  POP             {R4,R5,R7,PC}
