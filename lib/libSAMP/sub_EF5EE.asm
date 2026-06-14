; =========================================================
; Game Engine Function: sub_EF5EE
; Address            : 0xEF5EE - 0xEF646
; =========================================================

EF5EE:  PUSH            {R4,R6,R7,LR}
EF5F0:  ADD             R7, SP, #8
EF5F2:  SUB             SP, SP, #8
EF5F4:  MOV             R4, R0
EF5F6:  CBZ             R1, loc_EF612
EF5F8:  LDRB            R0, [R4,#4]
EF5FA:  CBNZ            R0, loc_EF612
EF5FC:  LDR             R2, [R4]
EF5FE:  MOVS            R3, #0x4F ; 'O'
EF600:  LDRD.W          R0, R1, [R4,#8]
EF604:  STR             R3, [SP,#0x10+var_10]
EF606:  MOVS            R3, #0x57 ; 'W'
EF608:  BL              sub_EFCE0
EF60C:  STR             R0, [R4,#8]
EF60E:  ADD             SP, SP, #8
EF610:  POP             {R4,R6,R7,PC}
EF612:  LDR             R0, [R4,#0xC]
EF614:  LDRD.W          R1, R0, [R0,#0x18]
EF618:  RSB.W           R2, R1, #1
EF61C:  CMP             R1, #0
EF61E:  IT EQ
EF620:  MOVEQ           R2, #0xFFFFFFFA
EF624:  ADD             R0, R2
EF626:  MOVW            R1, #0x2493
EF62A:  ADDS            R0, #7
EF62C:  MOVT            R1, #0x9249
EF630:  SMMLA.W         R0, R1, R0, R0
EF634:  ASRS            R1, R0, #2
EF636:  ADD.W           R1, R1, R0,LSR#31
EF63A:  MOV             R0, R4
EF63C:  ADD             SP, SP, #8
EF63E:  POP.W           {R4,R6,R7,LR}
EF642:  B.W             sub_EFC70
