; =========================================================
; Game Engine Function: sub_47F33A
; Address            : 0x47F33A - 0x47F5CE
; =========================================================

47F33A:  PUSH            {R4-R7,LR}
47F33C:  ADD             R7, SP, #0xC
47F33E:  PUSH.W          {R8-R11}
47F342:  SUB             SP, SP, #4
47F344:  MOV             R11, R0
47F346:  LDR.W           R10, [R11,#0x18]
47F34A:  LDRD.W          R6, R0, [R10]
47F34E:  CMP             R0, #0
47F350:  STRB.W          R1, [R11,#0xC8]
47F354:  STRB.W          R2, [R11,#0xC9]
47F358:  BNE             loc_47F36C
47F35A:  LDR.W           R1, [R10,#0xC]
47F35E:  MOV             R0, R11
47F360:  BLX             R1
47F362:  CMP             R0, #0
47F364:  BEQ.W           loc_47F5C4
47F368:  LDRD.W          R6, R0, [R10]
47F36C:  LDRB.W          R8, [R6],#1
47F370:  SUBS            R0, #1
47F372:  BNE             loc_47F386
47F374:  LDR.W           R1, [R10,#0xC]
47F378:  MOV             R0, R11
47F37A:  BLX             R1
47F37C:  CMP             R0, #0
47F37E:  BEQ.W           loc_47F5C4
47F382:  LDRD.W          R6, R0, [R10]
47F386:  LDRB.W          R9, [R6],#1
47F38A:  SUBS            R0, #1
47F38C:  BNE             loc_47F3A0
47F38E:  LDR.W           R1, [R10,#0xC]
47F392:  MOV             R0, R11
47F394:  BLX             R1
47F396:  CMP             R0, #0
47F398:  BEQ.W           loc_47F5C4
47F39C:  LDRD.W          R6, R0, [R10]
47F3A0:  LDRB.W          R1, [R6],#1
47F3A4:  SUBS            R0, #1
47F3A6:  STR.W           R1, [R11,#0xC0]
47F3AA:  BNE             loc_47F3BE
47F3AC:  LDR.W           R1, [R10,#0xC]
47F3B0:  MOV             R0, R11
47F3B2:  BLX             R1
47F3B4:  CMP             R0, #0
47F3B6:  BEQ.W           loc_47F5C4
47F3BA:  LDRD.W          R6, R0, [R10]
47F3BE:  LDRB.W          R1, [R6],#1
47F3C2:  SUBS            R0, #1
47F3C4:  MOV.W           R1, R1,LSL#8
47F3C8:  STR.W           R1, [R11,#0x20]
47F3CC:  BNE             loc_47F3E4
47F3CE:  LDR.W           R1, [R10,#0xC]
47F3D2:  MOV             R0, R11
47F3D4:  BLX             R1
47F3D6:  CMP             R0, #0
47F3D8:  BEQ.W           loc_47F5C4
47F3DC:  LDRD.W          R6, R0, [R10]
47F3E0:  LDR.W           R1, [R11,#0x20]
47F3E4:  LDRB.W          R2, [R6],#1
47F3E8:  SUBS            R0, #1
47F3EA:  ADD             R1, R2
47F3EC:  STR.W           R1, [R11,#0x20]
47F3F0:  BNE             loc_47F404
47F3F2:  LDR.W           R1, [R10,#0xC]
47F3F6:  MOV             R0, R11
47F3F8:  BLX             R1
47F3FA:  CMP             R0, #0
47F3FC:  BEQ.W           loc_47F5C4
47F400:  LDRD.W          R6, R0, [R10]
47F404:  LDRB.W          R1, [R6],#1
47F408:  SUBS            R0, #1
47F40A:  MOV.W           R1, R1,LSL#8
47F40E:  STR.W           R1, [R11,#0x1C]
47F412:  BNE             loc_47F42A
47F414:  LDR.W           R1, [R10,#0xC]
47F418:  MOV             R0, R11
47F41A:  BLX             R1
47F41C:  CMP             R0, #0
47F41E:  BEQ.W           loc_47F5C4
47F422:  LDRD.W          R6, R0, [R10]
47F426:  LDR.W           R1, [R11,#0x1C]
47F42A:  LDRB.W          R2, [R6],#1
47F42E:  SUBS            R5, R0, #1
47F430:  ADD             R1, R2
47F432:  STR.W           R1, [R11,#0x1C]
47F436:  BNE             loc_47F44A
47F438:  LDR.W           R1, [R10,#0xC]
47F43C:  MOV             R0, R11
47F43E:  BLX             R1
47F440:  CMP             R0, #0
47F442:  BEQ.W           loc_47F5C4
47F446:  LDRD.W          R6, R5, [R10]
47F44A:  MOV.W           R0, R8,LSL#8
47F44E:  ORR.W           R4, R0, R9
47F452:  LDR.W           R0, [R11]
47F456:  LDR.W           R1, [R11,#0x17C]
47F45A:  LDRB            R2, [R6]
47F45C:  STR.W           R2, [R11,#0x24]
47F460:  STR             R1, [R0,#0x18]
47F462:  LDR.W           R1, [R11,#0x1C]
47F466:  STR             R1, [R0,#0x1C]
47F468:  LDR.W           R1, [R11,#0x20]
47F46C:  STR             R1, [R0,#0x20]
47F46E:  LDR.W           R1, [R11,#0x24]
47F472:  STR             R1, [R0,#0x24]
47F474:  MOVS            R1, #0x64 ; 'd'
47F476:  LDR.W           R0, [R11]
47F47A:  STR             R1, [R0,#0x14]
47F47C:  MOVS            R1, #1
47F47E:  LDR.W           R0, [R11]
47F482:  LDR             R2, [R0,#4]
47F484:  MOV             R0, R11
47F486:  BLX             R2
47F488:  LDR.W           R0, [R11,#0x194]
47F48C:  LDRB            R0, [R0,#0xD]
47F48E:  CBZ             R0, loc_47F4A2
47F490:  LDR.W           R0, [R11]
47F494:  MOVS            R1, #0x3A ; ':'
47F496:  STR             R1, [R0,#0x14]
47F498:  LDR.W           R0, [R11]
47F49C:  LDR             R1, [R0]
47F49E:  MOV             R0, R11
47F4A0:  BLX             R1
47F4A2:  LDR.W           R0, [R11,#0x20]
47F4A6:  SUBS            R4, #8
47F4A8:  CMP             R0, #0
47F4AA:  ITT NE
47F4AC:  LDRNE.W         R0, [R11,#0x1C]
47F4B0:  CMPNE           R0, #0
47F4B2:  BEQ             loc_47F4BC
47F4B4:  LDR.W           R0, [R11,#0x24]
47F4B8:  CMP             R0, #0
47F4BA:  BGT             loc_47F4D2
47F4BC:  LDR.W           R0, [R11]
47F4C0:  MOVS            R1, #0x20 ; ' '
47F4C2:  STR             R1, [R0,#0x14]
47F4C4:  LDR.W           R0, [R11]
47F4C8:  LDR             R1, [R0]
47F4CA:  MOV             R0, R11
47F4CC:  BLX             R1
47F4CE:  LDR.W           R0, [R11,#0x24]
47F4D2:  ADD.W           R0, R0, R0,LSL#1
47F4D6:  CMP             R4, R0
47F4D8:  BEQ             loc_47F4EC
47F4DA:  LDR.W           R0, [R11]
47F4DE:  MOVS            R1, #0xB
47F4E0:  STR             R1, [R0,#0x14]
47F4E2:  LDR.W           R0, [R11]
47F4E6:  LDR             R1, [R0]
47F4E8:  MOV             R0, R11
47F4EA:  BLX             R1
47F4EC:  LDR.W           R0, [R11,#0xC4]
47F4F0:  CBNZ            R0, loc_47F50A
47F4F2:  LDR.W           R1, [R11,#0x24]
47F4F6:  MOVS            R2, #0x54 ; 'T'
47F4F8:  LDR.W           R0, [R11,#4]
47F4FC:  MULS            R2, R1
47F4FE:  MOVS            R1, #1
47F500:  LDR             R3, [R0]
47F502:  MOV             R0, R11
47F504:  BLX             R3
47F506:  STR.W           R0, [R11,#0xC4]
47F50A:  LDR.W           R2, [R11,#0x24]
47F50E:  ADDS            R4, R6, #1
47F510:  SUBS            R1, R5, #1
47F512:  CMP             R2, #1
47F514:  BLT             loc_47F5B6
47F516:  ADD.W           R6, R0, #8
47F51A:  MOVS            R5, #0
47F51C:  MOV.W           R8, #0x65 ; 'e'
47F520:  CMP             R1, #0
47F522:  STR.W           R5, [R6,#-4]
47F526:  BNE             loc_47F538
47F528:  LDR.W           R1, [R10,#0xC]
47F52C:  MOV             R0, R11
47F52E:  BLX             R1
47F530:  CMP             R0, #0
47F532:  BEQ             loc_47F5C4
47F534:  LDRD.W          R4, R1, [R10]
47F538:  LDRB.W          R0, [R4],#1
47F53C:  STR.W           R0, [R6,#-8]
47F540:  SUBS            R0, R1, #1
47F542:  BNE             loc_47F552
47F544:  LDR.W           R1, [R10,#0xC]
47F548:  MOV             R0, R11
47F54A:  BLX             R1
47F54C:  CBZ             R0, loc_47F5C4
47F54E:  LDRD.W          R4, R0, [R10]
47F552:  LDRB.W          R1, [R4],#1
47F556:  SUBS.W          R9, R0, #1
47F55A:  AND.W           R2, R1, #0xF
47F55E:  MOV.W           R1, R1,LSR#4
47F562:  STRD.W          R1, R2, [R6]
47F566:  BNE             loc_47F576
47F568:  LDR.W           R1, [R10,#0xC]
47F56C:  MOV             R0, R11
47F56E:  BLX             R1
47F570:  CBZ             R0, loc_47F5C4
47F572:  LDRD.W          R4, R9, [R10]
47F576:  LDRB.W          R0, [R4],#1
47F57A:  STR             R0, [R6,#8]
47F57C:  LDR.W           R0, [R11]
47F580:  LDR.W           R1, [R6,#-8]
47F584:  STR             R1, [R0,#0x18]
47F586:  LDR             R1, [R6]
47F588:  STR             R1, [R0,#0x1C]
47F58A:  LDR             R1, [R6,#4]
47F58C:  STR             R1, [R0,#0x20]
47F58E:  LDR             R1, [R6,#8]
47F590:  STR             R1, [R0,#0x24]
47F592:  MOVS            R1, #1
47F594:  LDR.W           R0, [R11]
47F598:  STR.W           R8, [R0,#0x14]
47F59C:  LDR.W           R0, [R11]
47F5A0:  LDR             R2, [R0,#4]
47F5A2:  MOV             R0, R11
47F5A4:  BLX             R2
47F5A6:  LDR.W           R0, [R11,#0x24]
47F5AA:  ADDS            R5, #1
47F5AC:  ADDS            R6, #0x54 ; 'T'
47F5AE:  SUB.W           R1, R9, #1
47F5B2:  CMP             R5, R0
47F5B4:  BLT             loc_47F520
47F5B6:  LDR.W           R2, [R11,#0x194]
47F5BA:  MOVS            R0, #1
47F5BC:  STRB            R0, [R2,#0xD]
47F5BE:  STRD.W          R4, R1, [R10]
47F5C2:  B               loc_47F5C6
47F5C4:  MOVS            R0, #0
47F5C6:  ADD             SP, SP, #4
47F5C8:  POP.W           {R8-R11}
47F5CC:  POP             {R4-R7,PC}
