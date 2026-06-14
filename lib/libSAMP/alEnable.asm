; =========================================================
; Game Engine Function: alEnable
; Address            : 0x1E08CC - 0x1E0918
; =========================================================

1E08CC:  PUSH            {R4,R5,R11,LR}
1E08D0:  ADD             R11, SP, #8
1E08D4:  MOV             R5, R0
1E08D8:  BL              j_GetContextRef
1E08DC:  MOV             R4, R0
1E08E0:  CMP             R4, #0
1E08E4:  POPEQ           {R4,R5,R11,PC}
1E08E8:  CMP             R5, #0x200
1E08EC:  BNE             loc_1E0900
1E08F0:  MOV             R0, #1
1E08F4:  STRB            R0, [R4,#0xD0]
1E08F8:  STR             R0, [R4,#0xC8]
1E08FC:  B               loc_1E090C
1E0900:  MOV             R0, R4
1E0904:  MOVW            R1, #0xA002
1E0908:  BL              j_alSetError
1E090C:  MOV             R0, R4
1E0910:  POP             {R4,R5,R11,LR}
1E0914:  B               j_ALCcontext_DecRef
