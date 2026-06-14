; =========================================================
; Game Engine Function: _Z20RwEngineSetSubSystemi
; Address            : 0x1D7540 - 0x1D7586
; =========================================================

1D7540:  PUSH            {R4,R5,R7,LR}
1D7542:  ADD             R7, SP, #8
1D7544:  SUB             SP, SP, #8
1D7546:  MOV             R5, R0
1D7548:  LDR             R0, =(RwEngineInstance_ptr - 0x1D7552)
1D754A:  MOVS            R1, #0
1D754C:  MOVS            R2, #0
1D754E:  ADD             R0, PC; RwEngineInstance_ptr
1D7550:  MOV             R3, R5
1D7552:  LDR             R0, [R0]; RwEngineInstance
1D7554:  LDR             R0, [R0]
1D7556:  LDR             R4, [R0,#0x14]
1D7558:  MOVS            R0, #0x10
1D755A:  BLX             R4
1D755C:  MOV             R4, R0
1D755E:  CBNZ            R4, loc_1D757A
1D7560:  CBZ             R5, loc_1D7578
1D7562:  MOVS            R4, #0
1D7564:  MOVS            R0, #0x18; int
1D7566:  MOVS            R1, #0x10
1D7568:  STR             R4, [SP,#0x10+var_10]
1D756A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D756E:  STR             R0, [SP,#0x10+var_C]
1D7570:  MOV             R0, SP
1D7572:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D7576:  B               loc_1D757A
1D7578:  MOVS            R4, #1
1D757A:  CMP             R4, #0
1D757C:  IT NE
1D757E:  MOVNE           R4, #1
1D7580:  MOV             R0, R4
1D7582:  ADD             SP, SP, #8
1D7584:  POP             {R4,R5,R7,PC}
