; =========================================================
; Game Engine Function: _Z17RtDictRemoveEntryP6RtDictPv
; Address            : 0x1ED622 - 0x1ED688
; =========================================================

1ED622:  PUSH            {R4-R7,LR}
1ED624:  ADD             R7, SP, #0xC
1ED626:  PUSH.W          {R8}
1ED62A:  MOV             R8, R0
1ED62C:  MOV             R6, R1
1ED62E:  LDR.W           R0, [R8,#4]
1ED632:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED636:  MOV             R4, R0
1ED638:  LDR.W           R0, [R8,#4]
1ED63C:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED640:  MOV             R5, R0
1ED642:  CMP             R5, R4
1ED644:  BEQ             loc_1ED652
1ED646:  LDR             R0, [R5]
1ED648:  CMP             R0, R6
1ED64A:  BEQ             loc_1ED658
1ED64C:  ADDS            R5, #4
1ED64E:  CMP             R4, R5
1ED650:  BNE             loc_1ED646
1ED652:  MOV.W           R8, #0
1ED656:  B               loc_1ED680
1ED658:  LDR.W           R0, [R8]
1ED65C:  LDR             R1, [R0,#0x1C]
1ED65E:  MOV             R0, R6
1ED660:  BLX             R1
1ED662:  LDR.W           R4, [R8,#4]
1ED666:  MOV             R0, R4
1ED668:  BLX             j__Z21_rwSListGetNumEntriesPK7RwSList; _rwSListGetNumEntries(RwSList const*)
1ED66C:  MOV             R1, R0
1ED66E:  MOV             R0, R4
1ED670:  BLX             j__Z16_rwSListGetEntryP7RwSListi; _rwSListGetEntry(RwSList *,int)
1ED674:  STR             R0, [R5]
1ED676:  MOVS            R1, #1
1ED678:  LDR.W           R0, [R8,#4]
1ED67C:  BLX             j__Z25_rwSListDestroyEndEntriesP7RwSListi; _rwSListDestroyEndEntries(RwSList *,int)
1ED680:  MOV             R0, R8
1ED682:  POP.W           {R8}
1ED686:  POP             {R4-R7,PC}
