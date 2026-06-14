; =========================================================
; Game Engine Function: sub_EF5A2
; Address            : 0xEF5A2 - 0xEF5EE
; =========================================================

EF5A2:  PUSH            {R4,R6,R7,LR}
EF5A4:  ADD             R7, SP, #8
EF5A6:  SUB             SP, SP, #8
EF5A8:  MOV             R4, R0
EF5AA:  CBZ             R1, loc_EF5C6
EF5AC:  LDRB            R0, [R4,#4]
EF5AE:  CBNZ            R0, loc_EF5C6
EF5B0:  LDR             R2, [R4]
EF5B2:  MOVS            R3, #0x4F ; 'O'
EF5B4:  LDRD.W          R0, R1, [R4,#8]
EF5B8:  STR             R3, [SP,#0x10+var_10]
EF5BA:  MOVS            R3, #0x55 ; 'U'
EF5BC:  BL              sub_EFCE0
EF5C0:  STR             R0, [R4,#8]
EF5C2:  ADD             SP, SP, #8
EF5C4:  POP             {R4,R6,R7,PC}
EF5C6:  LDR             R0, [R4,#0xC]
EF5C8:  LDRD.W          R1, R0, [R0,#0x18]
EF5CC:  SUBS            R0, R0, R1
EF5CE:  MOVW            R1, #0x2493
EF5D2:  ADDS            R0, #7
EF5D4:  MOVT            R1, #0x9249
EF5D8:  SMMLA.W         R0, R1, R0, R0
EF5DC:  ASRS            R1, R0, #2
EF5DE:  ADD.W           R1, R1, R0,LSR#31
EF5E2:  MOV             R0, R4
EF5E4:  ADD             SP, SP, #8
EF5E6:  POP.W           {R4,R6,R7,LR}
EF5EA:  B.W             sub_EFC70
