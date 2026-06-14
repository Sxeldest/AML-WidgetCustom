; =========================================================
; Game Engine Function: sub_12A9C0
; Address            : 0x12A9C0 - 0x12A9F8
; =========================================================

12A9C0:  PUSH            {R4,R6,R7,LR}
12A9C2:  ADD             R7, SP, #8
12A9C4:  MOV             R4, R0
12A9C6:  LDRB.W          R0, [R0,#0x50]
12A9CA:  CBZ             R0, locret_12A9F6
12A9CC:  LDR             R0, =(off_23496C - 0x12A9D2)
12A9CE:  ADD             R0, PC; off_23496C
12A9D0:  LDR             R0, [R0]; dword_23DEF4
12A9D2:  LDR             R0, [R0]
12A9D4:  CBZ             R0, loc_12A9E6
12A9D6:  LDR.W           R0, [R0,#0x3B0]
12A9DA:  LDR             R0, [R0,#0x14]
12A9DC:  CBZ             R0, loc_12A9E6
12A9DE:  LDR             R1, [R4,#0x54]
12A9E0:  LDR             R1, [R1,#0x18]
12A9E2:  BL              sub_14F958
12A9E6:  LDR             R1, [R4,#0x54]
12A9E8:  LDR             R0, [R4]
12A9EA:  LDR             R1, [R1,#0x18]
12A9EC:  LDR             R2, [R0,#4]
12A9EE:  MOV             R0, R4
12A9F0:  POP.W           {R4,R6,R7,LR}
12A9F4:  BX              R2
12A9F6:  POP             {R4,R6,R7,PC}
