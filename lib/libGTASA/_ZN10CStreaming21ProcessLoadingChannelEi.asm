; =========================================================
; Game Engine Function: _ZN10CStreaming21ProcessLoadingChannelEi
; Address            : 0x2D23A0 - 0x2D25EE
; =========================================================

2D23A0:  PUSH            {R4-R7,LR}
2D23A2:  ADD             R7, SP, #0xC
2D23A4:  PUSH.W          {R8-R11}
2D23A8:  SUB             SP, SP, #0x34
2D23AA:  MOV             R4, R0
2D23AC:  BLX             j__Z17CdStreamGetStatusi; CdStreamGetStatus(int)
2D23B0:  MOV             R1, R0
2D23B2:  CMP             R1, #0xFF
2D23B4:  MOV.W           R0, #0
2D23B8:  IT NE
2D23BA:  CMPNE           R1, #0xFA
2D23BC:  BEQ.W           loc_2D25E6
2D23C0:  CBNZ            R1, loc_2D2406
2D23C2:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D23CA)
2D23C4:  MOVS            R1, #0x98
2D23C6:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D23C8:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D23CA:  MLA.W           R5, R4, R1, R0
2D23CE:  MOV             R6, R5
2D23D0:  LDR.W           R0, [R6,#0x80]!
2D23D4:  STR             R6, [SP,#0x50+var_34]
2D23D6:  CMP             R0, #2
2D23D8:  BNE             loc_2D242C
2D23DA:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D23E4)
2D23DC:  MOVS            R3, #0
2D23DE:  LDR             R2, =(_ZN10CStreaming19ms_pStreamingBufferE_ptr - 0x2D23E6)
2D23E0:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D23E2:  ADD             R2, PC; _ZN10CStreaming19ms_pStreamingBufferE_ptr
2D23E4:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D23E6:  MLA.W           R0, R4, R1, R0
2D23EA:  LDR             R2, [R2]; CStreaming::ms_pStreamingBuffer ...
2D23EC:  LDR             R1, [R5]; char *
2D23EE:  STR             R3, [R6]
2D23F0:  LDR.W           R2, [R2,R4,LSL#2]; int
2D23F4:  LDR             R0, [R0,#0x40]
2D23F6:  ADD.W           R0, R2, R0,LSL#11; this
2D23FA:  BLX             j__ZN10CStreaming22FinishLoadingLargeFileEPci; CStreaming::FinishLoadingLargeFile(char *,int)
2D23FE:  MOV.W           R0, #0xFFFFFFFF
2D2402:  STR             R0, [R5]
2D2404:  B               loc_2D25B4
2D2406:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D240E)
2D2408:  MOVS            R2, #0x98
2D240A:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D240C:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D240E:  MLA.W           R0, R4, R2, R0
2D2412:  LDR             R2, =(_ZN10CStreaming15ms_channelErrorE_ptr - 0x2D2418)
2D2414:  ADD             R2, PC; _ZN10CStreaming15ms_channelErrorE_ptr
2D2416:  LDR             R2, [R2]; CStreaming::ms_channelError ...
2D2418:  STR.W           R1, [R0,#0x94]
2D241C:  MOVS            R1, #3; int
2D241E:  STR.W           R1, [R0,#0x80]
2D2422:  LDR             R0, [R2]; CStreaming::ms_channelError
2D2424:  ADDS            R0, #1
2D2426:  BEQ             loc_2D24AA
2D2428:  MOVS            R0, #0
2D242A:  B               loc_2D25E6
2D242C:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D2434)
2D242E:  STR             R5, [SP,#0x50+var_3C]
2D2430:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D2432:  STR             R4, [SP,#0x50+var_24]
2D2434:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D2436:  MLA.W           R2, R4, R1, R0
2D243A:  MOVS            R0, #0
2D243C:  STR             R0, [R6]
2D243E:  ADDS            R2, #0x40 ; '@'
2D2440:  STR             R2, [SP,#0x50+var_40]
2D2442:  LDR             R2, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D2448)
2D2444:  ADD             R2, PC; _ZN10CStreaming10ms_channelE_ptr
2D2446:  LDR             R2, [R2]; CStreaming::ms_channel ...
2D2448:  MLA.W           R5, R4, R1, R2
2D244C:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D2452)
2D244E:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D2450:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D2452:  STR             R2, [SP,#0x50+var_20]
2D2454:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D245A)
2D2456:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D2458:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
2D245A:  STR             R2, [SP,#0x50+var_38]
2D245C:  LDR             R2, =(_ZN10CStreaming17ms_vehiclesLoadedE_ptr - 0x2D2462)
2D245E:  ADD             R2, PC; _ZN10CStreaming17ms_vehiclesLoadedE_ptr
2D2460:  LDR             R2, [R2]; CStreaming::ms_vehiclesLoaded ...
2D2462:  STR             R2, [SP,#0x50+var_44]
2D2464:  LDR             R2, =(_ZN10CStreaming24desiredNumVehiclesLoadedE_ptr - 0x2D246A)
2D2466:  ADD             R2, PC; _ZN10CStreaming24desiredNumVehiclesLoadedE_ptr
2D2468:  LDR             R2, [R2]; CStreaming::desiredNumVehiclesLoaded ...
2D246A:  STR             R2, [SP,#0x50+var_48]
2D246C:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D2472)
2D246E:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D2470:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D2472:  STR             R2, [SP,#0x50+var_50]
2D2474:  LDR             R2, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D247A)
2D2476:  ADD             R2, PC; _ZN10CStreaming10ms_channelE_ptr
2D2478:  LDR             R2, [R2]; CStreaming::ms_channel ...
2D247A:  MLA.W           R1, R4, R1, R2
2D247E:  LDR             R2, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x2D2484)
2D2480:  ADD             R2, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
2D2482:  STR             R1, [SP,#0x50+var_28]
2D2484:  LDR             R1, =(_ZN10CStreaming19ms_pStreamingBufferE_ptr - 0x2D248E)
2D2486:  LDR.W           R10, [R2]; CStreaming::ms_memoryUsed ...
2D248A:  ADD             R1, PC; _ZN10CStreaming19ms_pStreamingBufferE_ptr
2D248C:  LDR             R1, [R1]; CStreaming::ms_pStreamingBuffer ...
2D248E:  STR             R1, [SP,#0x50+var_2C]
2D2490:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D2496)
2D2492:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D2494:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D2496:  STR             R1, [SP,#0x50+var_30]
2D2498:  LDR             R1, =(_ZN10CStreaming18ms_memoryAvailableE_ptr - 0x2D249E)
2D249A:  ADD             R1, PC; _ZN10CStreaming18ms_memoryAvailableE_ptr
2D249C:  LDR.W           R8, [R1]; CStreaming::ms_memoryAvailable ...
2D24A0:  LDR             R1, =(_ZN10CStreaming18ms_memoryAvailableE_ptr - 0x2D24A6)
2D24A2:  ADD             R1, PC; _ZN10CStreaming18ms_memoryAvailableE_ptr
2D24A4:  LDR             R1, [R1]; CStreaming::ms_memoryAvailable ...
2D24A6:  STR             R1, [SP,#0x50+var_4C]
2D24A8:  B               loc_2D24D2
2D24AA:  LDR             R0, =(_ZN10CStreaming15ms_channelErrorE_ptr - 0x2D24B0)
2D24AC:  ADD             R0, PC; _ZN10CStreaming15ms_channelErrorE_ptr
2D24AE:  LDR             R0, [R0]; CStreaming::ms_channelError ...
2D24B0:  STR             R4, [R0]; CStreaming::ms_channelError
2D24B2:  MOV             R0, R4; this
2D24B4:  BLX             j__ZN10CStreaming13RetryLoadFileEi; CStreaming::RetryLoadFile(int)
2D24B8:  B               loc_2D25E4
2D24BA:  MOV             R0, R6; this
2D24BC:  MOV             R4, R1
2D24BE:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D24C2:  LDRB            R1, [R4]; int
2D24C4:  TST.W           R1, #6
2D24C8:  BEQ             loc_2D25AC
2D24CA:  MOV             R0, R6; this
2D24CC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D24D0:  B               loc_2D25AC
2D24D2:  MOV             R9, R0
2D24D4:  LDR.W           R6, [R5,R9,LSL#2]
2D24D8:  ADDS            R0, R6, #1
2D24DA:  BEQ             loc_2D25AC
2D24DC:  ADD.W           R11, R6, R6,LSL#2
2D24E0:  LDR             R0, [SP,#0x50+var_20]
2D24E2:  ADD.W           R0, R0, R11,LSL#2
2D24E6:  LDR             R4, [R0,#0xC]
2D24E8:  MOVW            R0, #0x4E1F
2D24EC:  CMP             R6, R0
2D24EE:  BGT             loc_2D2524
2D24F0:  LDR             R0, [SP,#0x50+var_38]
2D24F2:  LDR.W           R0, [R0,R6,LSL#2]
2D24F6:  LDR             R1, [R0]
2D24F8:  LDR             R1, [R1,#0x14]
2D24FA:  BLX             R1
2D24FC:  CMP             R0, #6
2D24FE:  BNE             loc_2D2524
2D2500:  LDR             R0, [SP,#0x50+var_44]; this
2D2502:  BLX             j__ZN15CLoadedCarGroup12CountMembersEv; CLoadedCarGroup::CountMembers(void)
2D2506:  LDR             R1, [SP,#0x50+var_48]
2D2508:  LDR             R1, [R1]
2D250A:  CMP             R0, R1
2D250C:  BLT             loc_2D2524
2D250E:  BLX             j__ZN10CStreaming19RemoveLoadedVehicleEv; CStreaming::RemoveLoadedVehicle(void)
2D2512:  CBNZ            R0, loc_2D2524
2D2514:  LDR             R0, [SP,#0x50+var_50]
2D2516:  ADD.W           R1, R0, R11,LSL#2
2D251A:  LDRB.W          R0, [R1,#6]!; int
2D251E:  TST.W           R0, #6
2D2522:  BEQ             loc_2D24BA
2D2524:  MOVW            R0, #0x62A7
2D2528:  SUBS            R0, R6, R0
2D252A:  CMP.W           R0, #0x100
2D252E:  BCC             loc_2D2554
2D2530:  LSLS            R4, R4, #0xB
2D2532:  LDR.W           R0, [R8]; CStreaming::ms_memoryAvailable
2D2536:  LDR.W           R1, [R10]; unsigned int
2D253A:  SUBS            R0, R0, R4
2D253C:  CMP             R1, R0
2D253E:  BCC             loc_2D2554
2D2540:  MOVS            R0, #dword_20; this
2D2542:  BLX             j__ZN10CStreaming20RemoveLeastUsedModelEj; CStreaming::RemoveLeastUsedModel(uint)
2D2546:  CMP             R0, #0
2D2548:  BNE             loc_2D2532
2D254A:  LDR             R0, [SP,#0x50+var_4C]
2D254C:  LDR             R0, [R0]
2D254E:  SUBS            R0, R0, R4; this
2D2550:  BLX             j__ZN10CStreaming27DeleteRwObjectsBehindCameraEi; CStreaming::DeleteRwObjectsBehindCamera(int)
2D2554:  MOVS            R0, #1; unsigned __int8
2D2556:  BLX             j__Z23emu_ArraysShareResourceh; emu_ArraysShareResource(uchar)
2D255A:  LDR             R0, [SP,#0x50+var_28]
2D255C:  LDR             R1, [SP,#0x50+var_24]
2D255E:  ADD.W           R4, R0, R9,LSL#2
2D2562:  LDR             R2, [SP,#0x50+var_2C]; int
2D2564:  LDR.W           R0, [R4,#0x40]!
2D2568:  LDR.W           R1, [R2,R1,LSL#2]
2D256C:  ADD.W           R0, R1, R0,LSL#11; this
2D2570:  MOV             R1, R6; char *
2D2572:  BLX             j__ZN10CStreaming21ConvertBufferToObjectEPcii; CStreaming::ConvertBufferToObject(char *,int,int)
2D2576:  MOVS            R0, #0; unsigned __int8
2D2578:  BLX             j__Z23emu_ArraysShareResourceh; emu_ArraysShareResource(uchar)
2D257C:  LDR             R0, [SP,#0x50+var_30]
2D257E:  ADD.W           R0, R0, R11,LSL#2
2D2582:  LDRB            R0, [R0,#0x10]
2D2584:  CMP             R0, #4
2D2586:  BNE             loc_2D25A2
2D2588:  LDR             R0, [SP,#0x50+var_34]
2D258A:  MOVS            R1, #2
2D258C:  CMP.W           R9, #0
2D2590:  STR             R1, [R0]
2D2592:  LDR             R1, [SP,#0x50+var_40]
2D2594:  LDR             R0, [R4]
2D2596:  STR             R0, [R1]
2D2598:  LDR             R0, [SP,#0x50+var_3C]
2D259A:  STR             R6, [R0]
2D259C:  MOV.W           R0, #1
2D25A0:  BEQ             loc_2D24D2
2D25A2:  ADD.W           R0, R5, R9,LSL#2
2D25A6:  MOV.W           R1, #0xFFFFFFFF
2D25AA:  STR             R1, [R0]
2D25AC:  ADD.W           R0, R9, #1
2D25B0:  CMP             R0, #0x10
2D25B2:  BNE             loc_2D24D2
2D25B4:  LDR             R0, =(_ZN10CStreaming19ms_bLoadingBigModelE_ptr - 0x2D25BA)
2D25B6:  ADD             R0, PC; _ZN10CStreaming19ms_bLoadingBigModelE_ptr
2D25B8:  LDR             R0, [R0]; CStreaming::ms_bLoadingBigModel ...
2D25BA:  LDRB            R0, [R0]; CStreaming::ms_bLoadingBigModel
2D25BC:  CMP             R0, #0
2D25BE:  ITTT NE
2D25C0:  LDRNE           R0, [SP,#0x50+var_34]
2D25C2:  LDRNE           R0, [R0]
2D25C4:  CMPNE           R0, #2
2D25C6:  BEQ             loc_2D25E4
2D25C8:  LDR             R0, =(_ZN10CStreaming19ms_bLoadingBigModelE_ptr - 0x2D25D2)
2D25CA:  MOVS            R2, #0
2D25CC:  LDR             R1, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D25D4)
2D25CE:  ADD             R0, PC; _ZN10CStreaming19ms_bLoadingBigModelE_ptr
2D25D0:  ADD             R1, PC; _ZN10CStreaming10ms_channelE_ptr
2D25D2:  LDR             R0, [R0]; CStreaming::ms_bLoadingBigModel ...
2D25D4:  LDR             R1, [R1]; CStreaming::ms_channel ...
2D25D6:  STRB            R2, [R0]; CStreaming::ms_bLoadingBigModel
2D25D8:  ADD.W           R0, R1, #0x98
2D25DC:  MOVS            R1, #0x40 ; '@'
2D25DE:  MOVS            R2, #0xFF
2D25E0:  BLX             j___aeabi_memset8_0
2D25E4:  MOVS            R0, #1
2D25E6:  ADD             SP, SP, #0x34 ; '4'
2D25E8:  POP.W           {R8-R11}
2D25EC:  POP             {R4-R7,PC}
