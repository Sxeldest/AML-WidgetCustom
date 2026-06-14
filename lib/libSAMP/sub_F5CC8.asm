; =========================================================
; Game Engine Function: sub_F5CC8
; Address            : 0xF5CC8 - 0xF5CE6
; =========================================================

F5CC8:  PUSH            {R4,R6,R7,LR}
F5CCA:  ADD             R7, SP, #8
F5CCC:  LDR             R3, =(off_2400C4 - 0xF5CD2)
F5CCE:  ADD             R3, PC; off_2400C4
F5CD0:  LDR             R3, [R3]
F5CD2:  CBZ             R3, loc_F5CE0
F5CD4:  BLX             R3
F5CD6:  CBZ             R0, loc_F5CE0
F5CD8:  MOV             R4, R0
F5CDA:  BL              sub_F5E6C
F5CDE:  B               loc_F5CE2
F5CE0:  MOVS            R4, #0
F5CE2:  MOV             R0, R4
F5CE4:  POP             {R4,R6,R7,PC}
