; =========================================================
; Game Engine Function: sub_F655C
; Address            : 0xF655C - 0xF657A
; =========================================================

F655C:  PUSH            {R4,R6,R7,LR}
F655E:  ADD             R7, SP, #8
F6560:  MOV             R4, R0
F6562:  BL              sub_F61A4
F6566:  MOV             R1, R4
F6568:  BL              sub_15EC40
F656C:  LDR             R0, =(off_2400DC - 0xF6572)
F656E:  ADD             R0, PC; off_2400DC
F6570:  LDR             R1, [R0]
F6572:  MOV             R0, R4
F6574:  POP.W           {R4,R6,R7,LR}
F6578:  BX              R1
