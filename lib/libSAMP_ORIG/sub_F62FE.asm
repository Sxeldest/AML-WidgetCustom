; =========================================================
; Game Engine Function: sub_F62FE
; Address            : 0xF62FE - 0xF631C
; =========================================================

F62FE:  PUSH            {R4,R6,R7,LR}
F6300:  ADD             R7, SP, #8
F6302:  LDR             R1, [R0]
F6304:  MOV             R4, R0
F6306:  CBZ             R1, loc_F6318
F6308:  LDR             R0, [R4,#8]
F630A:  STR             R1, [R4,#4]
F630C:  SUBS            R0, R0, R1
F630E:  ASRS            R2, R0, #2
F6310:  ADD.W           R0, R4, #0x10
F6314:  BL              sub_F633A
F6318:  MOV             R0, R4
F631A:  POP             {R4,R6,R7,PC}
