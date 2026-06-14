; =========================================================
; Game Engine Function: sub_EF784
; Address            : 0xEF784 - 0xEF7C6
; =========================================================

EF784:  PUSH            {R4,R6,R7,LR}
EF786:  ADD             R7, SP, #8
EF788:  SUB             SP, SP, #8
EF78A:  MOV             R4, R0
EF78C:  CBZ             R1, loc_EF7A8
EF78E:  LDRB            R0, [R4,#4]
EF790:  CBNZ            R0, loc_EF7A8
EF792:  LDR             R2, [R4]
EF794:  MOVS            R3, #0x4F ; 'O'
EF796:  LDRD.W          R0, R1, [R4,#8]
EF79A:  STR             R3, [SP,#0x10+var_10]
EF79C:  MOVS            R3, #0x49 ; 'I'
EF79E:  BL              sub_EFCE0
EF7A2:  STR             R0, [R4,#8]
EF7A4:  ADD             SP, SP, #8
EF7A6:  POP             {R4,R6,R7,PC}
EF7A8:  LDR             R0, [R4,#0xC]
EF7AA:  LDR             R0, [R0,#8]
EF7AC:  SUBS.W          R1, R0, #0xC
EF7B0:  IT LT
EF7B2:  MOVLT           R1, R0
EF7B4:  CMP             R1, #0
EF7B6:  IT EQ
EF7B8:  MOVEQ           R1, #0xC
EF7BA:  MOV             R0, R4
EF7BC:  ADD             SP, SP, #8
EF7BE:  POP.W           {R4,R6,R7,LR}
EF7C2:  B.W             sub_EFC70
