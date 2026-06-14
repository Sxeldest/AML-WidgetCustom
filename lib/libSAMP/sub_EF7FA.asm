; =========================================================
; Game Engine Function: sub_EF7FA
; Address            : 0xEF7FA - 0xEF82E
; =========================================================

EF7FA:  PUSH            {R4,R6,R7,LR}
EF7FC:  ADD             R7, SP, #8
EF7FE:  SUB             SP, SP, #8
EF800:  MOV             R4, R0
EF802:  CBZ             R1, loc_EF81E
EF804:  LDRB            R0, [R4,#4]
EF806:  CBNZ            R0, loc_EF81E
EF808:  LDR             R2, [R4]
EF80A:  MOVS            R3, #0x4F ; 'O'
EF80C:  LDRD.W          R0, R1, [R4,#8]
EF810:  STR             R3, [SP,#0x10+var_10]
EF812:  MOVS            R3, #0x53 ; 'S'
EF814:  BL              sub_EFCE0
EF818:  STR             R0, [R4,#8]
EF81A:  ADD             SP, SP, #8
EF81C:  POP             {R4,R6,R7,PC}
EF81E:  LDR             R0, [R4,#0xC]
EF820:  LDR             R1, [R0]
EF822:  MOV             R0, R4
EF824:  ADD             SP, SP, #8
EF826:  POP.W           {R4,R6,R7,LR}
EF82A:  B.W             sub_EFC70
