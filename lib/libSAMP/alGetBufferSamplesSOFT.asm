; =========================================================
; Game Engine Function: alGetBufferSamplesSOFT
; Address            : 0x1D5D78 - 0x1D5F04
; =========================================================

1D5D78:  PUSH            {R4-R11,LR}
1D5D7C:  ADD             R11, SP, #0x1C
1D5D80:  SUB             SP, SP, #0x14
1D5D84:  MOV             R4, R3
1D5D88:  MOV             R8, R2
1D5D8C:  MOV             R9, R1
1D5D90:  MOV             R6, R0
1D5D94:  LDR             R7, [R11,#arg_4]
1D5D98:  LDR             R5, [R11,#arg_0]
1D5D9C:  BL              j_GetContextRef
1D5DA0:  MOV             R10, R0
1D5DA4:  CMP             R10, #0
1D5DA8:  BEQ             loc_1D5E00
1D5DAC:  STR             R7, [SP,#0x30+var_20]
1D5DB0:  MOV             R1, R6
1D5DB4:  STR             R5, [SP,#0x30+var_24]
1D5DB8:  LDR             R0, [R10,#0xFC]
1D5DBC:  ADD             R0, R0, #0x3C ; '<'
1D5DC0:  BL              j_LookupUIntMapKey
1D5DC4:  MOV             R7, R0
1D5DC8:  CMP             R7, #0
1D5DCC:  BEQ             loc_1D5E08
1D5DD0:  ORR             R0, R8, R9
1D5DD4:  CMP             R0, #0
1D5DD8:  BLT             loc_1D5DF0
1D5DDC:  CMP             R8, #1
1D5DE0:  BLT             loc_1D5E18
1D5DE4:  LDR             R0, [SP,#0x30+var_20]
1D5DE8:  CMP             R0, #0
1D5DEC:  BNE             loc_1D5E18
1D5DF0:  MOV             R0, R10
1D5DF4:  MOVW            R1, #0xA003
1D5DF8:  BL              j_alSetError
1D5DFC:  B               loc_1D5EF4
1D5E00:  SUB             SP, R11, #0x1C
1D5E04:  POP             {R4-R11,PC}
1D5E08:  MOV             R0, R10
1D5E0C:  MOVW            R1, #0xA001
1D5E10:  BL              j_alSetError
1D5E14:  B               loc_1D5EF4
1D5E18:  LDR             R0, [SP,#0x30+var_24]
1D5E1C:  SUB             R0, R0, #0x1400
1D5E20:  CMP             R0, #0xA
1D5E24:  BCS             loc_1D5E98
1D5E28:  ADD             R5, R7, #0x30 ; '0'
1D5E2C:  MOV             R0, R5
1D5E30:  BL              j_ReadLock
1D5E34:  LDR             R2, [R7,#0x10]
1D5E38:  MOV             R1, #0
1D5E3C:  LDR             R3, [R7,#0x14]
1D5E40:  MOV             R0, #0
1D5E44:  SUB             R6, R2, #0x1500
1D5E48:  CMP             R6, #6
1D5E4C:  LDRLS           R1, =(unk_C5130 - 0x1D5E58)
1D5E50:  ADDLS           R1, PC, R1; unk_C5130
1D5E54:  LDRLS           R1, [R1,R6,LSL#2]
1D5E58:  SUB             R6, R3, #0x1400
1D5E5C:  CMP             R6, #6
1D5E60:  LDRLS           R0, =(unk_C5150 - 0x1D5E6C)
1D5E64:  ADDLS           R0, PC, R0; unk_C5150
1D5E68:  LDRLS           R0, [R0,R6,LSL#2]
1D5E6C:  CMP             R2, R4
1D5E70:  BNE             loc_1D5EA8
1D5E74:  LDR             R2, [R7,#0xC]
1D5E78:  CMP             R2, R9
1D5E7C:  SUBGE           R2, R2, R9
1D5E80:  CMPGE           R2, R8
1D5E84:  BGE             loc_1D5EB8
1D5E88:  MOV             R0, R10
1D5E8C:  MOVW            R1, #0xA003
1D5E90:  BL              j_alSetError
1D5E94:  B               loc_1D5EEC
1D5E98:  MOV             R0, R10
1D5E9C:  MOVW            R1, #0xA002
1D5EA0:  BL              j_alSetError
1D5EA4:  B               loc_1D5EF4
1D5EA8:  MOV             R0, R10
1D5EAC:  MOVW            R1, #0xA002
1D5EB0:  BL              j_alSetError
1D5EB4:  B               loc_1D5EEC
1D5EB8:  MUL             R1, R1, R9
1D5EBC:  LDR             R2, [R7]
1D5EC0:  MLA             R2, R1, R0, R2
1D5EC4:  SUB             R1, R4, #0x1500
1D5EC8:  MOV             R0, #0
1D5ECC:  CMP             R1, #6
1D5ED0:  LDRLS           R0, =(unk_C5130 - 0x1D5EDC)
1D5ED4:  ADDLS           R0, PC, R0; unk_C5130
1D5ED8:  LDRLS           R0, [R0,R1,LSL#2]
1D5EDC:  STMEA           SP, {R0,R8}
1D5EE0:  LDR             R0, [SP,#0x30+var_20]
1D5EE4:  LDR             R1, [SP,#0x30+var_24]
1D5EE8:  BL              sub_1CF100
1D5EEC:  MOV             R0, R5
1D5EF0:  BL              j_ReadUnlock
1D5EF4:  MOV             R0, R10
1D5EF8:  SUB             SP, R11, #0x1C
1D5EFC:  POP             {R4-R11,LR}
1D5F00:  B               j_ALCcontext_DecRef
