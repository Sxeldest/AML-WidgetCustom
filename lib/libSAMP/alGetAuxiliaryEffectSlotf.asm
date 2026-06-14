; =========================================================
; Game Engine Function: alGetAuxiliaryEffectSlotf
; Address            : 0x1DDA90 - 0x1DDB00
; =========================================================

1DDA90:  PUSH            {R4-R7,R11,LR}
1DDA94:  ADD             R11, SP, #0x10
1DDA98:  MOV             R5, R2
1DDA9C:  MOV             R6, R1
1DDAA0:  MOV             R7, R0
1DDAA4:  BL              j_GetContextRef
1DDAA8:  MOV             R4, R0
1DDAAC:  CMP             R4, #0
1DDAB0:  POPEQ           {R4-R7,R11,PC}
1DDAB4:  ADD             R0, R4, #0xA0
1DDAB8:  MOV             R1, R7
1DDABC:  BL              j_LookupUIntMapKey
1DDAC0:  CMP             R0, #0
1DDAC4:  BEQ             loc_1DDADC
1DDAC8:  CMP             R6, #2
1DDACC:  BNE             loc_1DDAE8
1DDAD0:  LDR             R0, [R0,#0xB8]
1DDAD4:  STR             R0, [R5]
1DDAD8:  B               loc_1DDAF4
1DDADC:  MOV             R0, R4
1DDAE0:  MOVW            R1, #0xA001
1DDAE4:  B               loc_1DDAF0
1DDAE8:  MOV             R0, R4
1DDAEC:  MOVW            R1, #0xA002
1DDAF0:  BL              j_alSetError
1DDAF4:  MOV             R0, R4
1DDAF8:  POP             {R4-R7,R11,LR}
1DDAFC:  B               j_ALCcontext_DecRef
