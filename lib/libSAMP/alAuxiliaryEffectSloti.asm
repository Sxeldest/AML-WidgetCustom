; =========================================================
; Game Engine Function: alAuxiliaryEffectSloti
; Address            : 0x1DD4B4 - 0x1DD588
; =========================================================

1DD4B4:  PUSH            {R4-R8,R10,R11,LR}
1DD4B8:  ADD             R11, SP, #0x18
1DD4BC:  MOV             R5, R2
1DD4C0:  MOV             R7, R1
1DD4C4:  MOV             R6, R0
1DD4C8:  BL              j_GetContextRef
1DD4CC:  MOV             R4, R0
1DD4D0:  CMP             R4, #0
1DD4D4:  BEQ             locret_1DD528
1DD4D8:  ADD             R0, R4, #0xA0
1DD4DC:  MOV             R1, R6
1DD4E0:  LDR             R8, [R4,#0xFC]
1DD4E4:  BL              j_LookupUIntMapKey
1DD4E8:  MOV             R6, R0
1DD4EC:  CMP             R6, #0
1DD4F0:  BEQ             loc_1DD52C
1DD4F4:  CMP             R7, #3
1DD4F8:  BEQ             loc_1DD538
1DD4FC:  CMP             R7, #1
1DD500:  BNE             loc_1DD548
1DD504:  CMP             R5, #0
1DD508:  BEQ             loc_1DD564
1DD50C:  ADD             R0, R8, #0x60 ; '`'
1DD510:  MOV             R1, R5
1DD514:  BL              j_LookupUIntMapKey
1DD518:  MOV             R2, R0
1DD51C:  CMP             R2, #0
1DD520:  BNE             loc_1DD568
1DD524:  B               loc_1DD554
1DD528:  POP             {R4-R8,R10,R11,PC}
1DD52C:  MOV             R0, R4
1DD530:  MOVW            R1, #0xA001
1DD534:  B               loc_1DD55C
1DD538:  CMP             R5, #1
1DD53C:  BHI             loc_1DD554
1DD540:  STRB            R5, [R6,#0xBC]
1DD544:  B               loc_1DD574
1DD548:  MOV             R0, R4
1DD54C:  MOVW            R1, #0xA002
1DD550:  B               loc_1DD55C
1DD554:  MOV             R0, R4
1DD558:  MOVW            R1, #0xA003
1DD55C:  BL              j_alSetError
1DD560:  B               loc_1DD57C
1DD564:  MOV             R2, #0
1DD568:  MOV             R0, R4
1DD56C:  MOV             R1, R6
1DD570:  BL              j_InitializeEffect
1DD574:  MOV             R0, #1
1DD578:  STR             R0, [R4,#0xC8]
1DD57C:  MOV             R0, R4
1DD580:  POP             {R4-R8,R10,R11,LR}
1DD584:  B               j_ALCcontext_DecRef
