; =========================================================
; Game Engine Function: alGetSource3f
; Address            : 0x1CCA68 - 0x1CCBA0
; =========================================================

1CCA68:  PUSH            {R4-R11,LR}
1CCA6C:  ADD             R11, SP, #0x1C
1CCA70:  SUB             SP, SP, #4
1CCA74:  MOV             R9, R3
1CCA78:  MOV             R6, R2
1CCA7C:  MOV             R7, R1
1CCA80:  MOV             R5, R0
1CCA84:  LDR             R10, [R11,#arg_0]
1CCA88:  BL              j_GetContextRef
1CCA8C:  MOV             R4, R0
1CCA90:  CMP             R4, #0
1CCA94:  BEQ             loc_1CCB0C
1CCA98:  CMP             R6, #0
1CCA9C:  BEQ             loc_1CCB14
1CCAA0:  CMP             R9, #0
1CCAA4:  CMPNE           R10, #0
1CCAA8:  BEQ             loc_1CCB14
1CCAAC:  ADD             R0, R4, #0x7C ; '|'
1CCAB0:  MOV             R1, R5
1CCAB4:  BL              j_LookupUIntMapKey
1CCAB8:  MOV             R8, R0
1CCABC:  CMP             R8, #0
1CCAC0:  BEQ             loc_1CCB20
1CCAC4:  MOVW            R0, #0x1006
1CCAC8:  CMP             R7, R0
1CCACC:  BEQ             loc_1CCB2C
1CCAD0:  MOVW            R0, #0x1005
1CCAD4:  CMP             R7, R0
1CCAD8:  BEQ             loc_1CCB50
1CCADC:  MOVW            R0, #0x1004
1CCAE0:  CMP             R7, R0
1CCAE4:  BNE             loc_1CCB84
1CCAE8:  LDR             R0, [R4,#0xFC]
1CCAEC:  ADD             R0, R0, #8; mutex
1CCAF0:  BL              j_EnterCriticalSection
1CCAF4:  LDR             R0, [R8,#0x28]
1CCAF8:  STR             R0, [R6]
1CCAFC:  LDR             R0, [R8,#0x2C]
1CCB00:  STR             R0, [R9]
1CCB04:  LDR             R0, [R8,#0x30]
1CCB08:  B               loc_1CCB70
1CCB0C:  SUB             SP, R11, #0x1C
1CCB10:  POP             {R4-R11,PC}
1CCB14:  MOV             R0, R4
1CCB18:  MOVW            R1, #0xA003
1CCB1C:  B               loc_1CCB8C
1CCB20:  MOV             R0, R4
1CCB24:  MOVW            R1, #0xA001
1CCB28:  B               loc_1CCB8C
1CCB2C:  LDR             R0, [R4,#0xFC]
1CCB30:  ADD             R0, R0, #8; mutex
1CCB34:  BL              j_EnterCriticalSection
1CCB38:  LDR             R0, [R8,#0x34]
1CCB3C:  STR             R0, [R6]
1CCB40:  LDR             R0, [R8,#0x38]
1CCB44:  STR             R0, [R9]
1CCB48:  LDR             R0, [R8,#0x3C]
1CCB4C:  B               loc_1CCB70
1CCB50:  LDR             R0, [R4,#0xFC]
1CCB54:  ADD             R0, R0, #8; mutex
1CCB58:  BL              j_EnterCriticalSection
1CCB5C:  LDR             R0, [R8,#0x40]
1CCB60:  STR             R0, [R6]
1CCB64:  LDR             R0, [R8,#0x44]
1CCB68:  STR             R0, [R9]
1CCB6C:  LDR             R0, [R8,#0x48]
1CCB70:  STR             R0, [R10]
1CCB74:  LDR             R0, [R4,#0xFC]
1CCB78:  ADD             R0, R0, #8; mutex
1CCB7C:  BL              j_LeaveCriticalSection
1CCB80:  B               loc_1CCB90
1CCB84:  MOV             R0, R4
1CCB88:  MOVW            R1, #0xA002
1CCB8C:  BL              j_alSetError
1CCB90:  MOV             R0, R4
1CCB94:  SUB             SP, R11, #0x1C
1CCB98:  POP             {R4-R11,LR}
1CCB9C:  B               j_ALCcontext_DecRef
