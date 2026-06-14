; =========================================================
; Game Engine Function: sub_EE410
; Address            : 0xEE410 - 0xEE584
; =========================================================

EE410:  PUSH            {R4-R7,LR}
EE412:  ADD             R7, SP, #0xC
EE414:  PUSH.W          {R8-R10}
EE418:  MOV             R4, R1
EE41A:  MOV             R5, R0
EE41C:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEE4swapERS3_; std::streambuf::swap(std::streambuf&)
EE420:  LDR             R2, [R4,#0x20]
EE422:  ADD.W           R10, R4, #0x2C ; ','
EE426:  LDR             R3, [R5,#0x20]
EE428:  ADD.W           R1, R5, #0x2C ; ','
EE42C:  CMP             R3, R1
EE42E:  IT NE
EE430:  CMPNE           R2, R10
EE432:  BNE             loc_EE462
EE434:  LDRD.W          R12, R6, [R4,#0x24]
EE438:  SUB.W           R9, R6, R2
EE43C:  LDRD.W          LR, R0, [R5,#0x24]
EE440:  CMP             R3, R1
EE442:  SUB.W           R8, R12, R2
EE446:  SUB.W           R12, R0, R3
EE44A:  SUB.W           LR, LR, R3
EE44E:  BEQ             loc_EE478
EE450:  CMP             R3, R1
EE452:  BEQ             loc_EE486
EE454:  CMP             R2, R10
EE456:  ITTTT EQ
EE458:  STREQ           R3, [R4,#0x20]
EE45A:  STREQ           R1, [R5,#0x20]
EE45C:  LDREQ           R2, [R4,#0x20]
EE45E:  MOVEQ           R3, R1
EE460:  B               loc_EE486
EE462:  STR             R2, [R5,#0x20]
EE464:  STR             R3, [R4,#0x20]
EE466:  LDR             R2, [R4,#0x24]
EE468:  LDR             R3, [R5,#0x24]
EE46A:  STR             R2, [R5,#0x24]
EE46C:  STR             R3, [R4,#0x24]
EE46E:  LDR             R2, [R4,#0x28]
EE470:  LDR             R3, [R5,#0x28]
EE472:  STR             R2, [R5,#0x28]
EE474:  STR             R3, [R4,#0x28]
EE476:  B               loc_EE49A
EE478:  CMP             R2, R10
EE47A:  BEQ             loc_EE450
EE47C:  STR             R2, [R5,#0x20]
EE47E:  MOV             R2, R10
EE480:  STR.W           R10, [R4,#0x20]
EE484:  LDR             R3, [R5,#0x20]
EE486:  ADD.W           R0, R3, R9
EE48A:  ADD             R3, R8
EE48C:  STRD.W          R3, R0, [R5,#0x24]
EE490:  ADD.W           R0, R2, R12
EE494:  ADD             R2, LR
EE496:  STRD.W          R2, R0, [R4,#0x24]
EE49A:  LDRD.W          R0, R2, [R5,#0x34]
EE49E:  LDRD.W          R3, R6, [R4,#0x34]
EE4A2:  STR             R3, [R5,#0x34]
EE4A4:  STR             R6, [R5,#0x38]
EE4A6:  STR             R2, [R4,#0x38]
EE4A8:  LDR             R6, [R4,#0x40]
EE4AA:  LDR             R2, [R5,#0x40]
EE4AC:  STR             R6, [R5,#0x40]
EE4AE:  STR             R0, [R4,#0x34]
EE4B0:  STR             R2, [R4,#0x40]
EE4B2:  LDR             R3, [R4,#0x3C]
EE4B4:  LDR             R0, [R5,#0x3C]
EE4B6:  LDR             R6, [R4,#0x44]
EE4B8:  LDR             R2, [R5,#0x44]
EE4BA:  STR             R3, [R5,#0x3C]
EE4BC:  STR             R6, [R5,#0x44]
EE4BE:  STR             R0, [R4,#0x3C]
EE4C0:  STR             R2, [R4,#0x44]
EE4C2:  LDR             R3, [R4,#0x48]
EE4C4:  LDR             R0, [R5,#0x48]
EE4C6:  STR             R3, [R5,#0x48]
EE4C8:  STR             R0, [R4,#0x48]
EE4CA:  LDR             R2, [R4,#0x4C]
EE4CC:  LDR             R0, [R5,#0x4C]
EE4CE:  STR             R2, [R5,#0x4C]
EE4D0:  STR             R0, [R4,#0x4C]
EE4D2:  LDRB.W          R2, [R4,#0x58]
EE4D6:  LDRB.W          R0, [R5,#0x58]
EE4DA:  STRB.W          R2, [R5,#0x58]
EE4DE:  STRB.W          R0, [R4,#0x58]
EE4E2:  LDRB.W          R2, [R4,#0x59]
EE4E6:  LDRB.W          R0, [R5,#0x59]
EE4EA:  STRB.W          R2, [R5,#0x59]
EE4EE:  STRB.W          R0, [R4,#0x59]
EE4F2:  LDRB.W          R2, [R4,#0x5A]
EE4F6:  LDRB.W          R0, [R5,#0x5A]
EE4FA:  STRB.W          R2, [R5,#0x5A]
EE4FE:  STRB.W          R0, [R4,#0x5A]
EE502:  LDR             R0, [R5,#8]
EE504:  LDR             R3, [R4,#0x50]
EE506:  LDR             R6, [R5,#0x50]
EE508:  CMP             R0, R10
EE50A:  STR             R3, [R5,#0x50]
EE50C:  STR             R6, [R4,#0x50]
EE50E:  LDR             R3, [R4,#0x54]
EE510:  LDR             R6, [R5,#0x54]
EE512:  STR             R3, [R5,#0x54]
EE514:  STR             R6, [R4,#0x54]
EE516:  BEQ             loc_EE536
EE518:  LDR             R0, [R5,#0x14]
EE51A:  CMP             R0, R10
EE51C:  BNE             loc_EE54C
EE51E:  LDRD.W          R0, R2, [R5,#0x18]
EE522:  SUB.W           R2, R2, R10
EE526:  SUB.W           R0, R0, R10
EE52A:  ADD             R2, R1
EE52C:  ADD             R0, R1
EE52E:  STR             R2, [R5,#0x1C]
EE530:  STRD.W          R1, R0, [R5,#0x14]
EE534:  B               loc_EE54C
EE536:  LDRD.W          R0, R2, [R5,#0xC]
EE53A:  SUB.W           R2, R2, R10
EE53E:  SUB.W           R0, R0, R10
EE542:  ADD             R2, R1
EE544:  ADD             R0, R1
EE546:  STR             R2, [R5,#0x10]
EE548:  STRD.W          R1, R0, [R5,#8]
EE54C:  LDR             R0, [R4,#8]
EE54E:  CMP             R0, R1
EE550:  BEQ             loc_EE56C
EE552:  LDR             R0, [R4,#0x14]
EE554:  CMP             R0, R1
EE556:  BNE             loc_EE57E
EE558:  LDRD.W          R0, R2, [R4,#0x18]
EE55C:  SUBS            R2, R2, R1
EE55E:  SUBS            R0, R0, R1
EE560:  ADD             R2, R10
EE562:  ADD             R0, R10
EE564:  STR             R2, [R4,#0x1C]
EE566:  STRD.W          R10, R0, [R4,#0x14]
EE56A:  B               loc_EE57E
EE56C:  LDRD.W          R0, R2, [R4,#0xC]
EE570:  SUBS            R2, R2, R1
EE572:  SUBS            R0, R0, R1
EE574:  ADD             R2, R10
EE576:  ADD             R0, R10
EE578:  STR             R2, [R4,#0x10]
EE57A:  STRD.W          R10, R0, [R4,#8]
EE57E:  POP.W           {R8-R10}
EE582:  POP             {R4-R7,PC}
