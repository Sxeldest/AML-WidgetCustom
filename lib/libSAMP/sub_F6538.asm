; =========================================================
; Game Engine Function: sub_F6538
; Address            : 0xF6538 - 0xF6556
; =========================================================

F6538:  PUSH            {R4,R6,R7,LR}
F653A:  ADD             R7, SP, #8
F653C:  MOV             R4, R0
F653E:  BL              sub_F61A4
F6542:  MOV             R1, R4
F6544:  BL              sub_15EBD8
F6548:  LDR             R0, =(off_2400D8 - 0xF654E)
F654A:  ADD             R0, PC; off_2400D8
F654C:  LDR             R1, [R0]
F654E:  MOV             R0, R4
F6550:  POP.W           {R4,R6,R7,LR}
F6554:  BX              R1
