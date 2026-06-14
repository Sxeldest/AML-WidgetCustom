; =========================================================
; Game Engine Function: sub_F5328
; Address            : 0xF5328 - 0xF554A
; =========================================================

F5328:  PUSH            {R4-R7,LR}
F532A:  ADD             R7, SP, #0xC
F532C:  PUSH.W          {R7-R11}
F5330:  MOV             R8, R1
F5332:  MOV             R10, R0
F5334:  CBZ             R2, loc_F5350
F5336:  LDRB.W          R1, [R8]
F533A:  LDR.W           R0, [R8,#4]
F533E:  LSLS            R2, R1, #0x1F
F5340:  IT EQ
F5342:  LSREQ           R0, R1, #1
F5344:  SUBS            R0, #4
F5346:  CLZ.W           R0, R0
F534A:  MOV.W           R9, R0,LSR#5
F534E:  B               loc_F5354
F5350:  MOV.W           R9, #0
F5354:  LDRD.W          R5, R4, [R7,#arg_0]
F5358:  CMP             R3, #1
F535A:  BEQ             loc_F53A0
F535C:  CMP             R3, #0
F535E:  BNE.W           def_F5392; jumptable 000F5392 default case
F5362:  CMP.W           R9, #0
F5366:  BEQ             loc_F538C
F5368:  LDRB.W          R0, [R8]
F536C:  LDR.W           R6, [R8,#8]
F5370:  LSLS            R0, R0, #0x1F
F5372:  IT EQ
F5374:  ADDEQ.W         R6, R8, #1
F5378:  MOV             R0, R8
F537A:  ADD.W           R11, R6, #3
F537E:  BL              sub_E6564
F5382:  MOV             R2, R0
F5384:  MOV             R0, R6
F5386:  MOV             R1, R11
F5388:  BL              sub_F68FA
F538C:  CMP             R4, #4; switch 5 cases
F538E:  BHI.W           def_F5392; jumptable 000F5392 default case
F5392:  TBB.W           [PC,R4]; switch jump
F5396:  DCB 3; jump table for switch statement
F5397:  DCB 0x27
F5398:  DCB 0x35
F5399:  DCB 0x41
F539A:  DCB 0x1A
F539B:  ALIGN 2
F539C:  LDR             R0, =0x2000403; jumptable 000F5392 case 0
F539E:  B               loc_F5436
F53A0:  CMP             R4, #4; switch 5 cases
F53A2:  BHI             def_F5392; jumptable 000F5392 default case
F53A4:  TBB.W           [PC,R4]; switch jump
F53A8:  DCB 0x46; jump table for switch statement
F53A9:  DCB 3
F53AA:  DCB 0x4F
F53AB:  DCB 3
F53AC:  DCB 0x5D
F53AD:  ALIGN 2
F53AE:  MOVS            R0, #4; jumptable 000F53A4 cases 1,3
F53B0:  STRB.W          R0, [R10,#3]
F53B4:  MOVS            R0, #3
F53B6:  CMP             R5, #2
F53B8:  STRB.W          R0, [R10]
F53BC:  BEQ             loc_F548C
F53BE:  CMP             R5, #1
F53C0:  BEQ             loc_F5488
F53C2:  CMP             R5, #0
F53C4:  BNE             def_F5392; jumptable 000F5392 default case
F53C6:  MOVS            R0, #2
F53C8:  B               loc_F54AE
F53CA:  MOVS            R0, #3; jumptable 000F5392 case 4
F53CC:  STRB.W          R0, [R10,#3]
F53D0:  MOVS            R0, #4
F53D2:  CMP             R5, #2
F53D4:  STRB.W          R0, [R10]
F53D8:  BEQ             loc_F5492
F53DA:  CMP             R5, #1
F53DC:  BNE             loc_F5414
F53DE:  MOV.W           R0, #0x200
F53E2:  B               loc_F54CC
F53E4:  MOVS            R0, #2; jumptable 000F5392 case 1
F53E6:  STRB.W          R0, [R10,#3]
F53EA:  MOVS            R0, #3
F53EC:  CMP             R5, #2
F53EE:  STRB.W          R0, [R10]
F53F2:  BEQ             loc_F54C0
F53F4:  CMP             R5, #1
F53F6:  BEQ             loc_F54C6
F53F8:  CMP             R5, #0
F53FA:  BNE             def_F5392; jumptable 000F5392 default case
F53FC:  MOVS            R0, #4
F53FE:  B               loc_F54AE
F5400:  MOVS            R0, #3; jumptable 000F5392 case 2
F5402:  STRB.W          R0, [R10,#3]
F5406:  MOVS            R0, #4
F5408:  CMP             R5, #2
F540A:  STRB.W          R0, [R10]
F540E:  BEQ             loc_F5492
F5410:  CMP             R5, #1
F5412:  BEQ             loc_F5498
F5414:  CBNZ            R5, def_F5392; jumptable 000F5392 default case
F5416:  B               loc_F54AA
F5418:  MOVS            R0, #2; jumptable 000F5392 case 3
F541A:  STRB.W          R0, [R10,#3]
F541E:  MOVS            R0, #4
F5420:  CMP             R5, #2
F5422:  STRB.W          R0, [R10]
F5426:  BEQ             loc_F54CA
F5428:  CMP             R5, #1
F542A:  BEQ             loc_F54E4
F542C:  CBNZ            R5, def_F5392; jumptable 000F5392 default case
F542E:  MOV.W           R0, #0x300
F5432:  B               loc_F54AE
F5434:  LDR             R0, =0x4000203; jumptable 000F53A4 case 0
F5436:  STR.W           R0, [R10]
F543A:  CBZ             R5, loc_F5482
F543C:  CMP             R5, #2
F543E:  BEQ             loc_F5482
F5440:  CMP             R5, #1
F5442:  BNE             def_F5392; jumptable 000F5392 default case
F5444:  B               loc_F54D0
F5446:  MOVS            R0, #3; jumptable 000F53A4 case 2
F5448:  STRB.W          R0, [R10,#3]
F544C:  MOVS            R0, #2
F544E:  CMP             R5, #2
F5450:  STRB.W          R0, [R10]
F5454:  BEQ             loc_F5510
F5456:  CMP             R5, #1
F5458:  BEQ             loc_F552C
F545A:  CBNZ            R5, def_F5392; jumptable 000F5392 default case
F545C:  MOV.W           R0, #0x400
F5460:  B               loc_F54AE
F5462:  MOVS            R0, #4; jumptable 000F53A4 case 4
F5464:  STRB.W          R0, [R10,#3]
F5468:  MOVS            R0, #2
F546A:  CMP             R5, #2
F546C:  STRB.W          R0, [R10]
F5470:  BEQ             loc_F54B4
F5472:  CMP             R5, #1
F5474:  BEQ             loc_F54BA
F5476:  CBNZ            R5, def_F5392; jumptable 000F5392 default case
F5478:  MOVS            R0, #3
F547A:  B               loc_F54AE
F547C:  LDR             R0, =0x4000302; jumptable 000F5392 default case
F547E:  STR.W           R0, [R10]
F5482:  POP.W           {R3,R8-R11}
F5486:  POP             {R4-R7,PC}
F5488:  MOVS            R0, #2
F548A:  B               loc_F5530
F548C:  MOVW            R0, #0x201
F5490:  B               loc_F5514
F5492:  MOV.W           R0, #0x102
F5496:  B               loc_F54E8
F5498:  CMP.W           R9, #0
F549C:  BNE             loc_F54AA
F549E:  MOV             R0, R8
F54A0:  MOVS            R1, #0
F54A2:  MOVS            R2, #1
F54A4:  MOVS            R3, #0x20 ; ' '
F54A6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjjc; std::string::insert(uint,uint,char)
F54AA:  MOV.W           R0, #0x200
F54AE:  STRH.W          R0, [R10,#1]
F54B2:  B               loc_F5482
F54B4:  MOV.W           R0, #0x300
F54B8:  B               loc_F5530
F54BA:  MOVW            R0, #0x103
F54BE:  B               loc_F5514
F54C0:  MOVW            R0, #0x401
F54C4:  B               loc_F54E8
F54C6:  MOVS            R0, #4
F54C8:  B               loc_F54CC
F54CA:  MOVS            R0, #3
F54CC:  STRH.W          R0, [R10,#1]
F54D0:  CMP.W           R9, #0
F54D4:  BNE             loc_F5482
F54D6:  MOV             R0, R8
F54D8:  MOVS            R1, #0
F54DA:  MOVS            R2, #1
F54DC:  MOVS            R3, #0x20 ; ' '
F54DE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjjc; std::string::insert(uint,uint,char)
F54E2:  B               loc_F5482
F54E4:  MOVW            R0, #0x301
F54E8:  CMP.W           R9, #0
F54EC:  STRH.W          R0, [R10,#1]
F54F0:  BEQ             loc_F5482
F54F2:  LDRB.W          R0, [R8]
F54F6:  LDR.W           R1, [R8,#8]
F54FA:  LSLS            R0, R0, #0x1F
F54FC:  IT EQ
F54FE:  ADDEQ.W         R1, R8, #1
F5502:  MOV             R0, R8
F5504:  POP.W           {R3,R8-R11}
F5508:  POP.W           {R4-R7,LR}
F550C:  B.W             sub_F6918
F5510:  MOV.W           R0, #0x104
F5514:  CMP.W           R9, #0
F5518:  STRH.W          R0, [R10,#1]
F551C:  BEQ             loc_F5482
F551E:  MOV             R0, R8
F5520:  POP.W           {R3,R8-R11}
F5524:  POP.W           {R4-R7,LR}
F5528:  B.W             sub_F6934
F552C:  MOV.W           R0, #0x400
F5530:  CMP.W           R9, #0
F5534:  STRH.W          R0, [R10,#1]
F5538:  BNE             loc_F5482
F553A:  MOV             R0, R8
F553C:  MOVS            R1, #0x20 ; ' '
F553E:  POP.W           {R3,R8-R11}
F5542:  POP.W           {R4-R7,LR}
F5546:  B.W             sub_10C41C
