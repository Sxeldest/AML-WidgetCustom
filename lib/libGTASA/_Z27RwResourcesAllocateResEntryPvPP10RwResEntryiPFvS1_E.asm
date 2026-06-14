; =========================================================
; Game Engine Function: _Z27RwResourcesAllocateResEntryPvPP10RwResEntryiPFvS1_E
; Address            : 0x1E5244 - 0x1E53F4
; =========================================================

1E5244:  PUSH            {R4-R7,LR}
1E5246:  ADD             R7, SP, #0xC
1E5248:  PUSH.W          {R8-R11}
1E524C:  SUB             SP, SP, #0x24
1E524E:  LDR             R6, =(resourcesModule_ptr - 0x1E5258)
1E5250:  MOV             R8, R2
1E5252:  LDR             R2, =(RwEngineInstance_ptr - 0x1E525A)
1E5254:  ADD             R6, PC; resourcesModule_ptr
1E5256:  ADD             R2, PC; RwEngineInstance_ptr
1E5258:  LDR             R6, [R6]; resourcesModule
1E525A:  LDR             R2, [R2]; RwEngineInstance
1E525C:  LDR             R6, [R6]
1E525E:  LDR             R4, [R2]
1E5260:  ADDS            R2, R4, R6
1E5262:  LDR             R5, [R4,R6]
1E5264:  LDR             R2, [R2,#4]
1E5266:  STR             R1, [SP,#0x40+var_38]
1E5268:  ADD             R2, R8
1E526A:  STRD.W          R0, R3, [SP,#0x40+var_40]
1E526E:  CMP             R2, R5
1E5270:  BLE             loc_1E535E
1E5272:  LDR             R2, =(RwEngineInstance_ptr - 0x1E527A)
1E5274:  LDR             R3, =(RwEngineInstance_ptr - 0x1E527C)
1E5276:  ADD             R2, PC; RwEngineInstance_ptr
1E5278:  ADD             R3, PC; RwEngineInstance_ptr
1E527A:  LDR             R0, [R2]; RwEngineInstance
1E527C:  LDR             R2, =(resourcesModule_ptr - 0x1E5284)
1E527E:  STR             R0, [SP,#0x40+var_34]
1E5280:  ADD             R2, PC; resourcesModule_ptr
1E5282:  LDR             R5, [R3]; RwEngineInstance
1E5284:  LDR             R3, =(RwEngineInstance_ptr - 0x1E528E)
1E5286:  LDR             R0, [R2]; resourcesModule
1E5288:  LDR             R2, =(resourcesModule_ptr - 0x1E5292)
1E528A:  ADD             R3, PC; RwEngineInstance_ptr
1E528C:  STR             R0, [SP,#0x40+var_30]
1E528E:  ADD             R2, PC; resourcesModule_ptr
1E5290:  LDR.W           R11, [R3]; RwEngineInstance
1E5294:  LDR             R3, =(RwEngineInstance_ptr - 0x1E52A0)
1E5296:  LDR.W           R10, [R2]; resourcesModule
1E529A:  LDR             R2, =(RwEngineInstance_ptr - 0x1E52A2)
1E529C:  ADD             R3, PC; RwEngineInstance_ptr
1E529E:  ADD             R2, PC; RwEngineInstance_ptr
1E52A0:  LDR.W           R9, [R3]; RwEngineInstance
1E52A4:  LDR             R0, [R2]; RwEngineInstance
1E52A6:  LDR             R2, =(resourcesModule_ptr - 0x1E52AE)
1E52A8:  STR             R0, [SP,#0x40+var_2C]
1E52AA:  ADD             R2, PC; resourcesModule_ptr
1E52AC:  LDR             R0, [R2]; resourcesModule
1E52AE:  STR             R0, [SP,#0x40+var_28]
1E52B0:  ADDS            R0, R4, R6
1E52B2:  LDR             R1, [R0,#0x20]
1E52B4:  LDR             R6, [R1,#4]
1E52B6:  CMP             R6, R1
1E52B8:  BEQ             loc_1E52F4
1E52BA:  LDR             R1, [R6,#0x14]
1E52BC:  CMP             R1, #0
1E52BE:  ITT NE
1E52C0:  MOVNE           R0, R6
1E52C2:  BLXNE           R1
1E52C4:  LDR             R0, [R6,#0x10]
1E52C6:  CMP             R0, #0
1E52C8:  ITT NE
1E52CA:  MOVNE           R1, #0
1E52CC:  STRNE           R1, [R0]
1E52CE:  LDR             R0, [R6]
1E52D0:  CBZ             R0, loc_1E533A
1E52D2:  LDR             R1, [R6,#4]
1E52D4:  STR             R0, [R1]
1E52D6:  LDRD.W          R0, R1, [R6]
1E52DA:  STR             R1, [R0,#4]
1E52DC:  LDR             R0, [SP,#0x40+var_28]
1E52DE:  LDR.W           R1, [R9]
1E52E2:  LDR             R2, [R6,#8]
1E52E4:  LDR             R0, [R0]
1E52E6:  ADD             R0, R1
1E52E8:  LDR             R1, [R0,#4]
1E52EA:  SUBS            R1, R1, R2
1E52EC:  STR             R1, [R0,#4]
1E52EE:  LDR.W           R0, [R9]
1E52F2:  B               loc_1E5342
1E52F4:  LDR             R1, [R0,#0x24]
1E52F6:  LDR             R6, [R1,#4]
1E52F8:  CMP             R6, R1
1E52FA:  BEQ             loc_1E53CC
1E52FC:  LDR             R1, [R6,#8]
1E52FE:  LDR             R2, [R0,#8]
1E5300:  ADD             R1, R2
1E5302:  STR             R1, [R0,#8]
1E5304:  LDR             R1, [R6,#0x14]
1E5306:  CMP             R1, #0
1E5308:  ITT NE
1E530A:  MOVNE           R0, R6
1E530C:  BLXNE           R1
1E530E:  LDR             R0, [R6,#0x10]
1E5310:  CMP             R0, #0
1E5312:  ITT NE
1E5314:  MOVNE           R1, #0
1E5316:  STRNE           R1, [R0]
1E5318:  LDR             R0, [R6]
1E531A:  CBZ             R0, loc_1E533E
1E531C:  LDR             R1, [R6,#4]
1E531E:  STR             R0, [R1]
1E5320:  LDRD.W          R0, R1, [R6]
1E5324:  STR             R1, [R0,#4]
1E5326:  LDR             R0, [SP,#0x40+var_30]
1E5328:  LDR             R1, [R5]
1E532A:  LDR             R2, [R6,#8]
1E532C:  LDR             R0, [R0]
1E532E:  ADD             R0, R1
1E5330:  LDR             R1, [R0,#4]
1E5332:  SUBS            R1, R1, R2
1E5334:  STR             R1, [R0,#4]
1E5336:  LDR             R0, [R5]
1E5338:  B               loc_1E5342
1E533A:  LDR             R0, [SP,#0x40+var_2C]
1E533C:  B               loc_1E5340
1E533E:  LDR             R0, [SP,#0x40+var_34]
1E5340:  LDR             R0, [R0]
1E5342:  LDR.W           R1, [R0,#0x130]
1E5346:  MOV             R0, R6
1E5348:  BLX             R1
1E534A:  LDR.W           R6, [R10]
1E534E:  LDR.W           R4, [R11]
1E5352:  ADDS            R2, R4, R6
1E5354:  LDR             R3, [R4,R6]
1E5356:  LDR             R2, [R2,#4]
1E5358:  ADD             R2, R8
1E535A:  CMP             R2, R3
1E535C:  BGT             loc_1E52B0
1E535E:  ADD.W           R5, R8, #0x18
1E5362:  LDR.W           R1, [R4,#0x12C]
1E5366:  MOV             R0, R5
1E5368:  BLX             R1
1E536A:  MOV             R6, R0
1E536C:  CBZ             R6, loc_1E53BE
1E536E:  LDR             R0, =(resourcesModule_ptr - 0x1E5376)
1E5370:  LDR             R1, =(RwEngineInstance_ptr - 0x1E5378)
1E5372:  ADD             R0, PC; resourcesModule_ptr
1E5374:  ADD             R1, PC; RwEngineInstance_ptr
1E5376:  LDR             R0, [R0]; resourcesModule
1E5378:  LDR             R1, [R1]; RwEngineInstance
1E537A:  LDR             R2, [R0]
1E537C:  LDR             R3, [R1]
1E537E:  ADD             R2, R3
1E5380:  LDR             R2, [R2,#0x24]
1E5382:  LDR             R2, [R2]
1E5384:  STR             R2, [R6]
1E5386:  LDR             R2, [R0]
1E5388:  LDR             R3, [R1]
1E538A:  ADD             R2, R3
1E538C:  LDR             R3, [R2,#0x24]
1E538E:  STR             R3, [R6,#4]
1E5390:  LDR             R3, [R2,#0x24]
1E5392:  LDR             R3, [R3]
1E5394:  STR             R6, [R3,#4]
1E5396:  LDR             R2, [R2,#0x24]
1E5398:  STR             R6, [R2]
1E539A:  STR.W           R8, [R6,#8]
1E539E:  LDR             R2, [SP,#0x40+var_40]
1E53A0:  STR             R2, [R6,#0xC]
1E53A2:  LDR             R2, [SP,#0x40+var_38]
1E53A4:  STR             R2, [R6,#0x10]
1E53A6:  LDR             R3, [SP,#0x40+var_3C]
1E53A8:  CMP             R2, #0
1E53AA:  STR             R3, [R6,#0x14]
1E53AC:  LDR             R0, [R0]
1E53AE:  LDR             R1, [R1]
1E53B0:  ADD             R0, R1
1E53B2:  LDR             R1, [R0,#4]
1E53B4:  ADD             R1, R8
1E53B6:  STR             R1, [R0,#4]
1E53B8:  IT NE
1E53BA:  STRNE           R6, [R2]
1E53BC:  B               loc_1E53EA
1E53BE:  MOVS            R0, #0x13
1E53C0:  MOVS            R6, #0
1E53C2:  STR             R6, [SP,#0x40+var_24]
1E53C4:  MOVT            R0, #0x8000
1E53C8:  MOV             R1, R5
1E53CA:  B               loc_1E53DE
1E53CC:  LDR             R1, [SP,#0x40+var_38]
1E53CE:  MOVS            R6, #0
1E53D0:  CMP             R1, #0
1E53D2:  ITT NE
1E53D4:  MOVNE           R0, #0
1E53D6:  STRNE           R0, [R1]
1E53D8:  MOV             R1, R8
1E53DA:  MOVS            R0, #0xC; int
1E53DC:  STR             R6, [SP,#0x40+var_24]
1E53DE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E53E2:  STR             R0, [SP,#0x40+var_20]
1E53E4:  ADD             R0, SP, #0x40+var_24
1E53E6:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E53EA:  MOV             R0, R6
1E53EC:  ADD             SP, SP, #0x24 ; '$'
1E53EE:  POP.W           {R8-R11}
1E53F2:  POP             {R4-R7,PC}
