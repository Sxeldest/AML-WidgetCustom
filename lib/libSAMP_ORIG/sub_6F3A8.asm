; =========================================================
; Game Engine Function: sub_6F3A8
; Address            : 0x6F3A8 - 0x6F596
; =========================================================

6F3A8:  PUSH            {R4-R7,LR}
6F3AA:  ADD             R7, SP, #0xC
6F3AC:  PUSH.W          {R8,R9,R11}
6F3B0:  MOV             R4, R2
6F3B2:  MOV             R5, R1
6F3B4:  LDRD.W          R2, R1, [R1,#0xC]
6F3B8:  MOV             R9, R0
6F3BA:  CMP             R1, R2
6F3BC:  BCS             loc_6F3C4
6F3BE:  ADDS            R1, #1
6F3C0:  STR             R1, [R5,#0x10]
6F3C2:  B               loc_6F406
6F3C4:  LDRB            R0, [R5,#0x1C]
6F3C6:  CBNZ            R0, loc_6F406
6F3C8:  LDRD.W          R1, R6, [R5,#0x14]
6F3CC:  MOV.W           R8, #1
6F3D0:  LDRD.W          R3, R0, [R5]; stream
6F3D4:  LDR             R2, [R5,#8]; n
6F3D6:  ADD             R1, R6
6F3D8:  STR             R1, [R5,#0x18]
6F3DA:  MOVS            R1, #1; size
6F3DC:  BLX             fread
6F3E0:  LDRD.W          R1, R6, [R5,#4]
6F3E4:  CMP             R0, R6
6F3E6:  STR             R0, [R5,#0x14]
6F3E8:  ADD.W           R3, R1, R0
6F3EC:  SUB.W           R2, R3, #1
6F3F0:  STRD.W          R2, R1, [R5,#0xC]
6F3F4:  BCS             loc_6F406
6F3F6:  MOVS            R0, #0
6F3F8:  STRB            R0, [R3]
6F3FA:  LDRD.W          R0, R1, [R5,#0xC]
6F3FE:  STRB.W          R8, [R5,#0x1C]
6F402:  ADDS            R2, R0, #1
6F404:  STR             R2, [R5,#0xC]
6F406:  LDRB            R0, [R1]
6F408:  CMP             R0, #0x61 ; 'a'
6F40A:  BNE.W           loc_6F574
6F40E:  CMP             R1, R2
6F410:  BCS             loc_6F418
6F412:  ADDS            R1, #1
6F414:  STR             R1, [R5,#0x10]
6F416:  B               loc_6F45A
6F418:  LDRB            R0, [R5,#0x1C]
6F41A:  CBNZ            R0, loc_6F45A
6F41C:  LDRD.W          R1, R6, [R5,#0x14]
6F420:  MOV.W           R8, #1
6F424:  LDRD.W          R3, R0, [R5]; stream
6F428:  LDR             R2, [R5,#8]; n
6F42A:  ADD             R1, R6
6F42C:  STR             R1, [R5,#0x18]
6F42E:  MOVS            R1, #1; size
6F430:  BLX             fread
6F434:  LDRD.W          R1, R6, [R5,#4]
6F438:  CMP             R0, R6
6F43A:  STR             R0, [R5,#0x14]
6F43C:  ADD.W           R3, R1, R0
6F440:  SUB.W           R2, R3, #1
6F444:  STRD.W          R2, R1, [R5,#0xC]
6F448:  BCS             loc_6F45A
6F44A:  MOVS            R0, #0
6F44C:  STRB            R0, [R3]
6F44E:  LDRD.W          R0, R1, [R5,#0xC]
6F452:  STRB.W          R8, [R5,#0x1C]
6F456:  ADDS            R2, R0, #1
6F458:  STR             R2, [R5,#0xC]
6F45A:  LDRB            R0, [R1]
6F45C:  CMP             R0, #0x6C ; 'l'
6F45E:  BNE.W           loc_6F574
6F462:  CMP             R1, R2
6F464:  BCS             loc_6F46C
6F466:  ADDS            R1, #1
6F468:  STR             R1, [R5,#0x10]
6F46A:  B               loc_6F4AE
6F46C:  LDRB            R0, [R5,#0x1C]
6F46E:  CBNZ            R0, loc_6F4AE
6F470:  LDRD.W          R1, R6, [R5,#0x14]
6F474:  MOV.W           R8, #1
6F478:  LDRD.W          R3, R0, [R5]; stream
6F47C:  LDR             R2, [R5,#8]; n
6F47E:  ADD             R1, R6
6F480:  STR             R1, [R5,#0x18]
6F482:  MOVS            R1, #1; size
6F484:  BLX             fread
6F488:  LDRD.W          R1, R6, [R5,#4]
6F48C:  CMP             R0, R6
6F48E:  STR             R0, [R5,#0x14]
6F490:  ADD.W           R3, R1, R0
6F494:  SUB.W           R2, R3, #1
6F498:  STRD.W          R2, R1, [R5,#0xC]
6F49C:  BCS             loc_6F4AE
6F49E:  MOVS            R0, #0
6F4A0:  STRB            R0, [R3]
6F4A2:  LDRD.W          R0, R1, [R5,#0xC]
6F4A6:  STRB.W          R8, [R5,#0x1C]
6F4AA:  ADDS            R2, R0, #1
6F4AC:  STR             R2, [R5,#0xC]
6F4AE:  LDRB            R0, [R1]
6F4B0:  CMP             R0, #0x73 ; 's'
6F4B2:  BNE             loc_6F574
6F4B4:  CMP             R1, R2
6F4B6:  BCS             loc_6F4BE
6F4B8:  ADDS            R1, #1
6F4BA:  STR             R1, [R5,#0x10]
6F4BC:  B               loc_6F500
6F4BE:  LDRB            R0, [R5,#0x1C]
6F4C0:  CBNZ            R0, loc_6F500
6F4C2:  LDRD.W          R1, R6, [R5,#0x14]
6F4C6:  MOV.W           R8, #1
6F4CA:  LDRD.W          R3, R0, [R5]; stream
6F4CE:  LDR             R2, [R5,#8]; n
6F4D0:  ADD             R1, R6
6F4D2:  STR             R1, [R5,#0x18]
6F4D4:  MOVS            R1, #1; size
6F4D6:  BLX             fread
6F4DA:  LDRD.W          R1, R6, [R5,#4]
6F4DE:  CMP             R0, R6
6F4E0:  STR             R0, [R5,#0x14]
6F4E2:  ADD.W           R3, R1, R0
6F4E6:  SUB.W           R2, R3, #1
6F4EA:  STRD.W          R2, R1, [R5,#0xC]
6F4EE:  BCS             loc_6F500
6F4F0:  MOVS            R0, #0
6F4F2:  STRB            R0, [R3]
6F4F4:  LDRD.W          R0, R1, [R5,#0xC]
6F4F8:  STRB.W          R8, [R5,#0x1C]
6F4FC:  ADDS            R2, R0, #1
6F4FE:  STR             R2, [R5,#0xC]
6F500:  LDRB            R0, [R1]
6F502:  CMP             R0, #0x65 ; 'e'
6F504:  BNE             loc_6F574
6F506:  CMP             R1, R2
6F508:  BCS             loc_6F510
6F50A:  ADDS            R0, R1, #1
6F50C:  STR             R0, [R5,#0x10]
6F50E:  B               loc_6F550
6F510:  LDRB            R0, [R5,#0x1C]
6F512:  CBNZ            R0, loc_6F550
6F514:  LDRD.W          R1, R6, [R5,#0x14]
6F518:  MOV.W           R8, #1
6F51C:  LDRD.W          R3, R0, [R5]; stream
6F520:  LDR             R2, [R5,#8]; n
6F522:  ADD             R1, R6
6F524:  STR             R1, [R5,#0x18]
6F526:  MOVS            R1, #1; size
6F528:  BLX             fread
6F52C:  LDRD.W          R2, R3, [R5,#4]
6F530:  CMP             R0, R3
6F532:  STR             R0, [R5,#0x14]
6F534:  ADD.W           R1, R2, R0
6F538:  SUB.W           R6, R1, #1
6F53C:  STRD.W          R6, R2, [R5,#0xC]
6F540:  BCS             loc_6F550
6F542:  MOVS            R0, #0
6F544:  STRB            R0, [R1]
6F546:  LDR             R0, [R5,#0xC]
6F548:  STRB.W          R8, [R5,#0x1C]
6F54C:  ADDS            R0, #1
6F54E:  STR             R0, [R5,#0xC]
6F550:  LDRD.W          R0, R1, [R4,#0x24]
6F554:  SUBS            R1, R1, R0
6F556:  CMP             R1, #0xF
6F558:  BLE             loc_6F588
6F55A:  ADD.W           R1, R0, #0x10
6F55E:  STR             R1, [R4,#0x24]
6F560:  VMOV.I32        Q8, #0
6F564:  MOVS            R1, #0xE
6F566:  VST1.64         {D16-D17}, [R0],R1
6F56A:  MOVS            R1, #9
6F56C:  STRH            R1, [R0]
6F56E:  POP.W           {R8,R9,R11}
6F572:  POP             {R4-R7,PC}
6F574:  LDR             R3, [R5,#0x18]
6F576:  MOVS            R0, #3
6F578:  LDR             R2, [R5,#4]
6F57A:  ADD             R1, R3
6F57C:  SUBS            R1, R1, R2
6F57E:  STRD.W          R0, R1, [R9,#0x18]
6F582:  POP.W           {R8,R9,R11}
6F586:  POP             {R4-R7,PC}
6F588:  ADD.W           R0, R4, #0x18
6F58C:  MOVS            R1, #1
6F58E:  BL              sub_70EA2
6F592:  LDR             R0, [R4,#0x24]
6F594:  B               loc_6F55A
