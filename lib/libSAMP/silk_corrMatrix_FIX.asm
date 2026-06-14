; =========================================================
; Game Engine Function: silk_corrMatrix_FIX
; Address            : 0x1AF43A - 0x1AF7F4
; =========================================================

1AF43A:  PUSH            {R4-R7,LR}
1AF43C:  ADD             R7, SP, #0xC
1AF43E:  PUSH.W          {R8-R11}
1AF442:  SUB             SP, SP, #0x44
1AF444:  LDRD.W          R10, R9, [R7,#arg_0]
1AF448:  MOV             R11, R1
1AF44A:  MOV             R5, R2
1AF44C:  MOV             R8, R0
1AF44E:  ADD.W           R0, R11, R5
1AF452:  MOV             R6, R3
1AF454:  SUBS            R3, R0, #1
1AF456:  MOV             R0, R10
1AF458:  MOV             R1, R9
1AF45A:  MOV             R2, R8
1AF45C:  BLX             j_silk_sum_sqr_shift
1AF460:  LDR.W           R1, [R10]
1AF464:  MOV             R4, R5
1AF466:  SUBS.W          R10, R4, #1
1AF46A:  STR             R6, [SP,#0x60+var_20]
1AF46C:  BLE             loc_1AF4DA
1AF46E:  LDR.W           R2, [R9]
1AF472:  MOVS            R3, #0
1AF474:  LDRSH.W         R6, [R8,R3,LSL#1]
1AF478:  ADDS            R3, #1
1AF47A:  CMP             R10, R3
1AF47C:  SMULBB.W        R6, R6, R6
1AF480:  LSR.W           R6, R6, R2
1AF484:  SUB.W           R1, R1, R6
1AF488:  BNE             loc_1AF474
1AF48A:  LDR             R6, [SP,#0x60+var_20]
1AF48C:  CMP             R4, #2
1AF48E:  ADD.W           R0, R8, R10,LSL#1
1AF492:  STR             R1, [R6]
1AF494:  STR             R0, [SP,#0x60+var_50]
1AF496:  BLT             loc_1AF4E2
1AF498:  MOVS            R2, #4
1AF49A:  ADD.W           R12, R2, R4,LSL#2
1AF49E:  ADD.W           R3, R6, R12
1AF4A2:  ADD.W           R6, R8, R4,LSL#1
1AF4A6:  SUBS            R5, R6, #4
1AF4A8:  MOVS            R0, #1
1AF4AA:  LDRSH.W         R6, [R5,R11,LSL#1]
1AF4AE:  ADDS            R0, #1
1AF4B0:  LDRSH.W         LR, [R5]
1AF4B4:  LDR.W           R2, [R9]
1AF4B8:  SUBS            R5, #2
1AF4BA:  CMP             R4, R0
1AF4BC:  SMULBB.W        R6, R6, R6
1AF4C0:  SMULBB.W        LR, LR, LR
1AF4C4:  LSR.W           R6, R6, R2
1AF4C8:  SUB.W           R1, R1, R6
1AF4CC:  LSR.W           R2, LR, R2
1AF4D0:  ADD             R1, R2
1AF4D2:  STR             R1, [R3]
1AF4D4:  ADD             R3, R12
1AF4D6:  BNE             loc_1AF4AA
1AF4D8:  B               loc_1AF4E2
1AF4DA:  STR             R1, [R6]
1AF4DC:  ADD.W           R0, R8, R10,LSL#1
1AF4E0:  STR             R0, [SP,#0x60+var_50]
1AF4E2:  LDR.W           R5, [R9]
1AF4E6:  ADD.W           R3, R8, R4,LSL#1
1AF4EA:  SUB.W           R9, R3, #4
1AF4EE:  STR             R4, [SP,#0x60+var_3C]
1AF4F0:  CMP             R5, #0
1AF4F2:  STR.W           R11, [SP,#0x60+var_24]
1AF4F6:  BLE             loc_1AF5B6
1AF4F8:  CMP             R4, #2
1AF4FA:  LDR             R4, [SP,#0x60+var_20]
1AF4FC:  BLT.W           loc_1AF7EC
1AF500:  CMP.W           R11, #0
1AF504:  BLE.W           loc_1AF6DA
1AF508:  ADD.W           LR, R8, R10,LSL#1
1AF50C:  LDR.W           R8, [SP,#0x60+var_3C]
1AF510:  MOV.W           R12, #1
1AF514:  B               loc_1AF522
1AF516:  LDR             R0, [R7,#arg_4]
1AF518:  SUB.W           R9, R9, #2
1AF51C:  SUB.W           R10, R10, #1
1AF520:  LDR             R5, [R0]
1AF522:  MOVS            R6, #0
1AF524:  MOVS            R3, #0
1AF526:  LDRSH.W         R0, [LR,R6,LSL#1]
1AF52A:  LDRSH.W         R1, [R9,R6,LSL#1]
1AF52E:  ADDS            R6, #1
1AF530:  CMP             R11, R6
1AF532:  SMULBB.W        R0, R1, R0
1AF536:  ASR.W           R0, R0, R5
1AF53A:  ADD             R3, R0
1AF53C:  BNE             loc_1AF526
1AF53E:  MUL.W           R0, R12, R8
1AF542:  STR.W           R3, [R4,R0,LSL#2]
1AF546:  SUB.W           R0, R8, R12
1AF54A:  CMP             R0, #2
1AF54C:  STR.W           R3, [R4,R12,LSL#2]
1AF550:  BLT             loc_1AF5AC
1AF552:  MOVS            R5, #1
1AF554:  SUB.W           R6, R11, R5
1AF558:  SUB.W           R4, R9, R5,LSL#1
1AF55C:  SUB.W           R1, LR, R5,LSL#1
1AF560:  ADD.W           R2, R5, R12
1AF564:  LDRSH.W         R0, [LR,R6,LSL#1]
1AF568:  LDRSH.W         R6, [R9,R6,LSL#1]
1AF56C:  LDRSH.W         R1, [R1]
1AF570:  LDRSH.W         R4, [R4]
1AF574:  MLA.W           R11, R2, R8, R5
1AF578:  SMULBB.W        R0, R6, R0
1AF57C:  LDR             R6, [R7,#arg_4]
1AF57E:  SMULBB.W        R1, R4, R1
1AF582:  MLA.W           R2, R5, R8, R2
1AF586:  ADDS            R5, #1
1AF588:  LDR             R6, [R6]
1AF58A:  CMP             R5, R10
1AF58C:  ASR.W           R0, R0, R6
1AF590:  ASR.W           R1, R1, R6
1AF594:  SUB.W           R0, R3, R0
1AF598:  ADD.W           R3, R1, R0
1AF59C:  LDR             R0, [SP,#0x60+var_20]
1AF59E:  STR.W           R3, [R0,R11,LSL#2]
1AF5A2:  LDRD.W          R11, R4, [SP,#0x60+var_24]
1AF5A6:  STR.W           R3, [R4,R2,LSL#2]
1AF5AA:  BNE             loc_1AF554
1AF5AC:  ADD.W           R12, R12, #1
1AF5B0:  CMP             R12, R8
1AF5B2:  BNE             loc_1AF516
1AF5B4:  B               loc_1AF7EC
1AF5B6:  LDR.W           R12, [SP,#0x60+var_20]
1AF5BA:  CMP             R4, #2
1AF5BC:  BLT.W           loc_1AF7EC
1AF5C0:  LDR             R1, [SP,#0x60+var_3C]
1AF5C2:  MOVS            R0, #4
1AF5C4:  MOVS            R6, #1
1AF5C6:  ADD.W           R10, R0, R1,LSL#2
1AF5CA:  LDR             R0, [SP,#0x60+var_3C]
1AF5CC:  ADD.W           R0, R12, R0,LSL#2
1AF5D0:  ADD.W           R1, R0, #8
1AF5D4:  LDR             R0, [SP,#0x60+var_3C]
1AF5D6:  ADD.W           R0, R12, R0,LSL#3
1AF5DA:  ADDS            R5, R0, #4
1AF5DC:  SUBS            R0, R3, #2
1AF5DE:  STR             R0, [SP,#0x60+var_54]
1AF5E0:  ADD.W           R3, R8, R11,LSL#1
1AF5E4:  LDR             R0, [SP,#0x60+var_3C]
1AF5E6:  STR             R3, [SP,#0x60+var_40]
1AF5E8:  ADD.W           R0, R3, R0,LSL#1
1AF5EC:  SUBS            R0, #2
1AF5EE:  STR             R0, [SP,#0x60+var_58]
1AF5F0:  LDR             R0, [SP,#0x60+var_3C]
1AF5F2:  STR             R0, [SP,#0x60+var_44]
1AF5F4:  LSLS            R3, R0, #2
1AF5F6:  STR             R3, [SP,#0x60+var_5C]
1AF5F8:  LSLS            R3, R0, #1
1AF5FA:  STR             R3, [SP,#0x60+var_60]
1AF5FC:  MOV             R4, R0
1AF5FE:  LDR             R0, [SP,#0x60+var_50]
1AF600:  LDR             R3, [R7,#arg_8]
1AF602:  MOV             R2, R11
1AF604:  MOV             R11, R1
1AF606:  MOV             R1, R9
1AF608:  STR.W           R8, [SP,#0x60+var_38]
1AF60C:  MOV             R8, R5
1AF60E:  STR.W           R9, [SP,#0x60+var_4C]
1AF612:  MOV             R5, R12
1AF614:  BLX             j_silk_inner_prod_aligned
1AF618:  MUL.W           R1, R6, R4
1AF61C:  STR.W           R0, [R5,R1,LSL#2]
1AF620:  SUBS            R1, R4, R6
1AF622:  CMP             R1, #2
1AF624:  STR.W           R0, [R5,R6,LSL#2]
1AF628:  STR             R6, [SP,#0x60+var_48]
1AF62A:  LDRD.W          R12, R9, [SP,#0x60+var_58]
1AF62E:  BLT             loc_1AF69E
1AF630:  LDR             R1, [SP,#0x60+var_38]
1AF632:  MOVS            R5, #0
1AF634:  LDR             R2, [SP,#0x60+var_60]
1AF636:  MOVS            R6, #0
1AF638:  STR.W           R11, [SP,#0x60+var_28]
1AF63C:  ADD             R1, R2
1AF63E:  SUBS            R1, #2
1AF640:  STR             R1, [SP,#0x60+var_2C]
1AF642:  LDR             R1, [SP,#0x60+var_40]
1AF644:  ADD             R1, R2
1AF646:  SUBS            R1, #2
1AF648:  STR             R1, [SP,#0x60+var_30]
1AF64A:  LDR             R1, [SP,#0x60+var_44]
1AF64C:  SUBS            R1, #2
1AF64E:  STR             R1, [SP,#0x60+var_34]
1AF650:  MOVS            R1, #0
1AF652:  LDR             R2, [SP,#0x60+var_30]
1AF654:  MOV             R11, R8
1AF656:  ADDS            R6, #1
1AF658:  ADD.W           LR, R2, R1,LSL#1
1AF65C:  ADD.W           R2, R9, R1,LSL#1
1AF660:  LDRSH.W         R8, [R2,#-2]
1AF664:  MOV             R2, R10
1AF666:  ADD.W           R10, R12, R1,LSL#1
1AF66A:  LDRSH.W         R4, [LR,#-4]
1AF66E:  LDRSH.W         R3, [R10,#-2]
1AF672:  MOV             R10, R2
1AF674:  LDR             R2, [SP,#0x60+var_2C]
1AF676:  ADD.W           R2, R2, R1,LSL#1
1AF67A:  MLS.W           R0, R4, R3, R0
1AF67E:  SUBS            R1, #1
1AF680:  LDRSH.W         R2, [R2,#-4]
1AF684:  SMLABB.W        R0, R2, R8, R0
1AF688:  MOV             R8, R11
1AF68A:  LDR.W           R11, [SP,#0x60+var_28]
1AF68E:  STR.W           R0, [R8,R5]
1AF692:  STR.W           R0, [R11,R5]
1AF696:  ADD             R5, R10
1AF698:  LDR             R2, [SP,#0x60+var_34]
1AF69A:  CMP             R2, R6
1AF69C:  BNE             loc_1AF652
1AF69E:  LDR             R0, [SP,#0x60+var_5C]
1AF6A0:  ADD.W           R11, R11, #4
1AF6A4:  LDR             R6, [SP,#0x60+var_48]
1AF6A6:  ADD             R8, R0
1AF6A8:  LDR             R0, [SP,#0x60+var_44]
1AF6AA:  LDR.W           R9, [SP,#0x60+var_4C]
1AF6AE:  MOV             R4, R11
1AF6B0:  SUBS            R0, #1
1AF6B2:  STR             R0, [SP,#0x60+var_44]
1AF6B4:  LDR             R0, [SP,#0x60+var_40]
1AF6B6:  MOV             R2, R8
1AF6B8:  LDR.W           R8, [SP,#0x60+var_38]
1AF6BC:  ADDS            R6, #1
1AF6BE:  SUBS            R0, #2
1AF6C0:  STR             R0, [SP,#0x60+var_40]
1AF6C2:  LDR             R0, [SP,#0x60+var_3C]
1AF6C4:  SUB.W           R8, R8, #2
1AF6C8:  LDRD.W          R11, R12, [SP,#0x60+var_24]
1AF6CC:  SUB.W           R9, R9, #2
1AF6D0:  CMP             R6, R0
1AF6D2:  MOV             R1, R4
1AF6D4:  MOV             R5, R2
1AF6D6:  BNE             loc_1AF5FC
1AF6D8:  B               loc_1AF7EC
1AF6DA:  LDR.W           R12, [SP,#0x60+var_3C]
1AF6DE:  ADD.W           R6, R8, R11,LSL#1
1AF6E2:  LDR             R1, [SP,#0x60+var_3C]
1AF6E4:  MOVS            R0, #4
1AF6E6:  STR             R6, [SP,#0x60+var_30]
1AF6E8:  SUBS            R3, #2
1AF6EA:  ADD.W           R6, R6, R12,LSL#1
1AF6EE:  ADD.W           R2, R4, R12,LSL#3
1AF6F2:  ADD.W           R5, R0, R1,LSL#2
1AF6F6:  ADD.W           R1, R4, R12,LSL#2
1AF6FA:  SUBS            R6, #2
1AF6FC:  STR             R6, [SP,#0x60+var_24]
1AF6FE:  MOV.W           R6, R12,LSL#2
1AF702:  ADDS            R1, #8
1AF704:  ADDS            R2, #4
1AF706:  STR             R6, [SP,#0x60+var_44]
1AF708:  MOV.W           R6, R12,LSL#1
1AF70C:  MOVS            R0, #1
1AF70E:  STR             R6, [SP,#0x60+var_48]
1AF710:  STR.W           R12, [SP,#0x60+var_34]
1AF714:  MUL.W           R6, R0, R12
1AF718:  MOV.W           LR, #0
1AF71C:  STR.W           R8, [SP,#0x60+var_38]
1AF720:  STR.W           LR, [R4,R6,LSL#2]
1AF724:  SUB.W           R6, R12, R0
1AF728:  CMP             R6, #2
1AF72A:  STR.W           LR, [R4,R0,LSL#2]
1AF72E:  STR             R0, [SP,#0x60+var_40]
1AF730:  BLT             loc_1AF7C4
1AF732:  LDR             R0, [SP,#0x60+var_38]
1AF734:  MOV.W           R8, #0
1AF738:  LDR             R4, [SP,#0x60+var_48]
1AF73A:  MOV.W           R10, #0
1AF73E:  MOV.W           R11, #0
1AF742:  MOV.W           R9, #0
1AF746:  ADDS            R6, R0, R4
1AF748:  SUBS            R0, R6, #2
1AF74A:  STR             R0, [SP,#0x60+var_28]
1AF74C:  LDR             R0, [SP,#0x60+var_30]
1AF74E:  LDR             R6, [SP,#0x60+var_24]
1AF750:  ADD             R4, R0
1AF752:  SUBS            R0, R4, #2
1AF754:  STR             R0, [SP,#0x60+var_2C]
1AF756:  LDR             R0, [SP,#0x60+var_34]
1AF758:  SUB.W           LR, R0, #2
1AF75C:  LDR             R0, [SP,#0x60+var_2C]
1AF75E:  MOV             R12, R3
1AF760:  ADD.W           R10, R10, #1
1AF764:  ADD.W           R4, R0, R11,LSL#1
1AF768:  ADD.W           R0, R3, R11,LSL#1
1AF76C:  ADD.W           R3, R6, R11,LSL#1
1AF770:  MOV             R6, R2
1AF772:  MOV             R2, R1
1AF774:  MOV             R1, R5
1AF776:  LDR             R5, [SP,#0x60+var_28]
1AF778:  CMP             LR, R10
1AF77A:  LDRSH.W         R3, [R3,#-2]
1AF77E:  LDRSH.W         R4, [R4,#-4]
1AF782:  ADD.W           R5, R5, R11,LSL#1
1AF786:  LDRSH.W         R0, [R0,#-2]
1AF78A:  SUB.W           R11, R11, #1
1AF78E:  LDRSH.W         R5, [R5,#-4]
1AF792:  SMULBB.W        R3, R4, R3
1AF796:  LDR             R4, [R7,#arg_4]
1AF798:  SMULBB.W        R0, R5, R0
1AF79C:  MOV             R5, R1
1AF79E:  LDR             R4, [R4]
1AF7A0:  MOV             R1, R2
1AF7A2:  MOV             R2, R6
1AF7A4:  LDR             R6, [SP,#0x60+var_24]
1AF7A6:  ASR.W           R3, R3, R4
1AF7AA:  SUB.W           R3, R9, R3
1AF7AE:  ASR.W           R0, R0, R4
1AF7B2:  ADD.W           R9, R0, R3
1AF7B6:  STR.W           R9, [R2,R8]
1AF7BA:  MOV             R3, R12
1AF7BC:  STR.W           R9, [R1,R8]
1AF7C0:  ADD             R8, R5
1AF7C2:  BNE             loc_1AF75C
1AF7C4:  LDR             R0, [SP,#0x60+var_44]
1AF7C6:  ADDS            R1, #4
1AF7C8:  LDR.W           R8, [SP,#0x60+var_38]
1AF7CC:  ADD             R2, R0
1AF7CE:  LDR             R0, [SP,#0x60+var_34]
1AF7D0:  LDR.W           R12, [SP,#0x60+var_3C]
1AF7D4:  SUB.W           R8, R8, #2
1AF7D8:  SUBS            R0, #1
1AF7DA:  STR             R0, [SP,#0x60+var_34]
1AF7DC:  LDR             R0, [SP,#0x60+var_30]
1AF7DE:  LDR             R4, [SP,#0x60+var_20]
1AF7E0:  SUBS            R0, #2
1AF7E2:  STR             R0, [SP,#0x60+var_30]
1AF7E4:  LDR             R0, [SP,#0x60+var_40]
1AF7E6:  ADDS            R0, #1
1AF7E8:  CMP             R0, R12
1AF7EA:  BNE             loc_1AF714
1AF7EC:  ADD             SP, SP, #0x44 ; 'D'
1AF7EE:  POP.W           {R8-R11}
1AF7F2:  POP             {R4-R7,PC}
