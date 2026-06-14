; =========================================================
; Game Engine Function: sub_20B41C
; Address            : 0x20B41C - 0x20B5EE
; =========================================================

20B41C:  PUSH            {R4-R7,LR}
20B41E:  ADD             R7, SP, #0xC
20B420:  PUSH.W          {R8-R10}
20B424:  MOV             R5, R0
20B426:  MOVW            R10, #0xFFFF
20B42A:  LDR             R0, [R5,#0xC]
20B42C:  MOV             R8, R1
20B42E:  MOV.W           R9, #0
20B432:  SUBS            R0, #5
20B434:  CMP             R0, R10
20B436:  IT CC
20B438:  MOVCC           R10, R0
20B43A:  LDR             R1, [R5,#0x6C]
20B43C:  CMP             R1, #1
20B43E:  BHI             loc_20B456
20B440:  MOV             R0, R5
20B442:  BL              sub_20BDEC
20B446:  LDR             R1, [R5,#0x6C]
20B448:  ORRS.W          R0, R1, R8
20B44C:  BEQ.W           loc_20B552
20B450:  CMP             R1, #0
20B452:  BEQ.W           loc_20B55A
20B456:  LDR             R2, [R5,#0x64]
20B458:  LDR             R0, [R5,#0x54]
20B45A:  ADDS            R1, R1, R2
20B45C:  STR.W           R9, [R5,#0x6C]
20B460:  ADD.W           R2, R0, R10
20B464:  STR             R1, [R5,#0x64]
20B466:  BEQ             loc_20B46C
20B468:  CMP             R1, R2
20B46A:  BCC             loc_20B4DC
20B46C:  STR             R2, [R5,#0x64]
20B46E:  SUBS            R1, R1, R2
20B470:  STR             R1, [R5,#0x6C]
20B472:  CMP             R0, #0
20B474:  ITTE GE
20B476:  LDRGE           R1, [R5,#0x30]
20B478:  ADDGE           R1, R0
20B47A:  MOVLT           R1, #0
20B47C:  MOV             R0, R5
20B47E:  MOV             R2, R10
20B480:  MOVS            R3, #0
20B482:  BLX             j__tr_flush_block
20B486:  LDR             R6, [R5]
20B488:  LDR             R0, [R5,#0x64]
20B48A:  STR             R0, [R5,#0x54]
20B48C:  LDR             R0, [R6,#0x1C]
20B48E:  LDR             R1, [R6,#0x10]
20B490:  LDR             R4, [R0,#0x14]
20B492:  CMP             R4, R1
20B494:  IT HI
20B496:  MOVHI           R4, R1
20B498:  CBZ             R4, loc_20B4D2
20B49A:  LDR             R1, [R0,#0x10]; void *
20B49C:  MOV             R2, R4; size_t
20B49E:  LDR             R0, [R6,#0xC]; void *
20B4A0:  BLX             memcpy_1
20B4A4:  LDR             R0, [R6,#0xC]
20B4A6:  LDR             R1, [R6,#0x1C]
20B4A8:  ADD             R0, R4
20B4AA:  STR             R0, [R6,#0xC]
20B4AC:  LDR             R0, [R1,#0x10]
20B4AE:  ADD             R0, R4
20B4B0:  STR             R0, [R1,#0x10]
20B4B2:  LDRD.W          R0, R1, [R6,#0x10]
20B4B6:  LDR             R2, [R6,#0x1C]
20B4B8:  ADD             R1, R4
20B4BA:  SUBS            R0, R0, R4
20B4BC:  STRD.W          R0, R1, [R6,#0x10]
20B4C0:  LDR             R0, [R2,#0x14]
20B4C2:  SUBS            R0, R0, R4
20B4C4:  STR             R0, [R2,#0x14]
20B4C6:  LDR             R0, [R6,#0x1C]
20B4C8:  LDR             R1, [R0,#0x14]
20B4CA:  CMP             R1, #0
20B4CC:  ITT EQ
20B4CE:  LDREQ           R1, [R0,#8]
20B4D0:  STREQ           R1, [R0,#0x10]
20B4D2:  LDR             R0, [R5]
20B4D4:  LDR             R0, [R0,#0x10]
20B4D6:  CBZ             R0, loc_20B552
20B4D8:  LDR             R0, [R5,#0x54]
20B4DA:  LDR             R1, [R5,#0x64]
20B4DC:  LDR             R3, [R5,#0x24]
20B4DE:  SUBS            R2, R1, R0
20B4E0:  SUB.W           R1, R3, #0x106
20B4E4:  CMP             R2, R1
20B4E6:  BCC             loc_20B43A
20B4E8:  CMP             R0, #0
20B4EA:  MOV.W           R3, #0
20B4EE:  ITTE GE
20B4F0:  LDRGE           R1, [R5,#0x30]
20B4F2:  ADDGE           R1, R0
20B4F4:  MOVLT           R1, #0
20B4F6:  MOV             R0, R5
20B4F8:  BLX             j__tr_flush_block
20B4FC:  LDR             R6, [R5]
20B4FE:  LDR             R0, [R5,#0x64]
20B500:  STR             R0, [R5,#0x54]
20B502:  LDR             R0, [R6,#0x1C]
20B504:  LDR             R1, [R6,#0x10]
20B506:  LDR             R4, [R0,#0x14]
20B508:  CMP             R4, R1
20B50A:  IT HI
20B50C:  MOVHI           R4, R1
20B50E:  CBZ             R4, loc_20B548
20B510:  LDR             R1, [R0,#0x10]; void *
20B512:  MOV             R2, R4; size_t
20B514:  LDR             R0, [R6,#0xC]; void *
20B516:  BLX             memcpy_1
20B51A:  LDR             R0, [R6,#0xC]
20B51C:  LDR             R1, [R6,#0x1C]
20B51E:  ADD             R0, R4
20B520:  STR             R0, [R6,#0xC]
20B522:  LDR             R0, [R1,#0x10]
20B524:  ADD             R0, R4
20B526:  STR             R0, [R1,#0x10]
20B528:  LDRD.W          R0, R1, [R6,#0x10]
20B52C:  LDR             R2, [R6,#0x1C]
20B52E:  ADD             R1, R4
20B530:  SUBS            R0, R0, R4
20B532:  STRD.W          R0, R1, [R6,#0x10]
20B536:  LDR             R0, [R2,#0x14]
20B538:  SUBS            R0, R0, R4
20B53A:  STR             R0, [R2,#0x14]
20B53C:  LDR             R0, [R6,#0x1C]
20B53E:  LDR             R1, [R0,#0x14]
20B540:  CMP             R1, #0
20B542:  ITT EQ
20B544:  LDREQ           R1, [R0,#8]
20B546:  STREQ           R1, [R0,#0x10]
20B548:  LDR             R0, [R5]
20B54A:  LDR             R0, [R0,#0x10]
20B54C:  CMP             R0, #0
20B54E:  BNE.W           loc_20B43A
20B552:  MOVS            R0, #0
20B554:  POP.W           {R8-R10}
20B558:  POP             {R4-R7,PC}
20B55A:  LDR             R0, [R5,#0x54]
20B55C:  MOVS            R3, #0
20B55E:  CMP             R0, #0
20B560:  ITTE GE
20B562:  LDRGE           R1, [R5,#0x30]
20B564:  ADDGE           R1, R0
20B566:  MOVLT           R1, #0
20B568:  LDR             R2, [R5,#0x64]
20B56A:  CMP.W           R8, #4
20B56E:  SUB.W           R2, R2, R0
20B572:  IT EQ
20B574:  MOVEQ           R3, #1
20B576:  MOV             R0, R5
20B578:  BLX             j__tr_flush_block
20B57C:  LDR             R6, [R5]
20B57E:  LDR             R0, [R5,#0x64]
20B580:  STR             R0, [R5,#0x54]
20B582:  LDR             R0, [R6,#0x1C]
20B584:  LDR             R1, [R6,#0x10]
20B586:  LDR             R4, [R0,#0x14]
20B588:  CMP             R4, R1
20B58A:  IT HI
20B58C:  MOVHI           R4, R1
20B58E:  CBZ             R4, loc_20B5C8
20B590:  LDR             R1, [R0,#0x10]; void *
20B592:  MOV             R2, R4; size_t
20B594:  LDR             R0, [R6,#0xC]; void *
20B596:  BLX             memcpy_1
20B59A:  LDR             R0, [R6,#0xC]
20B59C:  LDR             R1, [R6,#0x1C]
20B59E:  ADD             R0, R4
20B5A0:  STR             R0, [R6,#0xC]
20B5A2:  LDR             R0, [R1,#0x10]
20B5A4:  ADD             R0, R4
20B5A6:  STR             R0, [R1,#0x10]
20B5A8:  LDRD.W          R0, R1, [R6,#0x10]
20B5AC:  LDR             R2, [R6,#0x1C]
20B5AE:  ADD             R1, R4
20B5B0:  SUBS            R0, R0, R4
20B5B2:  STRD.W          R0, R1, [R6,#0x10]
20B5B6:  LDR             R0, [R2,#0x14]
20B5B8:  SUBS            R0, R0, R4
20B5BA:  STR             R0, [R2,#0x14]
20B5BC:  LDR             R0, [R6,#0x1C]
20B5BE:  LDR             R1, [R0,#0x14]
20B5C0:  CMP             R1, #0
20B5C2:  ITT EQ
20B5C4:  LDREQ           R1, [R0,#8]
20B5C6:  STREQ           R1, [R0,#0x10]
20B5C8:  LDR             R0, [R5]
20B5CA:  LDR             R0, [R0,#0x10]
20B5CC:  CBZ             R0, loc_20B5DE
20B5CE:  MOVS            R0, #1
20B5D0:  CMP.W           R8, #4
20B5D4:  IT EQ
20B5D6:  MOVEQ           R0, #3
20B5D8:  POP.W           {R8-R10}
20B5DC:  POP             {R4-R7,PC}
20B5DE:  MOVS            R0, #0
20B5E0:  CMP.W           R8, #4
20B5E4:  IT EQ
20B5E6:  MOVEQ           R0, #2
20B5E8:  POP.W           {R8-R10}
20B5EC:  POP             {R4-R7,PC}
