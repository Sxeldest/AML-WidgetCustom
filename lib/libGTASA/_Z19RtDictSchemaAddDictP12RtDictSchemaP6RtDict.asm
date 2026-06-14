; =========================================================
; Game Engine Function: _Z19RtDictSchemaAddDictP12RtDictSchemaP6RtDict
; Address            : 0x1ED4B2 - 0x1ED4D2
; =========================================================

1ED4B2:  PUSH            {R4,R5,R7,LR}
1ED4B4:  ADD             R7, SP, #8
1ED4B6:  MOV             R4, R0
1ED4B8:  MOV             R5, R1
1ED4BA:  LDR             R1, [R4,#4]
1ED4BC:  LDR             R0, [R4,#0x10]
1ED4BE:  ORR.W           R1, R1, #0x30000
1ED4C2:  BLX             j__Z19_rwSListGetNewEntryP7RwSListj; _rwSListGetNewEntry(RwSList *,uint)
1ED4C6:  CMP             R0, #0
1ED4C8:  ITE NE
1ED4CA:  STRNE           R5, [R0]
1ED4CC:  MOVEQ           R4, #0
1ED4CE:  MOV             R0, R4
1ED4D0:  POP             {R4,R5,R7,PC}
