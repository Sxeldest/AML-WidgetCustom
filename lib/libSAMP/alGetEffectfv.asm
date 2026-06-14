; =========================================================
; Game Engine Function: alGetEffectfv
; Address            : 0x1DB544 - 0x1DB5B0
; =========================================================

1DB544:  PUSH            {R4-R7,R11,LR}
1DB548:  ADD             R11, SP, #0x10
1DB54C:  MOV             R5, R2
1DB550:  MOV             R6, R1
1DB554:  MOV             R7, R0
1DB558:  BL              j_GetContextRef
1DB55C:  MOV             R4, R0
1DB560:  CMP             R4, #0
1DB564:  POPEQ           {R4-R7,R11,PC}
1DB568:  LDR             R0, [R4,#0xFC]
1DB56C:  MOV             R1, R7
1DB570:  ADD             R0, R0, #0x60 ; '`'
1DB574:  BL              j_LookupUIntMapKey
1DB578:  CMP             R0, #0
1DB57C:  BEQ             loc_1DB598
1DB580:  LDR             R7, [R0,#0xB0]
1DB584:  MOV             R1, R4
1DB588:  MOV             R2, R6
1DB58C:  MOV             R3, R5
1DB590:  BLX             R7
1DB594:  B               loc_1DB5A4
1DB598:  MOV             R0, R4
1DB59C:  MOVW            R1, #0xA001
1DB5A0:  BL              j_alSetError
1DB5A4:  MOV             R0, R4
1DB5A8:  POP             {R4-R7,R11,LR}
1DB5AC:  B               j_ALCcontext_DecRef
