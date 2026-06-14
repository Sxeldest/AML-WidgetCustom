; =========================================================
; Game Engine Function: sub_11BED8
; Address            : 0x11BED8 - 0x11BEF8
; =========================================================

11BED8:  PUSH            {R4,R6,R7,LR}
11BEDA:  ADD             R7, SP, #8
11BEDC:  MOV             R4, R0
11BEDE:  LDR             R0, [R0,#0x10]
11BEE0:  CMP             R4, R0
11BEE2:  BEQ             loc_11BEEA
11BEE4:  CBZ             R0, loc_11BEF4
11BEE6:  MOVS            R1, #5
11BEE8:  B               loc_11BEEC
11BEEA:  MOVS            R1, #4
11BEEC:  LDR             R2, [R0]
11BEEE:  LDR.W           R1, [R2,R1,LSL#2]
11BEF2:  BLX             R1
11BEF4:  MOV             R0, R4
11BEF6:  POP             {R4,R6,R7,PC}
