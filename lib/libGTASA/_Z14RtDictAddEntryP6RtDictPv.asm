; =========================================================
; Game Engine Function: _Z14RtDictAddEntryP6RtDictPv
; Address            : 0x1ED566 - 0x1ED58A
; =========================================================

1ED566:  PUSH            {R4,R5,R7,LR}
1ED568:  ADD             R7, SP, #8
1ED56A:  MOV             R5, R0
1ED56C:  MOV             R4, R1
1ED56E:  LDRD.W          R1, R0, [R5]
1ED572:  LDR             R1, [R1,#4]
1ED574:  ORR.W           R1, R1, #0x30000
1ED578:  BLX             j__Z19_rwSListGetNewEntryP7RwSListj; _rwSListGetNewEntry(RwSList *,uint)
1ED57C:  STR             R4, [R0]
1ED57E:  LDR             R0, [R5]
1ED580:  LDR             R1, [R0,#0x18]
1ED582:  MOV             R0, R4
1ED584:  BLX             R1
1ED586:  MOV             R0, R5
1ED588:  POP             {R4,R5,R7,PC}
