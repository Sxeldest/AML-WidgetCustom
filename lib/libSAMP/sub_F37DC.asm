; =========================================================
; Game Engine Function: sub_F37DC
; Address            : 0xF37DC - 0xF380A
; =========================================================

F37DC:  PUSH            {R4,R5,R7,LR}
F37DE:  ADD             R7, SP, #8
F37E0:  LDR             R5, =(dword_23FCE0 - 0xF37E8)
F37E2:  MOVS            R4, #0
F37E4:  ADD             R5, PC; dword_23FCE0
F37E6:  LDR             R0, [R5,R4]
F37E8:  CBZ             R0, loc_F37FA
F37EA:  BL              sub_163C02
F37EE:  CBZ             R0, loc_F37FA
F37F0:  LDR             R0, [R5,R4]
F37F2:  BL              sub_163C0E
F37F6:  LSLS            R0, R0, #0x12
F37F8:  BMI             loc_F3806
F37FA:  ADDS            R4, #4
F37FC:  CMP.W           R4, #0x300
F3800:  BNE             loc_F37E6
F3802:  MOVS            R0, #0
F3804:  POP             {R4,R5,R7,PC}
F3806:  MOVS            R0, #1
F3808:  POP             {R4,R5,R7,PC}
