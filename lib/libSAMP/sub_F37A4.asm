; =========================================================
; Game Engine Function: sub_F37A4
; Address            : 0xF37A4 - 0xF37D8
; =========================================================

F37A4:  PUSH            {R4-R7,LR}
F37A6:  ADD             R7, SP, #0xC
F37A8:  PUSH.W          {R11}
F37AC:  LDR             R6, =(dword_23FCE0 - 0xF37B6)
F37AE:  MOV             R4, R0
F37B0:  MOVS            R5, #0
F37B2:  ADD             R6, PC; dword_23FCE0
F37B4:  LDR             R0, [R6,R5]
F37B6:  CBZ             R0, loc_F37CA
F37B8:  BL              sub_163C02
F37BC:  CBNZ            R0, loc_F37C0
F37BE:  CBZ             R4, loc_F37CA
F37C0:  LDR             R0, [R6,R5]
F37C2:  LDR             R1, [R0]
F37C4:  LDR.W           R1, [R1,#0x88]
F37C8:  BLX             R1
F37CA:  ADDS            R5, #4
F37CC:  CMP.W           R5, #0x300
F37D0:  BNE             loc_F37B4
F37D2:  POP.W           {R11}
F37D6:  POP             {R4-R7,PC}
