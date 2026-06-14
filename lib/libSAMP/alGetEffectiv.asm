; =========================================================
; Game Engine Function: alGetEffectiv
; Address            : 0x1DB46C - 0x1DB4D8
; =========================================================

1DB46C:  PUSH            {R4-R7,R11,LR}
1DB470:  ADD             R11, SP, #0x10
1DB474:  MOV             R5, R2
1DB478:  MOV             R6, R1
1DB47C:  MOV             R7, R0
1DB480:  BL              j_GetContextRef
1DB484:  MOV             R4, R0
1DB488:  CMP             R4, #0
1DB48C:  POPEQ           {R4-R7,R11,PC}
1DB490:  LDR             R0, [R4,#0xFC]
1DB494:  MOV             R1, R7
1DB498:  ADD             R0, R0, #0x60 ; '`'
1DB49C:  BL              j_LookupUIntMapKey
1DB4A0:  CMP             R0, #0
1DB4A4:  BEQ             loc_1DB4C0
1DB4A8:  LDR             R7, [R0,#0xA8]
1DB4AC:  MOV             R1, R4
1DB4B0:  MOV             R2, R6
1DB4B4:  MOV             R3, R5
1DB4B8:  BLX             R7
1DB4BC:  B               loc_1DB4CC
1DB4C0:  MOV             R0, R4
1DB4C4:  MOVW            R1, #0xA001
1DB4C8:  BL              j_alSetError
1DB4CC:  MOV             R0, R4
1DB4D0:  POP             {R4-R7,R11,LR}
1DB4D4:  B               j_ALCcontext_DecRef
