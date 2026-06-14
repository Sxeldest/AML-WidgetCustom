; =========================================================
; Game Engine Function: sub_EF7C6
; Address            : 0xEF7C6 - 0xEF7FA
; =========================================================

EF7C6:  PUSH            {R4,R6,R7,LR}
EF7C8:  ADD             R7, SP, #8
EF7CA:  SUB             SP, SP, #8
EF7CC:  MOV             R4, R0
EF7CE:  CBZ             R1, loc_EF7EA
EF7D0:  LDRB            R0, [R4,#4]
EF7D2:  CBNZ            R0, loc_EF7EA
EF7D4:  LDR             R2, [R4]
EF7D6:  MOVS            R3, #0x4F ; 'O'
EF7D8:  LDRD.W          R0, R1, [R4,#8]
EF7DC:  STR             R3, [SP,#0x10+var_10]
EF7DE:  MOVS            R3, #0x4D ; 'M'
EF7E0:  BL              sub_EFCE0
EF7E4:  STR             R0, [R4,#8]
EF7E6:  ADD             SP, SP, #8
EF7E8:  POP             {R4,R6,R7,PC}
EF7EA:  LDR             R0, [R4,#0xC]
EF7EC:  LDR             R1, [R0,#4]
EF7EE:  MOV             R0, R4
EF7F0:  ADD             SP, SP, #8
EF7F2:  POP.W           {R4,R6,R7,LR}
EF7F6:  B.W             sub_EFC70
