; =========================================================
; Game Engine Function: alDeleteBuffers
; Address            : 0x1CE4B4 - 0x1CE59C
; =========================================================

1CE4B4:  PUSH            {R4-R8,R10,R11,LR}
1CE4B8:  ADD             R11, SP, #0x18
1CE4BC:  MOV             R5, R1
1CE4C0:  MOV             R6, R0
1CE4C4:  BL              j_GetContextRef
1CE4C8:  MOV             R8, R0
1CE4CC:  CMP             R8, #0
1CE4D0:  BEQ             locret_1CE568
1CE4D4:  CMP             R6, #0
1CE4D8:  BLT             loc_1CE56C
1CE4DC:  BEQ             loc_1CE590
1CE4E0:  LDR             R0, [R8,#0xFC]
1CE4E4:  MOV             R4, #0
1CE4E8:  ADD             R7, R0, #0x3C ; '<'
1CE4EC:  LDR             R1, [R5,R4,LSL#2]
1CE4F0:  CMP             R1, #0
1CE4F4:  BEQ             loc_1CE514
1CE4F8:  MOV             R0, R7
1CE4FC:  BL              j_LookupUIntMapKey
1CE500:  CMP             R0, #0
1CE504:  BEQ             loc_1CE578
1CE508:  LDR             R0, [R0,#0x2C]
1CE50C:  CMP             R0, #0
1CE510:  BNE             loc_1CE584
1CE514:  ADD             R4, R4, #1
1CE518:  CMP             R4, R6
1CE51C:  BLT             loc_1CE4EC
1CE520:  CMP             R6, #1
1CE524:  BLT             loc_1CE590
1CE528:  LDR             R1, [R5]
1CE52C:  MOV             R0, R7
1CE530:  BL              j_RemoveUIntMapKey
1CE534:  MOV             R4, R0
1CE538:  CMP             R4, #0
1CE53C:  BEQ             loc_1CE558
1CE540:  LDR             R0, [R4,#0x44]
1CE544:  BL              j_FreeThunkEntry
1CE548:  LDR             R0, [R4]; ptr
1CE54C:  BL              free
1CE550:  MOV             R0, R4; ptr
1CE554:  BL              free
1CE558:  SUBS            R6, R6, #1
1CE55C:  ADD             R5, R5, #4
1CE560:  BNE             loc_1CE528
1CE564:  B               loc_1CE590
1CE568:  POP             {R4-R8,R10,R11,PC}
1CE56C:  MOV             R0, R8
1CE570:  MOVW            R1, #0xA003
1CE574:  B               loc_1CE58C
1CE578:  MOV             R0, R8
1CE57C:  MOVW            R1, #0xA001
1CE580:  B               loc_1CE58C
1CE584:  MOV             R0, R8
1CE588:  MOVW            R1, #0xA004
1CE58C:  BL              j_alSetError
1CE590:  MOV             R0, R8
1CE594:  POP             {R4-R8,R10,R11,LR}
1CE598:  B               j_ALCcontext_DecRef
