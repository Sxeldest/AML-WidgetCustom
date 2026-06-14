; =========================================================
; Game Engine Function: sub_FD398
; Address            : 0xFD398 - 0xFD3C8
; =========================================================

FD398:  PUSH            {R4,R5,R7,LR}
FD39A:  ADD             R7, SP, #8
FD39C:  MOV             R4, R1
FD39E:  MOV             R5, R0
FD3A0:  LDRD.W          R1, R2, [R0],#8
FD3A4:  ADDS            R3, R4, #4
FD3A6:  BL              sub_FD3DE
FD3AA:  LDR             R1, [R4,#4]
FD3AC:  LDR             R0, [R5]
FD3AE:  STR             R1, [R5]
FD3B0:  STR             R0, [R4,#4]
FD3B2:  LDR             R1, [R4,#8]
FD3B4:  LDR             R0, [R5,#4]
FD3B6:  STR             R1, [R5,#4]
FD3B8:  STR             R0, [R4,#8]
FD3BA:  LDR             R1, [R4,#0xC]
FD3BC:  LDR             R0, [R5,#8]
FD3BE:  STR             R1, [R5,#8]
FD3C0:  STR             R0, [R4,#0xC]
FD3C2:  LDR             R0, [R4,#4]
FD3C4:  STR             R0, [R4]
FD3C6:  POP             {R4,R5,R7,PC}
