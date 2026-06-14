; =========================================================
; Game Engine Function: sub_11BEB8
; Address            : 0x11BEB8 - 0x11BED8
; =========================================================

11BEB8:  PUSH            {R4,R6,R7,LR}
11BEBA:  ADD             R7, SP, #8
11BEBC:  MOV             R4, R0
11BEBE:  LDR             R0, [R0,#0x10]
11BEC0:  CMP             R4, R0
11BEC2:  BEQ             loc_11BECA
11BEC4:  CBZ             R0, loc_11BED4
11BEC6:  MOVS            R1, #5
11BEC8:  B               loc_11BECC
11BECA:  MOVS            R1, #4
11BECC:  LDR             R2, [R0]
11BECE:  LDR.W           R1, [R2,R1,LSL#2]
11BED2:  BLX             R1
11BED4:  MOV             R0, R4
11BED6:  POP             {R4,R6,R7,PC}
