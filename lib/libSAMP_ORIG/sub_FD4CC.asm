; =========================================================
; Game Engine Function: sub_FD4CC
; Address            : 0xFD4CC - 0xFD4FC
; =========================================================

FD4CC:  PUSH            {R4,R5,R7,LR}
FD4CE:  ADD             R7, SP, #8
FD4D0:  MOV             R4, R1
FD4D2:  MOV             R5, R0
FD4D4:  LDRD.W          R1, R2, [R0],#8
FD4D8:  ADDS            R3, R4, #4
FD4DA:  BL              sub_FD512
FD4DE:  LDR             R1, [R4,#4]
FD4E0:  LDR             R0, [R5]
FD4E2:  STR             R1, [R5]
FD4E4:  STR             R0, [R4,#4]
FD4E6:  LDR             R1, [R4,#8]
FD4E8:  LDR             R0, [R5,#4]
FD4EA:  STR             R1, [R5,#4]
FD4EC:  STR             R0, [R4,#8]
FD4EE:  LDR             R1, [R4,#0xC]
FD4F0:  LDR             R0, [R5,#8]
FD4F2:  STR             R1, [R5,#8]
FD4F4:  STR             R0, [R4,#0xC]
FD4F6:  LDR             R0, [R4,#4]
FD4F8:  STR             R0, [R4]
FD4FA:  POP             {R4,R5,R7,PC}
