; =========================================================
; Game Engine Function: alDisable
; Address            : 0x1E0918 - 0x1E0968
; =========================================================

1E0918:  PUSH            {R4,R5,R11,LR}
1E091C:  ADD             R11, SP, #8
1E0920:  MOV             R5, R0
1E0924:  BL              j_GetContextRef
1E0928:  MOV             R4, R0
1E092C:  CMP             R4, #0
1E0930:  POPEQ           {R4,R5,R11,PC}
1E0934:  CMP             R5, #0x200
1E0938:  BNE             loc_1E0950
1E093C:  MOV             R0, #0
1E0940:  STRB            R0, [R4,#0xD0]
1E0944:  MOV             R0, #1
1E0948:  STR             R0, [R4,#0xC8]
1E094C:  B               loc_1E095C
1E0950:  MOV             R0, R4
1E0954:  MOVW            R1, #0xA002
1E0958:  BL              j_alSetError
1E095C:  MOV             R0, R4
1E0960:  POP             {R4,R5,R11,LR}
1E0964:  B               j_ALCcontext_DecRef
