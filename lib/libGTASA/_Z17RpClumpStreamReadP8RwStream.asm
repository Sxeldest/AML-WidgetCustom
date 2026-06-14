; =========================================================
; Game Engine Function: _Z17RpClumpStreamReadP8RwStream
; Address            : 0x215188 - 0x2155E8
; =========================================================

215188:  PUSH            {R4-R7,LR}
21518A:  ADD             R7, SP, #0xC
21518C:  PUSH.W          {R8-R11}
215190:  SUB             SP, SP, #0x44
215192:  ADD             R2, SP, #0x60+var_34
215194:  ADD             R3, SP, #0x60+var_38
215196:  MOVS            R1, #1
215198:  MOV             R6, R0
21519A:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
21519E:  MOVW            R11, #0x1A
2151A2:  CMP             R0, #0
2151A4:  MOVT            R11, #0x8000
2151A8:  BEQ.W           loc_215310
2151AC:  LDR             R0, [SP,#0x60+var_38]
2151AE:  MOVW            R1, #0x2003
2151B2:  SUB.W           R0, R0, #0x34000
2151B6:  CMP             R0, R1
2151B8:  BHI.W           loc_215316
2151BC:  ADD             R1, SP, #0x60+var_44; void *
2151BE:  MOV             R0, R6; int
2151C0:  MOVS            R2, #0xC; size_t
2151C2:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2151C6:  CMP             R0, #0xC
2151C8:  BNE.W           loc_2155CC
2151CC:  ADD             R0, SP, #0x60+var_44; void *
2151CE:  MOVS            R1, #0xC; unsigned int
2151D0:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
2151D4:  LDR.W           R0, =(RwEngineInstance_ptr - 0x2151E0)
2151D8:  LDR.W           R1, =(dword_6BD598 - 0x2151E2)
2151DC:  ADD             R0, PC; RwEngineInstance_ptr
2151DE:  ADD             R1, PC; dword_6BD598
2151E0:  LDR             R0, [R0]; RwEngineInstance
2151E2:  LDR             R1, [R1]
2151E4:  LDR             R0, [R0]
2151E6:  LDR.W           R2, [R0,#0x13C]
2151EA:  ADD             R0, R1
2151EC:  LDR             R0, [R0,#4]
2151EE:  BLX             R2
2151F0:  MOV             R4, R0
2151F2:  MOVS            R1, #0
2151F4:  CMP             R4, #0
2151F6:  BEQ.W           loc_215328
2151FA:  LDR.W           R0, =(dword_683B60 - 0x215212)
2151FE:  ADD.W           R8, R4, #8
215202:  ADD.W           R5, R4, #0x10
215206:  ADD.W           R10, R4, #0x18
21520A:  LDR.W           R2, =(nullsub_11+1 - 0x21521C)
21520E:  ADD             R0, PC; dword_683B60
215210:  MOVS            R3, #2
215212:  STRB            R1, [R4,#7]
215214:  STRH.W          R1, [R4,#5]
215218:  ADD             R2, PC; nullsub_11
21521A:  STRB            R3, [R4]
21521C:  STRD.W          R8, R8, [R4,#8]
215220:  STRD.W          R5, R5, [R4,#0x10]
215224:  STRD.W          R10, R10, [R4,#0x18]
215228:  STRD.W          R1, R1, [R4,#0x20]
21522C:  STR.W           R1, [R4,#1]
215230:  MOV             R1, R4
215232:  STR             R2, [R4,#0x28]
215234:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
215238:  ADD             R3, SP, #0x60+var_58
21523A:  MOV             R0, R6; int
21523C:  MOVS            R1, #0xE
21523E:  MOVS            R2, #0
215240:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
215244:  CMP             R0, #0
215246:  BEQ.W           loc_2155C6
21524A:  ADD             R1, SP, #0x60+var_4C
21524C:  MOV             R0, R6
21524E:  BLX             j__Z22_rwFrameListStreamReadP8RwStreamP11rwFrameList; _rwFrameListStreamRead(RwStream *,rwFrameList *)
215252:  CMP             R0, #0
215254:  BEQ.W           loc_2155C6
215258:  ADD             R3, SP, #0x60+var_58
21525A:  MOV             R0, R6; int
21525C:  MOVS            R1, #0x1A
21525E:  MOVS            R2, #0
215260:  MOV.W           R9, #0
215264:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
215268:  CMP             R0, #0
21526A:  BEQ             loc_21532C
21526C:  ADD             R2, SP, #0x60+var_24
21526E:  ADD             R3, SP, #0x60+var_28
215270:  MOV             R0, R6; int
215272:  MOVS            R1, #1
215274:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
215278:  CMP             R0, #0
21527A:  STRD.W          R10, R5, [SP,#0x60+var_60]
21527E:  BEQ             loc_215342
215280:  LDR             R0, [SP,#0x60+var_28]
215282:  MOVW            R1, #0x2003
215286:  SUB.W           R0, R0, #0x34000
21528A:  CMP             R0, R1
21528C:  BHI             loc_21534E
21528E:  ADD             R1, SP, #0x60+var_20; void *
215290:  MOV             R0, R6; int
215292:  MOVS            R2, #4; size_t
215294:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
215298:  CMP             R0, #4
21529A:  BNE             loc_215342
21529C:  ADD             R0, SP, #0x60+var_20; void *
21529E:  MOVS            R1, #4; unsigned int
2152A0:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
2152A4:  LDR             R0, [SP,#0x60+var_20]
2152A6:  STR             R0, [SP,#0x60+var_50]
2152A8:  CMP             R0, #1
2152AA:  BLT             loc_21536E
2152AC:  LDR             R1, =(RwEngineInstance_ptr - 0x2152B4)
2152AE:  LSLS            R0, R0, #2
2152B0:  ADD             R1, PC; RwEngineInstance_ptr
2152B2:  LDR             R1, [R1]; RwEngineInstance
2152B4:  LDR             R1, [R1]
2152B6:  LDR.W           R1, [R1,#0x12C]
2152BA:  BLX             R1
2152BC:  CMP             R0, #0
2152BE:  STR             R0, [SP,#0x60+var_54]
2152C0:  BEQ             loc_21537E
2152C2:  LDR             R0, [SP,#0x60+var_20]
2152C4:  CMP             R0, #1
2152C6:  BLT             loc_215394
2152C8:  MOV.W           R10, #0
2152CC:  ADD             R5, SP, #0x60+var_28
2152CE:  MOV             R0, R6; int
2152D0:  MOVS            R1, #0xF
2152D2:  MOVS            R2, #0
2152D4:  MOV             R3, R5
2152D6:  MOV.W           R9, #0
2152DA:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2152DE:  CMP             R0, #0
2152E0:  BEQ             loc_2153A4
2152E2:  LDR             R0, [SP,#0x60+var_28]
2152E4:  MOVW            R1, #0x2003
2152E8:  SUB.W           R0, R0, #0x34000
2152EC:  CMP             R0, R1
2152EE:  BHI             loc_215342
2152F0:  MOV             R0, R6
2152F2:  BLX             j__Z20RpGeometryStreamReadP8RwStream; RpGeometryStreamRead(RwStream *)
2152F6:  LDR             R1, [SP,#0x60+var_54]
2152F8:  CMP             R0, #0
2152FA:  STR.W           R0, [R1,R10,LSL#2]
2152FE:  BEQ             loc_2153A0
215300:  LDR             R0, [SP,#0x60+var_20]
215302:  ADD.W           R10, R10, #1
215306:  ADD.W           R9, SP, #0x60+var_54
21530A:  CMP             R10, R0
21530C:  BLT             loc_2152CE
21530E:  B               loc_2153A4
215310:  MOVS            R4, #0
215312:  MOV             R0, R11
215314:  B               loc_21531C
215316:  SUB.W           R0, R11, #0x16; int
21531A:  MOVS            R4, #0
21531C:  STR             R4, [SP,#0x60+var_44]
21531E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215322:  STR             R0, [SP,#0x60+var_40]
215324:  ADD             R0, SP, #0x60+var_44
215326:  B               loc_2155DA
215328:  MOVS            R4, #0
21532A:  B               loc_2155DE
21532C:  MOV             R0, R11; int
21532E:  STR.W           R9, [SP,#0x60+var_30]
215332:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215336:  STR             R0, [SP,#0x60+var_2C]
215338:  ADD             R0, SP, #0x60+var_30
21533A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21533E:  MOVS            R4, #0
215340:  B               loc_2155DE
215342:  MOV.W           R9, #0
215346:  CMP.W           R9, #0
21534A:  BNE             loc_2153AC
21534C:  B               loc_2155C0
21534E:  SUB.W           R0, R11, #0x16; int
215352:  MOV.W           R9, #0
215356:  STR.W           R9, [SP,#0x60+var_30]
21535A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21535E:  STR             R0, [SP,#0x60+var_2C]
215360:  ADD             R0, SP, #0x60+var_30
215362:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
215366:  CMP.W           R9, #0
21536A:  BNE             loc_2153AC
21536C:  B               loc_2155C0
21536E:  MOVS            R0, #0
215370:  ADD.W           R9, SP, #0x60+var_54
215374:  STR             R0, [SP,#0x60+var_54]
215376:  CMP.W           R9, #0
21537A:  BNE             loc_2153AC
21537C:  B               loc_2155C0
21537E:  LDR             R1, [SP,#0x60+var_20]
215380:  SUB.W           R0, R11, #7; int
215384:  MOV.W           R9, #0
215388:  STR.W           R9, [SP,#0x60+var_30]
21538C:  LSLS            R1, R1, #2
21538E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215392:  B               loc_21535E
215394:  ADD.W           R9, SP, #0x60+var_54
215398:  CMP.W           R9, #0
21539C:  BNE             loc_2153AC
21539E:  B               loc_2155C0
2153A0:  MOV.W           R9, #0
2153A4:  CMP.W           R9, #0
2153A8:  BEQ.W           loc_2155C0
2153AC:  LDR             R0, [SP,#0x60+var_4C]
2153AE:  LDR             R0, [R0]
2153B0:  STR             R0, [R4,#4]
2153B2:  LDR             R0, [SP,#0x60+var_44]
2153B4:  CMP             R0, #1
2153B6:  BLT             loc_215402
2153B8:  ADD             R5, SP, #0x60+var_38
2153BA:  ADD.W           R10, SP, #0x60+var_54
2153BE:  MOV.W           R9, #0
2153C2:  MOV             R0, R6; int
2153C4:  MOVS            R1, #0x14
2153C6:  MOVS            R2, #0
2153C8:  MOV             R3, R5
2153CA:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2153CE:  CMP             R0, #0
2153D0:  BEQ.W           loc_215550
2153D4:  ADD             R1, SP, #0x60+var_4C
2153D6:  MOV             R0, R6
2153D8:  MOV             R2, R10
2153DA:  BL              sub_214EF4
2153DE:  CMP             R0, #0
2153E0:  BEQ.W           loc_215550
2153E4:  LDR             R1, [R4,#8]
2153E6:  ADD.W           R9, R9, #1
2153EA:  STR.W           R1, [R0,#0x40]!
2153EE:  STR.W           R8, [R0,#4]
2153F2:  LDR             R1, [R4,#8]
2153F4:  STR             R0, [R1,#4]
2153F6:  STR             R0, [R4,#8]
2153F8:  STR.W           R4, [R0,#-4]
2153FC:  LDR             R0, [SP,#0x60+var_44]
2153FE:  CMP             R9, R0
215400:  BLT             loc_2153C2
215402:  LDR             R0, [SP,#0x60+var_40]
215404:  CMP             R0, #1
215406:  BLT             loc_21548A
215408:  LDR.W           R10, =(dword_6BD594 - 0x215418)
21540C:  ADD.W           R8, SP, #0x60+var_20
215410:  MOV.W           R9, #0
215414:  ADD             R10, PC; dword_6BD594
215416:  MOV             R0, R6; int
215418:  MOVS            R1, #1
21541A:  MOVS            R2, #0
21541C:  MOVS            R3, #0
21541E:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
215422:  CMP             R0, #0
215424:  BEQ.W           loc_215572
215428:  MOV             R0, R6
21542A:  MOV             R1, R8
21542C:  MOVS            R2, #4
21542E:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
215432:  CMP             R0, #0
215434:  IT NE
215436:  MOVNE           R0, #1
215438:  BEQ             loc_215446
21543A:  MOV             R0, R6; int
21543C:  MOVS            R1, #0x12
21543E:  MOVS            R2, #0
215440:  MOVS            R3, #0
215442:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
215446:  CMP             R0, #0
215448:  BEQ.W           loc_215572
21544C:  MOV             R0, R6
21544E:  BLX             j__Z17RpLightStreamReadP8RwStream; RpLightStreamRead(RwStream *)
215452:  MOV             R5, R0
215454:  CMP             R5, #0
215456:  BEQ.W           loc_215572
21545A:  LDR             R0, [SP,#0x60+var_20]
21545C:  LDR             R1, [SP,#0x60+var_4C]
21545E:  LDR.W           R1, [R1,R0,LSL#2]
215462:  MOV             R0, R5
215464:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
215468:  LDR.W           R0, [R10]
21546C:  ADD.W           R9, R9, #1
215470:  LDR             R1, [R4,#0x10]
215472:  ADDS            R2, R5, R0
215474:  LDR             R3, [SP,#0x60+var_5C]
215476:  STR             R3, [R2,#8]
215478:  STR.W           R1, [R2,#4]!
21547C:  LDR             R1, [R4,#0x10]
21547E:  STR             R2, [R1,#4]
215480:  STR             R2, [R4,#0x10]
215482:  STR             R4, [R5,R0]
215484:  LDR             R0, [SP,#0x60+var_40]
215486:  CMP             R9, R0
215488:  BLT             loc_215416
21548A:  LDR             R0, [SP,#0x60+var_3C]
21548C:  CMP             R0, #1
21548E:  BLT             loc_21550C
215490:  LDR.W           R10, =(dword_6BD590 - 0x2154A0)
215494:  ADD.W           R8, SP, #0x60+var_20
215498:  MOV.W           R9, #0
21549C:  ADD             R10, PC; dword_6BD590
21549E:  MOV             R0, R6; int
2154A0:  MOVS            R1, #1
2154A2:  MOVS            R2, #0
2154A4:  MOVS            R3, #0
2154A6:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2154AA:  CMP             R0, #0
2154AC:  BEQ             loc_215594
2154AE:  MOV             R0, R6
2154B0:  MOV             R1, R8
2154B2:  MOVS            R2, #4
2154B4:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2154B8:  CMP             R0, #0
2154BA:  IT NE
2154BC:  MOVNE           R0, #1
2154BE:  BEQ             loc_2154CC
2154C0:  MOV             R0, R6; int
2154C2:  MOVS            R1, #5
2154C4:  MOVS            R2, #0
2154C6:  MOVS            R3, #0
2154C8:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2154CC:  CMP             R0, #0
2154CE:  BEQ             loc_215594
2154D0:  MOV             R0, R6
2154D2:  BLX             j__Z18RwCameraStreamReadP8RwStream; RwCameraStreamRead(RwStream *)
2154D6:  MOV             R5, R0
2154D8:  CMP             R5, #0
2154DA:  BEQ             loc_215594
2154DC:  LDR             R0, [SP,#0x60+var_20]
2154DE:  LDR             R1, [SP,#0x60+var_4C]
2154E0:  LDR.W           R1, [R1,R0,LSL#2]
2154E4:  MOV             R0, R5
2154E6:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
2154EA:  LDR.W           R0, [R10]
2154EE:  ADD.W           R9, R9, #1
2154F2:  LDR             R1, [R4,#0x18]
2154F4:  ADDS            R2, R5, R0
2154F6:  LDR             R3, [SP,#0x60+var_60]
2154F8:  STR             R3, [R2,#8]
2154FA:  STR.W           R1, [R2,#4]!
2154FE:  LDR             R1, [R4,#0x18]
215500:  STR             R2, [R1,#4]
215502:  STR             R2, [R4,#0x18]
215504:  STR             R4, [R5,R0]
215506:  LDR             R0, [SP,#0x60+var_3C]
215508:  CMP             R9, R0
21550A:  BLT             loc_21549E
21550C:  LDR             R0, [SP,#0x60+var_50]
21550E:  CBZ             R0, loc_215538
215510:  CMP             R0, #1
215512:  BLT             loc_215528
215514:  MOVS            R5, #0
215516:  LDR             R0, [SP,#0x60+var_54]
215518:  LDR.W           R0, [R0,R5,LSL#2]
21551C:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
215520:  LDR             R0, [SP,#0x60+var_50]
215522:  ADDS            R5, #1
215524:  CMP             R5, R0
215526:  BLT             loc_215516
215528:  LDR             R0, =(RwEngineInstance_ptr - 0x21552E)
21552A:  ADD             R0, PC; RwEngineInstance_ptr
21552C:  LDR             R0, [R0]; RwEngineInstance
21552E:  LDR             R1, [R0]
215530:  LDR             R0, [SP,#0x60+var_54]
215532:  LDR.W           R1, [R1,#0x130]
215536:  BLX             R1
215538:  ADD             R0, SP, #0x60+var_4C
21553A:  BLX             j__Z24_rwFrameListDeinitializeP11rwFrameList; _rwFrameListDeinitialize(rwFrameList *)
21553E:  LDR             R0, =(dword_683B60 - 0x215548)
215540:  MOV             R1, R6; int
215542:  MOV             R2, R4
215544:  ADD             R0, PC; dword_683B60 ; int
215546:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
21554A:  CMP             R0, #0
21554C:  BNE             loc_2155DE
21554E:  B               loc_2155C6
215550:  LDR             R0, [SP,#0x60+var_50]
215552:  CBZ             R0, loc_2155C0
215554:  CMP             R0, #1
215556:  BLT             loc_21556C
215558:  MOVS            R5, #0
21555A:  LDR             R0, [SP,#0x60+var_54]
21555C:  LDR.W           R0, [R0,R5,LSL#2]
215560:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
215564:  LDR             R0, [SP,#0x60+var_50]
215566:  ADDS            R5, #1
215568:  CMP             R5, R0
21556A:  BLT             loc_21555A
21556C:  LDR             R0, =(RwEngineInstance_ptr - 0x215572)
21556E:  ADD             R0, PC; RwEngineInstance_ptr
215570:  B               loc_2155B4
215572:  LDR             R0, [SP,#0x60+var_50]
215574:  CBZ             R0, loc_2155C0
215576:  CMP             R0, #1
215578:  BLT             loc_21558E
21557A:  MOVS            R5, #0
21557C:  LDR             R0, [SP,#0x60+var_54]
21557E:  LDR.W           R0, [R0,R5,LSL#2]
215582:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
215586:  LDR             R0, [SP,#0x60+var_50]
215588:  ADDS            R5, #1
21558A:  CMP             R5, R0
21558C:  BLT             loc_21557C
21558E:  LDR             R0, =(RwEngineInstance_ptr - 0x215594)
215590:  ADD             R0, PC; RwEngineInstance_ptr
215592:  B               loc_2155B4
215594:  LDR             R0, [SP,#0x60+var_50]
215596:  CBZ             R0, loc_2155C0
215598:  CMP             R0, #1
21559A:  BLT             loc_2155B0
21559C:  MOVS            R5, #0
21559E:  LDR             R0, [SP,#0x60+var_54]
2155A0:  LDR.W           R0, [R0,R5,LSL#2]
2155A4:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
2155A8:  LDR             R0, [SP,#0x60+var_50]
2155AA:  ADDS            R5, #1
2155AC:  CMP             R5, R0
2155AE:  BLT             loc_21559E
2155B0:  LDR             R0, =(RwEngineInstance_ptr - 0x2155B6)
2155B2:  ADD             R0, PC; RwEngineInstance_ptr
2155B4:  LDR             R0, [R0]; RwEngineInstance
2155B6:  LDR             R1, [R0]
2155B8:  LDR             R0, [SP,#0x60+var_54]
2155BA:  LDR.W           R1, [R1,#0x130]
2155BE:  BLX             R1
2155C0:  ADD             R0, SP, #0x60+var_4C
2155C2:  BLX             j__Z24_rwFrameListDeinitializeP11rwFrameList; _rwFrameListDeinitialize(rwFrameList *)
2155C6:  MOV             R0, R4
2155C8:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
2155CC:  MOVS            R4, #0
2155CE:  MOV             R0, R11; int
2155D0:  STR             R4, [SP,#0x60+var_30]
2155D2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2155D6:  STR             R0, [SP,#0x60+var_2C]
2155D8:  ADD             R0, SP, #0x60+var_30
2155DA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
2155DE:  MOV             R0, R4
2155E0:  ADD             SP, SP, #0x44 ; 'D'
2155E2:  POP.W           {R8-R11}
2155E6:  POP             {R4-R7,PC}
