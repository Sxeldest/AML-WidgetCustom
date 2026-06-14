; =========================================================
; Game Engine Function: sub_213508
; Address            : 0x213508 - 0x2136BC
; =========================================================

213508:  PUSH            {R4-R7,LR}
21350A:  ADD             R7, SP, #0xC
21350C:  PUSH.W          {R8-R11}
213510:  SUB             SP, SP, #0x2C
213512:  MOV             R10, R3
213514:  MOV             R9, R2
213516:  ADD             R2, SP, #0x48+var_3C
213518:  ADD             R3, SP, #0x48+var_40
21351A:  MOV             R11, R1
21351C:  MOVS            R1, #1
21351E:  MOV             R5, R0
213520:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
213524:  CMP             R0, #0
213526:  BEQ.W           loc_21369A
21352A:  LDR             R0, [SP,#0x48+var_40]
21352C:  MOV             R8, #0x80000004
213534:  MOVW            R1, #0x2004
213538:  SUB.W           R0, R0, #0x34000
21353C:  CMP             R0, R1
21353E:  BCC             loc_213554
213540:  MOVS            R4, #0
213542:  MOV             R0, R8; int
213544:  STR             R4, [SP,#0x48+var_38]
213546:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21354A:  STR             R0, [SP,#0x48+var_34]
21354C:  ADD             R0, SP, #0x48+var_38
21354E:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
213552:  B               loc_21369C
213554:  ADD             R6, SP, #0x48+var_38
213556:  VMOV.I32        Q8, #0
21355A:  LDR             R2, [SP,#0x48+var_3C]; size_t
21355C:  MOVS            R4, #0
21355E:  MOV             R0, R6
213560:  MOV             R1, R6; void *
213562:  VST1.64         {D16-D17}, [R0]!
213566:  STR             R4, [R0]
213568:  MOV             R0, R5; int
21356A:  STR             R4, [SP,#0x48+var_24]
21356C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
213570:  LDR             R1, [SP,#0x48+var_3C]
213572:  CMP             R0, R1
213574:  BNE.W           loc_21369C
213578:  MOV             R0, R6; void *
21357A:  MOVS            R1, #0x18; unsigned int
21357C:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
213580:  ORR.W           R0, R6, #4; void *
213584:  MOVS            R1, #4; unsigned int
213586:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
21358A:  ADD.W           R0, R6, #0x10; void *
21358E:  MOVS            R1, #4; unsigned int
213590:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
213594:  ADD.W           R0, R6, #0x14; void *
213598:  MOVS            R1, #4; unsigned int
21359A:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
21359E:  LDR.W           R4, [R11]
2135A2:  CMP             R4, #0
2135A4:  ADD.W           R0, R4, #0x18
2135A8:  STR.W           R0, [R11]
2135AC:  BEQ             loc_2135C6
2135AE:  LDR             R0, [SP,#0x48+var_38]
2135B0:  STR             R0, [R4]
2135B2:  LDR             R0, [SP,#0x48+var_34]
2135B4:  STR             R0, [R4,#4]
2135B6:  MOVS.W          R0, R10,LSL#1
2135BA:  BMI             loc_2135D6
2135BC:  LDR             R0, [SP,#0x48+var_34]
2135BE:  STR             R0, [R4,#0x10]
2135C0:  VMOV            S0, R0
2135C4:  B               loc_2135DE
2135C6:  ADD.W           R0, R8, #0xF; int
2135CA:  MOVS            R4, #0
2135CC:  MOVS            R1, #0x18
2135CE:  STR             R4, [SP,#0x48+var_48]
2135D0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2135D4:  B               loc_213690
2135D6:  LDR             R0, [SP,#0x48+var_28]
2135D8:  STR             R0, [R4,#0x10]
2135DA:  VLDR            S0, [SP,#0x48+var_24]
2135DE:  VSTR            S0, [R4,#0x14]
2135E2:  ADD             R3, SP, #0x48+var_40
2135E4:  LDR             R0, [SP,#0x48+var_30]
2135E6:  CBZ             R0, loc_213612
2135E8:  MOV             R0, R5; int
2135EA:  MOVS            R1, #9
2135EC:  MOVS            R2, #0
2135EE:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2135F2:  CMP             R0, #0
2135F4:  BEQ             loc_21369A
2135F6:  LDR             R0, [SP,#0x48+var_40]
2135F8:  MOVW            R1, #0x2004
2135FC:  SUB.W           R0, R0, #0x34000
213600:  CMP             R0, R1
213602:  BCS             loc_213686
213604:  MOV             R0, R5
213606:  MOV             R1, R11
213608:  MOV             R2, R9
21360A:  MOV             R3, R10
21360C:  BL              sub_213144
213610:  B               loc_213638
213612:  MOV             R0, R5; int
213614:  MOVS            R1, #0xA
213616:  MOVS            R2, #0
213618:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
21361C:  CBZ             R0, loc_21369A
21361E:  LDR             R0, [SP,#0x48+var_40]
213620:  MOVW            R1, #0x2004
213624:  SUB.W           R0, R0, #0x34000
213628:  CMP             R0, R1
21362A:  BCS             loc_213686
21362C:  MOV             R0, R5
21362E:  MOV             R1, R11
213630:  MOV             R2, R9
213632:  MOV             R3, R10
213634:  BL              sub_213508
213638:  CMP             R0, #0
21363A:  STR             R0, [R4,#8]
21363C:  BEQ             loc_21369A
21363E:  LDR             R0, [SP,#0x48+var_2C]
213640:  ADD             R3, SP, #0x48+var_40
213642:  CBZ             R0, loc_21366C
213644:  MOV             R0, R5; int
213646:  MOVS            R1, #9
213648:  MOVS            R2, #0
21364A:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
21364E:  CBZ             R0, loc_21369A
213650:  LDR             R0, [SP,#0x48+var_40]
213652:  MOVW            R1, #0x2004
213656:  SUB.W           R0, R0, #0x34000
21365A:  CMP             R0, R1
21365C:  BCS             loc_213686
21365E:  MOV             R0, R5
213660:  MOV             R1, R11
213662:  MOV             R2, R9
213664:  MOV             R3, R10
213666:  BL              sub_213144
21366A:  B               loc_2136B2
21366C:  MOV             R0, R5; int
21366E:  MOVS            R1, #0xA
213670:  MOVS            R2, #0
213672:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
213676:  CBZ             R0, loc_21369A
213678:  LDR             R0, [SP,#0x48+var_40]
21367A:  MOVW            R1, #0x2004
21367E:  SUB.W           R0, R0, #0x34000
213682:  CMP             R0, R1
213684:  BCC             loc_2136A6
213686:  MOVS            R4, #0
213688:  MOV             R0, R8; int
21368A:  STR             R4, [SP,#0x48+var_48]
21368C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
213690:  STR             R0, [SP,#0x48+var_44]
213692:  MOV             R0, SP
213694:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
213698:  B               loc_21369C
21369A:  MOVS            R4, #0
21369C:  MOV             R0, R4
21369E:  ADD             SP, SP, #0x2C ; ','
2136A0:  POP.W           {R8-R11}
2136A4:  POP             {R4-R7,PC}
2136A6:  MOV             R0, R5
2136A8:  MOV             R1, R11
2136AA:  MOV             R2, R9
2136AC:  MOV             R3, R10
2136AE:  BL              sub_213508
2136B2:  CMP             R0, #0
2136B4:  STR             R0, [R4,#0xC]
2136B6:  IT EQ
2136B8:  MOVEQ           R4, #0
2136BA:  B               loc_21369C
