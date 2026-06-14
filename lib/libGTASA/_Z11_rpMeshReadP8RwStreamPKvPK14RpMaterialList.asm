; =========================================================
; Game Engine Function: _Z11_rpMeshReadP8RwStreamPKvPK14RpMaterialList
; Address            : 0x2183DC - 0x218624
; =========================================================

2183DC:  PUSH            {R4-R7,LR}
2183DE:  ADD             R7, SP, #0xC
2183E0:  PUSH.W          {R8-R11}
2183E4:  SUB.W           SP, SP, #0x430
2183E8:  SUB             SP, SP, #4
2183EA:  MOV             R6, R1
2183EC:  SUB.W           R1, R7, #-var_28
2183F0:  MOV             R5, R2
2183F2:  MOVS            R2, #0xC
2183F4:  STR             R0, [SP,#0x450+var_434]
2183F6:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2183FA:  CMP             R0, #0
2183FC:  BEQ.W           loc_21860E
218400:  LDR.W           R0, [R7,#var_24]
218404:  MOVS            R1, #0x14
218406:  LDRB            R2, [R6]
218408:  ADD.W           R0, R0, R0,LSL#2
21840C:  CMP             R2, #8
21840E:  ADD.W           R0, R1, R0,LSL#2
218412:  BNE             loc_21841A
218414:  LDRB            R1, [R6,#0xB]
218416:  LSLS            R1, R1, #0x1F
218418:  BNE             loc_218426
21841A:  LDR.W           R1, [R7,#var_20]
21841E:  ADD.W           R0, R0, R1,LSL#1
218422:  MOVS            R1, #0
218424:  B               loc_218428
218426:  MOVS            R1, #1
218428:  STR             R1, [SP,#0x450+var_438]
21842A:  LDR             R1, =(RwEngineInstance_ptr - 0x218430)
21842C:  ADD             R1, PC; RwEngineInstance_ptr
21842E:  LDR             R1, [R1]; RwEngineInstance
218430:  LDR             R1, [R1]
218432:  LDR.W           R1, [R1,#0x12C]
218436:  BLX             R1
218438:  MOV             R4, R0
21843A:  MOVS            R0, #0
21843C:  CMP             R4, #0
21843E:  STR             R0, [R4,#0x10]
218440:  BEQ.W           loc_218610
218444:  LDR             R0, [SP,#0x450+var_438]
218446:  ADD.W           R1, R4, #0x14
21844A:  STR             R1, [SP,#0x450+var_440]
21844C:  CMP             R0, #1
21844E:  BNE             loc_21845C
218450:  LDR.W           R0, [R7,#var_20]
218454:  LSLS            R0, R0, #1; byte_count
218456:  BLX             malloc
21845A:  B               loc_218464
21845C:  LDR.W           R0, [R7,#var_24]
218460:  ADD.W           R0, R1, R0,LSL#4
218464:  LDR             R1, =(RwEngineInstance_ptr - 0x218470)
218466:  MOVS            R3, #0
218468:  STR             R0, [SP,#0x450+var_444]
21846A:  LDR             R0, =(meshModule_ptr - 0x218476)
21846C:  ADD             R1, PC; RwEngineInstance_ptr
21846E:  LDR.W           R2, [R7,#var_28]
218472:  ADD             R0, PC; meshModule_ptr
218474:  STR             R2, [R4]
218476:  LDR             R1, [R1]; RwEngineInstance
218478:  LDR             R0, [R0]; meshModule
21847A:  LDR.W           R2, [R7,#var_24]
21847E:  STRH            R2, [R4,#4]
218480:  LDR             R0, [R0]
218482:  LDR             R1, [R1]
218484:  LDRH            R2, [R1,R0]
218486:  STRH            R2, [R4,#6]
218488:  LDR.W           R2, [R7,#var_20]
21848C:  STRD.W          R2, R3, [R4,#8]
218490:  LDRH            R2, [R1,R0]
218492:  ADDS            R2, #1
218494:  STRH            R2, [R1,R0]
218496:  STR             R4, [SP,#0x450+var_448]
218498:  LDRH.W          R8, [R4,#4]
21849C:  CMP.W           R8, #0
2184A0:  BEQ.W           loc_2185CE
2184A4:  MOVS            R0, #0
2184A6:  SUB.W           R4, R7, #-var_30
2184AA:  STR             R0, [SP,#0x450+var_43C]
2184AC:  LDRD.W          R10, R11, [SP,#0x450+var_444]
2184B0:  STRD.W          R6, R5, [SP,#0x450+var_450]
2184B4:  LDR             R0, [SP,#0x450+var_434]
2184B6:  MOV             R1, R4
2184B8:  MOVS            R2, #8
2184BA:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2184BE:  CMP             R0, #0
2184C0:  BEQ.W           loc_21860E
2184C4:  LDR.W           R0, [R7,#var_30]
2184C8:  STR.W           R0, [R11,#4]
2184CC:  MOV             R0, R5
2184CE:  LDR.W           R1, [R7,#var_2C]
2184D2:  BLX             j__Z26_rpMaterialListGetMaterialPK14RpMaterialListi; _rpMaterialListGetMaterial(RpMaterialList const*,int)
2184D6:  STR.W           R0, [R11,#8]
2184DA:  LDR             R0, [SP,#0x450+var_438]
2184DC:  CMP             R0, #1
2184DE:  BNE             loc_21850C
2184E0:  LDR.W           R9, [SP,#0x450+var_43C]
2184E4:  MOVS            R1, #0
2184E6:  STR.W           R9, [R11,#0xC]
2184EA:  LDR.W           R0, [R11,#4]
2184EE:  STR.W           R1, [R11]
2184F2:  MOV             R1, R10; void *
2184F4:  LSLS            R2, R0, #1; size_t
2184F6:  LDR             R0, [SP,#0x450+var_434]; int
2184F8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2184FC:  LDR.W           R0, [R11,#4]
218500:  ADD             R9, R0
218502:  STR.W           R9, [SP,#0x450+var_43C]
218506:  ADD.W           R10, R10, R0,LSL#1
21850A:  B               loc_2185C2
21850C:  MOVS            R0, #0
21850E:  STR.W           R0, [R11,#0xC]
218512:  STR.W           R10, [R11]
218516:  LDRB            R0, [R6]
218518:  CMP             R0, #8
21851A:  BEQ             loc_218528
21851C:  CMP             R0, #7
21851E:  ITT EQ
218520:  LDRBEQ          R0, [R6,#0xB]
218522:  MOVSEQ.W        R0, R0,LSL#31
218526:  BNE             loc_2185C2
218528:  LDR.W           R5, [R11,#4]
21852C:  CMP             R5, #0
21852E:  BEQ             loc_2185BE
218530:  LDR             R6, [SP,#0x450+var_434]
218532:  B               loc_218560
218534:  MOV             LR, R4
218536:  ADD.W           R12, R10, R3,LSL#1
21853A:  ADD.W           R0, R0, R3,LSL#2
21853E:  SUB.W           R1, R9, R3
218542:  ADD             R4, SP, #0x450+var_430
218544:  MOV             R2, R3
218546:  VLD1.32         {D16-D17}, [R4]!
21854A:  SUBS            R2, #4
21854C:  VMOVN.I32       D16, Q8
218550:  VST1.16         {D16}, [R10]!
218554:  BNE             loc_218546
218556:  CMP             R9, R3
218558:  MOV             R10, R12
21855A:  MOV             R4, LR
21855C:  BNE             loc_2185AE
21855E:  B               loc_2185BA
218560:  CMP.W           R5, #0x100
218564:  MOV             R9, R5
218566:  IT CS
218568:  MOVCS.W         R9, #0x100
21856C:  ADD             R1, SP, #0x450+var_430
21856E:  MOV.W           R2, R9,LSL#2
218572:  MOV             R0, R6
218574:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
218578:  CMP             R0, #0
21857A:  BEQ             loc_21860E
21857C:  SUB.W           R5, R5, R9
218580:  CMP.W           R9, #3
218584:  BHI             loc_21858A
218586:  ADD             R0, SP, #0x450+var_430
218588:  B               loc_2185AC
21858A:  ANDS.W          R3, R9, #0x1FC
21858E:  ADD             R0, SP, #0x450+var_430
218590:  BEQ             loc_2185AC
218592:  ADD.W           R1, R10, R9,LSL#1
218596:  ADD.W           R2, R0, R9,LSL#2
21859A:  CMP             R0, R1
21859C:  MOV.W           R1, #0
2185A0:  IT CC
2185A2:  MOVCC           R1, #1
2185A4:  CMP             R10, R2
2185A6:  BCS             loc_218534
2185A8:  CMP             R1, #0
2185AA:  BEQ             loc_218534
2185AC:  MOV             R1, R9
2185AE:  LDR.W           R2, [R0],#4
2185B2:  SUBS            R1, #1
2185B4:  STRH.W          R2, [R10],#2
2185B8:  BNE             loc_2185AE
2185BA:  CMP             R5, #0
2185BC:  BNE             loc_218560
2185BE:  LDRD.W          R6, R5, [SP,#0x450+var_450]
2185C2:  SUBS.W          R8, R8, #1
2185C6:  ADD.W           R11, R11, #0x10
2185CA:  BNE.W           loc_2184B4
2185CE:  LDR             R0, [SP,#0x450+var_438]
2185D0:  LDR             R4, [SP,#0x450+var_448]
2185D2:  CMP             R0, #1
2185D4:  BNE             loc_21861C
2185D6:  LDR             R0, =(_Z10MeshSorterPKvS0__ptr - 0x2185E0)
2185D8:  MOVS            R2, #0x10; size_t
2185DA:  LDRH            R1, [R4,#4]; size_t
2185DC:  ADD             R0, PC; _Z10MeshSorterPKvS0__ptr
2185DE:  LDR             R3, [R0]; MeshSorter(void const*,void const*) ; int (*)(const void *, const void *)
2185E0:  LDR             R0, [SP,#0x450+var_440]; void *
2185E2:  BLX             qsort
2185E6:  BLX             j__Z15emu_ArraysResetv; emu_ArraysReset(void)
2185EA:  LDR             R5, [SP,#0x450+var_444]
2185EC:  MOVW            R1, #0x1403; unsigned int
2185F0:  LDR.W           R2, [R7,#var_20]; unsigned int
2185F4:  MOV             R0, R5; void *
2185F6:  BLX             j__Z17emu_ArraysIndicesPvjj; emu_ArraysIndices(void *,uint,uint)
2185FA:  MOVS            R0, #0; unsigned __int8
2185FC:  MOVS            R1, #0; unsigned __int8
2185FE:  BLX             j__Z15emu_ArraysStorehh; emu_ArraysStore(uchar,uchar)
218602:  STR             R0, [R4,#0x10]
218604:  MOV             R0, R5; p
218606:  BLX             free
21860A:  MOV             R0, R4
21860C:  B               loc_218610
21860E:  MOVS            R0, #0
218610:  ADD.W           SP, SP, #0x430
218614:  ADD             SP, SP, #4
218616:  POP.W           {R8-R11}
21861A:  POP             {R4-R7,PC}
21861C:  MOVS            R0, #0
21861E:  STR             R0, [R4,#0x10]
218620:  MOV             R0, R4
218622:  B               loc_218610
