; =========================================================
; Game Engine Function: sub_10BEC4
; Address            : 0x10BEC4 - 0x10BEF0
; =========================================================

10BEC4:  PUSH            {R4,R6,R7,LR}
10BEC6:  ADD             R7, SP, #8
10BEC8:  MOV             R4, R0
10BECA:  LDR             R0, [R1,#0x10]
10BECC:  CBZ             R0, loc_10BEDA
10BECE:  CMP             R1, R0
10BED0:  BEQ             loc_10BEE0
10BED2:  LDR             R1, [R0]
10BED4:  LDR             R1, [R1,#8]
10BED6:  BLX             R1
10BED8:  B               loc_10BEDC
10BEDA:  MOVS            R0, #0
10BEDC:  STR             R0, [R4,#0x10]
10BEDE:  B               loc_10BEEC
10BEE0:  STR             R4, [R4,#0x10]
10BEE2:  LDR             R0, [R1,#0x10]
10BEE4:  LDR             R1, [R0]
10BEE6:  LDR             R2, [R1,#0xC]
10BEE8:  MOV             R1, R4
10BEEA:  BLX             R2
10BEEC:  MOV             R0, R4
10BEEE:  POP             {R4,R6,R7,PC}
