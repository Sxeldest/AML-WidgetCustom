; =========================================================
; Game Engine Function: sub_1DF508
; Address            : 0x1DF508 - 0x1DF5D4
; =========================================================

1DF508:  PUSH            {R4-R7,LR}
1DF50A:  ADD             R7, SP, #0xC
1DF50C:  PUSH.W          {R11}
1DF510:  SUB             SP, SP, #8
1DF512:  MOV             R4, R0
1DF514:  LDR             R0, =(RwEngineInstance_ptr - 0x1DF51E)
1DF516:  LDR             R6, [R4,#0x20]
1DF518:  MOV             R5, R1
1DF51A:  ADD             R0, PC; RwEngineInstance_ptr
1DF51C:  LDR             R0, [R0]; RwEngineInstance
1DF51E:  LDR             R0, [R0]
1DF520:  LDR.W           R2, [R0,#0x134]
1DF524:  MOV             R0, R6
1DF526:  BLX             R2
1DF528:  CMP             R0, #0
1DF52A:  BEQ             loc_1DF5B2
1DF52C:  LDR             R3, [R4,#0x14]
1DF52E:  SUBS            R1, R0, R6
1DF530:  LDR             R2, [R4,#4]
1DF532:  CMP             R3, #0
1DF534:  STRD.W          R0, R5, [R4,#0x20]
1DF538:  STR             R0, [R4,#8]
1DF53A:  ITT NE
1DF53C:  ADDNE           R3, R1
1DF53E:  STRNE           R3, [R4,#0x14]
1DF540:  LDR             R3, [R4,#0x1C]
1DF542:  CMP             R3, #0
1DF544:  ITT NE
1DF546:  ADDNE           R3, R1
1DF548:  STRNE           R3, [R4,#0x1C]
1DF54A:  CBZ             R2, loc_1DF5AE
1DF54C:  SUBS            R2, #1
1DF54E:  MOVS            R3, #0
1DF550:  B               loc_1DF558
1DF552:  ADDS            R3, #0x28 ; '('
1DF554:  LDR             R0, [R4,#8]
1DF556:  SUBS            R2, #1
1DF558:  ADDS            R6, R0, R3
1DF55A:  LDR             R5, [R6,#8]
1DF55C:  CMP             R5, #0
1DF55E:  ITTT NE
1DF560:  ADDNE           R0, R5, R1
1DF562:  STRNE           R0, [R6,#8]
1DF564:  LDRNE           R0, [R4,#8]
1DF566:  ADDS            R6, R0, R3
1DF568:  LDR             R5, [R6,#0xC]
1DF56A:  CMP             R5, #0
1DF56C:  ITTT NE
1DF56E:  ADDNE           R0, R5, R1
1DF570:  STRNE           R0, [R6,#0xC]
1DF572:  LDRNE           R0, [R4,#8]
1DF574:  ADDS            R6, R0, R3
1DF576:  LDR             R5, [R6,#0x10]
1DF578:  CMP             R5, #0
1DF57A:  ITTT NE
1DF57C:  ADDNE           R0, R5, R1
1DF57E:  STRNE           R0, [R6,#0x10]
1DF580:  LDRNE           R0, [R4,#8]
1DF582:  ADDS            R6, R0, R3
1DF584:  LDR             R5, [R6,#0x14]
1DF586:  CMP             R5, #0
1DF588:  ITTT NE
1DF58A:  ADDNE           R0, R5, R1
1DF58C:  STRNE           R0, [R6,#0x14]
1DF58E:  LDRNE           R0, [R4,#8]
1DF590:  ADDS            R6, R0, R3
1DF592:  LDR             R5, [R6,#0x18]
1DF594:  CMP             R5, #0
1DF596:  ITTT NE
1DF598:  ADDNE           R0, R5, R1
1DF59A:  STRNE           R0, [R6,#0x18]
1DF59C:  LDRNE           R0, [R4,#8]
1DF59E:  ADD             R0, R3
1DF5A0:  LDR             R6, [R0,#0x1C]
1DF5A2:  CMP             R6, #0
1DF5A4:  ITT NE
1DF5A6:  ADDNE           R6, R1
1DF5A8:  STRNE           R6, [R0,#0x1C]
1DF5AA:  CMP             R2, #0
1DF5AC:  BNE             loc_1DF552
1DF5AE:  MOVS            R4, #1
1DF5B0:  B               loc_1DF5CA
1DF5B2:  MOVS            R0, #0x13
1DF5B4:  MOVS            R4, #0
1DF5B6:  MOVT            R0, #0x8000; int
1DF5BA:  MOV             R1, R5
1DF5BC:  STR             R4, [SP,#0x18+var_18]
1DF5BE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DF5C2:  STR             R0, [SP,#0x18+var_14]
1DF5C4:  MOV             R0, SP
1DF5C6:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DF5CA:  MOV             R0, R4
1DF5CC:  ADD             SP, SP, #8
1DF5CE:  POP.W           {R11}
1DF5D2:  POP             {R4-R7,PC}
