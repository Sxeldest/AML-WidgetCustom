; =========================================================
; Game Engine Function: sub_11C2A4
; Address            : 0x11C2A4 - 0x11C2D0
; =========================================================

11C2A4:  PUSH            {R4,R6,R7,LR}
11C2A6:  ADD             R7, SP, #8
11C2A8:  MOV             R4, R0
11C2AA:  LDR             R0, [R1,#0x10]
11C2AC:  CBZ             R0, loc_11C2BA
11C2AE:  CMP             R1, R0
11C2B0:  BEQ             loc_11C2C0
11C2B2:  LDR             R1, [R0]
11C2B4:  LDR             R1, [R1,#8]
11C2B6:  BLX             R1
11C2B8:  B               loc_11C2BC
11C2BA:  MOVS            R0, #0
11C2BC:  STR             R0, [R4,#0x10]
11C2BE:  B               loc_11C2CC
11C2C0:  STR             R4, [R4,#0x10]
11C2C2:  LDR             R0, [R1,#0x10]
11C2C4:  LDR             R1, [R0]
11C2C6:  LDR             R2, [R1,#0xC]
11C2C8:  MOV             R1, R4
11C2CA:  BLX             R2
11C2CC:  MOV             R0, R4
11C2CE:  POP             {R4,R6,R7,PC}
