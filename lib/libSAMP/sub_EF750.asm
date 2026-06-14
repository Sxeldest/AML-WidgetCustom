; =========================================================
; Game Engine Function: sub_EF750
; Address            : 0xEF750 - 0xEF784
; =========================================================

EF750:  PUSH            {R4,R6,R7,LR}
EF752:  ADD             R7, SP, #8
EF754:  SUB             SP, SP, #8
EF756:  MOV             R4, R0
EF758:  CBZ             R1, loc_EF774
EF75A:  LDRB            R0, [R4,#4]
EF75C:  CBNZ            R0, loc_EF774
EF75E:  LDR             R2, [R4]
EF760:  MOVS            R3, #0x4F ; 'O'
EF762:  LDRD.W          R0, R1, [R4,#8]
EF766:  STR             R3, [SP,#0x10+var_10]
EF768:  MOVS            R3, #0x48 ; 'H'
EF76A:  BL              sub_EFCE0
EF76E:  STR             R0, [R4,#8]
EF770:  ADD             SP, SP, #8
EF772:  POP             {R4,R6,R7,PC}
EF774:  LDR             R0, [R4,#0xC]
EF776:  LDR             R1, [R0,#8]
EF778:  MOV             R0, R4
EF77A:  ADD             SP, SP, #8
EF77C:  POP.W           {R4,R6,R7,LR}
EF780:  B.W             sub_EFC70
