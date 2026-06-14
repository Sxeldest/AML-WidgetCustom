; =========================================================
; Game Engine Function: sub_111EC2
; Address            : 0x111EC2 - 0x111F1A
; =========================================================

111EC2:  PUSH            {R4-R7,LR}
111EC4:  ADD             R7, SP, #0xC
111EC6:  PUSH.W          {R11}
111ECA:  MOV             R6, R0
111ECC:  MOVS            R0, #0
111ECE:  MOV             R5, R1
111ED0:  STR             R0, [R6]
111ED2:  STR             R0, [R6,#4]
111ED4:  LDR             R1, [R1]
111ED6:  LDR             R2, [R5,#4]
111ED8:  STR             R0, [R6,#8]
111EDA:  SUBS            R0, R2, R1
111EDC:  BEQ             loc_111F12
111EDE:  ASRS            R1, R0, #3
111EE0:  MOV             R0, R6
111EE2:  BL              sub_111F24
111EE6:  LDRD.W          R1, R2, [R5]
111EEA:  LDR             R0, [R6,#4]
111EEC:  CMP             R1, R2
111EEE:  BEQ             loc_111F10
111EF0:  LDRD.W          R5, R3, [R1]
111EF4:  STRD.W          R5, R3, [R0]
111EF8:  CBZ             R3, loc_111F0A
111EFA:  ADDS            R3, #4
111EFC:  LDREX.W         R5, [R3]
111F00:  ADDS            R5, #1
111F02:  STREX.W         R4, R5, [R3]
111F06:  CMP             R4, #0
111F08:  BNE             loc_111EFC
111F0A:  ADDS            R0, #8
111F0C:  ADDS            R1, #8
111F0E:  B               loc_111EEC
111F10:  STR             R0, [R6,#4]
111F12:  MOV             R0, R6
111F14:  POP.W           {R11}
111F18:  POP             {R4-R7,PC}
