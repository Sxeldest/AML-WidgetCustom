; =========================================================
; Game Engine Function: alAuxiliaryEffectSlotiv
; Address            : 0x1DD7EC - 0x1DD850
; =========================================================

1DD7EC:  PUSH            {R4,R5,R11,LR}
1DD7F0:  ADD             R11, SP, #8
1DD7F4:  MOV             R5, R0
1DD7F8:  ORR             R0, R1, #2
1DD7FC:  CMP             R0, #3
1DD800:  BNE             loc_1DD814
1DD804:  LDR             R2, [R2]
1DD808:  MOV             R0, R5
1DD80C:  POP             {R4,R5,R11,LR}
1DD810:  B               j_alAuxiliaryEffectSloti
1DD814:  BL              j_GetContextRef
1DD818:  MOV             R4, R0
1DD81C:  CMP             R4, #0
1DD820:  POPEQ           {R4,R5,R11,PC}
1DD824:  ADD             R0, R4, #0xA0
1DD828:  MOV             R1, R5
1DD82C:  BL              j_LookupUIntMapKey
1DD830:  CMP             R0, #0
1DD834:  MOV             R0, R4
1DD838:  MOVWEQ          R1, #0xA001
1DD83C:  MOVWNE          R1, #0xA002
1DD840:  BL              j_alSetError
1DD844:  MOV             R0, R4
1DD848:  POP             {R4,R5,R11,LR}
1DD84C:  B               j_ALCcontext_DecRef
