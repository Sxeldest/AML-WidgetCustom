; =========================================================
; Game Engine Function: sub_EF4A8
; Address            : 0xEF4A8 - 0xEF4E2
; =========================================================

EF4A8:  PUSH            {R4,R6,R7,LR}
EF4AA:  ADD             R7, SP, #8
EF4AC:  SUB             SP, SP, #8
EF4AE:  MOV             R4, R0
EF4B0:  CBZ             R1, loc_EF4CC
EF4B2:  LDRB            R0, [R4,#4]
EF4B4:  CBNZ            R0, loc_EF4CC
EF4B6:  LDR             R2, [R4]
EF4B8:  MOVS            R3, #0x4F ; 'O'
EF4BA:  LDRD.W          R0, R1, [R4,#8]
EF4BE:  STR             R3, [SP,#0x10+var_10]
EF4C0:  MOVS            R3, #0x75 ; 'u'
EF4C2:  BL              sub_EFCE0
EF4C6:  STR             R0, [R4,#8]
EF4C8:  ADD             SP, SP, #8
EF4CA:  POP             {R4,R6,R7,PC}
EF4CC:  LDR             R0, [R4,#0xC]
EF4CE:  LDR             R1, [R0,#0x18]
EF4D0:  MOV             R0, R4
EF4D2:  CMP             R1, #0
EF4D4:  IT EQ
EF4D6:  MOVEQ           R1, #7
EF4D8:  ADD             SP, SP, #8
EF4DA:  POP.W           {R4,R6,R7,LR}
EF4DE:  B.W             sub_F03D8
