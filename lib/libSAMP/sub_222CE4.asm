; =========================================================
; Game Engine Function: sub_222CE4
; Address            : 0x222CE4 - 0x222DCC
; =========================================================

222CE4:  PUSH            {R4-R6,R10,R11,LR}
222CE8:  ADD             R11, SP, #0x10
222CEC:  SUB             SP, SP, #0x28
222CF0:  MOV             R4, R0
222CF4:  LDR             R0, [R0]
222CF8:  MOV             R5, R2
222CFC:  MOV             R6, R1
222D00:  LDR             R2, [R0,#8]
222D04:  MOV             R0, R4
222D08:  BLX             R2
222D0C:  CMP             R0, #0
222D10:  BEQ             loc_222D44
222D14:  LDR             R0, [R4]
222D18:  MOV             R1, R6
222D1C:  MOV             R2, R5
222D20:  LDR             R3, [R0,#0x10]
222D24:  MOV             R0, R4
222D28:  BLX             R3
222D2C:  MOV             R5, #0
222D30:  CMN             R6, #1
222D34:  BEQ             loc_222D58
222D38:  MOV             R0, R5
222D3C:  SUB             SP, R11, #0x10
222D40:  POP             {R4-R6,R10,R11,PC}
222D44:  MOV             R5, #0xFFFFE672
222D4C:  MOV             R0, R5
222D50:  SUB             SP, R11, #0x10
222D54:  POP             {R4-R6,R10,R11,PC}
222D58:  LDR             R0, [R4]
222D5C:  MOV             R1, SP
222D60:  LDR             R2, [R0,#0x24]
222D64:  MOV             R0, R4
222D68:  BLX             R2
222D6C:  LDR             R0, [R4]
222D70:  MOV             R1, #0
222D74:  MOV             R5, #0
222D78:  LDR             R2, [R0,#0x34]
222D7C:  MOV             R0, R4
222D80:  BLX             R2
222D84:  LDR             R0, [SP,#0x38+var_28]
222D88:  CMP             R0, #0
222D8C:  BEQ             loc_222D38
222D90:  LDR             R0, [R4]
222D94:  MOV             R1, #0xFFFFFFFE
222D98:  LDR             R2, [R0,#0xC]
222D9C:  MOV             R0, R4
222DA0:  BLX             R2
222DA4:  LDR             R1, [R4]
222DA8:  LDR             R2, [SP,#0x38+var_28]
222DAC:  LDR             R3, [R1,#0x10]
222DB0:  ADD             R2, R2, R0
222DB4:  MOV             R0, R4
222DB8:  MOV             R1, #0xFFFFFFFE
222DBC:  BLX             R3
222DC0:  MOV             R0, R5
222DC4:  SUB             SP, R11, #0x10
222DC8:  POP             {R4-R6,R10,R11,PC}
