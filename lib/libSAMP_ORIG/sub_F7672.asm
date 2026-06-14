; =========================================================
; Game Engine Function: sub_F7672
; Address            : 0xF7672 - 0xF768E
; =========================================================

F7672:  PUSH            {R4,R5,R7,LR}
F7674:  ADD             R7, SP, #8
F7676:  MOV             R4, R1
F7678:  LDR             R1, [R1]
F767A:  MOV             R5, R0
F767C:  MOVS            R0, #0
F767E:  STR             R0, [R4]
F7680:  MOV             R0, R5
F7682:  BL              sub_E7DF8
F7686:  LDR             R0, [R4,#4]
F7688:  STR             R0, [R5,#4]
F768A:  MOV             R0, R5
F768C:  POP             {R4,R5,R7,PC}
