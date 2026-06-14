; =========================================================
; Game Engine Function: alIsEffect
; Address            : 0x1DACFC - 0x1DAD60
; =========================================================

1DACFC:  PUSH            {R4,R5,R11,LR}
1DAD00:  ADD             R11, SP, #8
1DAD04:  MOV             R5, R0
1DAD08:  BL              j_GetContextRef
1DAD0C:  MOV             R4, R0
1DAD10:  CMP             R4, #0
1DAD14:  BEQ             loc_1DAD40
1DAD18:  CMP             R5, #0
1DAD1C:  BEQ             loc_1DAD4C
1DAD20:  LDR             R0, [R4,#0xFC]
1DAD24:  MOV             R1, R5
1DAD28:  ADD             R0, R0, #0x60 ; '`'
1DAD2C:  BL              j_LookupUIntMapKey
1DAD30:  MOV             R5, R0
1DAD34:  CMP             R5, #0
1DAD38:  MOVWNE          R5, #1
1DAD3C:  B               loc_1DAD50
1DAD40:  MOV             R5, #0
1DAD44:  MOV             R0, R5
1DAD48:  POP             {R4,R5,R11,PC}
1DAD4C:  MOV             R5, #1
1DAD50:  MOV             R0, R4
1DAD54:  BL              j_ALCcontext_DecRef
1DAD58:  MOV             R0, R5
1DAD5C:  POP             {R4,R5,R11,PC}
