; =========================================================
; Game Engine Function: alIsEnabled
; Address            : 0x1E0968 - 0x1E09C0
; =========================================================

1E0968:  PUSH            {R4,R5,R11,LR}
1E096C:  ADD             R11, SP, #8
1E0970:  MOV             R5, R0
1E0974:  BL              j_GetContextRef
1E0978:  MOV             R4, R0
1E097C:  CMP             R4, #0
1E0980:  BEQ             loc_1E0994
1E0984:  CMP             R5, #0x200
1E0988:  BNE             loc_1E09A0
1E098C:  LDRB            R5, [R4,#0xD0]
1E0990:  B               loc_1E09B0
1E0994:  MOV             R5, #0
1E0998:  MOV             R0, R5
1E099C:  POP             {R4,R5,R11,PC}
1E09A0:  MOV             R0, R4
1E09A4:  MOVW            R1, #0xA002
1E09A8:  BL              j_alSetError
1E09AC:  MOV             R5, #0
1E09B0:  MOV             R0, R4
1E09B4:  BL              j_ALCcontext_DecRef
1E09B8:  MOV             R0, R5
1E09BC:  POP             {R4,R5,R11,PC}
