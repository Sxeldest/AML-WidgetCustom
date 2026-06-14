; =========================================================
; Game Engine Function: sub_F6678
; Address            : 0xF6678 - 0xF66A8
; =========================================================

F6678:  PUSH            {R4,R5,R7,LR}
F667A:  ADD             R7, SP, #8
F667C:  MOV             R4, R1
F667E:  MOV             R5, R0
F6680:  LDRD.W          R1, R2, [R0],#0x10
F6684:  ADDS            R3, R4, #4
F6686:  BL              sub_F66C6
F668A:  LDR             R1, [R4,#4]
F668C:  LDR             R0, [R5]
F668E:  STR             R1, [R5]
F6690:  STR             R0, [R4,#4]
F6692:  LDR             R1, [R4,#8]
F6694:  LDR             R0, [R5,#4]
F6696:  STR             R1, [R5,#4]
F6698:  STR             R0, [R4,#8]
F669A:  LDR             R1, [R4,#0xC]
F669C:  LDR             R0, [R5,#8]
F669E:  STR             R1, [R5,#8]
F66A0:  STR             R0, [R4,#0xC]
F66A2:  LDR             R0, [R4,#4]
F66A4:  STR             R0, [R4]
F66A6:  POP             {R4,R5,R7,PC}
