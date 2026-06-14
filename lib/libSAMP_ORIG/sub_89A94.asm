; =========================================================
; Game Engine Function: sub_89A94
; Address            : 0x89A94 - 0x89B2E
; =========================================================

89A94:  PUSH            {R4-R7,LR}
89A96:  ADD             R7, SP, #0xC
89A98:  PUSH.W          {R8-R10}
89A9C:  SUB             SP, SP, #0x10; int
89A9E:  CMP             R3, #0
89AA0:  IT EQ
89AA2:  MOVEQ.W         R3, #0xFFFFFFFF
89AA6:  CMP             R3, R2
89AA8:  BLS             loc_89B26
89AAA:  LDR.W           R12, [R7,#arg_8]
89AAE:  MOV             R9, R1
89AB0:  LDRD.W          R8, LR, [R7,#arg_0]
89AB4:  SUBS            R1, R3, R2
89AB6:  MOV             R10, R0
89AB8:  MOV             R4, R2
89ABA:  MOVS            R0, #0
89ABC:  MOV             R6, R2
89ABE:  B               loc_89AD0
89AC0:  ADDS            R2, R4, R0
89AC2:  LDRB            R2, [R2,#1]
89AC4:  CMP             R2, #0x23 ; '#'
89AC6:  BEQ             loc_89ADC
89AC8:  ADDS            R0, #1
89ACA:  ADDS            R6, #1
89ACC:  CMP             R1, R0
89ACE:  BEQ             loc_89AE2
89AD0:  LDRB            R2, [R4,R0]
89AD2:  CMP             R2, #0x23 ; '#'
89AD4:  BEQ             loc_89AC0
89AD6:  CMP             R2, #0
89AD8:  BNE             loc_89AC8
89ADA:  ADDS            R6, R4, R0
89ADC:  CMP             R6, R4
89ADE:  BNE             loc_89AE8
89AE0:  B               loc_89B26
89AE2:  MOV             R6, R3
89AE4:  CMP             R6, R4
89AE6:  BEQ             loc_89B26
89AE8:  LDR             R0, =(dword_1ACF68 - 0x89AF4)
89AEA:  MOV             R1, R10; int
89AEC:  MOV             R2, R9; int
89AEE:  MOV             R3, R4; int
89AF0:  ADD             R0, PC; dword_1ACF68
89AF2:  LDR             R5, [R0]
89AF4:  MOVW            R0, #0x19AC
89AF8:  LDR             R0, [R5,R0]
89AFA:  LDR.W           R0, [R0,#0x27C]; int
89AFE:  STMEA.W         SP, {R6,R8,LR}
89B02:  STR.W           R12, [SP,#0x28+var_1C]; int
89B06:  BL              sub_895D4
89B0A:  MOVW            R0, #0x2D20
89B0E:  LDRB            R0, [R5,R0]
89B10:  CBZ             R0, loc_89B26
89B12:  MOV             R0, R10; int
89B14:  MOV             R1, R4; s
89B16:  MOV             R2, R6
89B18:  ADD             SP, SP, #0x10
89B1A:  POP.W           {R8-R10}
89B1E:  POP.W           {R4-R7,LR}
89B22:  B.W             sub_892E0
89B26:  ADD             SP, SP, #0x10
89B28:  POP.W           {R8-R10}
89B2C:  POP             {R4-R7,PC}
