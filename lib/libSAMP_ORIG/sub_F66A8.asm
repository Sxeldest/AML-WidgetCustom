; =========================================================
; Game Engine Function: sub_F66A8
; Address            : 0xF66A8 - 0xF66C6
; =========================================================

F66A8:  PUSH            {R4,R6,R7,LR}
F66AA:  ADD             R7, SP, #8
F66AC:  MOV             R4, R0
F66AE:  BL              sub_F66D8
F66B2:  LDR             R1, [R4]
F66B4:  CBZ             R1, loc_F66C2
F66B6:  LDRD.W          R2, R0, [R4,#0xC]
F66BA:  SUBS            R2, R2, R1
F66BC:  ASRS            R2, R2, #2
F66BE:  BL              sub_F633A
F66C2:  MOV             R0, R4
F66C4:  POP             {R4,R6,R7,PC}
