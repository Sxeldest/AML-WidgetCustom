; =========================================================
; Game Engine Function: alBuffer3i
; Address            : 0x1D60D0 - 0x1D611C
; =========================================================

1D60D0:  PUSH            {R4,R5,R11,LR}
1D60D4:  ADD             R11, SP, #8
1D60D8:  MOV             R5, R0
1D60DC:  BL              j_GetContextRef
1D60E0:  MOV             R4, R0
1D60E4:  CMP             R4, #0
1D60E8:  POPEQ           {R4,R5,R11,PC}
1D60EC:  LDR             R0, [R4,#0xFC]
1D60F0:  MOV             R1, R5
1D60F4:  ADD             R0, R0, #0x3C ; '<'
1D60F8:  BL              j_LookupUIntMapKey
1D60FC:  CMP             R0, #0
1D6100:  MOV             R0, R4
1D6104:  MOVWNE          R1, #0xA002
1D6108:  MOVWEQ          R1, #0xA001
1D610C:  BL              j_alSetError
1D6110:  MOV             R0, R4
1D6114:  POP             {R4,R5,R11,LR}
1D6118:  B               j_ALCcontext_DecRef
