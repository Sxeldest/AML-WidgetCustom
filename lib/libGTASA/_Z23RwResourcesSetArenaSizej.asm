; =========================================================
; Game Engine Function: _Z23RwResourcesSetArenaSizej
; Address            : 0x1E5424 - 0x1E553C
; =========================================================

1E5424:  PUSH            {R4-R7,LR}
1E5426:  ADD             R7, SP, #0xC
1E5428:  PUSH.W          {R8-R11}
1E542C:  SUB             SP, SP, #0xC
1E542E:  LDR             R1, =(resourcesModule_ptr - 0x1E5434)
1E5430:  ADD             R1, PC; resourcesModule_ptr
1E5432:  LDR             R1, [R1]; resourcesModule
1E5434:  LDR             R1, [R1,#(dword_6BD080 - 0x6BD07C)]
1E5436:  CMP             R1, #0
1E5438:  BEQ             loc_1E5522
1E543A:  LDR             R1, =(resourcesModule_ptr - 0x1E5442)
1E543C:  LDR             R2, =(RwEngineInstance_ptr - 0x1E5444)
1E543E:  ADD             R1, PC; resourcesModule_ptr
1E5440:  ADD             R2, PC; RwEngineInstance_ptr
1E5442:  LDR             R1, [R1]; resourcesModule
1E5444:  LDR             R2, [R2]; RwEngineInstance
1E5446:  LDR             R1, [R1]
1E5448:  LDR             R2, [R2]
1E544A:  ADDS            R5, R2, R1
1E544C:  STR             R0, [R2,R1]
1E544E:  LDR             R1, [R5,#4]
1E5450:  CMP             R1, R0
1E5452:  BLE             loc_1E552E
1E5454:  LDR             R0, =(RwEngineInstance_ptr - 0x1E5460)
1E5456:  MOV.W           R10, #0
1E545A:  LDR             R1, =(RwEngineInstance_ptr - 0x1E5462)
1E545C:  ADD             R0, PC; RwEngineInstance_ptr
1E545E:  ADD             R1, PC; RwEngineInstance_ptr
1E5460:  LDR             R0, [R0]; RwEngineInstance
1E5462:  STR             R0, [SP,#0x28+var_24]
1E5464:  LDR             R0, =(resourcesModule_ptr - 0x1E546C)
1E5466:  LDR             R6, [R1]; RwEngineInstance
1E5468:  ADD             R0, PC; resourcesModule_ptr
1E546A:  LDR             R1, =(RwEngineInstance_ptr - 0x1E5472)
1E546C:  LDR             R0, [R0]; resourcesModule
1E546E:  ADD             R1, PC; RwEngineInstance_ptr
1E5470:  STR             R0, [SP,#0x28+var_20]
1E5472:  LDR             R0, =(RwEngineInstance_ptr - 0x1E547C)
1E5474:  LDR.W           R9, [R1]; RwEngineInstance
1E5478:  ADD             R0, PC; RwEngineInstance_ptr
1E547A:  LDR.W           R11, [R0]; RwEngineInstance
1E547E:  LDR             R0, =(resourcesModule_ptr - 0x1E5484)
1E5480:  ADD             R0, PC; resourcesModule_ptr
1E5482:  LDR.W           R8, [R0]; resourcesModule
1E5486:  LDR             R0, [R5,#0x20]
1E5488:  LDR             R4, [R0,#4]
1E548A:  CMP             R4, R0
1E548C:  BEQ             loc_1E54C8
1E548E:  LDR             R1, [R4,#0x14]
1E5490:  CMP             R1, #0
1E5492:  ITT NE
1E5494:  MOVNE           R0, R4
1E5496:  BLXNE           R1
1E5498:  LDR             R0, [R4,#0x10]
1E549A:  CMP             R0, #0
1E549C:  IT NE
1E549E:  STRNE.W         R10, [R0]
1E54A2:  LDR             R0, [R4]
1E54A4:  CBZ             R0, loc_1E5506
1E54A6:  LDR             R1, [R4,#4]
1E54A8:  STR             R0, [R1]
1E54AA:  LDRD.W          R0, R1, [R4]
1E54AE:  STR             R1, [R0,#4]
1E54B0:  LDR.W           R0, [R8]
1E54B4:  LDR.W           R1, [R9]
1E54B8:  LDR             R2, [R4,#8]
1E54BA:  ADD             R0, R1
1E54BC:  LDR             R1, [R0,#4]
1E54BE:  SUBS            R1, R1, R2
1E54C0:  STR             R1, [R0,#4]
1E54C2:  LDR.W           R0, [R9]
1E54C6:  B               loc_1E5510
1E54C8:  LDR             R0, [R5,#0x24]
1E54CA:  LDR             R4, [R0,#4]
1E54CC:  CMP             R4, R0
1E54CE:  BEQ             loc_1E5538
1E54D0:  LDR             R1, [R4,#0x14]
1E54D2:  CMP             R1, #0
1E54D4:  ITT NE
1E54D6:  MOVNE           R0, R4
1E54D8:  BLXNE           R1
1E54DA:  LDR             R0, [R4,#0x10]
1E54DC:  CMP             R0, #0
1E54DE:  IT NE
1E54E0:  STRNE.W         R10, [R0]
1E54E4:  LDR             R0, [R4]
1E54E6:  CBZ             R0, loc_1E550C
1E54E8:  LDR             R1, [R4,#4]
1E54EA:  STR             R0, [R1]
1E54EC:  LDRD.W          R0, R1, [R4]
1E54F0:  STR             R1, [R0,#4]
1E54F2:  LDR             R0, [SP,#0x28+var_20]
1E54F4:  LDR             R1, [R6]
1E54F6:  LDR             R2, [R4,#8]
1E54F8:  LDR             R0, [R0]
1E54FA:  ADD             R0, R1
1E54FC:  LDR             R1, [R0,#4]
1E54FE:  SUBS            R1, R1, R2
1E5500:  STR             R1, [R0,#4]
1E5502:  LDR             R0, [R6]
1E5504:  B               loc_1E5510
1E5506:  LDR.W           R0, [R11]
1E550A:  B               loc_1E5510
1E550C:  LDR             R0, [SP,#0x28+var_24]
1E550E:  LDR             R0, [R0]
1E5510:  LDR.W           R1, [R0,#0x130]
1E5514:  MOV             R0, R4
1E5516:  BLX             R1
1E5518:  LDRD.W          R0, R1, [R5]
1E551C:  CMP             R1, R0
1E551E:  BGT             loc_1E5486
1E5520:  B               loc_1E552E
1E5522:  LDR             R1, =(RwEngineInstance_ptr - 0x1E5528)
1E5524:  ADD             R1, PC; RwEngineInstance_ptr
1E5526:  LDR             R1, [R1]; RwEngineInstance
1E5528:  LDR             R1, [R1]
1E552A:  STR.W           R0, [R1,#0x14C]
1E552E:  MOVS            R0, #1
1E5530:  ADD             SP, SP, #0xC
1E5532:  POP.W           {R8-R11}
1E5536:  POP             {R4-R7,PC}
1E5538:  MOVS            R0, #0
1E553A:  B               loc_1E5530
