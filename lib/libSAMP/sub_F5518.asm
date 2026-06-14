; =========================================================
; Game Engine Function: sub_F5518
; Address            : 0xF5518 - 0xF5542
; =========================================================

F5518:  PUSH            {R4,R6,R7,LR}
F551A:  ADD             R7, SP, #8
F551C:  MOV             R4, R0
F551E:  MOVS            R0, #0
F5520:  STRD.W          R0, R0, [R3]
F5524:  STR             R1, [R3,#8]
F5526:  STR             R3, [R2]
F5528:  LDR             R0, [R4]
F552A:  LDR             R0, [R0]
F552C:  CBZ             R0, loc_F5532
F552E:  STR             R0, [R4]
F5530:  LDR             R3, [R2]
F5532:  LDR             R0, [R4,#4]
F5534:  MOV             R1, R3
F5536:  BL              sub_EA2D2
F553A:  LDR             R0, [R4,#8]
F553C:  ADDS            R0, #1
F553E:  STR             R0, [R4,#8]
F5540:  POP             {R4,R6,R7,PC}
