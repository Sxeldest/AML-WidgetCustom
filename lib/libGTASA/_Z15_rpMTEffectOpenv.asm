; =========================================================
; Game Engine Function: _Z15_rpMTEffectOpenv
; Address            : 0x1C52F0 - 0x1C5430
; =========================================================

1C52F0:  PUSH            {R4-R7,LR}
1C52F2:  ADD             R7, SP, #0xC
1C52F4:  PUSH.W          {R8}
1C52F8:  SUB             SP, SP, #8
1C52FA:  LDR             R0, =(_rpMultiTextureModule_ptr - 0x1C5302)
1C52FC:  LDR             R1, =(RwEngineInstance_ptr - 0x1C5304)
1C52FE:  ADD             R0, PC; _rpMultiTextureModule_ptr
1C5300:  ADD             R1, PC; RwEngineInstance_ptr
1C5302:  LDR             R0, [R0]; _rpMultiTextureModule
1C5304:  LDR             R1, [R1]; RwEngineInstance
1C5306:  LDR             R2, [R0]
1C5308:  LDR             R3, [R1]
1C530A:  ADDS            R6, R3, R2
1C530C:  STR             R6, [R3,R2]
1C530E:  LDR             R0, [R0]
1C5310:  LDR             R2, [R1]
1C5312:  ADD             R0, R2
1C5314:  STR             R0, [R0,#4]
1C5316:  LDR             R0, [R1]
1C5318:  LDR.W           R1, [R0,#0x12C]
1C531C:  MOVS            R0, #0x10
1C531E:  BLX             R1
1C5320:  MOVW            R8, #0x13
1C5324:  CMP             R0, #0
1C5326:  MOVT            R8, #0x8000
1C532A:  BEQ             loc_1C53AE
1C532C:  LDR             R1, =(RwEngineInstance_ptr - 0x1C5334)
1C532E:  LDR             R2, =(_rpMultiTextureModule_ptr - 0x1C533A)
1C5330:  ADD             R1, PC; RwEngineInstance_ptr
1C5332:  STRD.W          R0, R0, [R0]
1C5336:  ADD             R2, PC; _rpMultiTextureModule_ptr
1C5338:  LDR.W           R12, =(dword_6B7234 - 0x1C5344)
1C533C:  LDR             R1, [R1]; RwEngineInstance
1C533E:  LDR             R2, [R2]; _rpMultiTextureModule
1C5340:  ADD             R12, PC; dword_6B7234
1C5342:  LDR             R6, [R1]
1C5344:  LDR             R3, [R2]
1C5346:  ADDS            R4, R6, R3
1C5348:  LDR             R5, [R6,R3]
1C534A:  STRD.W          R5, R4, [R0,#8]
1C534E:  LDR             R5, [R6,R3]
1C5350:  ADD.W           R4, R0, #8
1C5354:  STR             R4, [R5,#4]
1C5356:  STR             R4, [R6,R3]
1C5358:  LDR             R2, [R2]
1C535A:  LDR             R3, [R1]
1C535C:  STR.W           R0, [R12]
1C5360:  ADD             R2, R3
1C5362:  STR             R0, [R2,#8]
1C5364:  LDR             R0, [R1]
1C5366:  LDR.W           R1, [R0,#0x12C]
1C536A:  MOV.W           R0, #0x220
1C536E:  BLX             R1
1C5370:  MOV             R5, R0
1C5372:  CBZ             R5, loc_1C53CA
1C5374:  MOV             R0, R5
1C5376:  MOV.W           R1, #0x220
1C537A:  BLX             j___aeabi_memclr8_1
1C537E:  LDR             R0, =(_rpMultiTextureModule_ptr - 0x1C5386)
1C5380:  LDR             R1, =(RwEngineInstance_ptr - 0x1C5388)
1C5382:  ADD             R0, PC; _rpMultiTextureModule_ptr
1C5384:  ADD             R1, PC; RwEngineInstance_ptr
1C5386:  LDR             R0, [R0]; _rpMultiTextureModule
1C5388:  LDR             R1, [R1]; RwEngineInstance
1C538A:  LDR             R2, [R0]
1C538C:  LDR             R3, [R1]
1C538E:  ADD             R2, R3
1C5390:  STR             R5, [R2,#0x10]
1C5392:  LDR             R2, [R0]
1C5394:  LDR             R3, [R1]
1C5396:  ADD             R2, R3
1C5398:  ADD.W           R3, R5, #0x100
1C539C:  MOVS            R5, #1
1C539E:  STR             R3, [R2,#0x14]
1C53A0:  LDR             R0, [R0]
1C53A2:  LDR             R1, [R1]
1C53A4:  ADD             R0, R1
1C53A6:  MOV.W           R1, #0x100
1C53AA:  STR             R1, [R0,#0xC]
1C53AC:  B               loc_1C5426
1C53AE:  MOVS            R5, #0
1C53B0:  MOV             R0, R8; int
1C53B2:  MOVS            R1, #0x10
1C53B4:  STR             R5, [SP,#0x18+var_18]
1C53B6:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1C53BA:  STR             R0, [SP,#0x18+var_14]
1C53BC:  MOV             R0, SP
1C53BE:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1C53C2:  LDR             R0, =(dword_6B7234 - 0x1C53C8)
1C53C4:  ADD             R0, PC; dword_6B7234
1C53C6:  STR             R5, [R0]
1C53C8:  B               loc_1C5426
1C53CA:  LDR             R0, =(_rpMultiTextureModule_ptr - 0x1C53D4)
1C53CC:  MOVS            R5, #0
1C53CE:  LDR             R1, =(RwEngineInstance_ptr - 0x1C53D6)
1C53D0:  ADD             R0, PC; _rpMultiTextureModule_ptr
1C53D2:  ADD             R1, PC; RwEngineInstance_ptr
1C53D4:  LDR             R0, [R0]; _rpMultiTextureModule
1C53D6:  LDR             R1, [R1]; RwEngineInstance
1C53D8:  LDR             R0, [R0]
1C53DA:  LDR             R1, [R1]
1C53DC:  ADD             R0, R1
1C53DE:  LDR             R6, [R0,#8]
1C53E0:  STR             R5, [R0,#8]
1C53E2:  LDR             R0, [R6]
1C53E4:  CMP             R0, R6
1C53E6:  BEQ             loc_1C53F6
1C53E8:  LDR.W           R4, [R0],#-0x28
1C53EC:  BLX             j__Z26RpMTEffectDictRemoveEffectP10RpMTEffect; RpMTEffectDictRemoveEffect(RpMTEffect *)
1C53F0:  CMP             R4, R6
1C53F2:  MOV             R0, R4
1C53F4:  BNE             loc_1C53E8
1C53F6:  LDR             R2, =(RwEngineInstance_ptr - 0x1C5402)
1C53F8:  LDRD.W          R0, R1, [R6,#8]
1C53FC:  STR             R0, [R1]
1C53FE:  ADD             R2, PC; RwEngineInstance_ptr
1C5400:  LDRD.W          R0, R1, [R6,#8]
1C5404:  LDR             R2, [R2]; RwEngineInstance
1C5406:  STR             R1, [R0,#4]
1C5408:  LDR             R0, [R2]
1C540A:  LDR.W           R1, [R0,#0x130]
1C540E:  MOV             R0, R6
1C5410:  BLX             R1
1C5412:  MOV             R0, R8; int
1C5414:  MOV.W           R1, #0x220
1C5418:  STR             R5, [SP,#0x18+var_18]
1C541A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1C541E:  STR             R0, [SP,#0x18+var_14]
1C5420:  MOV             R0, SP
1C5422:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1C5426:  MOV             R0, R5
1C5428:  ADD             SP, SP, #8
1C542A:  POP.W           {R8}
1C542E:  POP             {R4-R7,PC}
