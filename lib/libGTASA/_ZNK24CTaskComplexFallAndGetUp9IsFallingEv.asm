; =========================================================
; Game Engine Function: _ZNK24CTaskComplexFallAndGetUp9IsFallingEv
; Address            : 0x52BAE2 - 0x52BAFC
; =========================================================

52BAE2:  PUSH            {R4,R6,R7,LR}
52BAE4:  ADD             R7, SP, #8
52BAE6:  LDR             R0, [R0,#8]
52BAE8:  MOVS            R4, #0
52BAEA:  CBZ             R0, loc_52BAF8
52BAEC:  LDR             R1, [R0]
52BAEE:  LDR             R1, [R1,#0x14]
52BAF0:  BLX             R1
52BAF2:  CMP             R0, #0xCF
52BAF4:  IT EQ
52BAF6:  MOVEQ           R4, #1
52BAF8:  MOV             R0, R4
52BAFA:  POP             {R4,R6,R7,PC}
