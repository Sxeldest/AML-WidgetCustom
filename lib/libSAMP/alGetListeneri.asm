; =========================================================
; Game Engine Function: alGetListeneri
; Address            : 0x1E1F58 - 0x1E1F94
; =========================================================

1E1F58:  PUSH            {R4,R5,R11,LR}
1E1F5C:  ADD             R11, SP, #8
1E1F60:  MOV             R5, R1
1E1F64:  BL              j_GetContextRef
1E1F68:  MOV             R4, R0
1E1F6C:  CMP             R4, #0
1E1F70:  POPEQ           {R4,R5,R11,PC}
1E1F74:  CMP             R5, #0
1E1F78:  MOV             R0, R4
1E1F7C:  MOVWEQ          R1, #0xA003
1E1F80:  MOVWNE          R1, #0xA002
1E1F84:  BL              j_alSetError
1E1F88:  MOV             R0, R4
1E1F8C:  POP             {R4,R5,R11,LR}
1E1F90:  B               j_ALCcontext_DecRef
