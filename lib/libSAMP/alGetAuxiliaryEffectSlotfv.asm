; =========================================================
; Game Engine Function: alGetAuxiliaryEffectSlotfv
; Address            : 0x1DDB00 - 0x1DDB90
; =========================================================

1DDB00:  PUSH            {R4-R7,R11,LR}
1DDB04:  ADD             R11, SP, #0x10
1DDB08:  MOV             R5, R2
1DDB0C:  MOV             R7, R1
1DDB10:  MOV             R6, R0
1DDB14:  BL              j_GetContextRef
1DDB18:  MOV             R4, R0
1DDB1C:  CMP             R7, #2
1DDB20:  BNE             loc_1DDB4C
1DDB24:  CMP             R4, #0
1DDB28:  BEQ             locret_1DDB8C
1DDB2C:  ADD             R0, R4, #0xA0
1DDB30:  MOV             R1, R6
1DDB34:  BL              j_LookupUIntMapKey
1DDB38:  CMP             R0, #0
1DDB3C:  BEQ             loc_1DDB74
1DDB40:  LDR             R0, [R0,#0xB8]
1DDB44:  STR             R0, [R5]
1DDB48:  B               loc_1DDB80
1DDB4C:  CMP             R4, #0
1DDB50:  POPEQ           {R4-R7,R11,PC}
1DDB54:  ADD             R0, R4, #0xA0
1DDB58:  MOV             R1, R6
1DDB5C:  BL              j_LookupUIntMapKey
1DDB60:  CMP             R0, #0
1DDB64:  BEQ             loc_1DDB74
1DDB68:  MOV             R0, R4
1DDB6C:  MOVW            R1, #0xA002
1DDB70:  B               loc_1DDB7C
1DDB74:  MOV             R0, R4
1DDB78:  MOVW            R1, #0xA001
1DDB7C:  BL              j_alSetError
1DDB80:  MOV             R0, R4
1DDB84:  POP             {R4-R7,R11,LR}
1DDB88:  B               j_ALCcontext_DecRef
1DDB8C:  POP             {R4-R7,R11,PC}
