; =========================================================
; Game Engine Function: sub_12C0B6
; Address            : 0x12C0B6 - 0x12C0E6
; =========================================================

12C0B6:  PUSH            {R4-R7,LR}
12C0B8:  ADD             R7, SP, #0xC
12C0BA:  PUSH.W          {R11}
12C0BE:  LDRD.W          R5, R6, [R0,#0x44]
12C0C2:  CMP             R5, R6
12C0C4:  BEQ             loc_12C0E0
12C0C6:  MOV             R4, R1
12C0C8:  LDR             R0, [R5]
12C0CA:  CBZ             R0, loc_12C0DA
12C0CC:  LDRB.W          R1, [R0,#0x50]
12C0D0:  CBZ             R1, loc_12C0DA
12C0D2:  LDR             R1, [R0]
12C0D4:  LDR             R2, [R1,#4]
12C0D6:  MOV             R1, R4
12C0D8:  BLX             R2
12C0DA:  ADDS            R5, #4
12C0DC:  CMP             R5, R6
12C0DE:  BNE             loc_12C0C8
12C0E0:  POP.W           {R11}
12C0E4:  POP             {R4-R7,PC}
