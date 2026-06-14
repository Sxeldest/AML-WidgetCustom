; =========================================================
; Game Engine Function: sub_F5CA8
; Address            : 0xF5CA8 - 0xF5CC4
; =========================================================

F5CA8:  PUSH            {R4,R6,R7,LR}
F5CAA:  ADD             R7, SP, #8
F5CAC:  LDR             R1, =(off_2400C0 - 0xF5CB2)
F5CAE:  ADD             R1, PC; off_2400C0
F5CB0:  LDR             R1, [R1]
F5CB2:  CBZ             R1, loc_F5CBA
F5CB4:  BLX             R1
F5CB6:  MOV             R4, R0
F5CB8:  B               loc_F5CBC
F5CBA:  MOVS            R4, #0
F5CBC:  BL              sub_F5E6C
F5CC0:  MOV             R0, R4
F5CC2:  POP             {R4,R6,R7,PC}
