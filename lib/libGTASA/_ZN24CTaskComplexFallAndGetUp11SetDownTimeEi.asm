; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUp11SetDownTimeEi
; Address            : 0x52BAC4 - 0x52BAE2
; =========================================================

52BAC4:  PUSH            {R4,R6,R7,LR}
52BAC6:  ADD             R7, SP, #8
52BAC8:  MOV             R4, R0
52BACA:  LDR             R0, [R4,#8]
52BACC:  STR             R1, [R4,#0x14]
52BACE:  LDR             R1, [R0]
52BAD0:  LDR             R1, [R1,#0x14]
52BAD2:  BLX             R1
52BAD4:  CMP             R0, #0xCF
52BAD6:  ITTT EQ
52BAD8:  LDREQ           R0, [R4,#8]
52BADA:  LDREQ           R1, [R4,#0x14]
52BADC:  STRDEQ.W        R1, R1, [R0,#0x18]
52BAE0:  POP             {R4,R6,R7,PC}
