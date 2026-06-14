; =========================================================
; Game Engine Function: alBufferSubSamplesSOFT
; Address            : 0x1D5BE0 - 0x1D5D6C
; =========================================================

1D5BE0:  PUSH            {R4-R11,LR}
1D5BE4:  ADD             R11, SP, #0x1C
1D5BE8:  SUB             SP, SP, #0x14
1D5BEC:  MOV             R4, R3
1D5BF0:  MOV             R8, R2
1D5BF4:  MOV             R9, R1
1D5BF8:  MOV             R6, R0
1D5BFC:  LDR             R7, [R11,#arg_4]
1D5C00:  LDR             R5, [R11,#arg_0]
1D5C04:  BL              j_GetContextRef
1D5C08:  MOV             R10, R0
1D5C0C:  CMP             R10, #0
1D5C10:  BEQ             loc_1D5C68
1D5C14:  STR             R7, [SP,#0x30+var_20]
1D5C18:  MOV             R1, R6
1D5C1C:  STR             R5, [SP,#0x30+var_24]
1D5C20:  LDR             R0, [R10,#0xFC]
1D5C24:  ADD             R0, R0, #0x3C ; '<'
1D5C28:  BL              j_LookupUIntMapKey
1D5C2C:  MOV             R7, R0
1D5C30:  CMP             R7, #0
1D5C34:  BEQ             loc_1D5C70
1D5C38:  ORR             R0, R8, R9
1D5C3C:  CMP             R0, #0
1D5C40:  BLT             loc_1D5C58
1D5C44:  CMP             R8, #1
1D5C48:  BLT             loc_1D5C80
1D5C4C:  LDR             R0, [SP,#0x30+var_20]
1D5C50:  CMP             R0, #0
1D5C54:  BNE             loc_1D5C80
1D5C58:  MOV             R0, R10
1D5C5C:  MOVW            R1, #0xA003
1D5C60:  BL              j_alSetError
1D5C64:  B               loc_1D5D5C
1D5C68:  SUB             SP, R11, #0x1C
1D5C6C:  POP             {R4-R11,PC}
1D5C70:  MOV             R0, R10
1D5C74:  MOVW            R1, #0xA001
1D5C78:  BL              j_alSetError
1D5C7C:  B               loc_1D5D5C
1D5C80:  LDR             R0, [SP,#0x30+var_24]
1D5C84:  SUB             R0, R0, #0x1400
1D5C88:  CMP             R0, #0xA
1D5C8C:  BCS             loc_1D5D00
1D5C90:  ADD             R5, R7, #0x30 ; '0'
1D5C94:  MOV             R0, R5
1D5C98:  BL              j_WriteLock
1D5C9C:  LDR             R3, [R7,#0x10]
1D5CA0:  MOV             R2, #0
1D5CA4:  LDR             R1, [R7,#0x14]
1D5CA8:  MOV             R0, #0
1D5CAC:  SUB             R6, R3, #0x1500
1D5CB0:  CMP             R6, #6
1D5CB4:  LDRLS           R2, =(unk_C5130 - 0x1D5CC0)
1D5CB8:  ADDLS           R2, PC, R2; unk_C5130
1D5CBC:  LDRLS           R2, [R2,R6,LSL#2]
1D5CC0:  SUB             R6, R1, #0x1400
1D5CC4:  CMP             R6, #6
1D5CC8:  LDRLS           R0, =(unk_C5150 - 0x1D5CD4)
1D5CCC:  ADDLS           R0, PC, R0; unk_C5150
1D5CD0:  LDRLS           R0, [R0,R6,LSL#2]
1D5CD4:  CMP             R3, R4
1D5CD8:  BNE             loc_1D5D10
1D5CDC:  LDR             R3, [R7,#0xC]
1D5CE0:  CMP             R3, R9
1D5CE4:  SUBGE           R3, R3, R9
1D5CE8:  CMPGE           R3, R8
1D5CEC:  BGE             loc_1D5D20
1D5CF0:  MOV             R0, R10
1D5CF4:  MOVW            R1, #0xA003
1D5CF8:  BL              j_alSetError
1D5CFC:  B               loc_1D5D54
1D5D00:  MOV             R0, R10
1D5D04:  MOVW            R1, #0xA002
1D5D08:  BL              j_alSetError
1D5D0C:  B               loc_1D5D5C
1D5D10:  MOV             R0, R10
1D5D14:  MOVW            R1, #0xA002
1D5D18:  BL              j_alSetError
1D5D1C:  B               loc_1D5D54
1D5D20:  MUL             R2, R2, R9
1D5D24:  LDR             R3, [R7]
1D5D28:  MLA             R0, R2, R0, R3
1D5D2C:  SUB             R3, R4, #0x1500
1D5D30:  MOV             R2, #0
1D5D34:  CMP             R3, #6
1D5D38:  LDRLS           R2, =(unk_C5130 - 0x1D5D44)
1D5D3C:  ADDLS           R2, PC, R2; unk_C5130
1D5D40:  LDRLS           R2, [R2,R3,LSL#2]
1D5D44:  STMEA           SP, {R2,R8}
1D5D48:  LDR             R2, [SP,#0x30+var_20]
1D5D4C:  LDR             R3, [SP,#0x30+var_24]
1D5D50:  BL              sub_1CF100
1D5D54:  MOV             R0, R5
1D5D58:  BL              j_WriteUnlock
1D5D5C:  MOV             R0, R10
1D5D60:  SUB             SP, R11, #0x1C
1D5D64:  POP             {R4-R11,LR}
1D5D68:  B               j_ALCcontext_DecRef
