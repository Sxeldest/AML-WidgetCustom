; =========================================================
; Game Engine Function: sub_138BEA
; Address            : 0x138BEA - 0x138C5A
; =========================================================

138BEA:  PUSH            {R4-R7,LR}
138BEC:  ADD             R7, SP, #0xC
138BEE:  PUSH.W          {R8-R10}
138BF2:  MOV             R8, R1
138BF4:  MOV             R1, R0
138BF6:  LDR.W           R4, [R1,#4]!
138BFA:  CBZ             R4, loc_138C38
138BFC:  ADD.W           R5, R0, #8
138C00:  ADD.W           R10, R0, #4
138C04:  MOV             R9, R2
138C06:  ADD.W           R6, R4, #0x10
138C0A:  MOV             R0, R5
138C0C:  MOV             R1, R9
138C0E:  MOV             R2, R6
138C10:  BL              sub_138CD2
138C14:  CBZ             R0, loc_138C1C
138C16:  LDR             R0, [R4]
138C18:  CBNZ            R0, loc_138C32
138C1A:  B               loc_138C3E
138C1C:  MOV             R0, R5
138C1E:  MOV             R1, R6
138C20:  MOV             R2, R9
138C22:  BL              sub_138CD2
138C26:  CBZ             R0, loc_138C44
138C28:  MOV             R1, R4
138C2A:  LDR.W           R0, [R1,#4]!
138C2E:  CBZ             R0, loc_138C4C
138C30:  MOV             R4, R1
138C32:  MOV             R10, R4
138C34:  MOV             R4, R0
138C36:  B               loc_138C06
138C38:  STR.W           R1, [R8]
138C3C:  B               loc_138C50
138C3E:  STR.W           R4, [R8]
138C42:  B               loc_138C52
138C44:  STR.W           R4, [R8]
138C48:  MOV             R4, R10
138C4A:  B               loc_138C52
138C4C:  STR.W           R4, [R8]
138C50:  MOV             R4, R1
138C52:  MOV             R0, R4
138C54:  POP.W           {R8-R10}
138C58:  POP             {R4-R7,PC}
