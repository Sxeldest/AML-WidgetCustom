; =========================================================
; Game Engine Function: alSourcePlayv
; Address            : 0x1CD56C - 0x1CD6C4
; =========================================================

1CD56C:  PUSH            {R4-R8,R10,R11,LR}
1CD570:  ADD             R11, SP, #0x18
1CD574:  MOV             R5, R1
1CD578:  MOV             R6, R0
1CD57C:  BL              j_GetContextRef
1CD580:  MOV             R4, R0
1CD584:  CMP             R4, #0
1CD588:  BEQ             locret_1CD5B8
1CD58C:  CMP             R6, #0
1CD590:  BLT             loc_1CD5A0
1CD594:  BEQ             loc_1CD5BC
1CD598:  CMP             R5, #0
1CD59C:  BNE             loc_1CD5BC
1CD5A0:  MOV             R0, R4
1CD5A4:  MOVW            R1, #0xA003
1CD5A8:  BL              j_alSetError
1CD5AC:  MOV             R0, R4
1CD5B0:  POP             {R4-R8,R10,R11,LR}
1CD5B4:  B               j_ALCcontext_DecRef
1CD5B8:  POP             {R4-R8,R10,R11,PC}
1CD5BC:  CMP             R6, #1
1CD5C0:  BLT             loc_1CD5EC
1CD5C4:  ADD             R8, R4, #0x7C ; '|'
1CD5C8:  MOV             R7, #0
1CD5CC:  LDR             R1, [R5,R7,LSL#2]
1CD5D0:  MOV             R0, R8
1CD5D4:  BL              j_LookupUIntMapKey
1CD5D8:  CMP             R0, #0
1CD5DC:  BEQ             loc_1CD6A0
1CD5E0:  ADD             R7, R7, #1
1CD5E4:  CMP             R7, R6
1CD5E8:  BLT             loc_1CD5CC
1CD5EC:  LDR             R0, [R4,#0xFC]
1CD5F0:  ADD             R0, R0, #8; mutex
1CD5F4:  BL              j_EnterCriticalSection
1CD5F8:  LDR             R0, [R4,#0xE8]
1CD5FC:  LDR             R1, [R4,#0xEC]
1CD600:  SUB             R0, R1, R0
1CD604:  CMP             R0, R6
1CD608:  BGE             loc_1CD648
1CD60C:  MOV             R7, R1,LSL#1
1CD610:  CMP             R7, #1
1CD614:  BLT             loc_1CD6AC
1CD618:  LDR             R0, [R4,#0xE4]; ptr
1CD61C:  MOV             R1, R1,LSL#3; size
1CD620:  BL              realloc
1CD624:  CMP             R0, #0
1CD628:  BEQ             loc_1CD6AC
1CD62C:  LDR             R1, [R4,#0xE8]
1CD630:  STR             R7, [R4,#0xEC]
1CD634:  STR             R0, [R4,#0xE4]
1CD638:  SUB             R0, R7, R1
1CD63C:  CMP             R0, R6
1CD640:  MOV             R1, R7
1CD644:  BLT             loc_1CD60C
1CD648:  CMP             R6, #1
1CD64C:  BLT             loc_1CD690
1CD650:  ADD             R7, R4, #0x7C ; '|'
1CD654:  MOVW            R8, #0x1012
1CD658:  LDR             R1, [R5]
1CD65C:  MOV             R0, R7
1CD660:  BL              j_LookupUIntMapKey
1CD664:  LDR             R1, [R4,#0xE0]
1CD668:  CMP             R1, #0
1CD66C:  BEQ             loc_1CD678
1CD670:  STR             R8, [R0,#0x60]
1CD674:  B               loc_1CD684
1CD678:  MOV             R1, R4
1CD67C:  MOVW            R2, #0x1012
1CD680:  BL              j_SetSourceState
1CD684:  SUBS            R6, R6, #1
1CD688:  ADD             R5, R5, #4
1CD68C:  BNE             loc_1CD658
1CD690:  LDR             R0, [R4,#0xFC]
1CD694:  ADD             R0, R0, #8; mutex
1CD698:  BL              j_LeaveCriticalSection
1CD69C:  B               loc_1CD5AC
1CD6A0:  MOV             R0, R4
1CD6A4:  MOVW            R1, #0xA001
1CD6A8:  B               loc_1CD5A8
1CD6AC:  LDR             R0, [R4,#0xFC]
1CD6B0:  ADD             R0, R0, #8; mutex
1CD6B4:  BL              j_LeaveCriticalSection
1CD6B8:  MOV             R0, R4
1CD6BC:  MOVW            R1, #0xA005
1CD6C0:  B               loc_1CD5A8
