; =========================================================
; Game Engine Function: sub_FC4D0
; Address            : 0xFC4D0 - 0xFC500
; =========================================================

FC4D0:  PUSH            {R4,R5,R7,LR}
FC4D2:  ADD             R7, SP, #8
FC4D4:  MOV             R4, R1
FC4D6:  CBZ             R0, loc_FC4EE
FC4D8:  MOV             R5, R0
FC4DA:  LDM.W           R0, {R1-R3}
FC4DE:  LDR             R0, [R0,#0x1C]
FC4E0:  BL              sub_FC440
FC4E4:  CBZ             R0, loc_FC4F0
FC4E6:  MOVW            R0, #0x4B64
FC4EA:  STR             R0, [R5,#0x1C]
FC4EC:  B               loc_FC4F0
FC4EE:  MOVS            R5, #0
FC4F0:  LDR             R0, =(off_2474AC - 0xFC4F8)
FC4F2:  MOV             R1, R4
FC4F4:  ADD             R0, PC; off_2474AC
FC4F6:  LDR             R2, [R0]
FC4F8:  MOV             R0, R5
FC4FA:  POP.W           {R4,R5,R7,LR}
FC4FE:  BX              R2
