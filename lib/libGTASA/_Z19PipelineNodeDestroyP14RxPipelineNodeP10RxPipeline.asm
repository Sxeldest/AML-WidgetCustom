; =========================================================
; Game Engine Function: _Z19PipelineNodeDestroyP14RxPipelineNodeP10RxPipeline
; Address            : 0x1DE340 - 0x1DE564
; =========================================================

1DE340:  PUSH            {R4-R7,LR}
1DE342:  ADD             R7, SP, #0xC
1DE344:  PUSH.W          {R8-R10}
1DE348:  MOV             R10, R1
1DE34A:  MOV             R8, R0
1DE34C:  LDR.W           R0, [R10]
1DE350:  CMP             R0, #0
1DE352:  BEQ.W           loc_1DE490
1DE356:  LDR.W           R0, [R8,#0x20]
1DE35A:  CBZ             R0, loc_1DE370
1DE35C:  LDR             R1, =(RwEngineInstance_ptr - 0x1DE362)
1DE35E:  ADD             R1, PC; RwEngineInstance_ptr
1DE360:  LDR             R1, [R1]; RwEngineInstance
1DE362:  LDR             R1, [R1]
1DE364:  LDR.W           R1, [R1,#0x130]
1DE368:  BLX             R1
1DE36A:  MOVS            R0, #0
1DE36C:  STRD.W          R0, R0, [R8,#0x20]
1DE370:  LDR.W           R0, [R8]
1DE374:  LDR             R1, [R0,#0x3C]
1DE376:  CBNZ            R1, loc_1DE390
1DE378:  LDR             R1, [R0,#0x38]
1DE37A:  CBZ             R1, loc_1DE390
1DE37C:  LDR             R1, =(RwEngineInstance_ptr - 0x1DE382)
1DE37E:  ADD             R1, PC; RwEngineInstance_ptr
1DE380:  LDR             R1, [R1]; RwEngineInstance
1DE382:  LDR             R1, [R1]
1DE384:  LDR.W           R1, [R1,#0x130]
1DE388:  BLX             R1
1DE38A:  MOVS            R0, #0
1DE38C:  STR.W           R0, [R8]
1DE390:  MOV             R9, R10
1DE392:  MOVW            R3, #0xCCCD
1DE396:  LDR.W           R2, [R9,#4]!
1DE39A:  MOVT            R3, #0xCCCC
1DE39E:  LDR.W           R0, [R9,#4]
1DE3A2:  SUB.W           R1, R8, R0
1DE3A6:  ASRS            R1, R1, #3
1DE3A8:  MUL.W           R5, R1, R3
1DE3AC:  SUBS            R1, R2, #1
1DE3AE:  CMP             R5, R1
1DE3B0:  BCS.W           loc_1DE554
1DE3B4:  LDR             R1, =(_rxPipelineGlobalsOffset_ptr - 0x1DE3BE)
1DE3B6:  MOV             R4, R5
1DE3B8:  LDR             R2, =(RwEngineInstance_ptr - 0x1DE3C0)
1DE3BA:  ADD             R1, PC; _rxPipelineGlobalsOffset_ptr
1DE3BC:  ADD             R2, PC; RwEngineInstance_ptr
1DE3BE:  LDR             R1, [R1]; _rxPipelineGlobalsOffset
1DE3C0:  LDR             R2, [R2]; RwEngineInstance
1DE3C2:  LDR             R1, [R1]
1DE3C4:  LDR             R2, [R2]
1DE3C6:  ADD             R1, R2
1DE3C8:  LDR             R1, [R1,#0x38]
1DE3CA:  ADD.W           R1, R1, R1,LSL#2
1DE3CE:  ADD.W           R0, R0, R1,LSL#3
1DE3D2:  ADD.W           R0, R0, R5,LSL#7; void *
1DE3D6:  ADD.W           R6, R0, #0x80
1DE3DA:  MOVS            R2, #0x80; size_t
1DE3DC:  MOV             R1, R6; void *
1DE3DE:  BLX             memcpy_0
1DE3E2:  LDR.W           R1, [R9]
1DE3E6:  ADDS            R4, #1
1DE3E8:  MOV             R0, R6
1DE3EA:  SUBS            R2, R1, #1
1DE3EC:  CMP             R4, R2
1DE3EE:  BCC             loc_1DE3D6
1DE3F0:  CMP             R5, R2
1DE3F2:  BCS             loc_1DE42E
1DE3F4:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DE3FC)
1DE3F6:  LDR             R1, =(RwEngineInstance_ptr - 0x1DE402)
1DE3F8:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DE3FA:  LDR.W           R2, [R10,#8]
1DE3FE:  ADD             R1, PC; RwEngineInstance_ptr
1DE400:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1DE402:  LDR             R1, [R1]; RwEngineInstance
1DE404:  LDR             R0, [R0]
1DE406:  LDR             R1, [R1]
1DE408:  ADD             R0, R1
1DE40A:  MOVS            R1, #0xA8
1DE40C:  LDR             R0, [R0,#0x38]
1DE40E:  MLA.W           R0, R0, R1, R2
1DE412:  MOV             R2, R5
1DE414:  VLDR            D16, [R0,#0xC]
1DE418:  ADDS            R2, #1
1DE41A:  LDR             R1, [R0,#0x14]
1DE41C:  STR             R1, [R0,#8]
1DE41E:  VSTR            D16, [R0]
1DE422:  ADDS            R0, #0xC
1DE424:  LDR.W           R1, [R9]
1DE428:  SUBS            R3, R1, #1
1DE42A:  CMP             R2, R3
1DE42C:  BCC             loc_1DE414
1DE42E:  SUBS            R0, R1, #1
1DE430:  CMP             R5, R0
1DE432:  BCS             loc_1DE488
1DE434:  ADD.W           R0, R5, R5,LSL#2
1DE438:  MOV             R2, R5
1DE43A:  LSLS            R0, R0, #3
1DE43C:  LDR.W           R1, [R10,#8]
1DE440:  ADDS            R2, #1
1DE442:  ADD             R1, R0
1DE444:  ADD.W           R3, R1, #0x28 ; '('
1DE448:  VLD1.32         {D16-D17}, [R3]
1DE44C:  ADD.W           R3, R1, #0x38 ; '8'
1DE450:  VLDR            D18, [R1,#0x48]
1DE454:  VLD1.32         {D20-D21}, [R3]
1DE458:  VSTR            D18, [R1,#0x20]
1DE45C:  VST1.32         {D16-D17}, [R1]!
1DE460:  VST1.32         {D20-D21}, [R1]
1DE464:  LDR.W           R1, [R10,#8]
1DE468:  ADD             R1, R0
1DE46A:  LDR             R3, [R1,#8]
1DE46C:  SUBS            R3, #0x80
1DE46E:  STR             R3, [R1,#8]
1DE470:  LDR.W           R1, [R10,#8]
1DE474:  ADD             R1, R0
1DE476:  ADDS            R0, #0x28 ; '('
1DE478:  LDR             R3, [R1,#0x1C]
1DE47A:  SUBS            R3, #0xC
1DE47C:  STR             R3, [R1,#0x1C]
1DE47E:  LDR.W           R1, [R10,#4]
1DE482:  SUBS            R3, R1, #1
1DE484:  CMP             R2, R3
1DE486:  BCC             loc_1DE43C
1DE488:  CMP             R1, #1
1DE48A:  BNE             loc_1DE508
1DE48C:  MOVS            R2, #1
1DE48E:  B               loc_1DE554
1DE490:  LDR.W           R0, [R8]
1DE494:  LDR             R1, [R0,#0x14]
1DE496:  CBZ             R1, loc_1DE4A0
1DE498:  MOV             R0, R8
1DE49A:  BLX             R1
1DE49C:  LDR.W           R0, [R8]
1DE4A0:  LDR             R1, [R0,#0x3C]
1DE4A2:  SUBS            R1, #1
1DE4A4:  STR             R1, [R0,#0x3C]
1DE4A6:  LDR.W           R0, [R8]
1DE4AA:  LDR             R1, [R0,#0x3C]
1DE4AC:  CBNZ            R1, loc_1DE4D0
1DE4AE:  LDR             R1, [R0,#0xC]
1DE4B0:  CBZ             R1, loc_1DE4B8
1DE4B2:  BLX             R1
1DE4B4:  LDR.W           R0, [R8]
1DE4B8:  LDR             R1, [R0,#0x38]
1DE4BA:  CBZ             R1, loc_1DE4D0
1DE4BC:  LDR             R1, =(RwEngineInstance_ptr - 0x1DE4C2)
1DE4BE:  ADD             R1, PC; RwEngineInstance_ptr
1DE4C0:  LDR             R1, [R1]; RwEngineInstance
1DE4C2:  LDR             R1, [R1]
1DE4C4:  LDR.W           R1, [R1,#0x130]
1DE4C8:  BLX             R1
1DE4CA:  MOVS            R0, #0
1DE4CC:  STR.W           R0, [R8]
1DE4D0:  LDR.W           R0, [R8,#0x20]
1DE4D4:  CBZ             R0, loc_1DE4EA
1DE4D6:  LDR             R1, =(RwEngineInstance_ptr - 0x1DE4DC)
1DE4D8:  ADD             R1, PC; RwEngineInstance_ptr
1DE4DA:  LDR             R1, [R1]; RwEngineInstance
1DE4DC:  LDR             R1, [R1]
1DE4DE:  LDR.W           R1, [R1,#0x130]
1DE4E2:  BLX             R1
1DE4E4:  MOVS            R0, #0
1DE4E6:  STRD.W          R0, R0, [R8,#0x20]
1DE4EA:  VMOV.I32        Q8, #0
1DE4EE:  MOVS            R0, #0
1DE4F0:  MOV             R1, R8
1DE4F2:  STR.W           R0, [R8,#0x24]
1DE4F6:  VST1.32         {D16-D17}, [R1]!
1DE4FA:  VST1.32         {D16-D17}, [R1]
1DE4FE:  STR.W           R0, [R8,#0x20]
1DE502:  LDR.W           R2, [R10,#4]!
1DE506:  B               loc_1DE556
1DE508:  LDR.W           R1, [R10,#8]
1DE50C:  MOVS            R0, #0
1DE50E:  ADD.W           R2, R0, R0,LSL#2
1DE512:  ADD.W           R3, R1, R2,LSL#3
1DE516:  LDR             R3, [R3,#4]
1DE518:  CBZ             R3, loc_1DE548
1DE51A:  MOVS            R3, #0
1DE51C:  ADD.W           R6, R1, R2,LSL#3
1DE520:  LDR             R6, [R6,#8]
1DE522:  LDR.W           R4, [R6,R3,LSL#2]
1DE526:  CMP             R4, R5
1DE528:  BCC             loc_1DE53C
1DE52A:  SUB.W           R1, R4, #1
1DE52E:  IT EQ
1DE530:  MOVEQ.W         R1, #0xFFFFFFFF
1DE534:  STR.W           R1, [R6,R3,LSL#2]
1DE538:  LDR.W           R1, [R10,#8]
1DE53C:  ADD.W           R6, R1, R2,LSL#3
1DE540:  ADDS            R3, #1
1DE542:  LDR             R6, [R6,#4]
1DE544:  CMP             R3, R6
1DE546:  BCC             loc_1DE51C
1DE548:  LDR.W           R2, [R9]
1DE54C:  ADDS            R0, #1
1DE54E:  SUBS            R3, R2, #1
1DE550:  CMP             R0, R3
1DE552:  BCC             loc_1DE50E
1DE554:  MOV             R10, R9
1DE556:  SUBS            R0, R2, #1
1DE558:  STR.W           R0, [R10]
1DE55C:  MOV             R0, R8
1DE55E:  POP.W           {R8-R10}
1DE562:  POP             {R4-R7,PC}
