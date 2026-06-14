; =========================================================
; Game Engine Function: alBuffer3f
; Address            : 0x1D5FD4 - 0x1D6020
; =========================================================

1D5FD4:  PUSH            {R4,R5,R11,LR}
1D5FD8:  ADD             R11, SP, #8
1D5FDC:  MOV             R5, R0
1D5FE0:  BL              j_GetContextRef
1D5FE4:  MOV             R4, R0
1D5FE8:  CMP             R4, #0
1D5FEC:  POPEQ           {R4,R5,R11,PC}
1D5FF0:  LDR             R0, [R4,#0xFC]
1D5FF4:  MOV             R1, R5
1D5FF8:  ADD             R0, R0, #0x3C ; '<'
1D5FFC:  BL              j_LookupUIntMapKey
1D6000:  CMP             R0, #0
1D6004:  MOV             R0, R4
1D6008:  MOVWNE          R1, #0xA002
1D600C:  MOVWEQ          R1, #0xA001
1D6010:  BL              j_alSetError
1D6014:  MOV             R0, R4
1D6018:  POP             {R4,R5,R11,LR}
1D601C:  B               j_ALCcontext_DecRef
