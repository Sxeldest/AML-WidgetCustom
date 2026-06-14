; =========================================================
; Game Engine Function: sub_11B4AC
; Address            : 0x11B4AC - 0x11B4D8
; =========================================================

11B4AC:  PUSH            {R4,R6,R7,LR}
11B4AE:  ADD             R7, SP, #8
11B4B0:  MOV             R4, R0
11B4B2:  LDR             R0, [R1,#0x10]
11B4B4:  CBZ             R0, loc_11B4C2
11B4B6:  CMP             R1, R0
11B4B8:  BEQ             loc_11B4C8
11B4BA:  LDR             R1, [R0]
11B4BC:  LDR             R1, [R1,#8]
11B4BE:  BLX             R1
11B4C0:  B               loc_11B4C4
11B4C2:  MOVS            R0, #0
11B4C4:  STR             R0, [R4,#0x10]
11B4C6:  B               loc_11B4D4
11B4C8:  STR             R4, [R4,#0x10]
11B4CA:  LDR             R0, [R1,#0x10]
11B4CC:  LDR             R1, [R0]
11B4CE:  LDR             R2, [R1,#0xC]
11B4D0:  MOV             R1, R4
11B4D2:  BLX             R2
11B4D4:  MOV             R0, R4
11B4D6:  POP             {R4,R6,R7,PC}
