; =========================================================
; Game Engine Function: _Z30RtDictSchemaForAllDictionariesP12RtDictSchemaPFP6RtDictS2_PvES3_
; Address            : 0x1ED90C - 0x1ED942
; =========================================================

1ED90C:  PUSH            {R4-R7,LR}
1ED90E:  ADD             R7, SP, #0xC
1ED910:  PUSH.W          {R8}
1ED914:  MOV             R4, R0
1ED916:  MOV             R8, R2
1ED918:  LDR             R0, [R4,#0x10]
1ED91A:  MOV             R5, R1
1ED91C:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED920:  MOV             R6, R0
1ED922:  LDR             R0, [R4,#0x10]
1ED924:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED928:  MOV             R4, R0
1ED92A:  CMP             R6, R4
1ED92C:  BEQ             loc_1ED93A
1ED92E:  LDR.W           R0, [R4],#4
1ED932:  MOV             R1, R8
1ED934:  BLX             R5
1ED936:  CMP             R0, #0
1ED938:  BNE             loc_1ED92A
1ED93A:  MOVS            R0, #1
1ED93C:  POP.W           {R8}
1ED940:  POP             {R4-R7,PC}
