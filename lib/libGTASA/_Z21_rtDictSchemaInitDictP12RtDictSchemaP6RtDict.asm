; =========================================================
; Game Engine Function: _Z21_rtDictSchemaInitDictP12RtDictSchemaP6RtDict
; Address            : 0x1ED474 - 0x1ED4B2
; =========================================================

1ED474:  PUSH            {R4,R5,R7,LR}
1ED476:  ADD             R7, SP, #8
1ED478:  MOV             R5, R0
1ED47A:  MOV             R4, R1
1ED47C:  LDR             R0, [R5,#4]
1ED47E:  ORR.W           R1, R0, #0x30000; unsigned int
1ED482:  MOVS            R0, #4; int
1ED484:  BLX             j__Z14_rwSListCreateij; _rwSListCreate(int,uint)
1ED488:  CMP             R0, #0
1ED48A:  STR             R0, [R4,#4]
1ED48C:  BEQ             loc_1ED4AC
1ED48E:  STR             R5, [R4]
1ED490:  LDR             R1, [R5,#4]
1ED492:  LDR             R0, [R5,#0x10]
1ED494:  ORR.W           R1, R1, #0x30000
1ED498:  BLX             j__Z19_rwSListGetNewEntryP7RwSListj; _rwSListGetNewEntry(RwSList *,uint)
1ED49C:  CMP             R0, #0
1ED49E:  ITTT NE
1ED4A0:  STRNE           R4, [R0]
1ED4A2:  MOVNE           R0, R4
1ED4A4:  POPNE           {R4,R5,R7,PC}
1ED4A6:  LDR             R0, [R4,#4]
1ED4A8:  BLX             j__Z15_rwSListDestroyP7RwSList; _rwSListDestroy(RwSList *)
1ED4AC:  MOVS            R4, #0
1ED4AE:  MOV             R0, R4
1ED4B0:  POP             {R4,R5,R7,PC}
