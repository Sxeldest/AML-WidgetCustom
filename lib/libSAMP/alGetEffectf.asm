; =========================================================
; Game Engine Function: alGetEffectf
; Address            : 0x1DB4D8 - 0x1DB544
; =========================================================

1DB4D8:  PUSH            {R4-R7,R11,LR}
1DB4DC:  ADD             R11, SP, #0x10
1DB4E0:  MOV             R5, R2
1DB4E4:  MOV             R6, R1
1DB4E8:  MOV             R7, R0
1DB4EC:  BL              j_GetContextRef
1DB4F0:  MOV             R4, R0
1DB4F4:  CMP             R4, #0
1DB4F8:  POPEQ           {R4-R7,R11,PC}
1DB4FC:  LDR             R0, [R4,#0xFC]
1DB500:  MOV             R1, R7
1DB504:  ADD             R0, R0, #0x60 ; '`'
1DB508:  BL              j_LookupUIntMapKey
1DB50C:  CMP             R0, #0
1DB510:  BEQ             loc_1DB52C
1DB514:  LDR             R7, [R0,#0xAC]
1DB518:  MOV             R1, R4
1DB51C:  MOV             R2, R6
1DB520:  MOV             R3, R5
1DB524:  BLX             R7
1DB528:  B               loc_1DB538
1DB52C:  MOV             R0, R4
1DB530:  MOVW            R1, #0xA001
1DB534:  BL              j_alSetError
1DB538:  MOV             R0, R4
1DB53C:  POP             {R4-R7,R11,LR}
1DB540:  B               j_ALCcontext_DecRef
