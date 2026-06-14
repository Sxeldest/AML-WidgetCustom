; =========================================================
; Game Engine Function: inflate_blocks
; Address            : 0x20D378 - 0x20DCCC
; =========================================================

20D378:  PUSH            {R4-R7,LR}
20D37A:  ADD             R7, SP, #0xC
20D37C:  PUSH.W          {R8-R11}
20D380:  SUB             SP, SP, #0x5C
20D382:  MOV             R10, R0
20D384:  MOV             R12, R2
20D386:  LDR.W           R0, [R10,#0x1C]
20D38A:  STR             R0, [SP,#0x78+var_38]
20D38C:  LDR.W           R0, [R10,#0x20]
20D390:  STR             R0, [SP,#0x78+var_34]
20D392:  LDRD.W          R0, R8, [R10,#0x30]
20D396:  LDR             R6, [R1]
20D398:  STR             R1, [SP,#0x78+var_3C]
20D39A:  CMP             R8, R0
20D39C:  LDR.W           R9, [R1,#4]
20D3A0:  BCS             loc_20D3B2
20D3A2:  MVN.W           R1, R8
20D3A6:  ADD.W           R11, R1, R0
20D3AA:  ADD.W           R0, R10, #0x2C ; ','
20D3AE:  STR             R0, [SP,#0x78+var_30]
20D3B0:  B               loc_20D3BE
20D3B2:  MOV             R1, R10
20D3B4:  LDR.W           R0, [R1,#0x2C]!
20D3B8:  STR             R1, [SP,#0x78+var_30]
20D3BA:  SUB.W           R11, R0, R8
20D3BE:  ADD.W           R0, R10, #0x10
20D3C2:  STR             R0, [SP,#0x78+var_40]
20D3C4:  ADD.W           R0, R10, #0x14
20D3C8:  STR             R0, [SP,#0x78+var_44]
20D3CA:  LDR.W           R0, =(inflate_mask_ptr - 0x20D3D6)
20D3CE:  LDR.W           R5, =(unk_5EF9E8 - 0x20D3D8)
20D3D2:  ADD             R0, PC; inflate_mask_ptr
20D3D4:  ADD             R5, PC; unk_5EF9E8
20D3D6:  LDR             R0, [R0]; inflate_mask
20D3D8:  STR             R0, [SP,#0x78+var_48]
20D3DA:  LDR.W           R0, =(inflate_mask_ptr - 0x20D3E2)
20D3DE:  ADD             R0, PC; inflate_mask_ptr
20D3E0:  LDR             R0, [R0]; inflate_mask
20D3E2:  STR             R0, [SP,#0x78+var_50]
20D3E4:  STR             R0, [SP,#0x78+var_4C]
20D3E6:  B               loc_20D95E
20D3E8:  LDR             R2, [SP,#0x78+var_34]
20D3EA:  MOVW            R0, #0xFFFF
20D3EE:  EOR.W           R0, R0, R2,LSR#16
20D3F2:  UXTH            R1, R2
20D3F4:  CMP             R0, R1
20D3F6:  BNE.W           loc_20DC8E
20D3FA:  CMP             R0, #0
20D3FC:  STR.W           R0, [R10,#4]
20D400:  BEQ.W           loc_20D866
20D404:  MOVS            R0, #2
20D406:  B               loc_20D870
20D408:  LDR             R0, [SP,#0x78+var_38]
20D40A:  LDR.W           R11, [SP,#0x78+var_3C]
20D40E:  CMP             R0, #0xD
20D410:  BHI             loc_20D43A
20D412:  CMP.W           R9, #0
20D416:  BEQ.W           loc_20DB52
20D41A:  LDRB.W          R0, [R6],#1
20D41E:  SUB.W           R9, R9, #1
20D422:  LDR             R2, [SP,#0x78+var_38]
20D424:  MOV.W           R12, #0
20D428:  LDR             R1, [SP,#0x78+var_34]
20D42A:  LSLS            R0, R2
20D42C:  ADDS            R2, #8
20D42E:  CMP             R2, #0xE
20D430:  ORR.W           R1, R1, R0
20D434:  STR             R1, [SP,#0x78+var_34]
20D436:  STR             R2, [SP,#0x78+var_38]
20D438:  BCC             loc_20D412
20D43A:  LDR             R3, [SP,#0x78+var_34]
20D43C:  AND.W           R1, R3, #0x1F
20D440:  MOV             R0, R3
20D442:  CMP             R1, #0x1D
20D444:  BFC.W           R0, #0xE, #0x12
20D448:  STR.W           R0, [R10,#4]
20D44C:  ITT LS
20D44E:  UBFXLS.W        R2, R3, #5, #5
20D452:  CMPLS           R2, #0x1E
20D454:  BCS.W           loc_20DC58
20D458:  STR.W           R12, [SP,#0x78+var_54]
20D45C:  ADD             R1, R2
20D45E:  LDR.W           R3, [R11,#0x20]
20D462:  ADD.W           R1, R1, #0x102
20D466:  LDR.W           R0, [R11,#0x28]
20D46A:  MOVS            R2, #4
20D46C:  BLX             R3
20D46E:  CMP             R0, #0
20D470:  STR.W           R0, [R10,#0xC]
20D474:  BEQ.W           loc_20DC9E
20D478:  MOVS            R0, #4
20D47A:  LDR.W           R5, =(unk_5EF9E8 - 0x20D48C)
20D47E:  STR.W           R0, [R10]
20D482:  MOVS            R0, #0
20D484:  STR.W           R0, [R10,#8]
20D488:  ADD             R5, PC; unk_5EF9E8
20D48A:  LDR             R4, [SP,#0x78+var_38]
20D48C:  LDR             R1, [SP,#0x78+var_34]
20D48E:  LDR.W           R12, [SP,#0x78+var_54]
20D492:  SUBS            R4, #0xE
20D494:  LSRS            R1, R1, #0xE
20D496:  STR             R1, [SP,#0x78+var_34]
20D498:  B               loc_20D4AC
20D49A:  LDRD.W          R1, R0, [R10,#4]
20D49E:  MOVS            R2, #4
20D4A0:  LDRD.W          R11, R4, [SP,#0x78+var_3C]
20D4A4:  ADD.W           R1, R2, R1,LSR#10
20D4A8:  CMP             R0, R1
20D4AA:  BCS             loc_20D506
20D4AC:  MOV             R2, R4
20D4AE:  CMP             R4, #2
20D4B0:  BHI             loc_20D4D2
20D4B2:  CMP.W           R9, #0
20D4B6:  BEQ.W           loc_20DB5A
20D4BA:  LDRB.W          R1, [R6],#1
20D4BE:  MOV             R4, R2
20D4C0:  LDR             R3, [SP,#0x78+var_34]
20D4C2:  SUB.W           R9, R9, #1
20D4C6:  MOV.W           R12, #0
20D4CA:  LSLS            R1, R4
20D4CC:  ORRS            R3, R1
20D4CE:  ADDS            R4, #8
20D4D0:  B               loc_20D4D6
20D4D2:  LDR             R3, [SP,#0x78+var_34]
20D4D4:  MOV             R4, R2
20D4D6:  LDR.W           R2, =(unk_5EF9E8 - 0x20D4E4)
20D4DA:  SUBS            R4, #3
20D4DC:  LDR.W           R1, [R10,#0xC]
20D4E0:  ADD             R2, PC; unk_5EF9E8
20D4E2:  LDR.W           R2, [R2,R0,LSL#2]
20D4E6:  ADDS            R0, #1
20D4E8:  STR.W           R0, [R10,#8]
20D4EC:  AND.W           R0, R3, #7
20D4F0:  LSRS            R3, R3, #3
20D4F2:  STR.W           R0, [R1,R2,LSL#2]
20D4F6:  MOVS            R2, #4
20D4F8:  LDRD.W          R1, R0, [R10,#4]
20D4FC:  STR             R3, [SP,#0x78+var_34]
20D4FE:  ADD.W           R1, R2, R1,LSR#10
20D502:  CMP             R0, R1
20D504:  BCC             loc_20D4AC
20D506:  CMP             R0, #0x12
20D508:  MOV.W           R3, #0
20D50C:  STR.W           R12, [SP,#0x78+var_54]
20D510:  STR             R4, [SP,#0x78+var_38]
20D512:  BHI             loc_20D52E
20D514:  LDR.W           R2, [R5,R0,LSL#2]
20D518:  ADDS            R0, #1
20D51A:  LDR.W           R1, [R10,#0xC]
20D51E:  STR.W           R0, [R10,#8]
20D522:  STR.W           R3, [R1,R2,LSL#2]
20D526:  LDR.W           R0, [R10,#8]
20D52A:  CMP             R0, #0x13
20D52C:  BCC             loc_20D514
20D52E:  MOVS            R1, #7
20D530:  LDR.W           R0, [R10,#0xC]
20D534:  LDR.W           R3, [R10,#0x24]
20D538:  STR.W           R1, [R10,#0x10]
20D53C:  STR.W           R11, [SP,#0x78+var_78]
20D540:  LDRD.W          R2, R1, [SP,#0x78+var_44]
20D544:  BLX             j_inflate_trees_bits
20D548:  MOV             R4, R0
20D54A:  CMP             R4, #0
20D54C:  BNE.W           loc_20DC74
20D550:  MOVS            R0, #5
20D552:  STR.W           R0, [R10]
20D556:  MOVS            R0, #0
20D558:  STR.W           R0, [R10,#8]
20D55C:  LDR.W           R12, [SP,#0x78+var_54]
20D560:  LDR.W           R1, [R10,#4]
20D564:  MOVS            R5, #0
20D566:  AND.W           R2, R1, #0x1F
20D56A:  UBFX.W          R3, R1, #5, #5
20D56E:  ADD             R2, R3
20D570:  ADD.W           R2, R2, #0x102
20D574:  CMP             R0, R2
20D576:  BCS.W           loc_20D6E4
20D57A:  LDR             R2, [SP,#0x78+var_40]
20D57C:  LDR             R3, [SP,#0x78+var_38]
20D57E:  LDR             R2, [R2]
20D580:  CMP             R3, R2
20D582:  BCS             loc_20D5AC
20D584:  CMP.W           R9, #0
20D588:  BEQ.W           loc_20DB52
20D58C:  LDRB.W          R3, [R6],#1
20D590:  SUB.W           R9, R9, #1
20D594:  LDR             R4, [SP,#0x78+var_38]
20D596:  MOV.W           R12, #0
20D59A:  LDR             R5, [SP,#0x78+var_34]
20D59C:  LSLS            R3, R4
20D59E:  ADDS            R4, #8
20D5A0:  ORRS            R5, R3
20D5A2:  STR             R5, [SP,#0x78+var_34]
20D5A4:  MOVS            R5, #0
20D5A6:  CMP             R4, R2
20D5A8:  STR             R4, [SP,#0x78+var_38]
20D5AA:  BCC             loc_20D584
20D5AC:  LDR             R3, [SP,#0x78+var_48]
20D5AE:  LDR             R4, [SP,#0x78+var_34]
20D5B0:  LDR.W           R2, [R3,R2,LSL#2]
20D5B4:  LDR             R3, [SP,#0x78+var_44]
20D5B6:  ANDS            R2, R4
20D5B8:  LDR             R3, [R3]
20D5BA:  ADD.W           R2, R3, R2,LSL#3
20D5BE:  LDR.W           R11, [R2,#4]
20D5C2:  LDRB            R3, [R2,#1]
20D5C4:  CMP.W           R11, #0xF
20D5C8:  BHI             loc_20D5EC
20D5CA:  LDR.W           R1, [R10,#0xC]
20D5CE:  ADDS            R2, R0, #1
20D5D0:  STR.W           R2, [R10,#8]
20D5D4:  LSRS            R4, R3
20D5D6:  STR.W           R11, [R1,R0,LSL#2]
20D5DA:  LDR             R0, [SP,#0x78+var_38]
20D5DC:  LDR.W           R11, [SP,#0x78+var_3C]
20D5E0:  SUBS            R0, R0, R3
20D5E2:  STR             R0, [SP,#0x78+var_38]
20D5E4:  LDR.W           R0, [R10,#8]
20D5E8:  STR             R4, [SP,#0x78+var_34]
20D5EA:  B               loc_20D6CC
20D5EC:  CMP.W           R11, #0x12
20D5F0:  MOV.W           R2, #3
20D5F4:  IT EQ
20D5F6:  MOVEQ           R2, #0xB
20D5F8:  SUB.W           LR, R11, #0xE
20D5FC:  STR             R2, [SP,#0x78+var_58]
20D5FE:  IT EQ
20D600:  MOVEQ.W         LR, #7
20D604:  LDR             R2, [SP,#0x78+var_38]
20D606:  ADD.W           R4, LR, R3
20D60A:  STR             R3, [SP,#0x78+var_5C]
20D60C:  CMP             R2, R4
20D60E:  BCS             loc_20D638
20D610:  CMP.W           R9, #0
20D614:  BEQ.W           loc_20DAC6
20D618:  LDRB.W          R5, [R6],#1
20D61C:  SUB.W           R9, R9, #1
20D620:  LDR             R3, [SP,#0x78+var_38]
20D622:  MOV.W           R12, #0
20D626:  LDR             R2, [SP,#0x78+var_34]
20D628:  LSLS            R5, R3
20D62A:  ADDS            R3, #8
20D62C:  ORRS            R2, R5
20D62E:  MOVS            R5, #0
20D630:  CMP             R3, R4
20D632:  STR             R2, [SP,#0x78+var_34]
20D634:  STR             R3, [SP,#0x78+var_38]
20D636:  BCC             loc_20D610
20D638:  LDR             R2, [SP,#0x78+var_50]
20D63A:  LDR             R3, [SP,#0x78+var_5C]
20D63C:  STR.W           R12, [SP,#0x78+var_54]
20D640:  LDR.W           R4, [R2,LR,LSL#2]
20D644:  LDR             R2, [SP,#0x78+var_34]
20D646:  LSR.W           R12, R2, R3
20D64A:  LDR             R2, [SP,#0x78+var_58]
20D64C:  AND.W           R4, R4, R12
20D650:  STR             R4, [SP,#0x78+var_60]
20D652:  ADD             R2, R4
20D654:  ADDS            R4, R2, R0
20D656:  STR             R4, [SP,#0x78+var_34]
20D658:  LDR             R4, [SP,#0x78+var_38]
20D65A:  SUBS            R4, R4, R3
20D65C:  LSR.W           R3, R12, LR
20D660:  SUB.W           R4, R4, LR
20D664:  STR             R4, [SP,#0x78+var_38]
20D666:  UBFX.W          R4, R1, #5, #5
20D66A:  AND.W           R1, R1, #0x1F
20D66E:  ADD             R1, R4
20D670:  LDR             R4, [SP,#0x78+var_34]
20D672:  ADD.W           R1, R1, #0x102
20D676:  CMP             R4, R1
20D678:  BHI.W           loc_20DBC2
20D67C:  CMP.W           R11, #0x10
20D680:  IT EQ
20D682:  CMPEQ           R0, #0
20D684:  BEQ.W           loc_20DBC2
20D688:  CMP.W           R11, #0x10
20D68C:  LDR.W           R11, [SP,#0x78+var_3C]
20D690:  STR             R3, [SP,#0x78+var_34]
20D692:  BNE             loc_20D6A2
20D694:  LDR.W           R1, [R10,#0xC]
20D698:  ADD.W           R1, R1, R0,LSL#2
20D69C:  LDR.W           R1, [R1,#-4]
20D6A0:  B               loc_20D6A4
20D6A2:  MOVS            R1, #0
20D6A4:  LDR             R3, [SP,#0x78+var_58]
20D6A6:  LDR.W           LR, [SP,#0x78+var_60]
20D6AA:  ADD.W           R12, R3, R0
20D6AE:  NEGS            R3, R2
20D6B0:  LDR.W           R4, [R10,#0xC]
20D6B4:  ADDS            R3, #1
20D6B6:  STR.W           R1, [R4,R0,LSL#2]
20D6BA:  ADD.W           R0, R0, #1
20D6BE:  BNE             loc_20D6B0
20D6C0:  ADD.W           R0, R12, LR
20D6C4:  STR.W           R0, [R10,#8]
20D6C8:  LDR.W           R12, [SP,#0x78+var_54]
20D6CC:  LDR.W           R1, [R10,#4]
20D6D0:  AND.W           R2, R1, #0x1F
20D6D4:  UBFX.W          R3, R1, #5, #5
20D6D8:  ADD             R2, R3
20D6DA:  ADD.W           R2, R2, #0x102
20D6DE:  CMP             R0, R2
20D6E0:  BCC.W           loc_20D57A
20D6E4:  MOVS            R0, #9
20D6E6:  STR.W           R12, [SP,#0x78+var_54]
20D6EA:  STR.W           R5, [R10,#0x14]
20D6EE:  ADD             R3, SP, #0x78+var_24
20D6F0:  STR             R0, [SP,#0x78+var_20]
20D6F2:  MOVS            R0, #6
20D6F4:  STR             R0, [SP,#0x78+var_24]
20D6F6:  LDR.W           R0, [R10,#0x24]
20D6FA:  LDR.W           R2, [R10,#0xC]
20D6FE:  STR             R3, [SP,#0x78+var_78]
20D700:  ADD             R3, SP, #0x78+var_28
20D702:  STR             R3, [SP,#0x78+var_74]
20D704:  ADD             R3, SP, #0x78+var_2C
20D706:  STRD.W          R3, R0, [SP,#0x78+var_70]
20D70A:  AND.W           R0, R1, #0x1F
20D70E:  STR.W           R11, [SP,#0x78+var_68]
20D712:  UBFX.W          R1, R1, #5, #5
20D716:  ADDW            R0, R0, #0x101
20D71A:  ADDS            R1, #1
20D71C:  ADD             R3, SP, #0x78+var_20
20D71E:  BLX             j_inflate_trees_dynamic
20D722:  MOV             R4, R0
20D724:  LDRD.W          R2, R0, [R11,#0x24]
20D728:  LDR.W           R1, [R10,#0xC]
20D72C:  BLX             R2
20D72E:  CMP             R4, #0
20D730:  BEQ             loc_20D7B0
20D732:  ADDS            R0, R4, #3
20D734:  MOV             R2, R4
20D736:  ITT EQ
20D738:  MOVEQ           R0, #9
20D73A:  STREQ.W         R0, [R10]
20D73E:  LDR             R0, [SP,#0x78+var_38]
20D740:  STR.W           R0, [R10,#0x1C]
20D744:  LDR             R0, [SP,#0x78+var_34]
20D746:  STR.W           R0, [R10,#0x20]
20D74A:  LDR.W           R0, [R11]
20D74E:  LDR.W           R1, [R11,#8]
20D752:  SUBS            R0, R6, R0
20D754:  STRD.W          R6, R9, [R11]
20D758:  ADD             R0, R1
20D75A:  STR.W           R0, [R11,#8]
20D75E:  MOV             R0, R10
20D760:  MOV             R1, R11
20D762:  STR.W           R8, [R10,#0x34]
20D766:  BLX             j_inflate_flush
20D76A:  STR             R0, [SP,#0x78+var_4C]
20D76C:  MOVS            R0, #0
20D76E:  CMP             R0, #1
20D770:  BEQ             loc_20D7D4
20D772:  B               loc_20DC70
20D774:  LDR             R1, [SP,#0x78+var_34]
20D776:  AND.W           R0, R1, #1
20D77A:  STR.W           R0, [R10,#0x18]
20D77E:  STR             R1, [SP,#0x78+var_34]
20D780:  UBFX.W          R0, R1, #1, #2
20D784:  CMP             R0, #1
20D786:  BEQ             loc_20D87E
20D788:  CMP             R0, #2
20D78A:  BEQ.W           loc_20D8B6
20D78E:  CMP             R0, #3
20D790:  BEQ.W           loc_20DB8A
20D794:  LDR             R0, [SP,#0x78+var_38]
20D796:  SUBS            R0, #3
20D798:  AND.W           R1, R0, #7
20D79C:  SUBS            R0, R0, R1
20D79E:  STR             R0, [SP,#0x78+var_38]
20D7A0:  LDR             R0, [SP,#0x78+var_34]
20D7A2:  LSRS            R0, R0, #3
20D7A4:  LSRS            R0, R1
20D7A6:  STR             R0, [SP,#0x78+var_34]
20D7A8:  MOVS            R0, #1
20D7AA:  STR.W           R0, [R10]
20D7AE:  B               loc_20D95E
20D7B0:  LDRD.W          R3, R2, [SP,#0x78+var_2C]
20D7B4:  LDRD.W          R1, R0, [SP,#0x78+var_24]
20D7B8:  STR.W           R11, [SP,#0x78+var_78]
20D7BC:  BLX             j_inflate_codes_new
20D7C0:  CMP             R0, #0
20D7C2:  BEQ.W           loc_20D8CA
20D7C6:  STR.W           R0, [R10,#4]
20D7CA:  MOVS            R0, #1
20D7CC:  LDR             R4, [SP,#0x78+var_54]
20D7CE:  CMP             R0, #1
20D7D0:  BNE.W           loc_20DC70
20D7D4:  MOVS            R0, #6
20D7D6:  STR.W           R0, [R10]
20D7DA:  LDR             R0, [SP,#0x78+var_38]
20D7DC:  MOV             R2, R4
20D7DE:  STR.W           R0, [R10,#0x1C]
20D7E2:  LDR             R0, [SP,#0x78+var_34]
20D7E4:  STR.W           R0, [R10,#0x20]
20D7E8:  LDR.W           R0, [R11]
20D7EC:  LDR.W           R1, [R11,#8]
20D7F0:  SUBS            R0, R6, R0
20D7F2:  STRD.W          R6, R9, [R11]
20D7F6:  ADD             R0, R1
20D7F8:  STR.W           R0, [R11,#8]
20D7FC:  MOV             R0, R10
20D7FE:  MOV             R1, R11
20D800:  STR.W           R8, [R10,#0x34]
20D804:  BLX             j_inflate_codes
20D808:  MOV             R2, R0
20D80A:  CMP             R2, #1
20D80C:  BNE.W           loc_20DCC6
20D810:  LDR.W           R0, [R10,#4]
20D814:  MOV             R1, R11
20D816:  BLX             j_inflate_codes_free
20D81A:  LDR.W           R0, [R10,#0x1C]
20D81E:  STR             R0, [SP,#0x78+var_38]
20D820:  LDR.W           R0, [R10,#0x20]
20D824:  STR             R0, [SP,#0x78+var_34]
20D826:  LDRD.W          R0, R8, [R10,#0x30]
20D82A:  LDRD.W          R6, R9, [R11]
20D82E:  CMP             R8, R0
20D830:  BCS             loc_20D842
20D832:  LDR.W           R5, =(unk_5EF9E8 - 0x20D842)
20D836:  MVN.W           R1, R8
20D83A:  ADD.W           R11, R1, R0
20D83E:  ADD             R5, PC; unk_5EF9E8
20D840:  B               loc_20D850
20D842:  LDR             R0, [SP,#0x78+var_30]
20D844:  LDR.W           R5, =(unk_5EF9E8 - 0x20D84E)
20D848:  LDR             R0, [R0]
20D84A:  ADD             R5, PC; unk_5EF9E8
20D84C:  SUB.W           R11, R0, R8
20D850:  LDR.W           R0, [R10,#0x18]
20D854:  CMP             R0, #0
20D856:  BNE.W           loc_20DBFC
20D85A:  MOVS            R0, #0
20D85C:  MOV.W           R12, #0
20D860:  STR.W           R0, [R10]
20D864:  B               loc_20D95E
20D866:  LDR.W           R0, [R10,#0x18]
20D86A:  CMP             R0, #0
20D86C:  IT NE
20D86E:  MOVNE           R0, #7
20D870:  STR.W           R0, [R10]
20D874:  MOVS            R0, #0
20D876:  STR             R0, [SP,#0x78+var_38]
20D878:  MOVS            R0, #0
20D87A:  STR             R0, [SP,#0x78+var_34]
20D87C:  B               loc_20D95E
20D87E:  ADD             R0, SP, #0x78+var_20
20D880:  ADD             R1, SP, #0x78+var_24
20D882:  ADD             R2, SP, #0x78+var_28
20D884:  ADD             R3, SP, #0x78+var_2C
20D886:  LDR             R4, [SP,#0x78+var_3C]
20D888:  STR.W           R12, [SP,#0x78+var_54]
20D88C:  STR             R4, [SP,#0x78+var_78]
20D88E:  BLX             j_inflate_trees_fixed
20D892:  LDRD.W          R3, R2, [SP,#0x78+var_2C]
20D896:  LDRD.W          R1, R0, [SP,#0x78+var_24]
20D89A:  STR             R4, [SP,#0x78+var_78]
20D89C:  BLX             j_inflate_codes_new
20D8A0:  CMP             R0, #0
20D8A2:  STR.W           R0, [R10,#4]
20D8A6:  BEQ             loc_20D8FC
20D8A8:  LDR.W           R5, =(unk_5EF9E8 - 0x20D8B2)
20D8AC:  MOVS            R0, #1
20D8AE:  ADD             R5, PC; unk_5EF9E8
20D8B0:  CMP             R0, #1
20D8B2:  BEQ             loc_20D93C
20D8B4:  B               loc_20DC70
20D8B6:  LDR             R0, [SP,#0x78+var_38]
20D8B8:  SUBS            R0, #3
20D8BA:  STR             R0, [SP,#0x78+var_38]
20D8BC:  LDR             R0, [SP,#0x78+var_34]
20D8BE:  LSRS            R0, R0, #3
20D8C0:  STR             R0, [SP,#0x78+var_34]
20D8C2:  MOVS            R0, #3
20D8C4:  STR.W           R0, [R10]
20D8C8:  B               loc_20D95E
20D8CA:  LDR             R0, [SP,#0x78+var_38]
20D8CC:  MOV             R4, #0xFFFFFFFC
20D8D0:  STR.W           R0, [R10,#0x1C]
20D8D4:  MOV             R2, #0xFFFFFFFC
20D8D8:  LDR             R0, [SP,#0x78+var_34]
20D8DA:  STR.W           R0, [R10,#0x20]
20D8DE:  LDR.W           R0, [R11]
20D8E2:  LDR.W           R1, [R11,#8]
20D8E6:  SUBS            R0, R6, R0
20D8E8:  STRD.W          R6, R9, [R11]
20D8EC:  ADD             R0, R1
20D8EE:  STR.W           R0, [R11,#8]
20D8F2:  STR.W           R8, [R10,#0x34]
20D8F6:  MOV             R0, R10
20D8F8:  MOV             R1, R11
20D8FA:  B               loc_20D766
20D8FC:  LDR             R0, [SP,#0x78+var_38]
20D8FE:  MOV             R2, #0xFFFFFFFC
20D902:  STR.W           R0, [R10,#0x1C]
20D906:  LDR             R0, [SP,#0x78+var_34]
20D908:  STR.W           R0, [R10,#0x20]
20D90C:  LDR             R0, [R4]
20D90E:  LDR             R1, [R4,#8]
20D910:  SUBS            R0, R6, R0
20D912:  STRD.W          R6, R9, [R4]
20D916:  ADD             R0, R1
20D918:  STR             R0, [R4,#8]
20D91A:  MOV             R0, #0xFFFFFFFC
20D91E:  STR.W           R8, [R10,#0x34]
20D922:  STR             R0, [SP,#0x78+var_54]
20D924:  MOV             R0, R10
20D926:  MOV             R1, R4
20D928:  BLX             j_inflate_flush
20D92C:  LDR.W           R5, =(unk_5EF9E8 - 0x20D938)
20D930:  STR             R0, [SP,#0x78+var_4C]
20D932:  MOVS            R0, #0
20D934:  ADD             R5, PC; unk_5EF9E8
20D936:  CMP             R0, #1
20D938:  BNE.W           loc_20DC70
20D93C:  LDR             R0, [SP,#0x78+var_38]
20D93E:  LDR.W           R12, [SP,#0x78+var_54]
20D942:  SUBS            R0, #3
20D944:  STR             R0, [SP,#0x78+var_38]
20D946:  LDR             R0, [SP,#0x78+var_34]
20D948:  LSRS            R0, R0, #3
20D94A:  STR             R0, [SP,#0x78+var_34]
20D94C:  MOVS            R0, #6
20D94E:  STR.W           R0, [R10]
20D952:  B               loc_20D95E
20D954:  LDR.W           R5, =(unk_5EF9E8 - 0x20D960)
20D958:  MOV.W           R12, #0
20D95C:  ADD             R5, PC; unk_5EF9E8
20D95E:  LDR.W           R0, [R10]
20D962:  CMP             R0, #9; switch 10 cases
20D964:  BHI.W           def_20D968; jumptable 0020D968 default case
20D968:  TBH.W           [PC,R0,LSL#1]; switch jump
20D96C:  DCW 0x81; jump table for switch statement
20D96E:  DCW 0x95
20D970:  DCW 0x15
20D972:  DCW 0x14
20D974:  DCW 0x13
20D976:  DCW 0xE
20D978:  DCW 0xA
20D97A:  DCW 0x14D
20D97C:  DCW 0xD3
20D97E:  DCW 0xD7
20D980:  LDR.W           R11, [SP,#0x78+var_3C]; jumptable 0020D968 case 6
20D984:  MOV             R4, R12
20D986:  B               loc_20D7DA
20D988:  LDR.W           R0, [R10,#8]; jumptable 0020D968 case 5
20D98C:  LDR.W           R11, [SP,#0x78+var_3C]
20D990:  B               loc_20D560
20D992:  B               loc_20D49A; jumptable 0020D968 case 4
20D994:  B               loc_20D408; jumptable 0020D968 case 3
20D996:  CMP.W           R9, #0; jumptable 0020D968 case 2
20D99A:  BEQ.W           loc_20DAC6
20D99E:  CMP.W           R11, #0
20D9A2:  BEQ             loc_20D9A8
20D9A4:  MOV             R4, R8
20D9A6:  B               loc_20DA1A
20D9A8:  LDR             R0, [SP,#0x78+var_30]
20D9AA:  LDR             R0, [R0]
20D9AC:  CMP             R8, R0
20D9AE:  BEQ             loc_20D9E6
20D9B0:  MOV             R4, R8
20D9B2:  STR.W           R4, [R10,#0x34]
20D9B6:  MOV             R0, R10
20D9B8:  LDR             R1, [SP,#0x78+var_3C]
20D9BA:  MOV             R2, R12
20D9BC:  BLX             j_inflate_flush
20D9C0:  MOV             R2, R0
20D9C2:  LDRD.W          R1, R0, [R10,#0x30]
20D9C6:  LDR             R3, [SP,#0x78+var_30]
20D9C8:  CMP             R0, R1
20D9CA:  LDR             R3, [R3]
20D9CC:  ITEE CS
20D9CE:  SUBCS.W         R11, R3, R0
20D9D2:  MVNCC           R5, R0
20D9D4:  ADDCC.W         R11, R5, R1
20D9D8:  CMP             R0, R3
20D9DA:  BEQ             loc_20DA02
20D9DC:  MOV             R4, R0
20D9DE:  CMP.W           R11, #0
20D9E2:  BNE             loc_20DA1A
20D9E4:  B               loc_20DAEE
20D9E6:  LDR.W           R4, [R10,#0x28]
20D9EA:  LDR.W           R0, [R10,#0x30]
20D9EE:  CMP             R0, R4
20D9F0:  BEQ             loc_20D9B0
20D9F2:  CMP             R4, R0
20D9F4:  IT CC
20D9F6:  SUBCC.W         R8, R0, #1
20D9FA:  SUBS.W          R11, R8, R4
20D9FE:  BNE             loc_20DA1A
20DA00:  B               loc_20D9B2
20DA02:  LDR.W           R4, [R10,#0x28]
20DA06:  CMP             R1, R4
20DA08:  BEQ             loc_20D9DC
20DA0A:  CMP             R4, R1
20DA0C:  IT CC
20DA0E:  SUBCC           R0, R1, #1
20DA10:  SUB.W           R11, R0, R4
20DA14:  CMP.W           R11, #0
20DA18:  BEQ             loc_20DAEE
20DA1A:  LDR.W           R5, [R10,#4]
20DA1E:  MOV             R0, R4; void *
20DA20:  MOV             R1, R6; void *
20DA22:  CMP             R5, R9
20DA24:  IT HI
20DA26:  MOVHI           R5, R9
20DA28:  CMP             R5, R11
20DA2A:  IT HI
20DA2C:  MOVHI           R5, R11
20DA2E:  MOV             R2, R5; size_t
20DA30:  BLX             memcpy_1
20DA34:  LDR.W           R0, [R10,#4]
20DA38:  SUB.W           R11, R11, R5
20DA3C:  ADD.W           R8, R4, R5
20DA40:  SUB.W           R9, R9, R5
20DA44:  ADD             R6, R5
20DA46:  SUBS            R0, R0, R5
20DA48:  STR.W           R0, [R10,#4]
20DA4C:  BNE.W           loc_20D954
20DA50:  LDR.W           R0, [R10,#0x18]
20DA54:  MOV.W           R12, #0
20DA58:  LDR             R5, =(unk_5EF9E8 - 0x20DA64)
20DA5A:  CMP             R0, #0
20DA5C:  IT NE
20DA5E:  MOVNE           R0, #7
20DA60:  ADD             R5, PC; unk_5EF9E8
20DA62:  STR.W           R0, [R10]
20DA66:  CMP             R0, #9
20DA68:  BLS.W           loc_20D968
20DA6C:  B               def_20D968; jumptable 0020D968 default case
20DA6E:  LDR             R0, [SP,#0x78+var_38]; jumptable 0020D968 case 0
20DA70:  CMP             R0, #2
20DA72:  BHI.W           loc_20D774
20DA76:  CMP.W           R9, #0
20DA7A:  BEQ             loc_20DAC6
20DA7C:  LDRB.W          R0, [R6],#1
20DA80:  SUB.W           R9, R9, #1
20DA84:  LDR             R2, [SP,#0x78+var_38]
20DA86:  MOV.W           R12, #0
20DA8A:  LDR             R1, [SP,#0x78+var_34]
20DA8C:  LSLS            R0, R2
20DA8E:  ORRS            R1, R0
20DA90:  ADDS            R2, #8
20DA92:  STR             R2, [SP,#0x78+var_38]
20DA94:  B               loc_20D776
20DA96:  LDR             R0, [SP,#0x78+var_38]; jumptable 0020D968 case 1
20DA98:  CMP             R0, #0x1F
20DA9A:  BHI.W           loc_20D3E8
20DA9E:  CMP.W           R9, #0
20DAA2:  BEQ             loc_20DAC6
20DAA4:  LDRB.W          R0, [R6],#1
20DAA8:  SUB.W           R9, R9, #1
20DAAC:  LDR             R2, [SP,#0x78+var_38]
20DAAE:  MOV.W           R12, #0
20DAB2:  LDR             R1, [SP,#0x78+var_34]
20DAB4:  LSLS            R0, R2
20DAB6:  ADDS            R2, #8
20DAB8:  CMP             R2, #0x20 ; ' '
20DABA:  ORR.W           R1, R1, R0
20DABE:  STR             R1, [SP,#0x78+var_34]
20DAC0:  STR             R2, [SP,#0x78+var_38]
20DAC2:  BCC             loc_20DA9E
20DAC4:  B               loc_20D3E8
20DAC6:  LDR             R0, [SP,#0x78+var_38]
20DAC8:  MOVS            R2, #0
20DACA:  STR.W           R0, [R10,#0x1C]
20DACE:  LDR             R0, [SP,#0x78+var_34]
20DAD0:  STR.W           R0, [R10,#0x20]
20DAD4:  LDR             R1, [SP,#0x78+var_3C]
20DAD6:  LDR             R0, [R1]
20DAD8:  LDR             R3, [R1,#8]
20DADA:  SUBS            R0, R6, R0
20DADC:  STR             R6, [R1]
20DADE:  ADD             R0, R3
20DAE0:  STR             R2, [R1,#4]
20DAE2:  STR             R0, [R1,#8]
20DAE4:  MOV             R0, R10
20DAE6:  STR.W           R8, [R10,#0x34]
20DAEA:  MOV             R2, R12
20DAEC:  B               loc_20DC4C
20DAEE:  LDR             R0, [SP,#0x78+var_38]
20DAF0:  STR.W           R0, [R10,#0x1C]
20DAF4:  LDR             R0, [SP,#0x78+var_34]
20DAF6:  STR.W           R0, [R10,#0x20]
20DAFA:  LDR             R1, [SP,#0x78+var_3C]
20DAFC:  LDR             R0, [R1]
20DAFE:  LDR             R3, [R1,#8]
20DB00:  SUBS            R0, R6, R0
20DB02:  STRD.W          R6, R9, [R1]
20DB06:  ADD             R0, R3
20DB08:  STR             R0, [R1,#8]
20DB0A:  STR.W           R4, [R10,#0x34]
20DB0E:  MOV             R0, R10
20DB10:  B               loc_20DC4C
20DB12:  LDR             R1, [SP,#0x78+var_34]; jumptable 0020D968 case 8
20DB14:  LDRD.W          R4, R3, [SP,#0x78+var_3C]
20DB18:  B               loc_20DC30
20DB1A:  LDR             R0, [SP,#0x78+var_38]; jumptable 0020D968 case 9
20DB1C:  STR.W           R0, [R10,#0x1C]
20DB20:  LDR             R0, [SP,#0x78+var_34]
20DB22:  STR.W           R0, [R10,#0x20]
20DB26:  LDR             R1, [SP,#0x78+var_3C]
20DB28:  B               loc_20DBA6
20DB2A:  LDR             R0, [SP,#0x78+var_38]; jumptable 0020D968 default case
20DB2C:  STR.W           R0, [R10,#0x1C]
20DB30:  LDR             R0, [SP,#0x78+var_34]
20DB32:  STR.W           R0, [R10,#0x20]
20DB36:  LDR             R1, [SP,#0x78+var_3C]
20DB38:  LDR             R0, [R1]
20DB3A:  LDR             R2, [R1,#8]
20DB3C:  SUBS            R0, R6, R0
20DB3E:  STRD.W          R6, R9, [R1]
20DB42:  ADD             R0, R2
20DB44:  STR             R0, [R1,#8]
20DB46:  MOV             R0, R10
20DB48:  MOV             R2, #0xFFFFFFFE
20DB4C:  STR.W           R8, [R10,#0x34]
20DB50:  B               loc_20DC4C
20DB52:  LDR             R0, [SP,#0x78+var_38]
20DB54:  STR.W           R0, [R10,#0x1C]
20DB58:  B               loc_20DB5E
20DB5A:  STR.W           R2, [R10,#0x1C]
20DB5E:  LDR             R0, [SP,#0x78+var_34]
20DB60:  MOVS            R2, #0
20DB62:  STR.W           R0, [R10,#0x20]
20DB66:  LDR.W           R0, [R11]
20DB6A:  LDR.W           R1, [R11,#8]
20DB6E:  SUBS            R0, R6, R0
20DB70:  STR.W           R6, [R11]
20DB74:  ADD             R0, R1
20DB76:  STR.W           R2, [R11,#4]
20DB7A:  STR.W           R0, [R11,#8]
20DB7E:  MOV             R0, R10
20DB80:  STR.W           R8, [R10,#0x34]
20DB84:  MOV             R1, R11
20DB86:  MOV             R2, R12
20DB88:  B               loc_20DC4C
20DB8A:  MOVS            R0, #9
20DB8C:  STR.W           R0, [R10]
20DB90:  ADR             R0, aInvalidBlockTy; "invalid block type"
20DB92:  LDR             R1, [SP,#0x78+var_3C]
20DB94:  STR             R0, [R1,#0x18]
20DB96:  LDR             R2, [SP,#0x78+var_34]
20DB98:  LDR             R0, [SP,#0x78+var_38]
20DB9A:  SUBS            R0, #3
20DB9C:  LSRS            R2, R2, #3
20DB9E:  STR.W           R0, [R10,#0x1C]
20DBA2:  STR.W           R2, [R10,#0x20]
20DBA6:  LDR             R0, [R1]
20DBA8:  LDR             R2, [R1,#8]
20DBAA:  SUBS            R0, R6, R0
20DBAC:  STR             R6, [R1]
20DBAE:  ADD             R0, R2
20DBB0:  STR.W           R9, [R1,#4]
20DBB4:  STR             R0, [R1,#8]
20DBB6:  MOV             R0, R10
20DBB8:  STR.W           R8, [R10,#0x34]
20DBBC:  MOV             R2, #0xFFFFFFFD
20DBC0:  B               loc_20DC4C
20DBC2:  LDR             R5, [SP,#0x78+var_3C]
20DBC4:  MOV             R4, R3
20DBC6:  LDRD.W          R2, R0, [R5,#0x24]
20DBCA:  LDR.W           R1, [R10,#0xC]
20DBCE:  BLX             R2
20DBD0:  MOVS            R0, #9
20DBD2:  MOV             R2, #0xFFFFFFFD
20DBD6:  STR.W           R0, [R10]
20DBDA:  ADR             R0, aInvalidBitLeng; "invalid bit length repeat"
20DBDC:  STR             R0, [R5,#0x18]
20DBDE:  LDR             R0, [SP,#0x78+var_38]
20DBE0:  STRD.W          R0, R4, [R10,#0x1C]
20DBE4:  LDR             R0, [R5]
20DBE6:  LDR             R1, [R5,#8]
20DBE8:  SUBS            R0, R6, R0
20DBEA:  STRD.W          R6, R9, [R5]
20DBEE:  ADD             R0, R1
20DBF0:  STR             R0, [R5,#8]
20DBF2:  STR.W           R8, [R10,#0x34]
20DBF6:  MOV             R0, R10
20DBF8:  MOV             R1, R5
20DBFA:  B               loc_20DC4C
20DBFC:  MOVS            R0, #7
20DBFE:  MOV.W           R12, #0
20DC02:  STR.W           R0, [R10]
20DC06:  STR.W           R8, [R10,#0x34]; jumptable 0020D968 case 7
20DC0A:  MOV             R0, R10
20DC0C:  LDR             R4, [SP,#0x78+var_3C]
20DC0E:  MOV             R2, R12
20DC10:  MOV             R1, R4
20DC12:  BLX             j_inflate_flush
20DC16:  MOV             R2, R0
20DC18:  LDRD.W          R0, R8, [R10,#0x30]
20DC1C:  LDRD.W          R3, R1, [SP,#0x78+var_38]
20DC20:  CMP             R0, R8
20DC22:  BEQ             loc_20DC2A
20DC24:  STRD.W          R3, R1, [R10,#0x1C]
20DC28:  B               loc_20DC36
20DC2A:  MOVS            R0, #8
20DC2C:  STR.W           R0, [R10]
20DC30:  STRD.W          R3, R1, [R10,#0x1C]
20DC34:  MOVS            R2, #1
20DC36:  LDR             R0, [R4]
20DC38:  LDR             R1, [R4,#8]
20DC3A:  SUBS            R0, R6, R0
20DC3C:  STRD.W          R6, R9, [R4]
20DC40:  ADD             R0, R1
20DC42:  STR             R0, [R4,#8]
20DC44:  STR.W           R8, [R10,#0x34]
20DC48:  MOV             R0, R10
20DC4A:  MOV             R1, R4
20DC4C:  BLX             j_inflate_flush
20DC50:  ADD             SP, SP, #0x5C ; '\'
20DC52:  POP.W           {R8-R11}
20DC56:  POP             {R4-R7,PC}
20DC58:  MOVS            R0, #9
20DC5A:  MOV             R2, #0xFFFFFFFD
20DC5E:  STR.W           R0, [R10]
20DC62:  ADR             R0, aTooManyLengthO; "too many length or distance symbols"
20DC64:  STR.W           R0, [R11,#0x18]
20DC68:  LDR             R0, [SP,#0x78+var_38]
20DC6A:  STRD.W          R0, R3, [R10,#0x1C]
20DC6E:  B               loc_20DCAE
20DC70:  LDR             R0, [SP,#0x78+var_4C]
20DC72:  B               loc_20DC50
20DC74:  LDRD.W          R2, R0, [R11,#0x24]
20DC78:  LDR.W           R1, [R10,#0xC]
20DC7C:  BLX             R2
20DC7E:  ADDS            R0, R4, #3
20DC80:  MOV             R2, R4
20DC82:  ITT EQ
20DC84:  MOVEQ           R0, #9
20DC86:  STREQ.W         R0, [R10]
20DC8A:  LDR             R0, [SP,#0x78+var_38]
20DC8C:  B               loc_20DCA4
20DC8E:  MOVS            R0, #9
20DC90:  STR.W           R0, [R10]
20DC94:  ADR             R0, aInvalidStoredB; "invalid stored block lengths"
20DC96:  LDR             R1, [SP,#0x78+var_3C]
20DC98:  STR             R0, [R1,#0x18]
20DC9A:  LDR             R0, [SP,#0x78+var_38]
20DC9C:  B               loc_20DB9E
20DC9E:  LDR             R0, [SP,#0x78+var_38]
20DCA0:  MOV             R2, #0xFFFFFFFC
20DCA4:  STR.W           R0, [R10,#0x1C]
20DCA8:  LDR             R0, [SP,#0x78+var_34]
20DCAA:  STR.W           R0, [R10,#0x20]
20DCAE:  LDR.W           R0, [R11]
20DCB2:  LDR.W           R1, [R11,#8]
20DCB6:  SUBS            R0, R6, R0
20DCB8:  STRD.W          R6, R9, [R11]
20DCBC:  ADD             R0, R1
20DCBE:  STR.W           R0, [R11,#8]
20DCC2:  STR.W           R8, [R10,#0x34]
20DCC6:  MOV             R0, R10
20DCC8:  MOV             R1, R11
20DCCA:  B               loc_20DC4C
