; =========================================================
; Game Engine Function: _Z20RtDictFindNamedEntryP6RtDictPKc
; Address            : 0x1ED58C - 0x1ED5E2
; =========================================================

1ED58C:  PUSH            {R4-R7,LR}
1ED58E:  ADD             R7, SP, #0xC
1ED590:  PUSH.W          {R8-R11}
1ED594:  SUB             SP, SP, #4
1ED596:  MOV             R4, R0
1ED598:  MOV             R8, R1
1ED59A:  LDRD.W          R1, R0, [R4]
1ED59E:  LDR.W           R9, [R1,#0x20]
1ED5A2:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED5A6:  MOV             R10, R0
1ED5A8:  LDR             R0, [R4,#4]
1ED5AA:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED5AE:  MOV             R6, R0
1ED5B0:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED5B6)
1ED5B2:  ADD             R0, PC; RwEngineInstance_ptr
1ED5B4:  LDR.W           R11, [R0]; RwEngineInstance
1ED5B8:  CMP             R10, R6
1ED5BA:  BEQ             loc_1ED5D6
1ED5BC:  LDR.W           R0, [R11]
1ED5C0:  LDR.W           R4, [R6],#4
1ED5C4:  LDR.W           R5, [R0,#0x110]
1ED5C8:  MOV             R0, R4
1ED5CA:  BLX             R9
1ED5CC:  MOV             R1, R8
1ED5CE:  BLX             R5
1ED5D0:  CMP             R0, #0
1ED5D2:  BNE             loc_1ED5B8
1ED5D4:  B               loc_1ED5D8
1ED5D6:  MOVS            R4, #0
1ED5D8:  MOV             R0, R4
1ED5DA:  ADD             SP, SP, #4
1ED5DC:  POP.W           {R8-R11}
1ED5E0:  POP             {R4-R7,PC}
