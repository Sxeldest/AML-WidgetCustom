; =========================================================
; Game Engine Function: sub_47B47C
; Address            : 0x47B47C - 0x47B71A
; =========================================================

47B47C:  PUSH            {R4-R7,LR}
47B47E:  ADD             R7, SP, #0xC
47B480:  PUSH.W          {R8-R11}
47B484:  SUB             SP, SP, #0x6C
47B486:  MOV             R6, R0
47B488:  LDRD.W          R1, R0, [R6,#0xE0]
47B48C:  CMP             R0, #1
47B48E:  STR             R1, [SP,#0x88+var_58]
47B490:  LDR.W           R1, [R6,#0xF8]
47B494:  STR             R1, [SP,#0x88+var_5C]
47B496:  LDR.W           R9, [R6,#0x148]
47B49A:  BLT             loc_47B4DE
47B49C:  ADD.W           R8, R6, #0xE8
47B4A0:  ADD.W           R11, SP, #0x88+var_2C
47B4A4:  MOV.W           R10, #0
47B4A8:  MOVS            R5, #0
47B4AA:  LDR.W           R0, [R8,R5,LSL#2]
47B4AE:  LDR             R1, [R6,#4]
47B4B0:  LDR.W           R12, [R9,#8]
47B4B4:  LDR.W           R4, [R9,#0x18]
47B4B8:  LDR             R2, [R0,#4]
47B4BA:  LDR             R3, [R0,#0xC]
47B4BC:  MOV             R0, R6
47B4BE:  LDR.W           LR, [R1,#0x20]
47B4C2:  LDR.W           R1, [R4,R2,LSL#2]
47B4C6:  MUL.W           R2, R3, R12
47B4CA:  STR.W           R10, [SP,#0x88+var_88]
47B4CE:  BLX             LR
47B4D0:  STR.W           R0, [R11,R5,LSL#2]
47B4D4:  ADDS            R5, #1
47B4D6:  LDR.W           R0, [R6,#0xE4]
47B4DA:  CMP             R5, R0
47B4DC:  BLT             loc_47B4AA
47B4DE:  STR             R6, [SP,#0x88+var_84]
47B4E0:  LDRD.W          R2, R0, [R9,#0x10]
47B4E4:  CMP             R2, R0
47B4E6:  BGE.W           loc_47B6BE
47B4EA:  LDR             R1, [SP,#0x88+var_58]
47B4EC:  ADD.W           LR, R9, #8
47B4F0:  LDR.W           R10, [SP,#0x88+var_84]
47B4F4:  SUBS            R1, #1
47B4F6:  STR             R1, [SP,#0x88+var_58]
47B4F8:  LDR             R1, [SP,#0x88+var_5C]
47B4FA:  SUBS            R1, #1
47B4FC:  STR             R1, [SP,#0x88+var_78]
47B4FE:  LDR.W           R6, [R9,#0xC]
47B502:  STR.W           LR, [SP,#0x88+var_74]
47B506:  LDR.W           R1, [R10,#0xF8]
47B50A:  CMP             R6, R1
47B50C:  BCS.W           loc_47B6AE
47B510:  LSLS            R0, R6, #7
47B512:  STR             R2, [SP,#0x88+var_6C]
47B514:  STR             R0, [SP,#0x88+var_7C]
47B516:  LDR.W           R0, [R10,#0xE4]
47B51A:  CMP             R0, #1
47B51C:  BLT.W           loc_47B684
47B520:  MOVS            R5, #0
47B522:  MOVS            R1, #0
47B524:  STR             R6, [SP,#0x88+var_80]
47B526:  ADD.W           R2, R10, R5,LSL#2
47B52A:  LDR.W           R8, [R2,#0xE8]
47B52E:  LDR             R2, [SP,#0x88+var_78]
47B530:  MOV             R3, R8
47B532:  LDR.W           R4, [R8,#0x38]
47B536:  LDR.W           R12, [R3,#0x34]!
47B53A:  CMP             R6, R2
47B53C:  MOV             R2, R3
47B53E:  IT CS
47B540:  ADDCS.W         R2, R8, #0x44 ; 'D'
47B544:  CMP             R4, #1
47B546:  BLT.W           loc_47B67C
47B54A:  MUL.W           R0, R12, R6
47B54E:  STR             R5, [SP,#0x88+var_5C]
47B550:  MOV.W           R11, #0
47B554:  STR             R0, [SP,#0x88+var_60]
47B556:  LDR             R0, [SP,#0x88+var_7C]
47B558:  LDR.W           R10, [R2]
47B55C:  MUL.W           R0, R0, R12
47B560:  CMP.W           R10, #1
47B564:  STR             R0, [SP,#0x88+var_70]
47B566:  MOV.W           R0, #0
47B56A:  IT LT
47B56C:  MOVLT           R0, #1
47B56E:  LDR             R5, [SP,#0x88+var_6C]
47B570:  STR             R0, [SP,#0x88+var_64]
47B572:  BIC.W           R0, R10, #3
47B576:  STR             R0, [SP,#0x88+var_68]
47B578:  LDR.W           R2, [LR]
47B57C:  ADD.W           R0, R11, R5
47B580:  LDR             R4, [SP,#0x88+var_58]
47B582:  CMP             R2, R4
47B584:  BCS             loc_47B594
47B586:  CMP.W           R10, #1
47B58A:  BGE             loc_47B5AA
47B58C:  MOVS            R4, #0
47B58E:  CMP             R4, R12
47B590:  BLT             loc_47B63E
47B592:  B               loc_47B662
47B594:  LDR.W           R2, [R8,#0x48]
47B598:  MOVS            R4, #0
47B59A:  CMP             R0, R2
47B59C:  MOV.W           R2, #0
47B5A0:  IT GE
47B5A2:  MOVGE           R2, #1
47B5A4:  LDR             R6, [SP,#0x88+var_64]
47B5A6:  ORRS            R2, R6
47B5A8:  BNE             loc_47B63A
47B5AA:  LDR             R6, [SP,#0x88+var_5C]
47B5AC:  ADD             R2, SP, #0x88+var_2C
47B5AE:  CMP.W           R10, #4
47B5B2:  LDR.W           R2, [R2,R6,LSL#2]
47B5B6:  LDR.W           R0, [R2,R0,LSL#2]
47B5BA:  LDR             R2, [SP,#0x88+var_60]
47B5BC:  ADD.W           R4, R0, R2,LSL#7
47B5C0:  BCC             loc_47B618
47B5C2:  LDR             R2, [SP,#0x88+var_68]
47B5C4:  CBZ             R2, loc_47B618
47B5C6:  LDR             R6, [SP,#0x88+var_70]
47B5C8:  ADD.W           R12, R1, R2
47B5CC:  ADD.W           R4, R4, R2,LSL#7
47B5D0:  MOV             LR, R2
47B5D2:  ADD             R2, SP, #0x88+var_54
47B5D4:  ADD             R0, R6
47B5D6:  ADD.W           R5, R0, #0x180
47B5DA:  ADD.W           R2, R2, R1,LSL#2
47B5DE:  MOV             R0, LR
47B5E0:  SUB.W           LR, R5, #0x80
47B5E4:  SUB.W           R6, R5, #0x180
47B5E8:  SUBS            R0, #4
47B5EA:  VMOV.32         D17[0], LR
47B5EE:  VMOV.32         D16[0], R6
47B5F2:  SUB.W           R6, R5, #0x100
47B5F6:  VMOV.32         D17[1], R5
47B5FA:  ADD.W           R5, R5, #0x200
47B5FE:  VMOV.32         D16[1], R6
47B602:  VST1.32         {D16-D17}, [R2]!
47B606:  BNE             loc_47B5E0
47B608:  LDR             R0, [SP,#0x88+var_68]
47B60A:  LDR             R5, [SP,#0x88+var_6C]
47B60C:  LDR.W           LR, [SP,#0x88+var_74]
47B610:  CMP             R10, R0
47B612:  MOV             R2, R0
47B614:  BNE             loc_47B61C
47B616:  B               loc_47B632
47B618:  MOVS            R2, #0
47B61A:  MOV             R12, R1
47B61C:  ADD             R0, SP, #0x88+var_54
47B61E:  SUB.W           R2, R10, R2
47B622:  ADD.W           R0, R0, R12,LSL#2
47B626:  STR.W           R4, [R0],#4
47B62A:  SUBS            R2, #1
47B62C:  ADD.W           R4, R4, #0x80
47B630:  BNE             loc_47B626
47B632:  LDR.W           R12, [R3]
47B636:  ADD             R1, R10
47B638:  MOV             R4, R10
47B63A:  CMP             R4, R12
47B63C:  BGE             loc_47B662
47B63E:  ADD             R0, SP, #0x88+var_54
47B640:  ADD.W           R0, R0, R1,LSL#2
47B644:  ADD.W           R6, R9, R1,LSL#2
47B648:  LDR.W           R2, [R0,#-4]
47B64C:  ADDS            R4, #1
47B64E:  ADDS            R1, #1
47B650:  LDR             R6, [R6,#0x1C]
47B652:  STR             R6, [R0]
47B654:  ADDS            R0, #4
47B656:  LDRH            R2, [R2]
47B658:  STRH            R2, [R6]
47B65A:  LDR.W           R12, [R3]
47B65E:  CMP             R4, R12
47B660:  BLT             loc_47B644
47B662:  LDR.W           R0, [R8,#0x38]
47B666:  ADD.W           R11, R11, #1
47B66A:  CMP             R11, R0
47B66C:  BLT.W           loc_47B578
47B670:  LDR.W           R10, [SP,#0x88+var_84]
47B674:  LDR             R6, [SP,#0x88+var_80]
47B676:  LDR             R5, [SP,#0x88+var_5C]
47B678:  LDR.W           R0, [R10,#0xE4]
47B67C:  ADDS            R5, #1
47B67E:  CMP             R5, R0
47B680:  BLT.W           loc_47B526
47B684:  LDR.W           R0, [R10,#0x15C]
47B688:  ADD             R1, SP, #0x88+var_54
47B68A:  LDR             R2, [R0,#4]
47B68C:  MOV             R0, R10
47B68E:  BLX             R2
47B690:  CBZ             R0, loc_47B6E0
47B692:  LDR             R0, [SP,#0x88+var_7C]
47B694:  ADDS            R6, #1
47B696:  LDR.W           LR, [SP,#0x88+var_74]
47B69A:  ADDS            R0, #0x80
47B69C:  STR             R0, [SP,#0x88+var_7C]
47B69E:  LDR.W           R0, [R10,#0xF8]
47B6A2:  CMP             R6, R0
47B6A4:  BCC.W           loc_47B516
47B6A8:  LDR.W           R0, [R9,#0x14]
47B6AC:  LDR             R2, [SP,#0x88+var_6C]
47B6AE:  ADDS            R2, #1
47B6B0:  MOVS            R6, #0
47B6B2:  CMP             R2, R0
47B6B4:  STR.W           R6, [R9,#0xC]
47B6B8:  BLT.W           loc_47B506
47B6BC:  B               loc_47B6C6
47B6BE:  ADD.W           LR, R9, #8
47B6C2:  LDR.W           R10, [SP,#0x88+var_84]
47B6C6:  LDR.W           R0, [LR]
47B6CA:  ADDS            R0, #1
47B6CC:  STR.W           R0, [LR]
47B6D0:  LDR.W           R1, [R10,#0xE4]
47B6D4:  LDR.W           R0, [R10,#0x148]
47B6D8:  CMP             R1, #1
47B6DA:  BLE             loc_47B6EE
47B6DC:  MOVS            R1, #1
47B6DE:  B               loc_47B708
47B6E0:  STR.W           R6, [R9,#0xC]
47B6E4:  LDR             R0, [SP,#0x88+var_6C]
47B6E6:  STR.W           R0, [R9,#0x10]
47B6EA:  MOVS            R0, #0
47B6EC:  B               loc_47B712
47B6EE:  LDR.W           R1, [R10,#0xE0]
47B6F2:  LDR.W           R2, [R10,#0xE8]
47B6F6:  LDR             R3, [R0,#8]
47B6F8:  SUBS            R1, #1
47B6FA:  ADD.W           R6, R2, #0x48 ; 'H'
47B6FE:  CMP             R3, R1
47B700:  IT CC
47B702:  ADDCC.W         R6, R2, #0xC
47B706:  LDR             R1, [R6]
47B708:  MOVS            R2, #0
47B70A:  STRD.W          R2, R2, [R0,#0xC]
47B70E:  STR             R1, [R0,#0x14]
47B710:  MOVS            R0, #1
47B712:  ADD             SP, SP, #0x6C ; 'l'
47B714:  POP.W           {R8-R11}
47B718:  POP             {R4-R7,PC}
