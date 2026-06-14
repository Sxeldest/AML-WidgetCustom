; =========================================================
; Game Engine Function: alcLoopbackOpenDeviceSOFT
; Address            : 0x24E300 - 0x24E528
; =========================================================

24E300:  PUSH            {R4-R7,LR}
24E302:  ADD             R7, SP, #0xC
24E304:  PUSH.W          {R8}
24E308:  LDR             R1, =(sub_24CAC8+1 - 0x24E312)
24E30A:  MOV             R4, R0
24E30C:  LDR             R0, =(unk_6D6348 - 0x24E314)
24E30E:  ADD             R1, PC; sub_24CAC8 ; init_routine
24E310:  ADD             R0, PC; unk_6D6348 ; once_control
24E312:  BLX             pthread_once
24E316:  CBZ             R4, loc_24E33E
24E318:  LDR             R1, =(aOpenalSoft - 0x24E320); "OpenAL Soft"
24E31A:  MOV             R0, R4; char *
24E31C:  ADD             R1, PC; "OpenAL Soft"
24E31E:  BLX             strcmp
24E322:  CBZ             R0, loc_24E33E
24E324:  LDR             R0, =(byte_6D684C - 0x24E32A)
24E326:  ADD             R0, PC; byte_6D684C
24E328:  LDRB            R0, [R0]
24E32A:  CMP             R0, #0
24E32C:  ITT NE
24E32E:  MOVNE           R0, #5; sig
24E330:  BLXNE           raise
24E334:  LDR             R0, =(dword_6D633C - 0x24E33E)
24E336:  MOVW            R1, #0xA004
24E33A:  ADD             R0, PC; dword_6D633C
24E33C:  B               loc_24E44C
24E33E:  MOV             R8, #0x161A8
24E346:  ADD.W           R0, R8, #0x28 ; '('; byte_count
24E34A:  BLX             malloc
24E34E:  MOV             R4, R0
24E350:  CMP             R4, #0
24E352:  BEQ             loc_24E434
24E354:  MOVS            R5, #0
24E356:  STRB.W          R5, [R4],#1
24E35A:  TST.W           R4, #0xF
24E35E:  BEQ             loc_24E36C
24E360:  MOVS            R0, #0x55 ; 'U'
24E362:  STRB.W          R0, [R4],#1
24E366:  TST.W           R4, #0xF
24E36A:  BNE             loc_24E362
24E36C:  MOVW            R1, #:lower16:(elf_hash_chain+0x6058)
24E370:  MOV             R0, R4
24E372:  MOVT            R1, #:upper16:(elf_hash_chain+0x6058)
24E376:  BLX             j___aeabi_memclr8_1
24E37A:  LDR             R0, =(off_68554C - 0x24E384); "loopback" ...
24E37C:  ADD.W           R6, R8, #4
24E380:  ADD             R0, PC; off_68554C
24E382:  ADDS            R0, #0x10
24E384:  STR             R0, [R4,R6]
24E386:  MOVS            R0, #1
24E388:  STRB            R0, [R4,#4]
24E38A:  STR             R0, [R4]
24E38C:  MOVS            R0, #2
24E38E:  STR             R0, [R4,#8]
24E390:  ADD.W           R0, R4, #0xC
24E394:  BLX             j_InitializeCriticalSection
24E398:  LDR             R0, =(g_mob_configGlobals_ptr - 0x24E3A6)
24E39A:  ADR             R1, dword_24E530
24E39C:  VLD1.64         {D16-D17}, [R1@128]
24E3A0:  MOVS            R1, #4
24E3A2:  ADD             R0, PC; g_mob_configGlobals_ptr
24E3A4:  MOV.W           R2, #0x100
24E3A8:  STR             R5, [R4,#0x28]
24E3AA:  STRD.W          R5, R5, [R4,#0xB0]
24E3AE:  STR.W           R5, [R4,#0xB8]
24E3B2:  STR             R5, [R4,#0x24]
24E3B4:  STR.W           R5, [R4,R8]
24E3B8:  STR             R5, [R4,#0x50]
24E3BA:  STR             R5, [R4,#0x54]
24E3BC:  STR             R5, [R4,#0x58]
24E3BE:  STR             R5, [R4,#0x5C]
24E3C0:  STR             R5, [R4,#0x60]
24E3C2:  STR             R5, [R4,#0x74]
24E3C4:  STR             R5, [R4,#0x78]
24E3C6:  STR             R5, [R4,#0x7C]
24E3C8:  STRD.W          R2, R1, [R4,#0x2C]
24E3CC:  MOV.W           R2, #0xFFFFFFFF
24E3D0:  STR.W           R5, [R4,#0x80]
24E3D4:  STR.W           R5, [R4,#0x84]
24E3D8:  STRD.W          R1, R5, [R4,#0x3C]
24E3DC:  ADD.W           R1, R4, #0x10
24E3E0:  LDR             R0, [R0]; g_mob_configGlobals
24E3E2:  STRD.W          R5, R5, [R4,#0x44]
24E3E6:  STR             R2, [R4,#0x4C]
24E3E8:  STRD.W          R5, R5, [R4,#0x64]
24E3EC:  STRD.W          R5, R2, [R4,#0x6C]
24E3F0:  STR.W           R5, [R4,#0x98]
24E3F4:  STR.W           R5, [R4,#0x9C]
24E3F8:  STR.W           R5, [R4,#0xA0]
24E3FC:  STR.W           R5, [R4,#0xA4]
24E400:  STRD.W          R5, R5, [R4,#0x88]
24E404:  STRD.W          R5, R2, [R4,#0x90]
24E408:  STR.W           R5, [R4,#0xA8]
24E40C:  VST1.64         {D16-D17}, [R1@128]
24E410:  MOVW            R1, #0x1406
24E414:  STR             R1, [R4,#0x20]
24E416:  LDR             R1, [R0]
24E418:  CMP             R1, #0
24E41A:  ITT NE
24E41C:  LDRNE           R2, [R1]
24E41E:  CMPNE           R2, #0
24E420:  BEQ             loc_24E430
24E422:  ADDS            R0, R1, #4
24E424:  CMP             R2, #0x10
24E426:  BEQ             loc_24E452
24E428:  LDR             R2, [R0,#4]
24E42A:  ADDS            R0, #8
24E42C:  CMP             R2, #0
24E42E:  BNE             loc_24E424
24E430:  LDR             R0, [R4,#0x2C]
24E432:  B               loc_24E456
24E434:  LDR             R0, =(byte_6D684C - 0x24E43A)
24E436:  ADD             R0, PC; byte_6D684C
24E438:  LDRB            R0, [R0]
24E43A:  CMP             R0, #0
24E43C:  ITT NE
24E43E:  MOVNE           R0, #5; sig
24E440:  BLXNE           raise
24E444:  LDR             R0, =(dword_6D633C - 0x24E44E)
24E446:  MOVW            R1, #0xA005
24E44A:  ADD             R0, PC; dword_6D633C
24E44C:  STR             R1, [R0]
24E44E:  MOVS            R4, #0
24E450:  B               loc_24E520
24E452:  LDR             R0, [R0]
24E454:  STR             R0, [R4,#0x2C]
24E456:  CMP             R0, #0
24E458:  ITT EQ
24E45A:  MOVEQ.W         R0, #0x100
24E45E:  STREQ           R0, [R4,#0x2C]
24E460:  CMP             R1, #0
24E462:  ITT NE
24E464:  LDRNE           R3, [R1]
24E466:  CMPNE           R3, #0
24E468:  BEQ             loc_24E478
24E46A:  ADDS            R2, R1, #4
24E46C:  CMP             R3, #0x11
24E46E:  BEQ             loc_24E47C
24E470:  LDR             R3, [R2,#4]
24E472:  ADDS            R2, #8
24E474:  CMP             R3, #0
24E476:  BNE             loc_24E46C
24E478:  LDR             R2, [R4,#0x30]
24E47A:  B               loc_24E480
24E47C:  LDR             R2, [R2]
24E47E:  STR             R2, [R4,#0x30]
24E480:  CMP             R2, #0
24E482:  ITT EQ
24E484:  MOVEQ           R2, #4
24E486:  STREQ           R2, [R4,#0x30]
24E488:  CMP             R1, #0
24E48A:  ITT NE
24E48C:  LDRNE           R2, [R1]
24E48E:  CMPNE           R2, #0
24E490:  BEQ             loc_24E4A0
24E492:  ADDS            R1, #4
24E494:  CMP             R2, #8
24E496:  BEQ             loc_24E4A4
24E498:  LDR             R2, [R1,#4]
24E49A:  ADDS            R1, #8
24E49C:  CMP             R2, #0
24E49E:  BNE             loc_24E494
24E4A0:  LDR             R1, [R4,#0x3C]
24E4A2:  B               loc_24E4A8
24E4A4:  LDR             R1, [R1]
24E4A6:  STR             R1, [R4,#0x3C]
24E4A8:  CMP             R1, #5
24E4AA:  SUB.W           R0, R0, #1
24E4AE:  ITT CS
24E4B0:  MOVCS           R1, #4
24E4B2:  STRCS           R1, [R4,#0x3C]
24E4B4:  MOVS            R1, #1
24E4B6:  STRD.W          R0, R1, [R4,#0x34]
24E4BA:  ADR             R1, aLoopback; "Loopback"
24E4BC:  LDR             R0, [R4,R6]
24E4BE:  LDR             R2, [R0]
24E4C0:  MOV             R0, R4
24E4C2:  BLX             R2
24E4C4:  LDR             R1, =(dword_6D6408 - 0x24E4D2)
24E4C6:  ADD.W           R0, R8, #0x10
24E4CA:  LDR             R2, =(dword_6D6408 - 0x24E4D4)
24E4CC:  LDR             R3, =(dword_6D6408 - 0x24E4D6)
24E4CE:  ADD             R1, PC; dword_6D6408
24E4D0:  ADD             R2, PC; dword_6D6408
24E4D2:  ADD             R3, PC; dword_6D6408
24E4D4:  B               loc_24E4DE
24E4D6:  CLREX.W
24E4DA:  DMB.W           ISH
24E4DE:  LDR             R6, [R1]
24E4E0:  STR             R6, [R4,R0]
24E4E2:  LDR             R6, [R4,R0]
24E4E4:  LDREX.W         R5, [R1]
24E4E8:  CMP             R5, R6
24E4EA:  BNE             loc_24E4D6
24E4EC:  DMB.W           ISH
24E4F0:  STREX.W         R5, R4, [R2]
24E4F4:  CBZ             R5, loc_24E500
24E4F6:  LDREX.W         R5, [R3]
24E4FA:  CMP             R5, R6
24E4FC:  BEQ             loc_24E4F0
24E4FE:  B               loc_24E4D6
24E500:  LDR             R0, =(LogLevel_ptr - 0x24E50A)
24E502:  DMB.W           ISH
24E506:  ADD             R0, PC; LogLevel_ptr
24E508:  LDR             R0, [R0]; LogLevel
24E50A:  LDR             R0, [R0]
24E50C:  CMP             R0, #2
24E50E:  BLS             loc_24E520
24E510:  LDR             R0, =(aIi - 0x24E51C); "(II)"
24E512:  ADR             R2, aCreatedDeviceP; "Created device %p\n"
24E514:  LDR             R1, =(aAlcloopbackope_0 - 0x24E51E); "alcLoopbackOpenDeviceSOFT"
24E516:  MOV             R3, R4
24E518:  ADD             R0, PC; "(II)"
24E51A:  ADD             R1, PC; "alcLoopbackOpenDeviceSOFT"
24E51C:  BLX             j_al_print
24E520:  MOV             R0, R4
24E522:  POP.W           {R8}
24E526:  POP             {R4-R7,PC}
