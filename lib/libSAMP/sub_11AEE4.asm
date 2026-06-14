; =========================================================
; Game Engine Function: sub_11AEE4
; Address            : 0x11AEE4 - 0x11AF10
; =========================================================

11AEE4:  PUSH            {R4,R6,R7,LR}
11AEE6:  ADD             R7, SP, #8
11AEE8:  MOV             R4, R0
11AEEA:  LDR             R0, [R1,#0x10]
11AEEC:  CBZ             R0, loc_11AEFA
11AEEE:  CMP             R1, R0
11AEF0:  BEQ             loc_11AF00
11AEF2:  LDR             R1, [R0]
11AEF4:  LDR             R1, [R1,#8]
11AEF6:  BLX             R1
11AEF8:  B               loc_11AEFC
11AEFA:  MOVS            R0, #0
11AEFC:  STR             R0, [R4,#0x10]
11AEFE:  B               loc_11AF0C
11AF00:  STR             R4, [R4,#0x10]
11AF02:  LDR             R0, [R1,#0x10]
11AF04:  LDR             R1, [R0]
11AF06:  LDR             R2, [R1,#0xC]
11AF08:  MOV             R1, R4
11AF0A:  BLX             R2
11AF0C:  MOV             R0, R4
11AF0E:  POP             {R4,R6,R7,PC}
