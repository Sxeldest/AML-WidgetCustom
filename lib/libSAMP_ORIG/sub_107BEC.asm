; =========================================================
; Game Engine Function: sub_107BEC
; Address            : 0x107BEC - 0x107C5C
; =========================================================

107BEC:  PUSH            {R4-R7,LR}
107BEE:  ADD             R7, SP, #0xC
107BF0:  PUSH.W          {R7-R11}
107BF4:  MOV             R6, R1
107BF6:  LDR             R1, [R1,#8]
107BF8:  MOV             R8, R0
107BFA:  LDR             R0, [R0,#4]
107BFC:  MOV             R10, R3
107BFE:  MOV             R11, R2
107C00:  LDR             R1, [R1,#4]
107C02:  CMP             R0, R1
107C04:  BEQ             loc_107C4A
107C06:  ADD.W           R9, R8, #0x10
107C0A:  MOV             R1, R6
107C0C:  MOV             R2, R11
107C0E:  MOV             R3, R10
107C10:  MOV             R0, R9
107C12:  LDR.W           R4, [R8,#0xC]
107C16:  BL              sub_107BB8
107C1A:  CMP             R4, #2
107C1C:  BLT             loc_107C44
107C1E:  ADD.W           R4, R9, R4,LSL#3
107C22:  ADD.W           R5, R8, #0x20 ; ' '
107C26:  SUB.W           R0, R5, #8
107C2A:  MOV             R1, R6
107C2C:  MOV             R2, R11
107C2E:  MOV             R3, R10
107C30:  BL              sub_107BB8
107C34:  LDRB.W          R0, [R6,#0x36]
107C38:  CBNZ            R0, loc_107C44
107C3A:  ADD.W           R0, R5, #8
107C3E:  CMP             R5, R4
107C40:  MOV             R5, R0
107C42:  BCC             loc_107C26
107C44:  POP.W           {R3,R8-R11}
107C48:  POP             {R4-R7,PC}
107C4A:  MOV             R1, R6
107C4C:  MOV             R2, R11
107C4E:  MOV             R3, R10
107C50:  POP.W           {R0,R8-R11}
107C54:  POP.W           {R4-R7,LR}
107C58:  B.W             sub_107B4C
