; =========================================================
; Game Engine Function: sub_23BF34
; Address            : 0x23BF34 - 0x23BFBA
; =========================================================

23BF34:  PUSH            {R4,R5,R7,LR}
23BF36:  ADD             R7, SP, #8
23BF38:  MOV             R4, R0
23BF3A:  MOVW            R1, #0xB2F4
23BF3E:  LDR             R0, [R4,R1]
23BF40:  TST.W           R0, #4
23BF44:  BEQ             loc_23BF98
23BF46:  ADDS            R5, R4, R1
23BF48:  LSLS            R0, R0, #0x19
23BF4A:  BMI             loc_23BF5A
23BF4C:  MOVW            R0, #0xB2EC
23BF50:  MOVW            R1, #0xB318
23BF54:  LDR             R0, [R4,R0]
23BF56:  LDR             R3, [R4,R1]
23BF58:  B               loc_23BF68
23BF5A:  MOVW            R0, #0xB30C
23BF5E:  LDR             R3, [R4,R0]
23BF60:  CBZ             R3, loc_23BF7C
23BF62:  MOVW            R0, #0xB2F0
23BF66:  LDR             R0, [R4,R0]
23BF68:  MOVS            R1, #0
23BF6A:  MOVS            R2, #0
23BF6C:  BLX             R3
23BF6E:  CMP             R0, #0
23BF70:  BLT             loc_23BF7C
23BF72:  MOVW            R1, #0xB2E8
23BF76:  STR             R0, [R4,R1]
23BF78:  ADD             R1, R4
23BF7A:  B               loc_23BF8E
23BF7C:  MOVW            R0, #0xB468
23BF80:  MOVS            R1, #0x28 ; '('
23BF82:  STR             R1, [R4,R0]
23BF84:  MOVW            R0, #0xB2E8
23BF88:  ADDS            R1, R4, R0
23BF8A:  MOV.W           R0, #0xFFFFFFFF
23BF8E:  STR             R0, [R1]
23BF90:  MOVW            R1, #0xB334
23BF94:  STR             R0, [R4,R1]
23BF96:  LDR             R0, [R5]
23BF98:  LSLS            R0, R0, #0x1C
23BF9A:  IT PL
23BF9C:  POPPL           {R4,R5,R7,PC}
23BF9E:  MOVW            R0, #0xB330
23BFA2:  MOVS            R1, #0
23BFA4:  STR             R1, [R4,R0]
23BFA6:  MOVW            R0, #0xB32C
23BFAA:  STR             R1, [R4,R0]
23BFAC:  MOVW            R0, #0xB334
23BFB0:  MOVW            R1, #0xB2E8
23BFB4:  LDR             R0, [R4,R0]
23BFB6:  STR             R0, [R4,R1]
23BFB8:  POP             {R4,R5,R7,PC}
