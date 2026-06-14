; =========================================================
; Game Engine Function: sub_177B4C
; Address            : 0x177B4C - 0x177B80
; =========================================================

177B4C:  PUSH            {R4,R6,R7,LR}
177B4E:  ADD             R7, SP, #8
177B50:  MOV             R4, R0
177B52:  LDR             R0, [R0,#0x58]
177B54:  CMP.W           R0, #0xFFFFFFFF
177B58:  IT GT
177B5A:  POPGT           {R4,R6,R7,PC}
177B5C:  LDRB            R0, [R4,#4]
177B5E:  LSLS            R0, R0, #0x1E
177B60:  BMI             loc_177B6E
177B62:  MOV             R0, R4
177B64:  MOV.W           R1, #0x80000000
177B68:  MOVS            R2, #0xD9
177B6A:  MOVS            R3, #0x1B
177B6C:  B               loc_177B78
177B6E:  MOV             R0, R4
177B70:  MOV.W           R1, #0x80000000
177B74:  MOVS            R2, #2
177B76:  MOVS            R3, #2
177B78:  BL              sub_1757F0
177B7C:  STR             R0, [R4,#0x58]
177B7E:  POP             {R4,R6,R7,PC}
