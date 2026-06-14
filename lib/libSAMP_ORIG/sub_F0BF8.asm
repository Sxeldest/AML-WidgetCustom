; =========================================================
; Game Engine Function: sub_F0BF8
; Address            : 0xF0BF8 - 0xF0D60
; =========================================================

F0BF8:  PUSH            {R4-R7,LR}
F0BFA:  ADD             R7, SP, #0xC
F0BFC:  PUSH.W          {R8-R11}
F0C00:  SUBS            R4, R1, R0
F0C02:  CMP             R4, #3
F0C04:  MOV             R4, R0
F0C06:  BLT             loc_F0C2C
F0C08:  LDR             R4, [R7,#arg_0]
F0C0A:  ANDS.W          R4, R4, #4
F0C0E:  MOV             R4, R0
F0C10:  BEQ             loc_F0C2C
F0C12:  LDRB            R4, [R0]
F0C14:  CMP             R4, #0xEF
F0C16:  MOV             R4, R0
F0C18:  BNE             loc_F0C2C
F0C1A:  LDRB            R4, [R0,#1]
F0C1C:  CMP             R4, #0xBB
F0C1E:  MOV             R4, R0
F0C20:  BNE             loc_F0C2C
F0C22:  LDRB            R4, [R0,#2]
F0C24:  CMP             R4, #0xBF
F0C26:  MOV             R4, R0
F0C28:  IT EQ
F0C2A:  ADDEQ           R4, #3
F0C2C:  MOV.W           R10, #0
F0C30:  MOV.W           R12, #0x1C0000
F0C34:  B               loc_F0D4E
F0C36:  LDRSB.W         R5, [R4]
F0C3A:  CMP             R5, #0
F0C3C:  UXTB.W          R11, R5
F0C40:  BMI             loc_F0C4C
F0C42:  CMP             R11, R3
F0C44:  BHI.W           loc_F0D58
F0C48:  MOVS            R6, #1
F0C4A:  B               loc_F0D48
F0C4C:  CMP.W           R11, #0xC2
F0C50:  BCC.W           loc_F0D58
F0C54:  CMP.W           R11, #0xDF
F0C58:  BHI             loc_F0C7E
F0C5A:  SUBS            R5, R1, R4
F0C5C:  CMP             R5, #2
F0C5E:  BLT             loc_F0D58
F0C60:  LDRB            R5, [R4,#1]
F0C62:  AND.W           R6, R5, #0xC0
F0C66:  CMP             R6, #0x80
F0C68:  BNE             loc_F0D58
F0C6A:  AND.W           R6, R11, #0x1F
F0C6E:  AND.W           R5, R5, #0x3F ; '?'
F0C72:  ORR.W           R5, R5, R6,LSL#6
F0C76:  CMP             R5, R3
F0C78:  BHI             loc_F0D58
F0C7A:  MOVS            R6, #2
F0C7C:  B               loc_F0D48
F0C7E:  CMP.W           R11, #0xEF
F0C82:  BHI             loc_F0CA8
F0C84:  SUBS            R5, R1, R4
F0C86:  CMP             R5, #3
F0C88:  BLT             loc_F0D58
F0C8A:  LDRB.W          R8, [R4,#1]
F0C8E:  CMP.W           R11, #0xED
F0C92:  LDRB.W          LR, [R4,#2]
F0C96:  BEQ             loc_F0CD8
F0C98:  CMP.W           R11, #0xE0
F0C9C:  BNE             loc_F0CDE
F0C9E:  AND.W           R5, R8, #0xE0
F0CA2:  CMP             R5, #0xA0
F0CA4:  BEQ             loc_F0CE6
F0CA6:  B               loc_F0D58
F0CA8:  CMP.W           R11, #0xF4
F0CAC:  BHI             loc_F0D58
F0CAE:  SUBS            R5, R1, R4
F0CB0:  CMP             R5, #4
F0CB2:  BLT             loc_F0D58
F0CB4:  LDRB.W          R9, [R4,#1]
F0CB8:  CMP.W           R11, #0xF4
F0CBC:  LDRB.W          R8, [R4,#2]
F0CC0:  LDRB.W          LR, [R4,#3]
F0CC4:  BEQ             loc_F0D0A
F0CC6:  CMP.W           R11, #0xF0
F0CCA:  BNE             loc_F0D10
F0CCC:  ADD.W           R5, R9, #0x70 ; 'p'
F0CD0:  UXTB            R5, R5
F0CD2:  CMP             R5, #0x30 ; '0'
F0CD4:  BCC             loc_F0D18
F0CD6:  B               loc_F0D58
F0CD8:  AND.W           R5, R8, #0xE0
F0CDC:  B               loc_F0CE2
F0CDE:  AND.W           R5, R8, #0xC0
F0CE2:  CMP             R5, #0x80
F0CE4:  BNE             loc_F0D58
F0CE6:  AND.W           R5, LR, #0xC0
F0CEA:  CMP             R5, #0x80
F0CEC:  BNE             loc_F0D58
F0CEE:  MOV.W           R6, R11,LSL#12
F0CF2:  AND.W           R5, R8, #0x3F ; '?'
F0CF6:  UXTH            R6, R6
F0CF8:  ORR.W           R5, R6, R5,LSL#6
F0CFC:  AND.W           R6, LR, #0x3F ; '?'
F0D00:  ADD             R5, R6
F0D02:  CMP             R5, R3
F0D04:  BHI             loc_F0D58
F0D06:  MOVS            R6, #3
F0D08:  B               loc_F0D48
F0D0A:  AND.W           R5, R9, #0xF0
F0D0E:  B               loc_F0D14
F0D10:  AND.W           R5, R9, #0xC0
F0D14:  CMP             R5, #0x80
F0D16:  BNE             loc_F0D58
F0D18:  AND.W           R5, R8, #0xC0
F0D1C:  CMP             R5, #0x80
F0D1E:  ITT EQ
F0D20:  ANDEQ.W         R5, LR, #0xC0
F0D24:  CMPEQ           R5, #0x80
F0D26:  BNE             loc_F0D58
F0D28:  AND.W           R6, R9, #0x3F ; '?'
F0D2C:  AND.W           R5, R12, R11,LSL#18
F0D30:  ORR.W           R5, R5, R6,LSL#12
F0D34:  AND.W           R6, R8, #0x3F ; '?'
F0D38:  ORR.W           R5, R5, R6,LSL#6
F0D3C:  AND.W           R6, LR, #0x3F ; '?'
F0D40:  ADD             R5, R6
F0D42:  CMP             R5, R3
F0D44:  BHI             loc_F0D58
F0D46:  MOVS            R6, #4
F0D48:  ADD             R4, R6
F0D4A:  ADD.W           R10, R10, #1
F0D4E:  CMP             R4, R1
F0D50:  IT CC
F0D52:  CMPCC           R10, R2
F0D54:  BCC.W           loc_F0C36
F0D58:  SUBS            R0, R4, R0
F0D5A:  POP.W           {R8-R11}
F0D5E:  POP             {R4-R7,PC}
