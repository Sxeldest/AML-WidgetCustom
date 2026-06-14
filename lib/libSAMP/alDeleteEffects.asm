; =========================================================
; Game Engine Function: alDeleteEffects
; Address            : 0x1DAC34 - 0x1DACFC
; =========================================================

1DAC34:  PUSH            {R4-R8,R10,R11,LR}
1DAC38:  ADD             R11, SP, #0x18
1DAC3C:  MOV             R5, R1
1DAC40:  MOV             R6, R0
1DAC44:  BL              j_GetContextRef
1DAC48:  MOV             R8, R0
1DAC4C:  CMP             R8, #0
1DAC50:  BEQ             locret_1DACD4
1DAC54:  CMP             R6, #0
1DAC58:  BLT             loc_1DACD8
1DAC5C:  BEQ             loc_1DACF0
1DAC60:  LDR             R0, [R8,#0xFC]
1DAC64:  MOV             R4, #0
1DAC68:  ADD             R7, R0, #0x60 ; '`'
1DAC6C:  LDR             R1, [R5,R4,LSL#2]
1DAC70:  CMP             R1, #0
1DAC74:  BEQ             loc_1DAC88
1DAC78:  MOV             R0, R7
1DAC7C:  BL              j_LookupUIntMapKey
1DAC80:  CMP             R0, #0
1DAC84:  BEQ             loc_1DACE4
1DAC88:  ADD             R4, R4, #1
1DAC8C:  CMP             R4, R6
1DAC90:  BLT             loc_1DAC6C
1DAC94:  CMP             R6, #1
1DAC98:  BLT             loc_1DACF0
1DAC9C:  LDR             R1, [R5]
1DACA0:  MOV             R0, R7
1DACA4:  BL              j_RemoveUIntMapKey
1DACA8:  MOV             R4, R0
1DACAC:  CMP             R4, #0
1DACB0:  BEQ             loc_1DACC4
1DACB4:  LDR             R0, [R4,#0xB4]
1DACB8:  BL              j_FreeThunkEntry
1DACBC:  MOV             R0, R4; ptr
1DACC0:  BL              free
1DACC4:  SUBS            R6, R6, #1
1DACC8:  ADD             R5, R5, #4
1DACCC:  BNE             loc_1DAC9C
1DACD0:  B               loc_1DACF0
1DACD4:  POP             {R4-R8,R10,R11,PC}
1DACD8:  MOV             R0, R8
1DACDC:  MOVW            R1, #0xA003
1DACE0:  B               loc_1DACEC
1DACE4:  MOV             R0, R8
1DACE8:  MOVW            R1, #0xA001
1DACEC:  BL              j_alSetError
1DACF0:  MOV             R0, R8
1DACF4:  POP             {R4-R8,R10,R11,LR}
1DACF8:  B               j_ALCcontext_DecRef
