; =========================================================
; Game Engine Function: sub_10ABD4
; Address            : 0x10ABD4 - 0x10ACBC
; =========================================================

10ABD4:  PUSH            {R4-R6,R10,R11,LR}
10ABD8:  ADD             R11, SP, #0x10
10ABDC:  SUB             SP, SP, #0x28
10ABE0:  MOV             R4, R0
10ABE4:  LDR             R0, [R0]
10ABE8:  MOV             R5, R2
10ABEC:  MOV             R6, R1
10ABF0:  LDR             R2, [R0,#8]
10ABF4:  MOV             R0, R4
10ABF8:  BLX             R2
10ABFC:  CMP             R0, #0
10AC00:  BEQ             loc_10AC34
10AC04:  LDR             R0, [R4]
10AC08:  MOV             R1, R6
10AC0C:  MOV             R2, R5
10AC10:  LDR             R3, [R0,#0x10]
10AC14:  MOV             R0, R4
10AC18:  BLX             R3
10AC1C:  MOV             R5, #0
10AC20:  CMN             R6, #1
10AC24:  BEQ             loc_10AC48
10AC28:  MOV             R0, R5
10AC2C:  SUB             SP, R11, #0x10
10AC30:  POP             {R4-R6,R10,R11,PC}
10AC34:  MOV             R5, #0xFFFFE672
10AC3C:  MOV             R0, R5
10AC40:  SUB             SP, R11, #0x10
10AC44:  POP             {R4-R6,R10,R11,PC}
10AC48:  LDR             R0, [R4]
10AC4C:  MOV             R1, SP
10AC50:  LDR             R2, [R0,#0x24]
10AC54:  MOV             R0, R4
10AC58:  BLX             R2
10AC5C:  LDR             R0, [R4]
10AC60:  MOV             R1, #0
10AC64:  MOV             R5, #0
10AC68:  LDR             R2, [R0,#0x34]
10AC6C:  MOV             R0, R4
10AC70:  BLX             R2
10AC74:  LDR             R0, [SP,#0x38+var_28]
10AC78:  CMP             R0, #0
10AC7C:  BEQ             loc_10AC28
10AC80:  LDR             R0, [R4]
10AC84:  MOV             R1, #0xFFFFFFFE
10AC88:  LDR             R2, [R0,#0xC]
10AC8C:  MOV             R0, R4
10AC90:  BLX             R2
10AC94:  LDR             R1, [R4]
10AC98:  LDR             R2, [SP,#0x38+var_28]
10AC9C:  LDR             R3, [R1,#0x10]
10ACA0:  ADD             R2, R2, R0
10ACA4:  MOV             R0, R4
10ACA8:  MOV             R1, #0xFFFFFFFE
10ACAC:  BLX             R3
10ACB0:  MOV             R0, R5
10ACB4:  SUB             SP, R11, #0x10
10ACB8:  POP             {R4-R6,R10,R11,PC}
