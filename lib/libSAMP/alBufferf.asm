; =========================================================
; Game Engine Function: alBufferf
; Address            : 0x1D5F88 - 0x1D5FD4
; =========================================================

1D5F88:  PUSH            {R4,R5,R11,LR}
1D5F8C:  ADD             R11, SP, #8
1D5F90:  MOV             R5, R0
1D5F94:  BL              j_GetContextRef
1D5F98:  MOV             R4, R0
1D5F9C:  CMP             R4, #0
1D5FA0:  POPEQ           {R4,R5,R11,PC}
1D5FA4:  LDR             R0, [R4,#0xFC]
1D5FA8:  MOV             R1, R5
1D5FAC:  ADD             R0, R0, #0x3C ; '<'
1D5FB0:  BL              j_LookupUIntMapKey
1D5FB4:  CMP             R0, #0
1D5FB8:  MOV             R0, R4
1D5FBC:  MOVWNE          R1, #0xA002
1D5FC0:  MOVWEQ          R1, #0xA001
1D5FC4:  BL              j_alSetError
1D5FC8:  MOV             R0, R4
1D5FCC:  POP             {R4,R5,R11,LR}
1D5FD0:  B               j_ALCcontext_DecRef
