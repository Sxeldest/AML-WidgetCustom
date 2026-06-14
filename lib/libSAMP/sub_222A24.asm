; =========================================================
; Game Engine Function: sub_222A24
; Address            : 0x222A24 - 0x222B18
; =========================================================

222A24:  PUSH            {R4-R8,R10,R11,LR}
222A28:  ADD             R11, SP, #0x18
222A2C:  SUB             SP, SP, #0x30
222A30:  MOV             R6, R1
222A34:  MOV             R1, R0
222A38:  MOV             R0, R6
222A3C:  MOV             R4, R3
222A40:  MOV             R5, R2
222A44:  BL              sub_222BB0
222A48:  ADD             R1, SP, #0x48+var_40
222A4C:  MOV             R0, R6
222A50:  BL              sub_222E9C
222A54:  CMP             R0, #0
222A58:  BEQ             loc_222A64
222A5C:  SUB             SP, R11, #0x18
222A60:  POP             {R4-R8,R10,R11,PC}
222A64:  LDR             R8, [R11,#arg_0]
222A68:  ADD             R7, SP, #0x48+var_40
222A6C:  B               loc_222A8C
222A70:  MOV             R0, R6
222A74:  BL              sub_222ED0
222A78:  MOV             R0, R6
222A7C:  MOV             R1, R7
222A80:  BL              sub_222E9C
222A84:  CMP             R0, #0
222A88:  BNE             loc_222A5C
222A8C:  MOV             R0, #1
222A90:  MOV             R1, #0xA
222A94:  MOV             R2, R5
222A98:  MOV             R3, R5
222A9C:  STMEA           SP, {R6,R8}
222AA0:  BLX             R4
222AA4:  CMP             R0, #0
222AA8:  BNE             loc_222A5C
222AAC:  LDR             R3, [SP,#0x48+var_34]
222AB0:  CMP             R3, #0
222AB4:  BEQ             loc_222A78
222AB8:  LDR             R0, [SP,#0x48+var_40]
222ABC:  LDR             R1, [SP,#0x48+var_2C]
222AC0:  LDR             R2, [SP,#0x48+var_20]
222AC4:  STR             R0, [R5,#0x48]
222AC8:  MOV             R0, #9
222ACC:  STR             R2, [R5,#0x4C]
222AD0:  MOV             R2, R6
222AD4:  STR             R1, [R5,#0x50]
222AD8:  MOV             R1, R5
222ADC:  BLX             R3
222AE0:  CMP             R0, #7
222AE4:  BEQ             loc_222A70
222AE8:  CMP             R0, #8
222AEC:  BEQ             loc_222A78
222AF0:  CMP             R0, #5
222AF4:  BNE             loc_222A5C
222AF8:  MOV             R0, #1
222AFC:  MOV             R1, #0x1A
222B00:  MOV             R2, R5
222B04:  MOV             R3, R5
222B08:  STMEA           SP, {R6,R8}
222B0C:  BLX             R4
222B10:  SUB             SP, R11, #0x18
222B14:  POP             {R4-R8,R10,R11,PC}
