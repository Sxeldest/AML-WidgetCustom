; =========================================================
; Game Engine Function: _Z20RpMaterialStreamReadP8RwStream
; Address            : 0x21747C - 0x21763E
; =========================================================

21747C:  PUSH            {R4-R7,LR}
21747E:  ADD             R7, SP, #0xC
217480:  PUSH.W          {R8,R9,R11}
217484:  SUB             SP, SP, #0x30
217486:  ADD             R2, SP, #0x48+var_1C
217488:  ADD             R3, SP, #0x48+var_20
21748A:  MOVS            R1, #1
21748C:  MOV             R6, R0
21748E:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
217492:  CMP             R0, #0
217494:  BEQ.W           loc_2175E8
217498:  LDR             R0, [SP,#0x48+var_20]
21749A:  MOV             R8, #0x80000004
2174A2:  MOVW            R1, #0x2003
2174A6:  SUB.W           R0, R0, #0x34000
2174AA:  CMP             R0, R1
2174AC:  BHI             loc_21759A
2174AE:  ADD             R1, SP, #0x48+var_40; void *
2174B0:  VMOV.I32        Q8, #0
2174B4:  LDR             R2, [SP,#0x48+var_1C]; size_t
2174B6:  ADD.W           R0, R1, #0xC
2174BA:  VST1.64         {D16-D17}, [R1]
2174BE:  VST1.32         {D16-D17}, [R0]
2174C2:  MOV             R0, R6; int
2174C4:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2174C8:  LDR             R1, [SP,#0x48+var_1C]
2174CA:  CMP             R0, R1
2174CC:  BNE.W           loc_2175E8
2174D0:  ADD.W           R9, SP, #0x48+var_40
2174D4:  MOVS            R1, #0x1C; unsigned int
2174D6:  MOV             R0, R9; void *
2174D8:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
2174DC:  LDR             R0, =(RwEngineInstance_ptr - 0x2174E4)
2174DE:  LDR             R1, =(dword_6BD5F4 - 0x2174E6)
2174E0:  ADD             R0, PC; RwEngineInstance_ptr
2174E2:  ADD             R1, PC; dword_6BD5F4
2174E4:  LDR             R0, [R0]; RwEngineInstance
2174E6:  LDR             R1, [R1]
2174E8:  LDR             R2, [R0]
2174EA:  LDR             R0, [R2,R1]
2174EC:  LDR.W           R1, [R2,#0x13C]
2174F0:  BLX             R1
2174F2:  MOV             R4, R0
2174F4:  MOVS            R5, #0
2174F6:  CMP             R4, #0
2174F8:  BEQ             loc_2175E8
2174FA:  LDR             R0, =(dword_683BB0 - 0x217508)
2174FC:  MOV.W           R1, #0xFFFFFFFF
217500:  STR             R1, [R4,#4]
217502:  MOVS            R1, #1
217504:  ADD             R0, PC; dword_683BB0
217506:  STRH            R1, [R4,#0x18]
217508:  STR             R5, [R4]
21750A:  STR             R5, [R4,#8]
21750C:  VLDR            D16, [R0]
217510:  LDR             R1, [R0,#(dword_683BB8 - 0x683BB0)]
217512:  LDR             R0, =(dword_683BC4 - 0x21751C)
217514:  STR             R1, [R4,#0x14]
217516:  MOV             R1, R4
217518:  ADD             R0, PC; dword_683BC4
21751A:  VSTR            D16, [R4,#0xC]
21751E:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
217522:  LDR             R0, [SP,#0x48+var_3C]
217524:  MOVS            R1, #0xC; unsigned int
217526:  STR             R0, [R4,#4]
217528:  ADD.W           R0, R9, #0x10; void *
21752C:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
217530:  VLDR            D16, [SP,#0x48+var_30]
217534:  LDR             R0, [SP,#0x48+var_28]
217536:  STR             R0, [R4,#0x14]
217538:  STR             R5, [R4]
21753A:  VSTR            D16, [R4,#0xC]
21753E:  LDR             R0, [SP,#0x48+var_34]
217540:  CBZ             R0, loc_217566
217542:  ADD             R3, SP, #0x48+var_20
217544:  MOV             R0, R6; int
217546:  MOVS            R1, #6
217548:  MOVS            R2, #0
21754A:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
21754E:  CBZ             R0, loc_2175AE
217550:  LDR             R0, [SP,#0x48+var_20]
217552:  MOVW            R1, #0x2003
217556:  SUB.W           R0, R0, #0x34000
21755A:  CMP             R0, R1
21755C:  BHI             loc_2175F4
21755E:  MOV             R0, R6; int
217560:  BLX             j__Z19RwTextureStreamReadP8RwStream; RwTextureStreamRead(RwStream *)
217564:  STR             R0, [R4]
217566:  LDR             R0, =(dword_683BC4 - 0x217570)
217568:  MOV             R1, R6; int
21756A:  MOV             R2, R4
21756C:  ADD             R0, PC; dword_683BC4 ; int
21756E:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
217572:  CBNZ            R0, loc_2175EA
217574:  LDRH            R0, [R4,#0x18]
217576:  CMP             R0, #1
217578:  BNE             loc_2175E4
21757A:  LDR             R0, =(dword_683BC4 - 0x217582)
21757C:  MOV             R1, R4
21757E:  ADD             R0, PC; dword_683BC4
217580:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
217584:  LDR             R0, [R4]
217586:  CBZ             R0, loc_217590
217588:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
21758C:  MOVS            R0, #0
21758E:  STR             R0, [R4]
217590:  LDR             R0, =(RwEngineInstance_ptr - 0x217598)
217592:  LDR             R1, =(dword_6BD5F4 - 0x21759A)
217594:  ADD             R0, PC; RwEngineInstance_ptr
217596:  ADD             R1, PC; dword_6BD5F4
217598:  B               loc_2175D2
21759A:  MOVS            R4, #0
21759C:  MOV             R0, R8; int
21759E:  STR             R4, [SP,#0x48+var_40]
2175A0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2175A4:  STR             R0, [SP,#0x48+var_3C]
2175A6:  ADD             R0, SP, #0x48+var_40
2175A8:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
2175AC:  B               loc_2175EA
2175AE:  LDRH            R0, [R4,#0x18]
2175B0:  CMP             R0, #1
2175B2:  BNE             loc_2175E4
2175B4:  LDR             R0, =(dword_683BC4 - 0x2175BC)
2175B6:  MOV             R1, R4
2175B8:  ADD             R0, PC; dword_683BC4
2175BA:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
2175BE:  LDR             R0, [R4]
2175C0:  CBZ             R0, loc_2175CA
2175C2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2175C6:  MOVS            R0, #0
2175C8:  STR             R0, [R4]
2175CA:  LDR             R0, =(RwEngineInstance_ptr - 0x2175D2)
2175CC:  LDR             R1, =(dword_6BD5F4 - 0x2175D4)
2175CE:  ADD             R0, PC; RwEngineInstance_ptr
2175D0:  ADD             R1, PC; dword_6BD5F4
2175D2:  LDR             R0, [R0]; RwEngineInstance
2175D4:  LDR             R1, [R1]
2175D6:  LDR             R2, [R0]
2175D8:  LDR             R0, [R2,R1]
2175DA:  MOV             R1, R4
2175DC:  LDR.W           R2, [R2,#0x140]
2175E0:  BLX             R2
2175E2:  B               loc_2175E8
2175E4:  SUBS            R0, #1
2175E6:  STRH            R0, [R4,#0x18]
2175E8:  MOVS            R4, #0
2175EA:  MOV             R0, R4
2175EC:  ADD             SP, SP, #0x30 ; '0'
2175EE:  POP.W           {R8,R9,R11}
2175F2:  POP             {R4-R7,PC}
2175F4:  LDRH            R0, [R4,#0x18]
2175F6:  CMP             R0, #1
2175F8:  BNE             loc_21762A
2175FA:  LDR             R0, =(dword_683BC4 - 0x217602)
2175FC:  MOV             R1, R4
2175FE:  ADD             R0, PC; dword_683BC4
217600:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
217604:  LDR             R0, [R4]
217606:  CBZ             R0, loc_217610
217608:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
21760C:  MOVS            R0, #0
21760E:  STR             R0, [R4]
217610:  LDR             R0, =(RwEngineInstance_ptr - 0x217618)
217612:  LDR             R1, =(dword_6BD5F4 - 0x21761A)
217614:  ADD             R0, PC; RwEngineInstance_ptr
217616:  ADD             R1, PC; dword_6BD5F4
217618:  LDR             R0, [R0]; RwEngineInstance
21761A:  LDR             R1, [R1]
21761C:  LDR             R2, [R0]
21761E:  LDR             R0, [R2,R1]
217620:  MOV             R1, R4
217622:  LDR.W           R2, [R2,#0x140]
217626:  BLX             R2
217628:  B               loc_21762E
21762A:  SUBS            R0, #1
21762C:  STRH            R0, [R4,#0x18]
21762E:  MOVS            R4, #0
217630:  MOV             R0, R8; int
217632:  STR             R4, [SP,#0x48+var_48]
217634:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
217638:  STR             R0, [SP,#0x48+var_44]
21763A:  MOV             R0, SP
21763C:  B               loc_2175A8
