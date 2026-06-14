; =========================================================
; Game Engine Function: alGetBuffer3i
; Address            : 0x1D6598 - 0x1D6614
; =========================================================

1D6598:  PUSH            {R4-R8,R10,R11,LR}
1D659C:  ADD             R11, SP, #0x18
1D65A0:  MOV             R6, R3
1D65A4:  MOV             R7, R2
1D65A8:  MOV             R8, R0
1D65AC:  LDR             R5, [R11,#arg_0]
1D65B0:  BL              j_GetContextRef
1D65B4:  MOV             R4, R0
1D65B8:  CMP             R4, #0
1D65BC:  BEQ             locret_1D65F8
1D65C0:  CMP             R7, #0
1D65C4:  CMPNE           R6, #0
1D65C8:  BEQ             loc_1D65FC
1D65CC:  CMP             R5, #0
1D65D0:  BEQ             loc_1D65FC
1D65D4:  LDR             R0, [R4,#0xFC]
1D65D8:  MOV             R1, R8
1D65DC:  ADD             R0, R0, #0x3C ; '<'
1D65E0:  BL              j_LookupUIntMapKey
1D65E4:  CMP             R0, #0
1D65E8:  MOV             R0, R4
1D65EC:  MOVWNE          R1, #0xA002
1D65F0:  MOVWEQ          R1, #0xA001
1D65F4:  B               loc_1D6604
1D65F8:  POP             {R4-R8,R10,R11,PC}
1D65FC:  MOV             R0, R4
1D6600:  MOVW            R1, #0xA003
1D6604:  BL              j_alSetError
1D6608:  MOV             R0, R4
1D660C:  POP             {R4-R8,R10,R11,LR}
1D6610:  B               j_ALCcontext_DecRef
