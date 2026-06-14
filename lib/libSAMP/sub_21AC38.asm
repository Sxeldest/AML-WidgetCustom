; =========================================================
; Game Engine Function: sub_21AC38
; Address            : 0x21AC38 - 0x21AC98
; =========================================================

21AC38:  PUSH            {R4-R7,LR}
21AC3A:  ADD             R7, SP, #0xC
21AC3C:  PUSH.W          {R7-R11}
21AC40:  MOV             R9, R0
21AC42:  LDR             R0, =(asc_8F279 - 0x21AC4E); ", " ...
21AC44:  MOV             R4, R1
21AC46:  MOV.W           R8, #1
21AC4A:  ADD             R0, PC; ", "
21AC4C:  MOVS            R6, #0
21AC4E:  MOV             R11, R0
21AC50:  LDR.W           R0, [R9,#4]
21AC54:  CMP             R6, R0
21AC56:  BEQ             loc_21AC92
21AC58:  LDR.W           R10, [R4,#4]
21AC5C:  MOVS.W          R0, R8,LSL#31
21AC60:  MOV             R5, R10
21AC62:  BNE             loc_21AC72
21AC64:  ADD.W           R2, R11, #2
21AC68:  MOV             R1, R11
21AC6A:  MOV             R0, R4
21AC6C:  BL              sub_216F98
21AC70:  LDR             R5, [R4,#4]
21AC72:  LDR.W           R0, [R9]
21AC76:  MOV             R1, R4
21AC78:  LDR.W           R0, [R0,R6,LSL#2]
21AC7C:  BL              sub_2154CC
21AC80:  LDR             R0, [R4,#4]
21AC82:  CMP             R5, R0
21AC84:  ITE EQ
21AC86:  STREQ.W         R10, [R4,#4]
21AC8A:  MOVNE.W         R8, #0
21AC8E:  ADDS            R6, #1
21AC90:  B               loc_21AC50
21AC92:  POP.W           {R3,R8-R11}
21AC96:  POP             {R4-R7,PC}
