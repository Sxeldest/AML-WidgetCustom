; =========================================================
; Game Engine Function: sub_1C2450
; Address            : 0x1C2450 - 0x1C25D0
; =========================================================

1C2450:  PUSH            {R4-R7,LR}
1C2452:  ADD             R7, SP, #0xC
1C2454:  PUSH.W          {R8-R10}
1C2458:  SUB             SP, SP, #0x10
1C245A:  MOV             R4, R0
1C245C:  LDR             R0, =(RpHAnimAtomicGlobals_ptr - 0x1C2466)
1C245E:  ADD             R1, SP, #0x28+var_20
1C2460:  MOV             R6, R2
1C2462:  ADD             R0, PC; RpHAnimAtomicGlobals_ptr
1C2464:  MOVS            R2, #4
1C2466:  LDR             R0, [R0]; RpHAnimAtomicGlobals
1C2468:  LDR             R5, [R0]
1C246A:  MOV             R0, R4
1C246C:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C2470:  MOV             R1, R0
1C2472:  MOVS            R0, #0
1C2474:  CMP             R1, #0
1C2476:  BEQ.W           loc_1C25C8
1C247A:  LDR             R1, [SP,#0x28+var_20]
1C247C:  CMP.W           R1, #0x100
1C2480:  BNE.W           loc_1C25C8
1C2484:  ADD.W           R10, R6, R5
1C2488:  MOV             R0, R4
1C248A:  MOVS            R2, #4
1C248C:  MOV             R1, R10
1C248E:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C2492:  CMP             R0, #0
1C2494:  BEQ.W           loc_1C25C6
1C2498:  ADD             R1, SP, #0x28+var_1C
1C249A:  MOV             R0, R4
1C249C:  MOVS            R2, #4
1C249E:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C24A2:  CMP             R0, #0
1C24A4:  BEQ.W           loc_1C25C6
1C24A8:  LDR             R0, [SP,#0x28+var_1C]
1C24AA:  CMP             R0, #1
1C24AC:  BLT.W           loc_1C25C2
1C24B0:  ADD             R1, SP, #0x28+var_24
1C24B2:  MOV             R0, R4
1C24B4:  MOVS            R2, #4
1C24B6:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C24BA:  CMP             R0, #0
1C24BC:  BEQ.W           loc_1C25C6
1C24C0:  MOV             R1, SP
1C24C2:  MOV             R0, R4
1C24C4:  MOVS            R2, #4
1C24C6:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C24CA:  CMP             R0, #0
1C24CC:  BEQ             loc_1C25C6
1C24CE:  LDR             R0, =(RwEngineInstance_ptr - 0x1C24D6)
1C24D0:  LDR             R1, =(RpHAnimAtomicGlobals_ptr - 0x1C24D8)
1C24D2:  ADD             R0, PC; RwEngineInstance_ptr
1C24D4:  ADD             R1, PC; RpHAnimAtomicGlobals_ptr
1C24D6:  LDR             R0, [R0]; RwEngineInstance
1C24D8:  LDR             R1, [R1]; RpHAnimAtomicGlobals
1C24DA:  LDR             R2, [R0]
1C24DC:  LDR             R0, [R1,#(dword_6B70A0 - 0x6B709C)]
1C24DE:  LDR.W           R1, [R2,#0x13C]
1C24E2:  BLX             R1
1C24E4:  VMOV.I32        Q8, #0
1C24E8:  MOV             R8, R0
1C24EA:  MOVS            R0, #0
1C24EC:  CMP.W           R8, #0
1C24F0:  STR.W           R0, [R8,#0x20]
1C24F4:  MOV             R0, R8
1C24F6:  VST1.32         {D16-D17}, [R0]!
1C24FA:  VST1.32         {D16-D17}, [R0]
1C24FE:  BEQ             loc_1C25BE
1C2500:  LDR             R1, [SP,#0x28+var_28]; int
1C2502:  LDR             R0, [SP,#0x28+var_1C]; int
1C2504:  BLX             j__Z24RtAnimInterpolatorCreateii; RtAnimInterpolatorCreate(int,int)
1C2508:  STR.W           R0, [R8,#0x20]
1C250C:  LDR             R1, [SP,#0x28+var_24]
1C250E:  STR.W           R1, [R8]
1C2512:  LDR             R0, [SP,#0x28+var_1C]
1C2514:  TST.W           R1, #2
1C2518:  STR.W           R0, [R8,#4]
1C251C:  STRD.W          R6, R8, [R8,#0x14]
1C2520:  BNE             loc_1C2550
1C2522:  LDR             R1, =(RwEngineInstance_ptr - 0x1C252E)
1C2524:  MOVS            R5, #0xF
1C2526:  ORR.W           R0, R5, R0,LSL#6
1C252A:  ADD             R1, PC; RwEngineInstance_ptr
1C252C:  LDR             R1, [R1]; RwEngineInstance
1C252E:  LDR             R1, [R1]
1C2530:  LDR.W           R1, [R1,#0x12C]
1C2534:  BLX             R1
1C2536:  MOV             R6, R0
1C2538:  LDR             R0, [SP,#0x28+var_1C]
1C253A:  ORR.W           R1, R5, R0,LSL#6
1C253E:  MOV             R0, R6
1C2540:  BLX             j___aeabi_memclr8_1
1C2544:  ADD.W           R1, R6, #0xF
1C2548:  LDR             R0, [SP,#0x28+var_1C]
1C254A:  BIC.W           R1, R1, #0xF
1C254E:  B               loc_1C2554
1C2550:  MOVS            R1, #0
1C2552:  MOVS            R6, #0
1C2554:  LDR             R2, =(RwEngineInstance_ptr - 0x1C2560)
1C2556:  LSLS            R0, R0, #4
1C2558:  STRD.W          R1, R6, [R8,#8]
1C255C:  ADD             R2, PC; RwEngineInstance_ptr
1C255E:  LDR             R2, [R2]; RwEngineInstance
1C2560:  LDR             R1, [R2]
1C2562:  LDR.W           R1, [R1,#0x12C]
1C2566:  BLX             R1
1C2568:  STR.W           R0, [R8,#0x10]
1C256C:  LDR             R1, [SP,#0x28+var_1C]
1C256E:  LSLS            R1, R1, #4
1C2570:  BLX             j___aeabi_memclr8_0
1C2574:  LDR.W           R0, [R8,#4]
1C2578:  CMP             R0, #1
1C257A:  BLT             loc_1C25BE
1C257C:  LDR.W           R6, [R8,#0x10]
1C2580:  MOV.W           R9, #0
1C2584:  MOVS            R5, #0
1C2586:  MOV             R0, R4
1C2588:  MOV             R1, R6
1C258A:  MOVS            R2, #4
1C258C:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C2590:  CBZ             R0, loc_1C25C6
1C2592:  ADDS            R6, #4
1C2594:  MOV             R0, R4
1C2596:  MOVS            R2, #4
1C2598:  MOV             R1, R6
1C259A:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C259E:  CBZ             R0, loc_1C25C6
1C25A0:  ADDS            R6, #4
1C25A2:  MOV             R0, R4
1C25A4:  MOVS            R2, #4
1C25A6:  MOV             R1, R6
1C25A8:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C25AC:  CBZ             R0, loc_1C25C6
1C25AE:  STR.W           R9, [R6,#4]
1C25B2:  ADDS            R6, #8
1C25B4:  LDR.W           R0, [R8,#4]
1C25B8:  ADDS            R5, #1
1C25BA:  CMP             R5, R0
1C25BC:  BLT             loc_1C2586
1C25BE:  STR.W           R8, [R10,#4]
1C25C2:  MOV             R0, R4
1C25C4:  B               loc_1C25C8
1C25C6:  MOVS            R0, #0
1C25C8:  ADD             SP, SP, #0x10
1C25CA:  POP.W           {R8-R10}
1C25CE:  POP             {R4-R7,PC}
