; =========================================================
; Game Engine Function: sub_12A9FC
; Address            : 0x12A9FC - 0x12AA54
; =========================================================

12A9FC:  PUSH            {R4-R7,LR}
12A9FE:  ADD             R7, SP, #0xC
12AA00:  PUSH.W          {R8}
12AA04:  LDR             R4, [R0,#0x58]
12AA06:  MOV             R6, R0
12AA08:  MOV             R8, R2
12AA0A:  MOV             R5, R1
12AA0C:  LDRB.W          R0, [R4,#0x50]
12AA10:  CBZ             R0, loc_12AA1C
12AA12:  MOV             R0, R4
12AA14:  MOV             R1, R5
12AA16:  BL              sub_12BEA8
12AA1A:  CBNZ            R0, loc_12AA2E
12AA1C:  LDR             R4, [R6,#0x68]
12AA1E:  LDRB.W          R0, [R4,#0x50]
12AA22:  CBZ             R0, loc_12AA42
12AA24:  MOV             R0, R4
12AA26:  MOV             R1, R5
12AA28:  BL              sub_12BEA8
12AA2C:  CBZ             R0, loc_12AA42
12AA2E:  LDR             R0, [R4]
12AA30:  MOV             R1, R5
12AA32:  MOV             R2, R8
12AA34:  LDR             R3, [R0]
12AA36:  MOV             R0, R4
12AA38:  BLX             R3
12AA3A:  MOVS            R0, #1
12AA3C:  POP.W           {R8}
12AA40:  POP             {R4-R7,PC}
12AA42:  MOV             R0, R6
12AA44:  MOV             R1, R5
12AA46:  MOV             R2, R8
12AA48:  POP.W           {R8}
12AA4C:  POP.W           {R4-R7,LR}
12AA50:  B.W             sub_12BF00
