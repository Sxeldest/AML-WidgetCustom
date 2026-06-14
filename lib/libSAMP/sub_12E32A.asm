; =========================================================
; Game Engine Function: sub_12E32A
; Address            : 0x12E32A - 0x12E354
; =========================================================

12E32A:  PUSH            {R4,R6,R7,LR}
12E32C:  ADD             R7, SP, #8
12E32E:  MOV             R4, R0
12E330:  MOVS            R0, #0
12E332:  STRD.W          R0, R0, [R3]
12E336:  STR             R1, [R3,#8]
12E338:  STR             R3, [R2]
12E33A:  LDR             R0, [R4]
12E33C:  LDR             R0, [R0]
12E33E:  CBZ             R0, loc_12E344
12E340:  STR             R0, [R4]
12E342:  LDR             R3, [R2]
12E344:  LDR             R0, [R4,#4]
12E346:  MOV             R1, R3
12E348:  BL              sub_EA2D2
12E34C:  LDR             R0, [R4,#8]
12E34E:  ADDS            R0, #1
12E350:  STR             R0, [R4,#8]
12E352:  POP             {R4,R6,R7,PC}
