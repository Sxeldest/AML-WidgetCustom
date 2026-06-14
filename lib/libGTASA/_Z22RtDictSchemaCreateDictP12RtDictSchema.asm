; =========================================================
; Game Engine Function: _Z22RtDictSchemaCreateDictP12RtDictSchema
; Address            : 0x1ED3F0 - 0x1ED46A
; =========================================================

1ED3F0:  PUSH            {R4,R5,R7,LR}
1ED3F2:  ADD             R7, SP, #8
1ED3F4:  SUB             SP, SP, #8
1ED3F6:  MOV             R5, R0
1ED3F8:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED3FE)
1ED3FA:  ADD             R0, PC; RwEngineInstance_ptr
1ED3FC:  LDR             R0, [R0]; RwEngineInstance
1ED3FE:  LDR             R0, [R0]
1ED400:  LDR.W           R1, [R0,#0x12C]
1ED404:  MOVS            R0, #8
1ED406:  BLX             R1
1ED408:  MOV             R4, R0
1ED40A:  CBZ             R4, loc_1ED432
1ED40C:  LDR             R0, [R5,#4]
1ED40E:  ORR.W           R1, R0, #0x30000; unsigned int
1ED412:  MOVS            R0, #4; int
1ED414:  BLX             j__Z14_rwSListCreateij; _rwSListCreate(int,uint)
1ED418:  CMP             R0, #0
1ED41A:  STR             R0, [R4,#4]
1ED41C:  BEQ             loc_1ED452
1ED41E:  STR             R5, [R4]
1ED420:  LDR             R1, [R5,#4]
1ED422:  LDR             R0, [R5,#0x10]
1ED424:  ORR.W           R1, R1, #0x30000
1ED428:  BLX             j__Z19_rwSListGetNewEntryP7RwSListj; _rwSListGetNewEntry(RwSList *,uint)
1ED42C:  CBZ             R0, loc_1ED44C
1ED42E:  STR             R4, [R0]
1ED430:  B               loc_1ED464
1ED432:  MOVS            R0, #0x13
1ED434:  MOVS            R4, #0
1ED436:  MOVT            R0, #0x8000; int
1ED43A:  MOVS            R1, #8
1ED43C:  STR             R4, [SP,#0x10+var_10]
1ED43E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1ED442:  STR             R0, [SP,#0x10+var_C]
1ED444:  MOV             R0, SP
1ED446:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1ED44A:  B               loc_1ED464
1ED44C:  LDR             R0, [R4,#4]
1ED44E:  BLX             j__Z15_rwSListDestroyP7RwSList; _rwSListDestroy(RwSList *)
1ED452:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED458)
1ED454:  ADD             R0, PC; RwEngineInstance_ptr
1ED456:  LDR             R0, [R0]; RwEngineInstance
1ED458:  LDR             R0, [R0]
1ED45A:  LDR.W           R1, [R0,#0x130]
1ED45E:  MOV             R0, R4
1ED460:  BLX             R1
1ED462:  MOVS            R4, #0
1ED464:  MOV             R0, R4
1ED466:  ADD             SP, SP, #8
1ED468:  POP             {R4,R5,R7,PC}
