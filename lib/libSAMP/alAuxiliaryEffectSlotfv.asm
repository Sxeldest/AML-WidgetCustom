; =========================================================
; Game Engine Function: alAuxiliaryEffectSlotfv
; Address            : 0x1DD8F0 - 0x1DD954
; =========================================================

1DD8F0:  PUSH            {R4,R5,R11,LR}
1DD8F4:  ADD             R11, SP, #8
1DD8F8:  MOV             R5, R0
1DD8FC:  CMP             R1, #2
1DD900:  BNE             loc_1DD918
1DD904:  LDR             R2, [R2]
1DD908:  MOV             R0, R5
1DD90C:  MOV             R1, #2
1DD910:  POP             {R4,R5,R11,LR}
1DD914:  B               j_alAuxiliaryEffectSlotf
1DD918:  BL              j_GetContextRef
1DD91C:  MOV             R4, R0
1DD920:  CMP             R4, #0
1DD924:  POPEQ           {R4,R5,R11,PC}
1DD928:  ADD             R0, R4, #0xA0
1DD92C:  MOV             R1, R5
1DD930:  BL              j_LookupUIntMapKey
1DD934:  CMP             R0, #0
1DD938:  MOV             R0, R4
1DD93C:  MOVWEQ          R1, #0xA001
1DD940:  MOVWNE          R1, #0xA002
1DD944:  BL              j_alSetError
1DD948:  MOV             R0, R4
1DD94C:  POP             {R4,R5,R11,LR}
1DD950:  B               j_ALCcontext_DecRef
