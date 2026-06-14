; =========================================================
; Game Engine Function: sub_11E314
; Address            : 0x11E314 - 0x11E340
; =========================================================

11E314:  PUSH            {R4,R6,R7,LR}
11E316:  ADD             R7, SP, #8
11E318:  MOV             R4, R0
11E31A:  LDR             R0, [R1,#0x10]
11E31C:  CBZ             R0, loc_11E32A
11E31E:  CMP             R1, R0
11E320:  BEQ             loc_11E330
11E322:  LDR             R1, [R0]
11E324:  LDR             R1, [R1,#8]
11E326:  BLX             R1
11E328:  B               loc_11E32C
11E32A:  MOVS            R0, #0
11E32C:  STR             R0, [R4,#0x10]
11E32E:  B               loc_11E33C
11E330:  STR             R4, [R4,#0x10]
11E332:  LDR             R0, [R1,#0x10]
11E334:  LDR             R1, [R0]
11E336:  LDR             R2, [R1,#0xC]
11E338:  MOV             R1, R4
11E33A:  BLX             R2
11E33C:  MOV             R0, R4
11E33E:  POP             {R4,R6,R7,PC}
