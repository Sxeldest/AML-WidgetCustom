; =========================================================
; Game Engine Function: alGenEffects
; Address            : 0x1DA9D0 - 0x1DAB7C
; =========================================================

1DA9D0:  PUSH            {R4-R11,LR}
1DA9D4:  ADD             R11, SP, #0x1C
1DA9D8:  SUB             SP, SP, #0x24
1DA9DC:  MOV             R9, R1
1DA9E0:  MOV             R7, R0
1DA9E4:  BL              j_GetContextRef
1DA9E8:  MOV             R10, R0
1DA9EC:  CMP             R10, #0
1DA9F0:  BEQ             loc_1DAA2C
1DA9F4:  CMP             R7, #0
1DA9F8:  BLT             loc_1DAA10
1DA9FC:  CMP             R9, #0
1DAA00:  BNE             loc_1DAA34
1DAA04:  BIC             R0, R7, #0xC0000000
1DAA08:  CMP             R0, #0
1DAA0C:  BEQ             loc_1DAA34
1DAA10:  MOV             R0, R10
1DAA14:  MOVW            R1, #0xA003
1DAA18:  BL              j_alSetError
1DAA1C:  MOV             R0, R10
1DAA20:  SUB             SP, R11, #0x1C
1DAA24:  POP             {R4-R11,LR}
1DAA28:  B               j_ALCcontext_DecRef
1DAA2C:  SUB             SP, R11, #0x1C
1DAA30:  POP             {R4-R11,PC}
1DAA34:  CMP             R7, #1
1DAA38:  BLT             loc_1DAA1C
1DAA3C:  LDR             R0, [R10,#0xFC]
1DAA40:  MOV             R6, #0
1DAA44:  LDR             R1, =(sub_1DCC70 - 0x1DAA68)
1DAA48:  ADD             R0, R0, #0x60 ; '`'
1DAA4C:  STR             R0, [SP,#0x40+var_3C]
1DAA50:  LDR             R0, =(sub_1DCC7C - 0x1DAA60)
1DAA54:  LDR             R4, =(sub_1DCC88 - 0x1DAA74)
1DAA58:  ADD             R0, PC, R0; sub_1DCC7C
1DAA5C:  STR             R0, [SP,#0x40+var_20]
1DAA60:  ADD             R0, PC, R1; sub_1DCC70
1DAA64:  LDR             R12, =(sub_1DCC94 - 0x1DAA84)
1DAA68:  STR             R0, [SP,#0x40+var_24]
1DAA6C:  ADD             R1, PC, R4; sub_1DCC88
1DAA70:  LDR             R0, =(sub_1DCCC4 - 0x1DAA8C)
1DAA74:  LDR             R2, =(sub_1DCCA0 - 0x1DAA94)
1DAA78:  STR             R1, [SP,#0x40+var_28]
1DAA7C:  ADD             R1, PC, R12; sub_1DCC94
1DAA80:  LDR             R3, =(sub_1DCCAC - 0x1DAAA0)
1DAA84:  ADD             R8, PC, R0; sub_1DCCC4
1DAA88:  STR             R1, [SP,#0x40+var_2C]
1DAA8C:  ADD             R1, PC, R2; sub_1DCCA0
1DAA90:  LDR             R5, =(sub_1DCCB8 - 0x1DAAA8)
1DAA94:  STR             R1, [SP,#0x40+var_30]
1DAA98:  ADD             R1, PC, R3; sub_1DCCAC
1DAA9C:  STR             R1, [SP,#0x40+var_34]
1DAAA0:  ADD             R1, PC, R5; sub_1DCCB8
1DAAA4:  STR             R1, [SP,#0x40+var_38]
1DAAA8:  MOV             R0, #1; nmemb
1DAAAC:  MOV             R1, #0xB8; size
1DAAB0:  BL              calloc
1DAAB4:  MOV             R5, R0
1DAAB8:  CMP             R5, #0
1DAABC:  BEQ             loc_1DAB60
1DAAC0:  LDR             R0, [SP,#0x40+var_24]
1DAAC4:  STR             R0, [R5,#0x94]
1DAAC8:  LDR             R0, [SP,#0x40+var_20]
1DAACC:  STR             R0, [R5,#0x98]
1DAAD0:  LDR             R0, [SP,#0x40+var_28]
1DAAD4:  STR             R0, [R5,#0x9C]
1DAAD8:  LDR             R0, [SP,#0x40+var_2C]
1DAADC:  STR             R0, [R5,#0xA0]
1DAAE0:  LDR             R0, [SP,#0x40+var_30]
1DAAE4:  STR             R0, [R5,#0xA4]
1DAAE8:  LDR             R0, [SP,#0x40+var_34]
1DAAEC:  STR             R0, [R5,#0xA8]
1DAAF0:  LDR             R0, [SP,#0x40+var_38]
1DAAF4:  STR             R0, [R5,#0xAC]
1DAAF8:  ADD             R0, R5, #0xB4
1DAAFC:  STR             R8, [R5,#0xB0]
1DAB00:  BL              j_NewThunkEntry
1DAB04:  LDR             R1, [R5,#0xB4]
1DAB08:  MOV             R4, R0
1DAB0C:  CMP             R4, #0
1DAB10:  BNE             loc_1DAB44
1DAB14:  LDR             R0, [SP,#0x40+var_3C]
1DAB18:  MOV             R2, R5
1DAB1C:  BL              j_InsertUIntMapEntry
1DAB20:  LDR             R1, [R5,#0xB4]
1DAB24:  MOV             R4, R0
1DAB28:  CMP             R4, #0
1DAB2C:  BNE             loc_1DAB44
1DAB30:  STR             R1, [R9,R6,LSL#2]
1DAB34:  ADD             R6, R6, #1
1DAB38:  CMP             R6, R7
1DAB3C:  BLT             loc_1DAAA8
1DAB40:  B               loc_1DAA1C
1DAB44:  MOV             R0, R1
1DAB48:  BL              j_FreeThunkEntry
1DAB4C:  MOV             R0, R5; ptr
1DAB50:  BL              free
1DAB54:  MOV             R0, R10
1DAB58:  MOV             R1, R4
1DAB5C:  B               loc_1DAB68
1DAB60:  MOV             R0, R10
1DAB64:  MOVW            R1, #0xA005
1DAB68:  BL              j_alSetError
1DAB6C:  MOV             R0, R6
1DAB70:  MOV             R1, R9
1DAB74:  BL              j_alDeleteEffects
1DAB78:  B               loc_1DAA1C
