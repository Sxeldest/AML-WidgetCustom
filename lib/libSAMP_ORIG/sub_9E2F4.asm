; =========================================================
; Game Engine Function: sub_9E2F4
; Address            : 0x9E2F4 - 0x9E5DE
; =========================================================

9E2F4:  PUSH            {R4-R7,LR}
9E2F6:  ADD             R7, SP, #0xC
9E2F8:  PUSH.W          {R8-R11}
9E2FC:  SUB             SP, SP, #0x14
9E2FE:  MOV             R8, R1
9E300:  LDR             R1, [R0,#4]
9E302:  CMP             R1, #2
9E304:  BLT.W           loc_9E5D6
9E308:  MOV             R1, R8
9E30A:  MOVS            R2, #0
9E30C:  MOV             R4, R0
9E30E:  BL              sub_9E5DE
9E312:  LDR.W           R0, [R8]
9E316:  CBZ             R0, loc_9E332
9E318:  SUBS            R1, R0, #1
9E31A:  LDR.W           R2, [R8,#8]
9E31E:  ADD.W           R3, R1, R1,LSL#2
9E322:  LDR.W           R2, [R2,R3,LSL#3]
9E326:  CMP             R2, #0
9E328:  ITT EQ
9E32A:  STREQ.W         R1, [R8]
9E32E:  MOVEQ           R0, R1
9E330:  B               loc_9E334
9E332:  MOVS            R0, #0
9E334:  LDR             R1, [R4,#4]
9E336:  ADD.W           R12, R4, #0x10
9E33A:  STR.W           R8, [SP,#0x30+var_2C]
9E33E:  CMP             R1, #1
9E340:  STR             R4, [SP,#0x30+var_20]
9E342:  BLT             loc_9E36A
9E344:  LDR.W           R3, [R12]
9E348:  LDR             R2, [R3]
9E34A:  CMP             R2, #1
9E34C:  BLT             loc_9E372
9E34E:  LDR             R3, [R3,#8]
9E350:  CBZ             R3, loc_9E372
9E352:  SUBS            R2, #1
9E354:  ADD.W           R2, R2, R2,LSL#2
9E358:  ADD.W           LR, R3, R2,LSL#3
9E35C:  LDR.W           R2, [LR]
9E360:  LDR.W           R3, [LR,#0x1C]
9E364:  ADDS            R5, R2, R3
9E366:  CMP             R1, #2
9E368:  BCS             loc_9E37C
9E36A:  MOVS            R6, #0
9E36C:  MOV.W           R11, #0
9E370:  B               loc_9E494
9E372:  MOV.W           LR, #0
9E376:  MOVS            R5, #0
9E378:  CMP             R1, #2
9E37A:  BCC             loc_9E36A
9E37C:  MOV.W           R8, #1
9E380:  MOV.W           R11, #0
9E384:  MOVS            R6, #0
9E386:  STR.W           R12, [SP,#0x30+var_28]
9E38A:  B               loc_9E39E
9E38C:  LDR.W           R0, [R9,#0xC]
9E390:  ADD             R6, R0
9E392:  LDR             R0, [R4,#4]
9E394:  ADD.W           R8, R8, #1
9E398:  ADD             R11, R10
9E39A:  CMP             R8, R0
9E39C:  BGE             loc_9E48C
9E39E:  LDR.W           R0, [R12]
9E3A2:  ADD.W           R1, R8, R8,LSL#1
9E3A6:  ADD.W           R9, R0, R1,LSL#3
9E3AA:  LDR.W           R10, [R0,R1,LSL#3]
9E3AE:  CMP.W           R10, #1
9E3B2:  BLT             loc_9E38C
9E3B4:  SUB.W           R0, R10, #1
9E3B8:  LDR.W           R1, [R9,#8]
9E3BC:  ADD.W           R2, R0, R0,LSL#2
9E3C0:  LDR.W           R1, [R1,R2,LSL#3]
9E3C4:  CMP             R1, #0
9E3C6:  ITT EQ
9E3C8:  STREQ.W         R0, [R9]
9E3CC:  MOVEQ           R10, R0
9E3CE:  CMP.W           R10, #0
9E3D2:  IT NE
9E3D4:  CMPNE.W         LR, #0
9E3D8:  BNE             loc_9E3E2
9E3DA:  CMP.W           R10, #1
9E3DE:  BGE             loc_9E418
9E3E0:  B               loc_9E38C
9E3E2:  LDR.W           R4, [R9,#8]
9E3E6:  ADD.W           R0, LR, #4; s1
9E3EA:  MOVS            R2, #0x10; n
9E3EC:  STR.W           LR, [SP,#0x30+var_24]
9E3F0:  ADDS            R1, R4, #4; s2
9E3F2:  BLX             memcmp
9E3F6:  CBNZ            R0, loc_9E412
9E3F8:  LDR             R3, [SP,#0x30+var_24]
9E3FA:  LDR             R0, [R4,#0x14]
9E3FC:  LDR             R1, [R3,#0x14]
9E3FE:  CMP             R1, R0
9E400:  BNE             loc_9E412
9E402:  LDR             R2, [R4,#0x18]
9E404:  MOV             R0, R4; dest
9E406:  LDR             R1, [R3,#0x18]
9E408:  CMP             R1, R2
9E40A:  ITT EQ
9E40C:  LDREQ           R1, [R3,#0x20]
9E40E:  CMPEQ           R1, #0
9E410:  BEQ             loc_9E43E
9E412:  LDR             R4, [SP,#0x30+var_20]
9E414:  LDR.W           R12, [SP,#0x30+var_28]
9E418:  LDRD.W          R2, R0, [R9,#8]
9E41C:  ADD.W           R3, R10, R10,LSL#2
9E420:  ADD.W           R1, R2, #0x1C
9E424:  ADD.W           R2, R2, R3,LSL#3
9E428:  SUB.W           LR, R2, #0x28 ; '('
9E42C:  MOV             R2, R10
9E42E:  LDR.W           R3, [R1,#-0x1C]
9E432:  SUBS            R2, #1
9E434:  STR.W           R5, [R1],#0x28
9E438:  ADD             R5, R3
9E43A:  BNE             loc_9E42E
9E43C:  B               loc_9E390
9E43E:  LDR             R1, [R0,#0x20]
9E440:  LDR.W           R12, [SP,#0x30+var_28]
9E444:  CBZ             R1, loc_9E44A
9E446:  LDR             R4, [SP,#0x30+var_20]
9E448:  B               loc_9E418
9E44A:  LDR             R2, [R0]
9E44C:  ADD.W           R4, R10, R10,LSL#2
9E450:  LDR             R1, [R3]
9E452:  ADD             R1, R2
9E454:  STR             R1, [R3]
9E456:  MOV             R1, R0
9E458:  LDR.W           R2, [R1],#0x28; src
9E45C:  STR             R2, [SP,#0x30+var_30]
9E45E:  MOV             R2, #0xFFFFFFD8
9E462:  ADD.W           R2, R2, R4,LSL#3; n
9E466:  MOV             R4, R3
9E468:  BLX             j_memmove
9E46C:  LDR.W           R0, [R9]
9E470:  MOV             LR, R4
9E472:  LDR.W           R12, [SP,#0x30+var_28]
9E476:  SUB.W           R10, R0, #1
9E47A:  LDR             R0, [SP,#0x30+var_30]
9E47C:  LDR             R4, [SP,#0x30+var_20]
9E47E:  ADD             R5, R0
9E480:  STR.W           R10, [R9]
9E484:  CMP.W           R10, #1
9E488:  BGE             loc_9E418
9E48A:  B               loc_9E38C
9E48C:  LDR.W           R8, [SP,#0x30+var_2C]
9E490:  LDR.W           R0, [R8]
9E494:  LDR.W           R1, [R8,#4]
9E498:  ADD.W           R10, R0, R11
9E49C:  CMP             R1, R10
9E49E:  BGE             loc_9E4F2
9E4A0:  CMP             R1, #0
9E4A2:  ITTE NE
9E4A4:  ADDNE.W         R0, R1, R1,LSR#31
9E4A8:  ADDNE.W         R0, R1, R0,ASR#1
9E4AC:  MOVEQ           R0, #8
9E4AE:  CMP             R0, R10
9E4B0:  MOV             R5, R10
9E4B2:  IT GT
9E4B4:  MOVGT           R5, R0
9E4B6:  CMP             R1, R5
9E4B8:  BGE             loc_9E4F2
9E4BA:  ADD.W           R0, R5, R5,LSL#2
9E4BE:  MOV             R4, R12
9E4C0:  LSLS            R0, R0, #3
9E4C2:  BL              sub_885E4
9E4C6:  MOV             R9, R8
9E4C8:  MOV             R8, R0
9E4CA:  LDR.W           R1, [R9,#8]; src
9E4CE:  CBZ             R1, loc_9E4E8
9E4D0:  LDR.W           R0, [R9]
9E4D4:  ADD.W           R0, R0, R0,LSL#2
9E4D8:  LSLS            R2, R0, #3; n
9E4DA:  MOV             R0, R8; dest
9E4DC:  BLX             j_memcpy
9E4E0:  LDR.W           R0, [R9,#8]
9E4E4:  BL              sub_88614
9E4E8:  MOV             R12, R4
9E4EA:  LDR             R4, [SP,#0x30+var_20]
9E4EC:  STRD.W          R5, R8, [R9,#4]
9E4F0:  MOV             R8, R9
9E4F2:  MOV             R1, R8
9E4F4:  LDR.W           R8, [R8,#0xC]
9E4F8:  LDR             R0, [R1,#0x10]
9E4FA:  ADD             R6, R8
9E4FC:  STR.W           R10, [R1]
9E500:  CMP             R0, R6
9E502:  BGE             loc_9E556
9E504:  CMP             R0, #0
9E506:  ITTE NE
9E508:  ADDNE.W         R1, R0, R0,LSR#31
9E50C:  ADDNE.W         R1, R0, R1,ASR#1
9E510:  MOVEQ           R1, #8
9E512:  CMP             R1, R6
9E514:  MOV             R5, R6
9E516:  IT GT
9E518:  MOVGT           R5, R1
9E51A:  CMP             R0, R5
9E51C:  BGE             loc_9E556
9E51E:  LSLS            R0, R5, #1
9E520:  STR.W           R12, [SP,#0x30+var_28]
9E524:  BL              sub_885E4
9E528:  LDR.W           R9, [SP,#0x30+var_2C]
9E52C:  LDR.W           R1, [R9,#0x14]; src
9E530:  CBZ             R1, loc_9E548
9E532:  LDR.W           R2, [R9,#0xC]
9E536:  MOV             R4, R0
9E538:  LSLS            R2, R2, #1; n
9E53A:  BLX             j_memcpy
9E53E:  LDR.W           R0, [R9,#0x14]
9E542:  BL              sub_88614
9E546:  MOV             R0, R4
9E548:  LDR.W           R10, [R9]
9E54C:  LDR.W           R12, [SP,#0x30+var_28]
9E550:  LDR             R4, [SP,#0x30+var_20]
9E552:  STRD.W          R5, R0, [R9,#0x10]
9E556:  LDR             R2, [SP,#0x30+var_2C]
9E558:  LDR             R1, [R4,#4]
9E55A:  LDR             R0, [R2,#0x14]
9E55C:  CMP             R1, #2
9E55E:  STR             R6, [R2,#0xC]
9E560:  ADD.W           R8, R0, R8,LSL#1
9E564:  BLT             loc_9E5C8
9E566:  ADD.W           R1, R10, R10,LSL#2
9E56A:  LDR             R0, [R2,#8]
9E56C:  MOV.W           R10, #1
9E570:  MOVS            R6, #0
9E572:  ADD.W           R0, R0, R1,LSL#3
9E576:  RSB.W           R1, R11, #0
9E57A:  ADD.W           R1, R1, R1,LSL#2
9E57E:  ADD.W           R9, R0, R1,LSL#3
9E582:  B               loc_9E594
9E584:  LDR             R4, [SP,#0x30+var_20]
9E586:  ADDS            R6, #0x18
9E588:  ADD.W           R10, R10, #1
9E58C:  MOV             R12, R11
9E58E:  LDR             R0, [R4,#4]
9E590:  CMP             R10, R0
9E592:  BGE             loc_9E5C8
9E594:  LDR.W           R0, [R12]
9E598:  MOV             R11, R12
9E59A:  ADDS            R5, R0, R6
9E59C:  LDR             R0, [R5,#0x18]
9E59E:  CBZ             R0, loc_9E5B2
9E5A0:  ADD.W           R4, R0, R0,LSL#2
9E5A4:  LDR             R1, [R5,#0x20]; src
9E5A6:  MOV             R0, R9; dest
9E5A8:  LSLS            R2, R4, #3; n
9E5AA:  BLX             j_memcpy
9E5AE:  ADD.W           R9, R9, R4,LSL#3
9E5B2:  LDR             R4, [R5,#0x24]
9E5B4:  CMP             R4, #0
9E5B6:  BEQ             loc_9E584
9E5B8:  LDR             R1, [R5,#0x2C]; src
9E5BA:  LSLS            R2, R4, #1; n
9E5BC:  MOV             R0, R8; dest
9E5BE:  BLX             j_memcpy
9E5C2:  ADD.W           R8, R8, R4,LSL#1
9E5C6:  B               loc_9E584
9E5C8:  LDR             R0, [SP,#0x30+var_2C]
9E5CA:  STR.W           R8, [R0,#0x3C]
9E5CE:  BL              sub_9BE2C
9E5D2:  MOVS            R0, #1
9E5D4:  STR             R0, [R4,#4]
9E5D6:  ADD             SP, SP, #0x14
9E5D8:  POP.W           {R8-R11}
9E5DC:  POP             {R4-R7,PC}
