; =========================================================
; Game Engine Function: sub_EF474
; Address            : 0xEF474 - 0xEF4A8
; =========================================================

EF474:  PUSH            {R4,R6,R7,LR}
EF476:  ADD             R7, SP, #8
EF478:  SUB             SP, SP, #8
EF47A:  MOV             R4, R0
EF47C:  CBZ             R1, loc_EF498
EF47E:  LDRB            R0, [R4,#4]
EF480:  CBNZ            R0, loc_EF498
EF482:  LDR             R2, [R4]
EF484:  MOVS            R3, #0x4F ; 'O'
EF486:  LDRD.W          R0, R1, [R4,#8]
EF48A:  STR             R3, [SP,#0x10+var_10]
EF48C:  MOVS            R3, #0x77 ; 'w'
EF48E:  BL              sub_EFCE0
EF492:  STR             R0, [R4,#8]
EF494:  ADD             SP, SP, #8
EF496:  POP             {R4,R6,R7,PC}
EF498:  LDR             R0, [R4,#0xC]
EF49A:  LDR             R1, [R0,#0x18]
EF49C:  MOV             R0, R4
EF49E:  ADD             SP, SP, #8
EF4A0:  POP.W           {R4,R6,R7,LR}
EF4A4:  B.W             sub_F03D8
