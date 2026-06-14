; =========================================================
; Game Engine Function: sub_11AA9C
; Address            : 0x11AA9C - 0x11AAC8
; =========================================================

11AA9C:  PUSH            {R4,R6,R7,LR}
11AA9E:  ADD             R7, SP, #8
11AAA0:  MOV             R4, R0
11AAA2:  LDR             R0, [R1,#0x10]
11AAA4:  CBZ             R0, loc_11AAB2
11AAA6:  CMP             R1, R0
11AAA8:  BEQ             loc_11AAB8
11AAAA:  LDR             R1, [R0]
11AAAC:  LDR             R1, [R1,#8]
11AAAE:  BLX             R1
11AAB0:  B               loc_11AAB4
11AAB2:  MOVS            R0, #0
11AAB4:  STR             R0, [R4,#0x10]
11AAB6:  B               loc_11AAC4
11AAB8:  STR             R4, [R4,#0x10]
11AABA:  LDR             R0, [R1,#0x10]
11AABC:  LDR             R1, [R0]
11AABE:  LDR             R2, [R1,#0xC]
11AAC0:  MOV             R1, R4
11AAC2:  BLX             R2
11AAC4:  MOV             R0, R4
11AAC6:  POP             {R4,R6,R7,PC}
