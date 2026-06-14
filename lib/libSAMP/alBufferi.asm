; =========================================================
; Game Engine Function: alBufferi
; Address            : 0x1D6084 - 0x1D60D0
; =========================================================

1D6084:  PUSH            {R4,R5,R11,LR}
1D6088:  ADD             R11, SP, #8
1D608C:  MOV             R5, R0
1D6090:  BL              j_GetContextRef
1D6094:  MOV             R4, R0
1D6098:  CMP             R4, #0
1D609C:  POPEQ           {R4,R5,R11,PC}
1D60A0:  LDR             R0, [R4,#0xFC]
1D60A4:  MOV             R1, R5
1D60A8:  ADD             R0, R0, #0x3C ; '<'
1D60AC:  BL              j_LookupUIntMapKey
1D60B0:  CMP             R0, #0
1D60B4:  MOV             R0, R4
1D60B8:  MOVWNE          R1, #0xA002
1D60BC:  MOVWEQ          R1, #0xA001
1D60C0:  BL              j_alSetError
1D60C4:  MOV             R0, R4
1D60C8:  POP             {R4,R5,R11,LR}
1D60CC:  B               j_ALCcontext_DecRef
