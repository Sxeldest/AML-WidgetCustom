; =========================================================
; Game Engine Function: alIsAuxiliaryEffectSlot
; Address            : 0x1DD464 - 0x1DD4B4
; =========================================================

1DD464:  PUSH            {R4,R5,R11,LR}
1DD468:  ADD             R11, SP, #8
1DD46C:  MOV             R4, R0
1DD470:  BL              j_GetContextRef
1DD474:  MOV             R5, R0
1DD478:  CMP             R5, #0
1DD47C:  BEQ             loc_1DD4A8
1DD480:  ADD             R0, R5, #0xA0
1DD484:  MOV             R1, R4
1DD488:  BL              j_LookupUIntMapKey
1DD48C:  MOV             R4, R0
1DD490:  MOV             R0, R5
1DD494:  BL              j_ALCcontext_DecRef
1DD498:  CMP             R4, #0
1DD49C:  MOVWNE          R4, #1
1DD4A0:  MOV             R0, R4
1DD4A4:  POP             {R4,R5,R11,PC}
1DD4A8:  MOV             R4, #0
1DD4AC:  MOV             R0, R4
1DD4B0:  POP             {R4,R5,R11,PC}
