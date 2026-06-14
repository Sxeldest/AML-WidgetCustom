; =========================================================
; Game Engine Function: _ZN9CPathFind16LoadPathFindDataEP8RwStreami
; Address            : 0x315348 - 0x315590
; =========================================================

315348:  PUSH            {R4-R7,LR}
31534A:  ADD             R7, SP, #0xC
31534C:  PUSH.W          {R8-R11}
315350:  SUB             SP, SP, #0x24; float
315352:  MOV             R9, R2
315354:  MOV             R6, R1
315356:  ADD.W           R11, R0, R9,LSL#2
31535A:  STR             R0, [SP,#0x40+var_20]
31535C:  ADDW            R8, R11, #0xFE4
315360:  MOV             R0, R6
315362:  MOVS            R2, #4
315364:  MOV             R1, R8
315366:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
31536A:  MOVW            R0, #0x1104
31536E:  ADD.W           R1, R11, R0
315372:  MOV             R0, R6
315374:  MOVS            R2, #4
315376:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
31537A:  MOVW            R0, #0x1224
31537E:  ADD.W           R1, R11, R0
315382:  MOV             R0, R6
315384:  MOVS            R2, #4
315386:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
31538A:  MOVW            R0, #0x1344
31538E:  ADD.W           R4, R11, R0
315392:  MOV             R0, R6
315394:  MOVS            R2, #4
315396:  MOV             R1, R4
315398:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
31539C:  MOVW            R0, #0x1464
3153A0:  ADD.W           R5, R11, R0
3153A4:  MOV             R0, R6
3153A6:  MOVS            R2, #4
3153A8:  MOV             R1, R5
3153AA:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
3153AE:  LDR.W           R0, [R11,#0xFE4]
3153B2:  CBZ             R0, loc_3153D6
3153B4:  RSB.W           R0, R0, R0,LSL#3
3153B8:  LSLS            R0, R0, #2; byte_count
3153BA:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3153BE:  MOV             R1, R0; void *
3153C0:  STR.W           R1, [R11,#0x804]
3153C4:  LDR.W           R0, [R8]
3153C8:  RSB.W           R0, R0, R0,LSL#3
3153CC:  LSLS            R2, R0, #2; size_t
3153CE:  MOV             R0, R6; int
3153D0:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
3153D4:  B               loc_3153E0
3153D6:  MOVS            R0, #0x1C; byte_count
3153D8:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3153DC:  STR.W           R0, [R11,#0x804]
3153E0:  LDR             R0, [R4]
3153E2:  CBZ             R0, loc_315404
3153E4:  RSB.W           R0, R0, R0,LSL#3
3153E8:  LSLS            R0, R0, #1; byte_count
3153EA:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3153EE:  MOV             R1, R0; void *
3153F0:  STR.W           R1, [R11,#0x924]
3153F4:  LDR             R0, [R4]
3153F6:  RSB.W           R0, R0, R0,LSL#3
3153FA:  LSLS            R2, R0, #1; size_t
3153FC:  MOV             R0, R6; int
3153FE:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
315402:  B               loc_31540A
315404:  MOVS            R0, #0
315406:  STR.W           R0, [R11,#0x924]
31540A:  LDR             R0, [R5]
31540C:  CBZ             R0, loc_315482
31540E:  MOV.W           R4, #0x300
315412:  ADD.W           R0, R4, R0,LSL#2; byte_count
315416:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
31541A:  STR.W           R0, [R11,#0xA44]
31541E:  LDR             R0, [R5]
315420:  LSLS            R0, R0, #1; byte_count
315422:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
315426:  STR.W           R0, [R11,#0xDA4]
31542A:  LDR             R0, [R5]
31542C:  ADDS            R0, #0xC0; byte_count
31542E:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
315432:  STR.W           R0, [R11,#0xB64]
315436:  LDR             R0, [R5]
315438:  ADDS            R0, #0xC0; byte_count
31543A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
31543E:  STR.W           R0, [R11,#0xC84]
315442:  LDR             R0, [R5]
315444:  LDR.W           R1, [R11,#0xA44]; void *
315448:  ADD.W           R2, R4, R0,LSL#2; size_t
31544C:  MOV             R0, R6; int
31544E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
315452:  LDR             R0, [R5]
315454:  LDR.W           R1, [R11,#0xDA4]; void *
315458:  LSLS            R2, R0, #1; size_t
31545A:  MOV             R0, R6; int
31545C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
315460:  LDR             R0, [R5]
315462:  LDR.W           R1, [R11,#0xB64]; void *
315466:  ADD.W           R2, R0, #0xC0; size_t
31546A:  MOV             R0, R6; int
31546C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
315470:  LDR             R0, [R5]
315472:  LDR.W           R1, [R11,#0xC84]; void *
315476:  ADD.W           R2, R0, #0xC0; size_t
31547A:  MOV             R0, R6; int
31547C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
315480:  B               loc_315494
315482:  MOVS            R0, #0
315484:  STR.W           R0, [R11,#0xDA4]
315488:  STR.W           R0, [R11,#0xA44]
31548C:  STR.W           R0, [R11,#0xB64]
315490:  STR.W           R0, [R11,#0xC84]
315494:  LDR.W           R0, [R8]
315498:  CMP             R0, #1
31549A:  BLT             loc_3154D4
31549C:  ADDW            R11, R11, #0x804
3154A0:  MOVS            R1, #0
3154A2:  MOVS            R2, #0x18
3154A4:  MOVW            R12, #0xFEFF
3154A8:  MOV.W           LR, #0x100
3154AC:  LDR.W           R4, [R11]
3154B0:  ADDS            R1, #1
3154B2:  ADDS            R6, R4, R2
3154B4:  LDRH            R5, [R4,R2]
3154B6:  LDRB            R3, [R6,#2]
3154B8:  ORR.W           R5, R5, R3,LSL#16
3154BC:  AND.W           R0, R5, R12
3154C0:  AND.W           R5, LR, R5,LSL#3
3154C4:  ORRS            R0, R5
3154C6:  STRH            R0, [R4,R2]
3154C8:  ADDS            R2, #0x1C
3154CA:  STRB            R3, [R6,#2]
3154CC:  LDR.W           R0, [R8]
3154D0:  CMP             R1, R0
3154D2:  BLT             loc_3154AC
3154D4:  LDR             R0, [SP,#0x40+var_20]; this
3154D6:  MOVW            R2, #0x35A8
3154DA:  LDR             R1, [R0,R2]
3154DC:  CMP             R1, #1
3154DE:  BLT             loc_31553C
3154E0:  MOVW            R1, #0x35B8
3154E4:  ADD.W           R11, R0, R2
3154E8:  ADD.W           R10, R0, R1
3154EC:  MOV.W           R8, #0
3154F0:  MOVS            R5, #0
3154F2:  MOVS            R6, #0
3154F4:  ADD.W           R4, R10, R5
3154F8:  LDMDB.W         R4, {R1-R3}; float
3154FC:  VLDR            S0, [R4]
315500:  VLDR            S2, [R4,#4]
315504:  LDRB.W          LR, [R4,#0xC]
315508:  LDRB.W          R12, [R4,#0xD]
31550C:  ADDS            R4, R0, R5
31550E:  ADD.W           R4, R4, #0x35C0
315512:  VLDR            S4, [R4]
315516:  STRD.W          LR, R12, [SP,#0x40+var_34]; bool
31551A:  STRD.W          R9, R8, [SP,#0x40+var_2C]; int
31551E:  VSTR            S0, [SP,#0x40+var_40]
315522:  VSTR            S2, [SP,#0x40+var_3C]
315526:  VSTR            S4, [SP,#0x40+var_38]
31552A:  BLX             j__ZN9CPathFind32SwitchRoadsOffInAreaForOneRegionEffffffbbib; CPathFind::SwitchRoadsOffInAreaForOneRegion(float,float,float,float,float,float,bool,bool,int,bool)
31552E:  LDR             R0, [SP,#0x40+var_20]
315530:  ADDS            R5, #0x1C
315532:  LDR.W           R1, [R11]
315536:  ADDS            R6, #1
315538:  CMP             R6, R1
31553A:  BLT             loc_3154F4
31553C:  VMOV.I8         Q8, #0xFF
315540:  ADD.W           R0, R0, R9,LSL#6
315544:  MOVW            R1, #0x2584
315548:  MOVW            R2, #0x1584
31554C:  ADD             R1, R0
31554E:  ADD             R2, R0
315550:  VST1.32         {D16-D17}, [R1]!
315554:  VST1.32         {D16-D17}, [R2]!
315558:  VST1.32         {D16-D17}, [R1]
31555C:  MOVW            R1, #0x25B4
315560:  ADD             R1, R0
315562:  VST1.32         {D16-D17}, [R2]
315566:  VST1.32         {D16-D17}, [R1]
31556A:  MOVW            R1, #0x15A4
31556E:  ADD             R1, R0
315570:  VST1.32         {D16-D17}, [R1]
315574:  MOVW            R1, #0x25A4
315578:  ADD             R1, R0
31557A:  VST1.32         {D16-D17}, [R1]
31557E:  MOVW            R1, #0x15B4
315582:  ADD             R0, R1
315584:  VST1.32         {D16-D17}, [R0]
315588:  ADD             SP, SP, #0x24 ; '$'
31558A:  POP.W           {R8-R11}
31558E:  POP             {R4-R7,PC}
