; =========================================================
; Game Engine Function: alGetAuxiliaryEffectSlotiv
; Address            : 0x1DD9D8 - 0x1DDA90
; =========================================================

1DD9D8:  PUSH            {R4-R7,R11,LR}
1DD9DC:  ADD             R11, SP, #0x10
1DD9E0:  MOV             R6, R1
1DD9E4:  MOV             R7, R0
1DD9E8:  ORR             R0, R6, #2
1DD9EC:  MOV             R5, R2
1DD9F0:  CMP             R0, #3
1DD9F4:  BNE             loc_1DDA38
1DD9F8:  BL              j_GetContextRef
1DD9FC:  MOV             R4, R0
1DDA00:  CMP             R4, #0
1DDA04:  BEQ             locret_1DDA80
1DDA08:  ADD             R0, R4, #0xA0
1DDA0C:  MOV             R1, R7
1DDA10:  BL              j_LookupUIntMapKey
1DDA14:  CMP             R0, #0
1DDA18:  BEQ             loc_1DDA68
1DDA1C:  CMP             R6, #3
1DDA20:  BEQ             loc_1DDA84
1DDA24:  CMP             R6, #1
1DDA28:  BNE             loc_1DDA5C
1DDA2C:  LDR             R0, [R0,#0xB4]
1DDA30:  STR             R0, [R5]
1DDA34:  B               loc_1DDA74
1DDA38:  BL              j_GetContextRef
1DDA3C:  MOV             R4, R0
1DDA40:  CMP             R4, #0
1DDA44:  POPEQ           {R4-R7,R11,PC}
1DDA48:  ADD             R0, R4, #0xA0
1DDA4C:  MOV             R1, R7
1DDA50:  BL              j_LookupUIntMapKey
1DDA54:  CMP             R0, #0
1DDA58:  BEQ             loc_1DDA68
1DDA5C:  MOV             R0, R4
1DDA60:  MOVW            R1, #0xA002
1DDA64:  B               loc_1DDA70
1DDA68:  MOV             R0, R4
1DDA6C:  MOVW            R1, #0xA001
1DDA70:  BL              j_alSetError
1DDA74:  MOV             R0, R4
1DDA78:  POP             {R4-R7,R11,LR}
1DDA7C:  B               j_ALCcontext_DecRef
1DDA80:  POP             {R4-R7,R11,PC}
1DDA84:  LDRB            R0, [R0,#0xBC]
1DDA88:  STR             R0, [R5]
1DDA8C:  B               loc_1DDA74
