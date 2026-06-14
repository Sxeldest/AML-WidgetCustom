; =========================================================
; Game Engine Function: _Z15_rtDictDestructP6RtDict
; Address            : 0x1ED52C - 0x1ED566
; =========================================================

1ED52C:  PUSH            {R4-R7,LR}
1ED52E:  ADD             R7, SP, #0xC
1ED530:  PUSH.W          {R11}
1ED534:  MOV             R4, R0
1ED536:  LDR             R0, [R4,#4]
1ED538:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED53C:  MOV             R5, R0
1ED53E:  LDR             R0, [R4,#4]
1ED540:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED544:  MOV             R6, R0
1ED546:  CMP             R6, R5
1ED548:  BEQ             loc_1ED558
1ED54A:  LDR             R1, [R4]
1ED54C:  LDR.W           R0, [R6],#4
1ED550:  LDR             R1, [R1,#0x1C]
1ED552:  BLX             R1
1ED554:  CMP             R5, R6
1ED556:  BNE             loc_1ED54A
1ED558:  LDR             R0, [R4,#4]
1ED55A:  BLX             j__Z15_rwSListDestroyP7RwSList; _rwSListDestroy(RwSList *)
1ED55E:  MOVS            R0, #1
1ED560:  POP.W           {R11}
1ED564:  POP             {R4-R7,PC}
