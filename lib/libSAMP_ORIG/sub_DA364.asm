; =========================================================
; Game Engine Function: sub_DA364
; Address            : 0xDA364 - 0xDACAE
; =========================================================

DA364:  PUSH            {R4-R7,LR}
DA366:  ADD             R7, SP, #0xC
DA368:  PUSH.W          {R8-R11}
DA36C:  SUB             SP, SP, #0x64
DA36E:  STR.W           R1, [R7,#var_2C]
DA372:  MOV             R6, R3
DA374:  LDR             R1, [R7,#arg_4]
DA376:  LSLS            R3, R2, #1
DA378:  STR.W           R0, [R7,#var_7C]
DA37C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xDA38A)
DA380:  MULS            R1, R3
DA382:  STR.W           R3, [R7,#var_58]
DA386:  ADD             R0, PC; __stack_chk_guard_ptr
DA388:  LDR             R3, [R0]; __stack_chk_guard
DA38A:  LDR             R0, [R7,#arg_8]; int
DA38C:  ADDS            R1, #7
DA38E:  LDR             R3, [R3]
DA390:  BIC.W           R1, R1, #7
DA394:  STR.W           R3, [R7,#var_24]
DA398:  SUB.W           R3, SP, R1
DA39C:  STR.W           R3, [R7,#var_28]
DA3A0:  MOV             SP, R3
DA3A2:  SUB.W           R10, SP, R1
DA3A6:  MOV             SP, R10
DA3A8:  LSLS            R1, R2, #2; n
DA3AA:  STR.W           R2, [R7,#var_60]
DA3AE:  BLX             sub_10967C
DA3B2:  LDR.W           LR, [R7,#arg_0]
DA3B6:  STRD.W          R6, R10, [R7,#var_78]
DA3BA:  CMP.W           LR, #1
DA3BE:  BLT.W           loc_DA546
DA3C2:  LDR.W           R5, =(eMeans_ptr - 0xDA3D6)
DA3C6:  MOV.W           R2, #0x200
DA3CA:  LDRD.W          R1, R12, [R7,#arg_C]
DA3CE:  MOV.W           R3, #0x50000
DA3D2:  ADD             R5, PC; eMeans_ptr
DA3D4:  LDR.W           R8, [R7,#arg_3C]
DA3D8:  RSB.W           R1, R1, #9
DA3DC:  LDR             R5, [R5]; eMeans
DA3DE:  ORR.W           R1, R2, R1,LSL#10
DA3E2:  MOVS            R2, #0
DA3E4:  ADDS            R4, R2, #5
DA3E6:  LDRH.W          R6, [R12,R2,LSL#1]
DA3EA:  LDRSB           R0, [R5,R2]
DA3EC:  MULS            R4, R3
DA3EE:  ADD.W           R3, R3, #0x10000
DA3F2:  LSRS            R4, R4, #0x10
DA3F4:  ADD.W           R4, R4, R4,LSL#1
DA3F8:  ADD.W           R4, R1, R4,LSL#1
DA3FC:  ADD.W           R6, R4, R6,LSL#6
DA400:  SUB.W           R0, R6, R0,LSL#6
DA404:  STRH.W          R0, [R10,R2,LSL#1]
DA408:  ADDS            R2, #1
DA40A:  CMP             LR, R2
DA40C:  BNE             loc_DA3E4
DA40E:  LDR.W           R6, [R7,#var_78]
DA412:  CMP.W           LR, #1
DA416:  BLT.W           loc_DA546
DA41A:  LDR.W           R1, [R7,#var_7C]
DA41E:  MOVW            R2, #0x8066
DA422:  MOVS            R0, #0
DA424:  MOVT            R2, #0xFFFF
DA428:  MOVS            R3, #0
DA42A:  LDRSH.W         R5, [R10,R3,LSL#1]
DA42E:  SXTH            R2, R2
DA430:  LDRSH.W         R4, [R1,R3,LSL#1]
DA434:  ADDS            R3, #1
DA436:  SUB.W           R9, R4, R5
DA43A:  CMP             R9, R2
DA43C:  IT LT
DA43E:  MOVLT           R9, R2
DA440:  CMP             LR, R3
DA442:  MOV             R2, R9
DA444:  BNE             loc_DA42A
DA446:  LDR.W           R2, [R7,#var_58]
DA44A:  ADDS            R0, #1
DA44C:  ADD             R1, R2
DA44E:  LDR             R2, [R7,#arg_4]
DA450:  CMP             R0, R2
DA452:  MOV             R2, R9
DA454:  BLT             loc_DA428
DA456:  LDR.W           R0, [R7,#var_58]
DA45A:  ADDS            R0, #7
DA45C:  BIC.W           R0, R0, #7
DA460:  SUB.W           R11, SP, R0
DA464:  MOV             SP, R11
DA466:  SUB.W           R10, SP, R0
DA46A:  MOV             SP, R10
DA46C:  CMP.W           LR, #1
DA470:  BLT             loc_DA560
DA472:  LDR.W           R3, [R7,#var_7C]
DA476:  MOVS            R0, #0
DA478:  LDR.W           R6, [R7,#var_74]
DA47C:  LDRH.W          R1, [R6,R0,LSL#1]
DA480:  LDRH.W          R2, [R3,R0,LSL#1]
DA484:  SUBS            R1, R2, R1
DA486:  STRH.W          R1, [R11,R0,LSL#1]
DA48A:  ADDS            R0, #1
DA48C:  CMP             LR, R0
DA48E:  BNE             loc_DA47C
DA490:  LDR             R0, [R7,#arg_4]
DA492:  MOVS            R1, #0
DA494:  CMP             R0, #2
DA496:  IT EQ
DA498:  MOVEQ           R1, #1
DA49A:  STR.W           R1, [R7,#var_80]
DA49E:  BNE             loc_DA4D6
DA4A0:  CMP.W           LR, #1
DA4A4:  BLT             loc_DA4D6
DA4A6:  LDR.W           R1, [R7,#var_60]
DA4AA:  MOV             R3, R11
DA4AC:  LDR.W           R0, [R7,#var_7C]
DA4B0:  LDR.W           R2, [R7,#var_74]
DA4B4:  ADD.W           R0, R0, R1,LSL#1
DA4B8:  MOV             R1, LR
DA4BA:  LDRSH.W         R6, [R2],#2
DA4BE:  LDRSH.W         R5, [R0],#2
DA4C2:  LDRSH.W         R4, [R3]
DA4C6:  SUBS            R6, R5, R6
DA4C8:  CMP             R6, R4
DA4CA:  IT LT
DA4CC:  MOVLT           R6, R4
DA4CE:  SUBS            R1, #1
DA4D0:  STRH.W          R6, [R3],#2
DA4D4:  BNE             loc_DA4BA
DA4D6:  MOV.W           R2, LR,LSL#1; n
DA4DA:  MOV             R0, R10; dest
DA4DC:  MOV             R1, R11; src
DA4DE:  BLX             j_memcpy
DA4E2:  LDR             R4, [R7,#arg_0]
DA4E4:  MOV             LR, R4
DA4E6:  CMP.W           LR, #1
DA4EA:  BLE             loc_DA58A
DA4EC:  MOV             R1, R11
DA4EE:  SUB.W           R0, LR, #1
DA4F2:  LDRH.W          R2, [R1],#2
DA4F6:  MOV             R3, R0
DA4F8:  SXTH            R2, R2
DA4FA:  LDRSH.W         R6, [R1]
DA4FE:  SUB.W           R2, R2, #0x800
DA502:  CMP             R2, R6
DA504:  IT LT
DA506:  MOVLT           R2, R6
DA508:  SUBS            R3, #1
DA50A:  STRH.W          R2, [R1],#2
DA50E:  BNE             loc_DA4F8
DA510:  SUBS.W          R1, LR, #2
DA514:  STR.W           R1, [R7,#var_5C]
DA518:  BLT             loc_DA592
DA51A:  ADD.W           R1, R11, LR,LSL#1
DA51E:  LDR.W           R6, [R7,#var_78]
DA522:  SUBS            R1, #4
DA524:  LDRSH.W         R3, [R1,#2]
DA528:  SUBS            R0, #1
DA52A:  LDRSH.W         R2, [R1]
DA52E:  SUB.W           R3, R3, #0xC00
DA532:  CMP             R3, R2
DA534:  IT LT
DA536:  MOVLT           R3, R2
DA538:  CMP             R0, #0
DA53A:  STRH            R3, [R1]
DA53C:  SUB.W           R1, R1, #2
DA540:  BGT             loc_DA524
DA542:  MOVS            R0, #1
DA544:  B               loc_DA598
DA546:  LDR.W           R0, [R7,#var_58]
DA54A:  ADDS            R0, #7
DA54C:  BIC.W           R0, R0, #7
DA550:  SUB.W           R11, SP, R0
DA554:  MOV             SP, R11
DA556:  SUB.W           R10, SP, R0
DA55A:  MOV             SP, R10
DA55C:  MOVW            R9, #0x8066
DA560:  MOV.W           R2, LR,LSL#1; n
DA564:  MOV             R0, R10; dest
DA566:  MOV             R1, R11; src
DA568:  BLX             j_memcpy
DA56C:  MOVS            R0, #0
DA56E:  LDR             R4, [R7,#arg_0]
DA570:  STR.W           R0, [R7,#var_64]
DA574:  MOVS            R1, #0
DA576:  LDR             R0, [R7,#arg_4]
DA578:  MOV             LR, R4
DA57A:  CMP             R0, #2
DA57C:  SUB.W           R0, LR, #2
DA580:  IT EQ
DA582:  MOVEQ           R1, #1
DA584:  STR.W           R0, [R7,#var_5C]
DA588:  B               loc_DA5F8
DA58A:  SUB.W           R0, LR, #2
DA58E:  STR.W           R0, [R7,#var_5C]
DA592:  LDR.W           R6, [R7,#var_78]
DA596:  MOVS            R0, #0
DA598:  STR.W           R0, [R7,#var_64]
DA59C:  CMP.W           LR, #1
DA5A0:  BLT             loc_DA5F4
DA5A2:  SXTH.W          R0, R9
DA5A6:  MOVW            R1, #0xEC00
DA5AA:  SUBS.W          R0, R0, #0x3000
DA5AE:  MOVT            R1, #0xFFFF
DA5B2:  IT LT
DA5B4:  MOVLT           R0, #0
DA5B6:  MOV.W           R12, #0
DA5BA:  MOVS            R3, #0x20 ; ' '
DA5BC:  MOV             R2, LR
DA5BE:  LDRSH.W         R6, [R11],#2
DA5C2:  LDRH.W          R5, [R10],#2
DA5C6:  CMP             R0, R6
DA5C8:  IT GT
DA5CA:  MOVGT           R6, R0
DA5CC:  SUBS            R6, R5, R6
DA5CE:  LSLS            R5, R6, #0x10
DA5D0:  SXTH            R6, R6
DA5D2:  AND.W           R6, R6, R5,ASR#31
DA5D6:  CMP             R6, R1
DA5D8:  IT LE
DA5DA:  MOVLE           R6, R1
DA5DC:  SUBS            R2, #1
DA5DE:  ADD.W           R6, R6, #0x200
DA5E2:  SUB.W           R6, R12, R6,ASR#10
DA5E6:  LSR.W           R6, R3, R6
DA5EA:  STR.W           R6, [R8],#4
DA5EE:  BNE             loc_DA5BE
DA5F0:  LDR.W           R6, [R7,#var_78]
DA5F4:  LDR.W           R1, [R7,#var_80]
DA5F8:  LDR             R0, [R7,#arg_24]
DA5FA:  LDR             R2, [R7,#arg_38]
DA5FC:  CMP             R0, #1
DA5FE:  ITT GE
DA600:  LDRGE           R0, [R7,#arg_28]
DA602:  CMPGE           R0, #0x33 ; '3'
DA604:  BLT.W           loc_DA970
DA608:  LDR             R0, [R7,#arg_30]
DA60A:  CMP             R0, #0
DA60C:  BNE.W           loc_DA970
DA610:  LDR.W           R0, [R7,#var_5C]
DA614:  SUB.W           R12, LR, #1
DA618:  LDR.W           R2, [R7,#var_2C]
DA61C:  MOVS            R4, #0
DA61E:  SUBS            R0, #2
DA620:  STR.W           R0, [R7,#var_68]
DA624:  LDR.W           R0, [R7,#var_28]
DA628:  SUB.W           R8, R2, #2
DA62C:  STR.W           R1, [R7,#var_80]
DA630:  MOV             R1, R2
DA632:  SUBS            R3, R0, #2
DA634:  ADD.W           R10, R0, #2
DA638:  MOV.W           R11, #0
DA63C:  MOVS            R2, #0
DA63E:  SUB.W           R0, LR, #3
DA642:  STR.W           R0, [R7,#var_70]
DA646:  STR.W           R12, [R7,#var_6C]
DA64A:  LDR.W           R0, [R7,#var_60]
DA64E:  STR.W           R2, [R7,#var_48]
DA652:  MULS            R2, R0
DA654:  LDR.W           R0, [R7,#var_2C]
DA658:  LDRSH.W         R5, [R0,R2,LSL#1]
DA65C:  LDR.W           R0, [R7,#var_28]
DA660:  STR.W           R2, [R7,#var_30]
DA664:  STR.W           R5, [R7,#var_4C]
DA668:  STRH.W          R5, [R0,R2,LSL#1]
DA66C:  LDR.W           R0, [R7,#var_64]
DA670:  CMP             R0, #1
DA672:  BNE             loc_DA6A6
DA674:  MOVS            R0, #0
DA676:  MOV             R2, R5
DA678:  ADD.W           R6, R1, R0,LSL#1
DA67C:  SXTH            R2, R2
DA67E:  LDRSH.W         R5, [R1,R0,LSL#1]
DA682:  ADD.W           R2, R2, #0x600
DA686:  LDRSH.W         R6, [R6,#2]
DA68A:  CMP             R2, R6
DA68C:  ADD.W           R5, R5, #0x200
DA690:  IT GE
DA692:  MOVGE           R2, R6
DA694:  CMP             R5, R6
DA696:  STRH.W          R2, [R10,R0,LSL#1]
DA69A:  ADD.W           R0, R0, #1
DA69E:  IT LT
DA6A0:  MOVLT           R11, R0
DA6A2:  CMP             R12, R0
DA6A4:  BNE             loc_DA678
DA6A6:  STR.W           R1, [R7,#var_44]
DA6AA:  CMP.W           R11, #1
DA6AE:  STR.W           R10, [R7,#var_3C]
DA6B2:  LDRD.W          R1, R0, [R7,#var_30]
DA6B6:  ADD.W           R0, R0, R1,LSL#1
DA6BA:  STR.W           R0, [R7,#var_54]
DA6BE:  LDR.W           R0, [R7,#var_28]
DA6C2:  ADD.W           R1, R0, R1,LSL#1
DA6C6:  BLT             loc_DA6F2
DA6C8:  LDRH.W          R6, [R1,R11,LSL#1]
DA6CC:  MOV             R0, R11
DA6CE:  LDRSH.W         R2, [R8,R0,LSL#1]
DA6D2:  SXTH            R6, R6
DA6D4:  ADD.W           R6, R6, #0x800
DA6D8:  LDRSH.W         R5, [R3,R0,LSL#1]
DA6DC:  CMP             R6, R2
DA6DE:  IT LT
DA6E0:  MOVLT           R2, R6
DA6E2:  CMP             R2, R5
DA6E4:  IT GT
DA6E6:  MOVGT           R2, R5
DA6E8:  STRH.W          R2, [R3,R0,LSL#1]
DA6EC:  SUBS            R0, #1
DA6EE:  MOV             R6, R2
DA6F0:  BGT             loc_DA6CE
DA6F2:  STR.W           R1, [R7,#var_50]
DA6F6:  CMP.W           LR, #5
DA6FA:  STRD.W          R8, R3, [R7,#var_38]
DA6FE:  MOV             R12, R4
DA700:  LDR.W           LR, [R7,#var_68]
DA704:  STR.W           R4, [R7,#var_40]
DA708:  BLT             loc_DA7DA
DA70A:  LDR.W           R1, [R7,#var_2C]
DA70E:  ADD.W           R0, R1, R12
DA712:  LDRSH.W         R1, [R1,R12]
DA716:  LDRSH.W         R3, [R0,#2]
DA71A:  LDRSH.W         R8, [R0,#4]
DA71E:  LDRSH.W         R6, [R0,#6]
DA722:  CMP             R1, R3
DA724:  LDRSH.W         R4, [R0,#8]
DA728:  MOV             R2, R3
DA72A:  LDR.W           R0, [R7,#var_28]
DA72E:  ADD             R0, R12
DA730:  LDRSH.W         R5, [R0,#4]
DA734:  ITT GT
DA736:  MOVGT           R2, R1
DA738:  MOVGT           R1, R3
DA73A:  CMP             R6, R4
DA73C:  MOV             R3, R4
DA73E:  ITT GT
DA740:  MOVGT           R3, R6
DA742:  MOVGT           R6, R4
DA744:  MOV             R10, R2
DA746:  CMP             R1, R6
DA748:  ITT GT
DA74A:  MOVGT           R10, R3
DA74C:  MOVGT           R3, R2
DA74E:  IT GT
DA750:  MOVGT           R6, R1
DA752:  SXTH            R6, R6
DA754:  SXTH            R4, R3
DA756:  CMP             R8, R10
DA758:  BLE             loc_DA768
DA75A:  SXTH.W          R2, R10
DA75E:  CMP             R2, R6
DA760:  BGE             loc_DA77A
DA762:  CMP             R8, R6
DA764:  MOV             R2, R6
DA766:  B               loc_DA788
DA768:  CMP             R8, R6
DA76A:  BGE             loc_DA784
DA76C:  SXTH.W          R1, R10
DA770:  CMP             R1, R6
DA772:  MOV             R2, R6
DA774:  IT LT
DA776:  MOVLT           R2, R10
DA778:  B               loc_DA78C
DA77A:  CMP             R4, R2
DA77C:  MOV             R2, R10
DA77E:  IT LT
DA780:  MOVLT           R2, R4
DA782:  B               loc_DA78C
DA784:  CMP             R8, R4
DA786:  MOV             R2, R4
DA788:  IT LT
DA78A:  MOVLT           R2, R8
DA78C:  SXTH            R1, R2
DA78E:  SUB.W           R1, R1, #0x400
DA792:  CMP             R1, R5
DA794:  BLT             loc_DA7CE
DA796:  SXTH.W          R2, R10
DA79A:  CMP             R8, R2
DA79C:  BLE             loc_DA7AA
DA79E:  CMP             R2, R6
DA7A0:  BGE             loc_DA7B6
DA7A2:  CMP             R8, R6
DA7A4:  IT LT
DA7A6:  MOVLT           R6, R8
DA7A8:  B               loc_DA7C8
DA7AA:  CMP             R8, R6
DA7AC:  BGE             loc_DA7C0
DA7AE:  CMP             R2, R6
DA7B0:  IT LT
DA7B2:  MOVLT           R6, R10
DA7B4:  B               loc_DA7C8
DA7B6:  CMP             R4, R2
DA7B8:  IT LT
DA7BA:  MOVLT           R10, R4
DA7BC:  MOV             R6, R10
DA7BE:  B               loc_DA7C8
DA7C0:  CMP             R8, R4
DA7C2:  IT LT
DA7C4:  MOVLT           R4, R8
DA7C6:  MOV             R6, R4
DA7C8:  SXTH            R1, R6
DA7CA:  SUB.W           R5, R1, #0x400
DA7CE:  SUBS.W          LR, LR, #1
DA7D2:  ADD.W           R12, R12, #2
DA7D6:  STRH            R5, [R0,#4]
DA7D8:  BNE             loc_DA70A
DA7DA:  LDR.W           R0, [R7,#var_54]
DA7DE:  MOV.W           R12, #0xFC00
DA7E2:  LDR.W           R4, [R7,#var_50]
DA7E6:  LDR.W           R5, [R7,#var_4C]
DA7EA:  LDRSH.W         R6, [R0,#2]
DA7EE:  LDRSH.W         R1, [R0,#4]
DA7F2:  CMP             R5, R6
DA7F4:  LDRSH.W         R2, [R4]
DA7F8:  MOV             R0, R6
DA7FA:  LDRSH.W         R3, [R4,#2]
DA7FE:  ITT GT
DA800:  MOVGT           R0, R5
DA802:  MOVGT           R5, R6
DA804:  CMP             R5, R1
DA806:  IT LT
DA808:  MOVLT           R5, R1
DA80A:  CMP             R0, R1
DA80C:  IT LT
DA80E:  MOVLT           R5, R0
DA810:  UXTAH.W         R0, R12, R5
DA814:  SXTH            R1, R0
DA816:  CMP             R1, R2
DA818:  IT GE
DA81A:  MOVGE           R2, R0
DA81C:  CMP             R1, R3
DA81E:  STRH            R2, [R4]
DA820:  IT LT
DA822:  MOVLT           R0, R3
DA824:  STRH            R0, [R4,#2]
DA826:  LDR.W           R0, [R7,#var_70]
DA82A:  LDR.W           R1, [R7,#var_30]
DA82E:  LDR.W           R2, [R7,#var_2C]
DA832:  ADD             R0, R1
DA834:  LDR.W           R5, [R7,#var_5C]
DA838:  LDRSH.W         R1, [R2,R0,LSL#1]
DA83C:  ADD.W           R0, R2, R0,LSL#1
DA840:  LDRSH.W         R3, [R4,R5,LSL#1]
DA844:  LDRSH.W         R6, [R0,#2]
DA848:  LDRSH.W         R0, [R0,#4]
DA84C:  CMP             R1, R6
DA84E:  MOV             R2, R6
DA850:  ITT GT
DA852:  MOVGT           R2, R1
DA854:  MOVGT           R1, R6
DA856:  CMP             R1, R0
DA858:  IT LT
DA85A:  MOVLT           R1, R0
DA85C:  CMP             R2, R0
DA85E:  IT LT
DA860:  MOVLT           R1, R2
DA862:  UXTAH.W         R0, R12, R1
DA866:  SXTH            R1, R0
DA868:  CMP             R1, R3
DA86A:  IT GE
DA86C:  MOVGE           R3, R0
DA86E:  LDR.W           R12, [R7,#var_6C]
DA872:  STRH.W          R3, [R4,R5,LSL#1]
DA876:  LDRSH.W         R2, [R4,R12,LSL#1]
DA87A:  CMP             R1, R2
DA87C:  IT LT
DA87E:  MOVLT           R0, R2
DA880:  STRH.W          R0, [R4,R12,LSL#1]
DA884:  LDR             R4, [R7,#arg_0]
DA886:  MOV             LR, R4
DA888:  LDR.W           R4, [R7,#var_40]
DA88C:  CMP.W           LR, #1
DA890:  BLT             loc_DA8B2
DA892:  LDR.W           R2, [R7,#var_74]
DA896:  MOV             R0, LR
DA898:  LDR.W           R6, [R7,#var_28]
DA89C:  LDRSH.W         R1, [R2],#2
DA8A0:  LDRSH           R3, [R6,R4]
DA8A2:  CMP             R3, R1
DA8A4:  IT GT
DA8A6:  MOVGT           R1, R3
DA8A8:  SUBS            R0, #1
DA8AA:  STRH            R1, [R6,R4]
DA8AC:  ADD.W           R6, R6, #2
DA8B0:  BNE             loc_DA89C
DA8B2:  LDR.W           R0, [R7,#var_58]
DA8B6:  LDR.W           R3, [R7,#var_34]
DA8BA:  LDR.W           R8, [R7,#var_38]
DA8BE:  ADD             R4, R0
DA8C0:  LDR.W           R1, [R7,#var_44]
DA8C4:  ADD             R3, R0
DA8C6:  LDR.W           R10, [R7,#var_3C]
DA8CA:  ADD             R8, R0
DA8CC:  LDR.W           R2, [R7,#var_48]
DA8D0:  ADD             R1, R0
DA8D2:  ADD             R10, R0
DA8D4:  LDR             R0, [R7,#arg_4]
DA8D6:  ADDS            R2, #1
DA8D8:  CMP             R2, R0
DA8DA:  BLT.W           loc_DA64A
DA8DE:  LDR.W           R0, [R7,#var_80]
DA8E2:  CMP             R0, #0
DA8E4:  BEQ             loc_DA98A
DA8E6:  LDR.W           R6, [R7,#var_78]
DA8EA:  CMP             R6, LR
DA8EC:  BGE.W           loc_DAAAE
DA8F0:  LDR.W           R0, [R7,#var_28]
DA8F4:  MOV             R4, LR
DA8F6:  LDR.W           R3, [R7,#var_60]
DA8FA:  SUB.W           LR, R4, R6
DA8FE:  ADD.W           R1, R0, R6,LSL#1
DA902:  LDR.W           R0, [R7,#var_7C]
DA906:  MOV.W           R12, #0
DA90A:  MOVS            R4, #0
DA90C:  ADD.W           R10, R0, R6,LSL#1
DA910:  ADD.W           R2, R1, R3,LSL#1
DA914:  ADD.W           R8, R10, R3,LSL#1
DA918:  LDRSH.W         R5, [R1,R4,LSL#1]
DA91C:  LDRSH.W         R0, [R2,R4,LSL#1]
DA920:  SUB.W           R5, R5, #0x1000
DA924:  CMP             R5, R0
DA926:  IT LT
DA928:  MOVLT           R5, R0
DA92A:  STRH.W          R5, [R2,R4,LSL#1]
DA92E:  SXTH            R5, R5
DA930:  SUB.W           R5, R5, #0x1000
DA934:  LDRSH.W         R0, [R1,R4,LSL#1]
DA938:  CMP             R5, R0
DA93A:  IT LT
DA93C:  MOVLT           R5, R0
DA93E:  STRH.W          R5, [R1,R4,LSL#1]
DA942:  SXTH            R5, R5
DA944:  LDRSH.W         R0, [R2,R4,LSL#1]
DA948:  LDRSH.W         R3, [R8,R4,LSL#1]
DA94C:  LDRSH.W         R6, [R10,R4,LSL#1]
DA950:  SUBS            R0, R3, R0
DA952:  CMP             R0, #0
DA954:  SUB.W           R5, R6, R5
DA958:  IT LE
DA95A:  MOVLE           R0, R12
DA95C:  CMP             R5, #0
DA95E:  IT GT
DA960:  ADDGT           R0, R0, R5
DA962:  LSRS            R0, R0, #1
DA964:  STRH.W          R0, [R1,R4,LSL#1]
DA968:  ADDS            R4, #1
DA96A:  CMP             LR, R4
DA96C:  BNE             loc_DA918
DA96E:  B               loc_DA9C0
DA970:  CMP             R6, LR
DA972:  BGE.W           loc_DABEA
DA976:  ADD.W           R1, R2, R6,LSL#2
DA97A:  SUB.W           R0, LR, R6
DA97E:  MOVS            R2, #0xD
DA980:  STR.W           R2, [R1],#4
DA984:  SUBS            R0, #1
DA986:  BNE             loc_DA980
DA988:  B               loc_DABEA
DA98A:  LDR.W           R6, [R7,#var_78]
DA98E:  CMP             R6, LR
DA990:  BGE.W           loc_DAAAE
DA994:  LDR.W           R1, [R7,#var_28]
DA998:  SUB.W           R0, LR, R6
DA99C:  LDR.W           R2, [R7,#var_7C]
DA9A0:  ADD.W           R1, R1, R6,LSL#1
DA9A4:  ADD.W           R2, R2, R6,LSL#1
DA9A8:  LDRSH.W         R3, [R1]
DA9AC:  LDRSH.W         R6, [R2],#2
DA9B0:  SUBS            R3, R6, R3
DA9B2:  CMP             R3, #0
DA9B4:  IT LE
DA9B6:  MOVLE           R3, #0
DA9B8:  SUBS            R0, #1
DA9BA:  STRH.W          R3, [R1],#2
DA9BE:  BNE             loc_DA9A8
DA9C0:  LDR             R4, [R7,#arg_0]
DA9C2:  LDR.W           R6, [R7,#var_78]
DA9C6:  MOV             LR, R4
DA9C8:  CMP             R6, LR
DA9CA:  BGE             loc_DAAAE
DA9CC:  LDR             R1, [R7,#arg_34]
DA9CE:  SUB.W           R0, LR, R6
DA9D2:  ADD.W           R2, R1, R6,LSL#1
DA9D6:  LDR.W           R1, [R7,#var_28]
DA9DA:  MOV             R3, R0
DA9DC:  ADD.W           R12, R1, R6,LSL#1
DA9E0:  MOV             R1, R12
DA9E2:  LDRSH.W         R6, [R2],#2
DA9E6:  LDRSH.W         R5, [R1]
DA9EA:  CMP             R5, R6
DA9EC:  IT GT
DA9EE:  MOVGT           R6, R5
DA9F0:  SUBS            R3, #1
DA9F2:  STRH.W          R6, [R1],#2
DA9F6:  BNE             loc_DA9E2
DA9F8:  LDR.W           R6, [R7,#var_78]
DA9FC:  CMP             R6, LR
DA9FE:  BGE             loc_DAAAE
DAA00:  LDR             R1, [R7,#arg_38]
DAA02:  MOVW            R10, #0
DAA06:  MOVS            R3, #0xD
DAA08:  MOVW            R8, #0xFFFF
DAA0C:  ADD.W           R2, R1, R6,LSL#2
DAA10:  MOVT            R10, #0x3FFF
DAA14:  MOV             R11, #0xFFFFFFFE
DAA18:  LDRSH.W         LR, [R12]
DAA1C:  CMP.W           LR, #0x1000
DAA20:  IT GE
DAA22:  MOVGE.W         LR, #0x1000
DAA26:  MOV.W           R1, LR,ASR#10
DAA2A:  CMP             R1, #0xE
DAA2C:  BLE             loc_DAA34
DAA2E:  MOV.W           R1, #0x7F000000
DAA32:  B               loc_DAA94
DAA34:  CMN.W           R1, #0xF
DAA38:  BGE             loc_DAA3E
DAA3A:  MOVS            R1, #0
DAA3C:  B               loc_DAA94
DAA3E:  MOVW            R4, #0x3FF0
DAA42:  MOVS            R6, #0
DAA44:  AND.W           R4, R4, LR,LSL#4
DAA48:  MOVT            R6, #0x39E3
DAA4C:  MOVW            R5, #0x4FB8
DAA50:  SMLABB.W        R6, R4, R5, R6
DAA54:  MOVS            R5, #0x7FFF0000
DAA5A:  LSRS            R6, R6, #0x10
DAA5C:  SMULBB.W        R6, R6, R4
DAA60:  AND.W           R6, R5, R6,LSL#1
DAA64:  MOVS            R5, #0x59140000
DAA6A:  ADD             R6, R5
DAA6C:  SMULTB.W        R6, R6, R4
DAA70:  SUB.W           R4, R11, R1
DAA74:  NEGS            R1, R4
DAA76:  CMP             R4, #0
DAA78:  MOV.W           R6, R6,LSL#1
DAA7C:  BIC.W           R6, R6, R8
DAA80:  ADD             R6, R10
DAA82:  MOV.W           R6, R6,ASR#16
DAA86:  LSL.W           R1, R6, R1
DAA8A:  IT GT
DAA8C:  ASRGT.W         R1, R6, R4
DAA90:  LDR.W           R6, [R7,#var_78]
DAA94:  MULS            R1, R3
DAA96:  LDR             R4, [R7,#arg_0]
DAA98:  SUBS            R0, #1
DAA9A:  ADD.W           R12, R12, #2
DAA9E:  MOV             LR, R4
DAAA0:  ADD.W           R1, R1, #0x8000
DAAA4:  MOV.W           R1, R1,ASR#16
DAAA8:  STR.W           R1, [R2],#4
DAAAC:  BNE             loc_DAA18
DAAAE:  LDR             R1, [R7,#arg_1C]
DAAB0:  MOVS            R0, #0
DAAB2:  CMP             R1, #0
DAAB4:  LDR             R1, [R7,#arg_18]
DAAB6:  IT EQ
DAAB8:  MOVEQ           R0, #1
DAABA:  CMP             R1, #0
DAABC:  IT NE
DAABE:  MOVNE           R1, #1
DAAC0:  CMP             R6, LR
DAAC2:  BGE             loc_DAAEC
DAAC4:  LDR             R2, [R7,#arg_14]
DAAC6:  CMP             R2, #0
DAAC8:  IT EQ
DAACA:  ANDSEQ.W        R0, R0, R1
DAACE:  BNE             loc_DAAEC
DAAD0:  LDR.W           R1, [R7,#var_28]
DAAD4:  SUB.W           R0, LR, R6
DAAD8:  ADD.W           R1, R1, R6,LSL#1
DAADC:  LDRSH.W         R2, [R1]
DAAE0:  SUBS            R0, #1
DAAE2:  MOV.W           R2, R2,LSR#1
DAAE6:  STRH.W          R2, [R1],#2
DAAEA:  BNE             loc_DAADC
DAAEC:  LDR.W           R11, [R7,#arg_24]
DAAF0:  CMP             R6, LR
DAAF2:  LDR.W           R10, [R7,#arg_8]
DAAF6:  BGE             loc_DABEA
DAAF8:  MOV             R0, R6
DAAFA:  CMP             R0, #7
DAAFC:  BGT             loc_DAB0A
DAAFE:  LDR.W           R2, [R7,#var_28]
DAB02:  LDRH.W          R1, [R2,R0,LSL#1]
DAB06:  LSLS            R1, R1, #1
DAB08:  B               loc_DAB18
DAB0A:  CMP             R0, #0xC
DAB0C:  BLT             loc_DAB1C
DAB0E:  LDR.W           R2, [R7,#var_28]
DAB12:  LDRSH.W         R1, [R2,R0,LSL#1]
DAB16:  LSRS            R1, R1, #1
DAB18:  STRH.W          R1, [R2,R0,LSL#1]
DAB1C:  ADDS            R0, #1
DAB1E:  CMP             LR, R0
DAB20:  BNE             loc_DAAFA
DAB22:  MOVS            R0, #0
DAB24:  CMP             R6, LR
DAB26:  MOV             R4, R6
DAB28:  BGE             loc_DABEC
DAB2A:  LDR             R1, [R7,#arg_20]
DAB2C:  MOV             R3, R4
DAB2E:  LDR             R2, [R7,#arg_18]
DAB30:  LDRH.W          LR, [R1,R4,LSL#1]
DAB34:  LDR             R1, [R7,#arg_1C]
DAB36:  CMP             R1, #0
DAB38:  LDR             R1, [R7,#arg_14]
DAB3A:  IT EQ
DAB3C:  MOVEQ           R0, #1
DAB3E:  CMP             R1, #0
DAB40:  IT NE
DAB42:  MOVNE           R1, #1
DAB44:  CMP             R2, #0
DAB46:  IT NE
DAB48:  ORRSNE.W        R0, R0, R1
DAB4C:  BNE             loc_DAC16
DAB4E:  LDR             R0, [R7,#arg_28]
DAB50:  MOV             R1, #0x55555556
DAB58:  MOVW            R12, #0xAAAB
DAB5C:  MOVS            R6, #0
DAB5E:  MOVT            R12, #0x2AAA
DAB62:  LSLS            R0, R0, #1
DAB64:  SMMUL.W         R0, R0, R1
DAB68:  MOV             R1, R3
DAB6A:  ADD.W           R2, R0, R0,LSR#31
DAB6E:  LDR.W           R3, [R7,#var_28]
DAB72:  LDR             R4, [R7,#arg_20]
DAB74:  LDRSH.W         R0, [R3,R1,LSL#1]
DAB78:  CMP.W           R0, #0x1000
DAB7C:  IT GE
DAB7E:  MOVGE.W         R0, #0x1000
DAB82:  STRH.W          R0, [R3,R1,LSL#1]
DAB86:  MOV             R3, R1
DAB88:  ADD.W           R1, R4, R1,LSL#1
DAB8C:  LDR             R4, [R7,#arg_4]
DAB8E:  LDRSH.W         R5, [R1,#2]
DAB92:  SXTH.W          R1, LR
DAB96:  SUBS            R1, R5, R1
DAB98:  MULS            R1, R4
DAB9A:  LSL.W           R1, R1, R11
DAB9E:  CMP             R1, #5
DABA0:  BGT             loc_DABAC
DABA2:  ASRS            R4, R0, #0xA
DABA4:  MUL.W           R0, R4, R1
DABA8:  LSLS            R0, R0, #3
DABAA:  B               loc_DABCE
DABAC:  CMP             R1, #0x31 ; '1'
DABAE:  BLT             loc_DABBC
DABB0:  ASRS            R4, R0, #7
DABB2:  MUL.W           R0, R4, R1
DABB6:  SBFX.W          R0, R0, #0, #0x1D
DABBA:  B               loc_DABCE
DABBC:  MULS            R0, R1
DABBE:  SMMUL.W         R0, R0, R12
DABC2:  ADD.W           R0, R0, R0,LSR#31
DABC6:  ASRS            R4, R0, #0xA
DABC8:  ADD.W           R0, R4, R4,LSL#1
DABCC:  LSLS            R0, R0, #4
DABCE:  ADD             R0, R6
DABD0:  ASRS            R1, R0, #6
DABD2:  CMP             R1, R2
DABD4:  BGT             loc_DACA2
DABD6:  ADDS            R1, R3, #1
DABD8:  STR.W           R4, [R10,R3,LSL#2]
DABDC:  UXTH.W          LR, R5
DABE0:  LDR             R3, [R7,#arg_0]
DABE2:  MOV             R6, R0
DABE4:  CMP             R1, R3
DABE6:  BLT             loc_DAB6E
DABE8:  B               loc_DABEC
DABEA:  MOVS            R0, #0
DABEC:  LDR             R1, [R7,#arg_2C]
DABEE:  STR             R0, [R1]
DABF0:  LDR             R0, =(__stack_chk_guard_ptr - 0xDABFA)
DABF2:  LDR.W           R1, [R7,#var_24]
DABF6:  ADD             R0, PC; __stack_chk_guard_ptr
DABF8:  LDR             R0, [R0]; __stack_chk_guard
DABFA:  LDR             R0, [R0]
DABFC:  SUBS            R0, R0, R1
DABFE:  ITTTT EQ
DAC00:  SXTHEQ.W        R0, R9
DAC04:  SUBEQ.W         R4, R7, #-var_1C
DAC08:  MOVEQ           SP, R4
DAC0A:  POPEQ.W         {R8-R11}
DAC0E:  IT EQ
DAC10:  POPEQ           {R4-R7,PC}
DAC12:  BLX             __stack_chk_fail
DAC16:  LDR.W           R0, [R7,#var_28]
DAC1A:  MOVW            R12, #0xAAAB
DAC1E:  ADD.W           R10, R10, R3,LSL#2
DAC22:  MOVT            R12, #0x2AAA
DAC26:  ADD.W           R2, R0, R3,LSL#1
DAC2A:  LDR             R0, [R7,#arg_0]
DAC2C:  SUB.W           R8, R0, R3
DAC30:  LDR             R0, [R7,#arg_20]
DAC32:  ADD.W           R0, R0, R3,LSL#1
DAC36:  ADDS            R5, R0, #2
DAC38:  MOVS            R0, #0
DAC3A:  LDRSH.W         R1, [R2]
DAC3E:  SXTH.W          R3, LR
DAC42:  LDR             R6, [R7,#arg_4]
DAC44:  CMP.W           R1, #0x1000
DAC48:  IT GE
DAC4A:  MOVGE.W         R1, #0x1000
DAC4E:  STRH            R1, [R2]
DAC50:  LDRSH.W         R4, [R5]
DAC54:  SUBS            R3, R4, R3
DAC56:  UXTH.W          LR, R4
DAC5A:  MULS            R3, R6
DAC5C:  LSL.W           R3, R3, R11
DAC60:  CMP             R3, #6
DAC62:  BGE             loc_DAC6E
DAC64:  ASRS            R4, R1, #0xA
DAC66:  MUL.W           R1, R4, R3
DAC6A:  LSLS            R1, R1, #3
DAC6C:  B               loc_DAC90
DAC6E:  CMP             R3, #0x30 ; '0'
DAC70:  BLE             loc_DAC7E
DAC72:  ASRS            R4, R1, #7
DAC74:  MUL.W           R1, R4, R3
DAC78:  SBFX.W          R1, R1, #0, #0x1D
DAC7C:  B               loc_DAC90
DAC7E:  MULS            R1, R3
DAC80:  SMMUL.W         R1, R1, R12
DAC84:  ADD.W           R1, R1, R1,LSR#31
DAC88:  ASRS            R4, R1, #0xA
DAC8A:  ADD.W           R1, R4, R4,LSL#1
DAC8E:  LSLS            R1, R1, #4
DAC90:  STR.W           R4, [R10],#4
DAC94:  ADD             R0, R1
DAC96:  ADDS            R2, #2
DAC98:  ADDS            R5, #2
DAC9A:  SUBS.W          R8, R8, #1
DAC9E:  BNE             loc_DAC3A
DACA0:  B               loc_DABEC
DACA2:  RSB.W           R0, R6, R2,LSL#6
DACA6:  STR.W           R0, [R10,R3,LSL#2]
DACAA:  LSLS            R0, R2, #6
DACAC:  B               loc_DABEC
