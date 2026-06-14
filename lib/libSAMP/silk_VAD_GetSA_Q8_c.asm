; =========================================================
; Game Engine Function: silk_VAD_GetSA_Q8_c
; Address            : 0x1A747C - 0x1A7EEA
; =========================================================

1A747C:  PUSH            {R4-R7,LR}
1A747E:  ADD             R7, SP, #0xC
1A7480:  PUSH.W          {R8-R11}
1A7484:  SUB             SP, SP, #0x54
1A7486:  MOV             R11, R0
1A7488:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1A7496)
1A748C:  MOVW            R8, #0x11E8
1A7490:  MOVS            R3, #7
1A7492:  ADD             R0, PC; __stack_chk_guard_ptr
1A7494:  LDR             R0, [R0]; __stack_chk_guard
1A7496:  LDR             R0, [R0]
1A7498:  STR.W           R0, [R7,#var_24]
1A749C:  MOVS            R0, #0
1A749E:  LDR.W           R6, [R11,R8]
1A74A2:  STR.W           R0, [R7,#var_54]
1A74A6:  MOV.W           R10, R6,ASR#3
1A74AA:  ADD.W           R5, R10, R6,ASR#2
1A74AE:  ADD.W           R4, R5, R6,ASR#3
1A74B2:  ADD.W           R0, R4, R6,ASR#2
1A74B6:  ADD.W           R2, R0, R6,ASR#1
1A74BA:  STRD.W          R5, R4, [R7,#var_50]
1A74BE:  STR.W           R0, [R7,#var_48]
1A74C2:  ADD.W           R2, R3, R2,LSL#1
1A74C6:  BIC.W           R2, R2, #7
1A74CA:  SUB.W           R9, SP, R2
1A74CE:  MOV             SP, R9
1A74D0:  SUB             SP, SP, #8
1A74D2:  ADD.W           R2, R11, #0x24 ; '$'
1A74D6:  ADD.W           R3, R9, R0,LSL#1
1A74DA:  MOV             R0, R1
1A74DC:  STR             R6, [SP,#0x78+var_78]
1A74DE:  MOV             R1, R2
1A74E0:  MOV             R2, R9
1A74E2:  BLX             j_silk_ana_filt_bank_1
1A74E6:  ADD             SP, SP, #8
1A74E8:  ASRS            R0, R6, #1
1A74EA:  SUB             SP, SP, #8
1A74EC:  ADD.W           R3, R9, R4,LSL#1
1A74F0:  ADD.W           R1, R11, #0x2C ; ','
1A74F4:  STR             R0, [SP,#0x78+var_78]
1A74F6:  MOV             R0, R9
1A74F8:  MOV             R2, R9
1A74FA:  BLX             j_silk_ana_filt_bank_1
1A74FE:  ADD             SP, SP, #8
1A7500:  ASRS            R0, R6, #2
1A7502:  SUB             SP, SP, #8
1A7504:  ADD.W           R3, R9, R5,LSL#1
1A7508:  ADD.W           R1, R11, #0x34 ; '4'
1A750C:  STR             R0, [SP,#0x78+var_78]
1A750E:  MOV             R0, R9
1A7510:  MOV             R2, R9
1A7512:  BLX             j_silk_ana_filt_bank_1
1A7516:  ADD             SP, SP, #8
1A7518:  ADD.W           R1, R9, R10,LSL#1
1A751C:  ADD.W           LR, R11, R8
1A7520:  CMP.W           R10, #2
1A7524:  LDRSH.W         R0, [R1,#-2]
1A7528:  MOV.W           R0, R0,ASR#1
1A752C:  STRH.W          R0, [R1,#-2]
1A7530:  BLT             loc_1A7552
1A7532:  SUBS            R1, #4
1A7534:  SUB.W           R2, R10, #2
1A7538:  MOV             R3, R0
1A753A:  LDRSH.W         R6, [R1]
1A753E:  SUB.W           R3, R3, R6,LSR#1
1A7542:  STRH            R3, [R1,#2]
1A7544:  LSRS            R3, R6, #1
1A7546:  ADDS            R6, R2, #1
1A7548:  STRH            R3, [R1]
1A754A:  SUBS            R1, #2
1A754C:  SUBS            R2, #1
1A754E:  CMP             R6, #1
1A7550:  BGT             loc_1A753A
1A7552:  LDRH.W          R1, [R11,#0x5C]
1A7556:  LDRH.W          R2, [R9]
1A755A:  SUBS            R1, R2, R1
1A755C:  STRH.W          R1, [R9]
1A7560:  STRH.W          R0, [R11,#0x5C]
1A7564:  LDR.W           R0, [LR]
1A7568:  LDR.W           R2, [R11,#0x3C]
1A756C:  STR.W           R2, [R7,#var_34]
1A7570:  ASRS            R5, R0, #5
1A7572:  CMP             R5, #1
1A7574:  BLT             loc_1A7618
1A7576:  LDR.W           R1, [R7,#var_54]
1A757A:  MOVS            R3, #0
1A757C:  MOV             R0, R5
1A757E:  ADD.W           R6, R9, R1,LSL#1
1A7582:  LDRSH.W         R4, [R6],#2
1A7586:  SUBS            R0, #1
1A7588:  MOV.W           R4, R4,ASR#3
1A758C:  SMLABB.W        R3, R4, R4, R3
1A7590:  BNE             loc_1A7582
1A7592:  ADDS            R0, R2, R3
1A7594:  MOV             R2, #0x7FFFFFFF
1A7598:  CMP             R0, R2
1A759A:  MOV.W           R3, #0
1A759E:  IT CC
1A75A0:  MOVCC           R2, R0
1A75A2:  ADDS            R0, R1, R5
1A75A4:  ADD.W           R6, R9, R0,LSL#1
1A75A8:  MOV             R0, R5
1A75AA:  LDRSH.W         R4, [R6],#2
1A75AE:  SUBS            R0, #1
1A75B0:  MOV.W           R4, R4,ASR#3
1A75B4:  SMLABB.W        R3, R4, R4, R3
1A75B8:  BNE             loc_1A75AA
1A75BA:  ADDS            R0, R2, R3
1A75BC:  MOV             R2, #0x7FFFFFFF
1A75C0:  CMP             R0, R2
1A75C2:  MOV.W           R3, #0
1A75C6:  IT CC
1A75C8:  MOVCC           R2, R0
1A75CA:  LSLS            R0, R5, #2
1A75CC:  ADD.W           R0, R0, R1,LSL#1
1A75D0:  ADD.W           R6, R9, R0
1A75D4:  MOV             R0, R5
1A75D6:  LDRSH.W         R4, [R6],#2
1A75DA:  SUBS            R0, #1
1A75DC:  MOV.W           R4, R4,ASR#3
1A75E0:  SMLABB.W        R3, R4, R4, R3
1A75E4:  BNE             loc_1A75D6
1A75E6:  ADDS            R0, R2, R3
1A75E8:  MOV             R2, #0x7FFFFFFF
1A75EC:  CMP             R0, R2
1A75EE:  IT CC
1A75F0:  MOVCC           R2, R0
1A75F2:  ADD.W           R0, R5, R5,LSL#1
1A75F6:  LSLS            R0, R0, #1
1A75F8:  ADD.W           R0, R0, R1,LSL#1
1A75FC:  MOVS            R1, #0
1A75FE:  ADD.W           R3, R9, R0
1A7602:  LDRSH.W         R0, [R3],#2
1A7606:  SUBS            R5, #1
1A7608:  MOV.W           R0, R0,ASR#3
1A760C:  SMLABB.W        R1, R0, R0, R1
1A7610:  BNE             loc_1A7602
1A7612:  ADD.W           R2, R2, R1,ASR#1
1A7616:  B               loc_1A761A
1A7618:  MOVS            R1, #0
1A761A:  MOV             R0, #0x7FFFFFFF
1A761E:  CMP             R2, R0
1A7620:  IT CS
1A7622:  MOVCS           R2, R0
1A7624:  STR.W           R2, [R7,#var_34]
1A7628:  STR.W           R1, [R11,#0x3C]
1A762C:  LDR.W           R1, [LR]
1A7630:  LDR.W           R3, [R11,#0x40]
1A7634:  STR.W           R3, [R7,#var_30]
1A7638:  ASRS            R4, R1, #5
1A763A:  CMP             R4, #0
1A763C:  BLE             loc_1A76E4
1A763E:  LDR.W           R12, [R7,#var_50]
1A7642:  MOVS            R6, #0
1A7644:  MOV             R1, R4
1A7646:  ADD.W           R5, R9, R12,LSL#1
1A764A:  LDRSH.W         R2, [R5],#2
1A764E:  SUBS            R1, #1
1A7650:  MOV.W           R2, R2,ASR#3
1A7654:  SMLABB.W        R6, R2, R2, R6
1A7658:  BNE             loc_1A764A
1A765A:  ADDS            R1, R3, R6
1A765C:  MOV             R3, #0x7FFFFFFF
1A7660:  CMP             R1, R3
1A7662:  MOV.W           R6, #0
1A7666:  IT CC
1A7668:  MOVCC           R3, R1
1A766A:  ADD.W           R1, R12, R4
1A766E:  ADD.W           R5, R9, R1,LSL#1
1A7672:  MOV             R1, R4
1A7674:  LDRSH.W         R2, [R5],#2
1A7678:  SUBS            R1, #1
1A767A:  MOV.W           R2, R2,ASR#3
1A767E:  SMLABB.W        R6, R2, R2, R6
1A7682:  BNE             loc_1A7674
1A7684:  ADDS            R1, R3, R6
1A7686:  MOV             R3, #0x7FFFFFFF
1A768A:  CMP             R1, R3
1A768C:  MOV.W           R6, #0
1A7690:  IT CC
1A7692:  MOVCC           R3, R1
1A7694:  LSLS            R1, R4, #2
1A7696:  ADD.W           R1, R1, R12,LSL#1
1A769A:  ADD.W           R5, R9, R1
1A769E:  MOV             R1, R4
1A76A0:  LDRSH.W         R2, [R5],#2
1A76A4:  SUBS            R1, #1
1A76A6:  MOV.W           R2, R2,ASR#3
1A76AA:  SMLABB.W        R6, R2, R2, R6
1A76AE:  BNE             loc_1A76A0
1A76B0:  ADDS            R1, R3, R6
1A76B2:  MOV             R3, #0x7FFFFFFF
1A76B6:  CMP             R1, R3
1A76B8:  MOV.W           R2, #0
1A76BC:  IT CC
1A76BE:  MOVCC           R3, R1
1A76C0:  ADD.W           R1, R4, R4,LSL#1
1A76C4:  LSLS            R1, R1, #1
1A76C6:  ADD.W           R1, R1, R12,LSL#1
1A76CA:  ADD.W           R6, R9, R1
1A76CE:  LDRSH.W         R1, [R6],#2
1A76D2:  SUBS            R4, #1
1A76D4:  MOV.W           R1, R1,ASR#3
1A76D8:  SMLABB.W        R2, R1, R1, R2
1A76DC:  BNE             loc_1A76CE
1A76DE:  ADD.W           R3, R3, R2,ASR#1
1A76E2:  B               loc_1A76E6
1A76E4:  MOVS            R2, #0
1A76E6:  CMP             R3, R0
1A76E8:  IT CC
1A76EA:  MOVCC           R0, R3
1A76EC:  STR.W           R0, [R7,#var_30]
1A76F0:  STR.W           R2, [R11,#0x40]
1A76F4:  LDR.W           R0, [LR]
1A76F8:  LDR.W           R2, [R11,#0x44]
1A76FC:  STR.W           R2, [R7,#var_2C]
1A7700:  ASRS            R5, R0, #4
1A7702:  CMP             R5, #1
1A7704:  BLT             loc_1A77A8
1A7706:  LDR.W           R1, [R7,#var_4C]
1A770A:  MOVS            R3, #0
1A770C:  MOV             R0, R5
1A770E:  ADD.W           R6, R9, R1,LSL#1
1A7712:  LDRSH.W         R4, [R6],#2
1A7716:  SUBS            R0, #1
1A7718:  MOV.W           R4, R4,ASR#3
1A771C:  SMLABB.W        R3, R4, R4, R3
1A7720:  BNE             loc_1A7712
1A7722:  ADDS            R0, R2, R3
1A7724:  MOV             R2, #0x7FFFFFFF
1A7728:  CMP             R0, R2
1A772A:  MOV.W           R3, #0
1A772E:  IT CC
1A7730:  MOVCC           R2, R0
1A7732:  ADDS            R0, R1, R5
1A7734:  ADD.W           R6, R9, R0,LSL#1
1A7738:  MOV             R0, R5
1A773A:  LDRSH.W         R4, [R6],#2
1A773E:  SUBS            R0, #1
1A7740:  MOV.W           R4, R4,ASR#3
1A7744:  SMLABB.W        R3, R4, R4, R3
1A7748:  BNE             loc_1A773A
1A774A:  ADDS            R0, R2, R3
1A774C:  MOV             R2, #0x7FFFFFFF
1A7750:  CMP             R0, R2
1A7752:  MOV.W           R3, #0
1A7756:  IT CC
1A7758:  MOVCC           R2, R0
1A775A:  LSLS            R0, R5, #2
1A775C:  ADD.W           R0, R0, R1,LSL#1
1A7760:  ADD.W           R6, R9, R0
1A7764:  MOV             R0, R5
1A7766:  LDRSH.W         R4, [R6],#2
1A776A:  SUBS            R0, #1
1A776C:  MOV.W           R4, R4,ASR#3
1A7770:  SMLABB.W        R3, R4, R4, R3
1A7774:  BNE             loc_1A7766
1A7776:  ADDS            R0, R2, R3
1A7778:  MOV             R2, #0x7FFFFFFF
1A777C:  CMP             R0, R2
1A777E:  IT CC
1A7780:  MOVCC           R2, R0
1A7782:  ADD.W           R0, R5, R5,LSL#1
1A7786:  LSLS            R0, R0, #1
1A7788:  ADD.W           R0, R0, R1,LSL#1
1A778C:  MOVS            R1, #0
1A778E:  ADD.W           R3, R9, R0
1A7792:  LDRSH.W         R0, [R3],#2
1A7796:  SUBS            R5, #1
1A7798:  MOV.W           R0, R0,ASR#3
1A779C:  SMLABB.W        R1, R0, R0, R1
1A77A0:  BNE             loc_1A7792
1A77A2:  ADD.W           R2, R2, R1,ASR#1
1A77A6:  B               loc_1A77AA
1A77A8:  MOVS            R1, #0
1A77AA:  MOV             R0, #0x7FFFFFFF
1A77AE:  CMP             R2, R0
1A77B0:  IT CS
1A77B2:  MOVCS           R2, R0
1A77B4:  STR.W           R2, [R7,#var_2C]
1A77B8:  STR.W           R1, [R11,#0x44]
1A77BC:  LDR.W           R1, [LR]
1A77C0:  LDR.W           R3, [R11,#0x48]
1A77C4:  STR.W           R3, [R7,#var_28]
1A77C8:  ASRS            R4, R1, #3
1A77CA:  CMP             R4, #1
1A77CC:  BLT             loc_1A7874
1A77CE:  LDR.W           R12, [R7,#var_48]
1A77D2:  MOVS            R6, #0
1A77D4:  MOV             R1, R4
1A77D6:  ADD.W           R5, R9, R12,LSL#1
1A77DA:  LDRSH.W         R2, [R5],#2
1A77DE:  SUBS            R1, #1
1A77E0:  MOV.W           R2, R2,ASR#3
1A77E4:  SMLABB.W        R6, R2, R2, R6
1A77E8:  BNE             loc_1A77DA
1A77EA:  ADDS            R1, R3, R6
1A77EC:  MOV             R3, #0x7FFFFFFF
1A77F0:  CMP             R1, R3
1A77F2:  MOV.W           R6, #0
1A77F6:  IT CC
1A77F8:  MOVCC           R3, R1
1A77FA:  ADD.W           R1, R12, R4
1A77FE:  ADD.W           R5, R9, R1,LSL#1
1A7802:  MOV             R1, R4
1A7804:  LDRSH.W         R2, [R5],#2
1A7808:  SUBS            R1, #1
1A780A:  MOV.W           R2, R2,ASR#3
1A780E:  SMLABB.W        R6, R2, R2, R6
1A7812:  BNE             loc_1A7804
1A7814:  ADDS            R1, R3, R6
1A7816:  MOV             R3, #0x7FFFFFFF
1A781A:  CMP             R1, R3
1A781C:  MOV.W           R6, #0
1A7820:  IT CC
1A7822:  MOVCC           R3, R1
1A7824:  LSLS            R1, R4, #2
1A7826:  ADD.W           R1, R1, R12,LSL#1
1A782A:  ADD.W           R5, R9, R1
1A782E:  MOV             R1, R4
1A7830:  LDRSH.W         R2, [R5],#2
1A7834:  SUBS            R1, #1
1A7836:  MOV.W           R2, R2,ASR#3
1A783A:  SMLABB.W        R6, R2, R2, R6
1A783E:  BNE             loc_1A7830
1A7840:  ADDS            R1, R3, R6
1A7842:  MOV             R3, #0x7FFFFFFF
1A7846:  CMP             R1, R3
1A7848:  MOV.W           R2, #0
1A784C:  IT CC
1A784E:  MOVCC           R3, R1
1A7850:  ADD.W           R1, R4, R4,LSL#1
1A7854:  LSLS            R1, R1, #1
1A7856:  ADD.W           R1, R1, R12,LSL#1
1A785A:  ADD.W           R6, R9, R1
1A785E:  LDRSH.W         R1, [R6],#2
1A7862:  SUBS            R4, #1
1A7864:  MOV.W           R1, R1,ASR#3
1A7868:  SMLABB.W        R2, R1, R1, R2
1A786C:  BNE             loc_1A785E
1A786E:  ADD.W           R3, R3, R2,ASR#1
1A7872:  B               loc_1A7876
1A7874:  MOVS            R2, #0
1A7876:  CMP             R3, R0
1A7878:  IT CC
1A787A:  MOVCC           R0, R3
1A787C:  STR.W           R0, [R7,#var_28]
1A7880:  STR.W           R2, [R11,#0x48]
1A7884:  LDR.W           R0, [R11,#0x90]
1A7888:  STR.W           LR, [R7,#var_60]
1A788C:  CMP.W           R0, #0x3E8
1A7890:  BGE             loc_1A78AA
1A7892:  ADDS            R1, R0, #1
1A7894:  STR.W           R1, [R11,#0x90]
1A7898:  MOVS            R1, #1
1A789A:  ADD.W           R1, R1, R0,ASR#4
1A789E:  MOVW            R0, #0x7FFF
1A78A2:  BLX             sub_220A40
1A78A6:  MOV             R9, R0
1A78A8:  B               loc_1A78AE
1A78AA:  MOV.W           R9, #0
1A78AE:  LDR.W           R1, [R7,#var_34]
1A78B2:  MOV             R8, #0x7FFFFFFF
1A78B6:  LDR.W           R0, [R11,#0x80]
1A78BA:  LDR.W           R4, [R11,#0x60]
1A78BE:  ADDS            R6, R0, R1
1A78C0:  STR.W           R1, [R7,#var_5C]
1A78C4:  CMP             R6, R8
1A78C6:  MOV             R0, #0x7FFFFFFF
1A78CA:  IT CS
1A78CC:  MOVCS           R6, R8
1A78CE:  MOV             R1, R6
1A78D0:  BLX             sub_220A6C
1A78D4:  CMP.W           R6, R4,LSL#3
1A78D8:  BLE             loc_1A78DE
1A78DA:  MOVS            R1, #0x80
1A78DC:  B               loc_1A790C
1A78DE:  CMP             R6, R4
1A78E0:  BGE             loc_1A78E8
1A78E2:  MOV.W           R1, #0x400
1A78E6:  B               loc_1A790C
1A78E8:  MOVS            R1, #1
1A78EA:  SXTH            R2, R4
1A78EC:  ADD.W           R1, R1, R4,ASR#15
1A78F0:  UXTH            R3, R0
1A78F2:  MULS            R3, R2
1A78F4:  LSRS            R6, R0, #0x10
1A78F6:  ASRS            R1, R1, #1
1A78F8:  MULS            R1, R0
1A78FA:  MLA.W           R1, R6, R2, R1
1A78FE:  ADD.W           R1, R1, R3,ASR#16
1A7902:  ASRS            R2, R1, #0x10
1A7904:  UBFX.W          R1, R1, #5, #0xB
1A7908:  ORR.W           R1, R1, R2,LSL#11
1A790C:  LDR.W           R2, [R11,#0x70]
1A7910:  CMP             R1, R9
1A7912:  LDR.W           R10, [R11,#0x64]
1A7916:  SUB.W           R0, R0, R2
1A791A:  LDR.W           R4, [R11,#0x84]
1A791E:  IT LE
1A7920:  MOVLE           R1, R9
1A7922:  UXTH            R6, R0
1A7924:  SXTH            R3, R1
1A7926:  MULS            R3, R6
1A7928:  SMLABT.W        R0, R1, R0, R2
1A792C:  ADD.W           R1, R0, R3,ASR#16
1A7930:  MOV             R0, #0x7FFFFFFF
1A7934:  STR.W           R1, [R11,#0x70]
1A7938:  BLX             sub_220A40
1A793C:  MOV             R6, R0
1A793E:  MOV             R5, #0xFFFFFF
1A7942:  CMP             R6, R5
1A7944:  IT GE
1A7946:  MOVGE           R6, R5
1A7948:  STR.W           R6, [R11,#0x60]
1A794C:  LDR.W           R0, [R7,#var_30]
1A7950:  STR.W           R0, [R7,#var_64]
1A7954:  ADD             R4, R0
1A7956:  MOV             R0, #0x7FFFFFFF
1A795A:  CMP             R4, R8
1A795C:  IT CS
1A795E:  MOVCS           R4, R8
1A7960:  MOV             R1, R4
1A7962:  BLX             sub_220A6C
1A7966:  CMP.W           R4, R10,LSL#3
1A796A:  BLE             loc_1A7970
1A796C:  MOVS            R1, #0x80
1A796E:  B               loc_1A79A0
1A7970:  CMP             R4, R10
1A7972:  BGE             loc_1A797A
1A7974:  MOV.W           R1, #0x400
1A7978:  B               loc_1A79A0
1A797A:  MOVS            R1, #1
1A797C:  SXTH.W          R2, R10
1A7980:  ADD.W           R1, R1, R10,ASR#15
1A7984:  UXTH            R3, R0
1A7986:  MULS            R3, R2
1A7988:  LSRS            R4, R0, #0x10
1A798A:  ASRS            R1, R1, #1
1A798C:  MULS            R1, R0
1A798E:  MLA.W           R1, R4, R2, R1
1A7992:  ADD.W           R1, R1, R3,ASR#16
1A7996:  ASRS            R2, R1, #0x10
1A7998:  UBFX.W          R1, R1, #5, #0xB
1A799C:  ORR.W           R1, R1, R2,LSL#11
1A79A0:  LDR.W           R2, [R11,#0x74]
1A79A4:  CMP             R1, R9
1A79A6:  LDR.W           R10, [R11,#0x68]
1A79AA:  SUB.W           R0, R0, R2
1A79AE:  LDR.W           R8, [R11,#0x88]
1A79B2:  IT LE
1A79B4:  MOVLE           R1, R9
1A79B6:  UXTH            R4, R0
1A79B8:  SXTH            R3, R1
1A79BA:  MULS            R3, R4
1A79BC:  SMLABT.W        R0, R1, R0, R2
1A79C0:  ADD.W           R1, R0, R3,ASR#16
1A79C4:  MOV             R0, #0x7FFFFFFF
1A79C8:  STR.W           R1, [R11,#0x74]
1A79CC:  BLX             sub_220A40
1A79D0:  CMP             R0, R5
1A79D2:  IT LT
1A79D4:  MOVLT           R5, R0
1A79D6:  STR.W           R11, [R7,#var_58]
1A79DA:  STR.W           R5, [R11,#0x64]
1A79DE:  LDR.W           R0, [R7,#var_2C]
1A79E2:  STR.W           R0, [R7,#var_68]
1A79E6:  ADD.W           R4, R8, R0
1A79EA:  MOV             R8, #0x7FFFFFFF
1A79EE:  CMP             R4, R8
1A79F0:  MOV             R0, #0x7FFFFFFF
1A79F4:  IT CS
1A79F6:  MOVCS           R4, R8
1A79F8:  MOV             R1, R4
1A79FA:  BLX             sub_220A6C
1A79FE:  CMP.W           R4, R10,LSL#3
1A7A02:  BLE             loc_1A7A08
1A7A04:  MOVS            R1, #0x80
1A7A06:  B               loc_1A7A38
1A7A08:  CMP             R4, R10
1A7A0A:  BGE             loc_1A7A12
1A7A0C:  MOV.W           R1, #0x400
1A7A10:  B               loc_1A7A38
1A7A12:  MOVS            R1, #1
1A7A14:  SXTH.W          R2, R10
1A7A18:  ADD.W           R1, R1, R10,ASR#15
1A7A1C:  UXTH            R3, R0
1A7A1E:  MULS            R3, R2
1A7A20:  LSRS            R5, R0, #0x10
1A7A22:  ASRS            R1, R1, #1
1A7A24:  MULS            R1, R0
1A7A26:  MLA.W           R1, R5, R2, R1
1A7A2A:  ADD.W           R1, R1, R3,ASR#16
1A7A2E:  ASRS            R2, R1, #0x10
1A7A30:  UBFX.W          R1, R1, #5, #0xB
1A7A34:  ORR.W           R1, R1, R2,LSL#11
1A7A38:  LDR.W           R11, [R7,#var_58]
1A7A3C:  CMP             R1, R9
1A7A3E:  LDR.W           R2, [R11,#0x78]
1A7A42:  LDR.W           R10, [R11,#0x6C]
1A7A46:  SUB.W           R0, R0, R2
1A7A4A:  LDR.W           R4, [R11,#0x8C]
1A7A4E:  IT LE
1A7A50:  MOVLE           R1, R9
1A7A52:  UXTH            R5, R0
1A7A54:  SXTH            R3, R1
1A7A56:  MULS            R3, R5
1A7A58:  SMLABT.W        R0, R1, R0, R2
1A7A5C:  ADD.W           R1, R0, R3,ASR#16
1A7A60:  MOV             R0, #0x7FFFFFFF
1A7A64:  STR.W           R1, [R11,#0x78]
1A7A68:  BLX             sub_220A40
1A7A6C:  MOV             R5, #0xFFFFFF
1A7A70:  CMP             R0, R5
1A7A72:  IT GE
1A7A74:  MOVGE           R0, R5
1A7A76:  STR.W           R0, [R11,#0x68]
1A7A7A:  LDR.W           R0, [R7,#var_28]
1A7A7E:  STR.W           R0, [R7,#var_6C]
1A7A82:  ADD             R4, R0
1A7A84:  MOV             R0, #0x7FFFFFFF
1A7A88:  CMP             R4, R8
1A7A8A:  IT CS
1A7A8C:  MOVCS           R4, R8
1A7A8E:  MOV             R1, R4
1A7A90:  BLX             sub_220A6C
1A7A94:  CMP.W           R4, R10,LSL#3
1A7A98:  BLE             loc_1A7A9E
1A7A9A:  MOVS            R1, #0x80
1A7A9C:  B               loc_1A7ACE
1A7A9E:  CMP             R4, R10
1A7AA0:  BGE             loc_1A7AA8
1A7AA2:  MOV.W           R1, #0x400
1A7AA6:  B               loc_1A7ACE
1A7AA8:  MOVS            R1, #1
1A7AAA:  SXTH.W          R2, R10
1A7AAE:  ADD.W           R1, R1, R10,ASR#15
1A7AB2:  UXTH            R3, R0
1A7AB4:  MULS            R3, R2
1A7AB6:  LSRS            R4, R0, #0x10
1A7AB8:  ASRS            R1, R1, #1
1A7ABA:  MULS            R1, R0
1A7ABC:  MLA.W           R1, R4, R2, R1
1A7AC0:  ADD.W           R1, R1, R3,ASR#16
1A7AC4:  ASRS            R2, R1, #0x10
1A7AC6:  UBFX.W          R1, R1, #5, #0xB
1A7ACA:  ORR.W           R1, R1, R2,LSL#11
1A7ACE:  LDR.W           R2, [R11,#0x7C]
1A7AD2:  CMP             R1, R9
1A7AD4:  IT GT
1A7AD6:  MOVGT           R9, R1
1A7AD8:  SUBS            R0, R0, R2
1A7ADA:  SXTH.W          R1, R9
1A7ADE:  UXTH            R3, R0
1A7AE0:  SMLABT.W        R0, R9, R0, R2
1A7AE4:  MULS            R1, R3
1A7AE6:  ADD.W           R1, R0, R1,ASR#16
1A7AEA:  MOV             R0, #0x7FFFFFFF
1A7AEE:  STR.W           R1, [R11,#0x7C]
1A7AF2:  BLX             sub_220A40
1A7AF6:  CMP             R0, R5
1A7AF8:  ADD.W           R9, R11, #0x64 ; 'd'
1A7AFC:  IT LT
1A7AFE:  MOVLT           R5, R0
1A7B00:  SUB.W           R0, R7, #-var_34
1A7B04:  STR.W           R5, [R11,#0x6C]
1A7B08:  ADDS            R5, R0, #4
1A7B0A:  LDR.W           R0, [R7,#var_5C]
1A7B0E:  MOVS            R4, #0
1A7B10:  MOV.W           R8, #0
1A7B14:  MOV.W           R11, #0
1A7B18:  B               loc_1A7B28
1A7B1A:  ADD.W           R1, R11, #1
1A7B1E:  LDR.W           R6, [R9,R11,LSL#2]
1A7B22:  LDR.W           R0, [R5,R11,LSL#2]
1A7B26:  MOV             R11, R1
1A7B28:  SUB.W           R10, R0, R6
1A7B2C:  CMP.W           R10, #1
1A7B30:  BLT             loc_1A7B7E
1A7B32:  CMP.W           R0, #0x800000
1A7B36:  IT CS
1A7B38:  ASRCS           R6, R6, #8
1A7B3A:  IT CC
1A7B3C:  LSLCC           R0, R0, #8
1A7B3E:  ADDS            R1, R6, #1
1A7B40:  BLX             sub_220A40
1A7B44:  SUB.W           R1, R7, #-var_44
1A7B48:  STR.W           R0, [R1,R11,LSL#2]
1A7B4C:  BLX             j_silk_lin2log
1A7B50:  SUB.W           R0, R0, #0x400
1A7B54:  CMP.W           R10, #0x100000
1A7B58:  SMLABB.W        R8, R0, R0, R8
1A7B5C:  BGE             loc_1A7C24
1A7B5E:  CLZ.W           R3, R10
1A7B62:  MOV             LR, R5
1A7B64:  RSBS.W          R1, R3, #0x18
1A7B68:  SXTH            R0, R0
1A7B6A:  RSB.W           R2, R1, #0
1A7B6E:  MOV             R6, R10
1A7B70:  BEQ             loc_1A7BA0
1A7B72:  CMP.W           R1, #0xFFFFFFFF
1A7B76:  BLE             loc_1A7B92
1A7B78:  ROR.W           R6, R10, R1
1A7B7C:  B               loc_1A7BA0
1A7B7E:  SUB.W           R0, R7, #-var_44
1A7B82:  MOV.W           R1, #0x100
1A7B86:  STR.W           R1, [R0,R11,LSL#2]
1A7B8A:  CMP.W           R11, #3
1A7B8E:  BNE             loc_1A7B1A
1A7B90:  B               loc_1A7C40
1A7B92:  ADD.W           R5, R1, #0x20 ; ' '
1A7B96:  LSL.W           R6, R10, R2
1A7B9A:  LSR.W           R5, R10, R5
1A7B9E:  ORRS            R6, R5
1A7BA0:  AND.W           R6, R6, #0x7F
1A7BA4:  MOV             R12, R4
1A7BA6:  MOV.W           R4, #0xD50000
1A7BAA:  TST.W           R3, #1
1A7BAE:  MUL.W           R5, R6, R4
1A7BB2:  MOV.W           R6, #0x8000
1A7BB6:  IT EQ
1A7BB8:  MOVWEQ          R6, #0xB486
1A7BBC:  LSRS            R3, R3, #1
1A7BBE:  LSR.W           R3, R6, R3
1A7BC2:  CMP             R1, #0
1A7BC4:  UXTH            R6, R3
1A7BC6:  MOV.W           R5, R5,LSR#16
1A7BCA:  MUL.W           R4, R5, R6
1A7BCE:  SMLABT.W        R5, R5, R3, R3
1A7BD2:  ADD.W           R5, R5, R4,LSR#16
1A7BD6:  MOV.W           R4, R3,ASR#16
1A7BDA:  MOV.W           R5, R5,LSL#6
1A7BDE:  SMULTB.W        R5, R5, R0
1A7BE2:  BEQ             loc_1A7BFE
1A7BE4:  CMP.W           R1, #0xFFFFFFFF
1A7BE8:  BLE             loc_1A7BF0
1A7BEA:  ROR.W           R10, R10, R1
1A7BEE:  B               loc_1A7BFE
1A7BF0:  ADDS            R1, #0x20 ; ' '
1A7BF2:  LSL.W           R2, R10, R2
1A7BF6:  LSR.W           R1, R10, R1
1A7BFA:  ORR.W           R10, R1, R2
1A7BFE:  AND.W           R1, R10, #0x7F
1A7C02:  MOV.W           R2, #0xD50000
1A7C06:  MULS            R1, R2
1A7C08:  LSRS            R1, R1, #0x10
1A7C0A:  MUL.W           R2, R1, R6
1A7C0E:  SMLABB.W        R1, R1, R4, R3
1A7C12:  MOV             R4, R12
1A7C14:  ADD.W           R1, R1, R2,LSR#16
1A7C18:  LSLS            R1, R1, #6
1A7C1A:  UXTH            R1, R1
1A7C1C:  MULS            R0, R1
1A7C1E:  ADD.W           R0, R5, R0,ASR#16
1A7C22:  MOV             R5, LR
1A7C24:  ADR             R1, dword_1A7EF0
1A7C26:  SXTH            R3, R0
1A7C28:  LDR.W           R1, [R1,R11,LSL#2]
1A7C2C:  UXTH            R2, R1
1A7C2E:  SMLABT.W        R0, R0, R1, R4
1A7C32:  MULS            R2, R3
1A7C34:  ADD.W           R4, R0, R2,ASR#16
1A7C38:  CMP.W           R11, #3
1A7C3C:  BNE.W           loc_1A7B1A
1A7C40:  CMP.W           R8, #4
1A7C44:  BGE             loc_1A7C50
1A7C46:  MOV             R0, #0xFFFFFF80
1A7C4A:  LDR.W           R8, [R7,#var_58]
1A7C4E:  B               loc_1A7CC4
1A7C50:  MOV.W           R0, R8,ASR#31
1A7C54:  ADD.W           R0, R8, R0,LSR#30
1A7C58:  LDR.W           R8, [R7,#var_58]
1A7C5C:  ASRS            R1, R0, #2
1A7C5E:  CLZ.W           R0, R1
1A7C62:  RSBS.W          R2, R0, #0x18
1A7C66:  BEQ             loc_1A7C7E
1A7C68:  CMP.W           R2, #0xFFFFFFFF
1A7C6C:  BLE             loc_1A7C72
1A7C6E:  RORS            R1, R2
1A7C70:  B               loc_1A7C7E
1A7C72:  NEGS            R3, R2
1A7C74:  ADDS            R2, #0x20 ; ' '
1A7C76:  LSL.W           R3, R1, R3
1A7C7A:  LSRS            R1, R2
1A7C7C:  ORRS            R1, R3
1A7C7E:  AND.W           R1, R1, #0x7F
1A7C82:  MOV.W           R2, #0xD50000
1A7C86:  TST.W           R0, #1
1A7C8A:  MOV.W           R0, R0,LSR#1
1A7C8E:  MUL.W           R1, R2, R1
1A7C92:  MOV.W           R2, #0x8000
1A7C96:  IT EQ
1A7C98:  MOVWEQ          R2, #0xB486
1A7C9C:  LSR.W           R0, R2, R0
1A7CA0:  UXTH            R2, R0
1A7CA2:  LSRS            R1, R1, #0x10
1A7CA4:  MULS            R2, R1
1A7CA6:  SMLABT.W        R0, R1, R0, R0
1A7CAA:  MOVW            R1, #0xAFC8
1A7CAE:  ADD.W           R0, R0, R2,LSR#16
1A7CB2:  ADD.W           R0, R0, R0,LSL#1
1A7CB6:  SBFX.W          R0, R0, #0, #0x10
1A7CBA:  MULS            R0, R1
1A7CBC:  MOV             R1, #0xFFFFFF80
1A7CC0:  ADD.W           R0, R1, R0,ASR#16
1A7CC4:  BLX             j_silk_sigm_Q15
1A7CC8:  MOV             R6, R0
1A7CCA:  MOV             R0, R4
1A7CCC:  BLX             j_silk_sigm_Q15
1A7CD0:  MOVW            R1, #0x8000
1A7CD4:  ADD.W           R5, R8, #0x60 ; '`'
1A7CD8:  MOVT            R1, #0xFFFF
1A7CDC:  ADD.W           R0, R1, R0,LSL#1
1A7CE0:  MOVW            R1, #0x1268
1A7CE4:  LDM             R5, {R2,R3,R5}
1A7CE6:  LDR.W           R4, [R8,#0x6C]
1A7CEA:  STR.W           R0, [R8,R1]
1A7CEE:  MOV.W           R0, #0x11E0
1A7CF2:  LDR.W           R1, [R8,R0]
1A7CF6:  LDR.W           R0, [R7,#var_60]
1A7CFA:  ADD.W           R1, R1, R1,LSL#2
1A7CFE:  LDR.W           R12, [R0]
1A7D02:  LDR.W           R0, [R7,#var_5C]
1A7D06:  CMP.W           R12, R1,LSL#2
1A7D0A:  SUB.W           R2, R0, R2
1A7D0E:  LDR.W           R0, [R7,#var_64]
1A7D12:  SUB.W           R3, R0, R3
1A7D16:  LDR.W           R0, [R7,#var_68]
1A7D1A:  MOV.W           R3, R3,ASR#4
1A7D1E:  MOV.W           R3, R3,LSL#1
1A7D22:  ADD.W           R2, R3, R2,ASR#4
1A7D26:  SUB.W           R3, R0, R5
1A7D2A:  LDR.W           R0, [R7,#var_6C]
1A7D2E:  MOV.W           R3, R3,ASR#4
1A7D32:  ADD.W           R3, R3, R3,LSL#1
1A7D36:  ADD             R2, R3
1A7D38:  SUB.W           R3, R0, R4
1A7D3C:  MOV.W           R3, R3,ASR#4
1A7D40:  ADD.W           R2, R2, R3,LSL#2
1A7D44:  MOV.W           R3, #0
1A7D48:  IT EQ
1A7D4A:  MOVEQ           R3, #1
1A7D4C:  ASRS            R2, R3
1A7D4E:  CMP             R2, #0
1A7D50:  BLE             loc_1A7D72
1A7D52:  CMP.W           R2, #0x4000
1A7D56:  BGE             loc_1A7DC8
1A7D58:  LSLS            R3, R2, #0x10
1A7D5A:  CMP             R3, #1
1A7D5C:  BLT             loc_1A7D76
1A7D5E:  CLZ.W           R2, R3
1A7D62:  RSBS.W          R5, R2, #0x18
1A7D66:  BEQ             loc_1A7D88
1A7D68:  CMP.W           R5, #0xFFFFFFFF
1A7D6C:  BLE             loc_1A7D7C
1A7D6E:  RORS            R3, R5
1A7D70:  B               loc_1A7D88
1A7D72:  ASRS            R6, R6, #1
1A7D74:  B               loc_1A7DC8
1A7D76:  MOV.W           R2, #0x8000
1A7D7A:  B               loc_1A7DBC
1A7D7C:  NEGS            R4, R5
1A7D7E:  ADDS            R5, #0x20 ; ' '
1A7D80:  LSL.W           R4, R3, R4
1A7D84:  LSRS            R3, R5
1A7D86:  ORRS            R3, R4
1A7D88:  AND.W           R3, R3, #0x7F
1A7D8C:  MOV.W           R5, #0xD50000
1A7D90:  TST.W           R2, #1
1A7D94:  MOV.W           R2, R2,LSR#1
1A7D98:  MUL.W           R3, R5, R3
1A7D9C:  MOV.W           R5, #0x8000
1A7DA0:  IT EQ
1A7DA2:  MOVWEQ          R5, #0xB486
1A7DA6:  LSR.W           R2, R5, R2
1A7DAA:  UXTH            R5, R2
1A7DAC:  LSRS            R3, R3, #0x10
1A7DAE:  MULS            R5, R3
1A7DB0:  SMLABT.W        R2, R3, R2, R2
1A7DB4:  ADD.W           R2, R2, R5,LSR#16
1A7DB8:  ADD.W           R2, R2, #0x8000
1A7DBC:  SXTH            R3, R6
1A7DBE:  UXTH            R5, R2
1A7DC0:  MULS            R3, R5
1A7DC2:  ASRS            R3, R3, #0x10
1A7DC4:  SMLATB.W        R6, R2, R6, R3
1A7DC8:  ASRS            R2, R6, #7
1A7DCA:  CMP             R2, #0xFF
1A7DCC:  SXTH            R2, R6
1A7DCE:  MOV.W           R3, #0xFF
1A7DD2:  IT LT
1A7DD4:  ASRLT           R3, R6, #7
1A7DD6:  MOVW            R5, #0x11B4
1A7DDA:  MULS            R2, R6
1A7DDC:  STR.W           R3, [R8,R5]
1A7DE0:  LDR.W           R3, [R8,#0x4C]
1A7DE4:  MOVS            R6, #0x14
1A7DE6:  LDR.W           R5, [R7,#var_44]
1A7DEA:  CMP.W           R12, R1,LSL#1
1A7DEE:  IT EQ
1A7DF0:  MOVEQ           R6, #0x15
1A7DF2:  SUBS            R0, R5, R3
1A7DF4:  ASR.W           R4, R2, R6
1A7DF8:  UXTH            R1, R0
1A7DFA:  ASRS            R0, R0, #0x10
1A7DFC:  MULS            R1, R4
1A7DFE:  MLA.W           R0, R0, R4, R3
1A7E02:  ADD.W           R0, R0, R1,ASR#16
1A7E06:  STR.W           R0, [R8,#0x4C]
1A7E0A:  BLX             j_silk_lin2log
1A7E0E:  ADD.W           R0, R0, R0,LSL#1
1A7E12:  SUB.W           R0, R0, #0x1400
1A7E16:  ASRS            R0, R0, #4
1A7E18:  BLX             j_silk_sigm_Q15
1A7E1C:  MOVW            R2, #0x1258
1A7E20:  LDR.W           R1, [R8,#0x50]
1A7E24:  STR.W           R0, [R8,R2]
1A7E28:  LDR.W           R0, [R7,#var_40]
1A7E2C:  SUBS            R0, R0, R1
1A7E2E:  UXTH            R2, R0
1A7E30:  ASRS            R0, R0, #0x10
1A7E32:  MULS            R2, R4
1A7E34:  MLA.W           R0, R0, R4, R1
1A7E38:  ADD.W           R0, R0, R2,ASR#16
1A7E3C:  STR.W           R0, [R8,#0x50]
1A7E40:  BLX             j_silk_lin2log
1A7E44:  ADD.W           R0, R0, R0,LSL#1
1A7E48:  SUB.W           R0, R0, #0x1400
1A7E4C:  ASRS            R0, R0, #4
1A7E4E:  BLX             j_silk_sigm_Q15
1A7E52:  MOVW            R2, #0x125C
1A7E56:  LDR.W           R1, [R8,#0x54]
1A7E5A:  STR.W           R0, [R8,R2]
1A7E5E:  LDR.W           R0, [R7,#var_3C]
1A7E62:  SUBS            R0, R0, R1
1A7E64:  UXTH            R2, R0
1A7E66:  ASRS            R0, R0, #0x10
1A7E68:  MULS            R2, R4
1A7E6A:  MLA.W           R0, R0, R4, R1
1A7E6E:  ADD.W           R0, R0, R2,ASR#16
1A7E72:  STR.W           R0, [R8,#0x54]
1A7E76:  BLX             j_silk_lin2log
1A7E7A:  ADD.W           R0, R0, R0,LSL#1
1A7E7E:  SUB.W           R0, R0, #0x1400
1A7E82:  ASRS            R0, R0, #4
1A7E84:  BLX             j_silk_sigm_Q15
1A7E88:  MOV.W           R2, #0x1260
1A7E8C:  LDR.W           R1, [R8,#0x58]
1A7E90:  STR.W           R0, [R8,R2]
1A7E94:  LDR.W           R0, [R7,#var_38]
1A7E98:  SUBS            R0, R0, R1
1A7E9A:  UXTH            R2, R0
1A7E9C:  ASRS            R0, R0, #0x10
1A7E9E:  MULS            R2, R4
1A7EA0:  MLA.W           R0, R0, R4, R1
1A7EA4:  ADD.W           R0, R0, R2,ASR#16
1A7EA8:  STR.W           R0, [R8,#0x58]
1A7EAC:  BLX             j_silk_lin2log
1A7EB0:  ADD.W           R0, R0, R0,LSL#1
1A7EB4:  SUB.W           R0, R0, #0x1400
1A7EB8:  ASRS            R0, R0, #4
1A7EBA:  BLX             j_silk_sigm_Q15
1A7EBE:  MOVW            R1, #0x1264
1A7EC2:  STR.W           R0, [R8,R1]
1A7EC6:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A7ED0)
1A7EC8:  LDR.W           R1, [R7,#var_24]
1A7ECC:  ADD             R0, PC; __stack_chk_guard_ptr
1A7ECE:  LDR             R0, [R0]; __stack_chk_guard
1A7ED0:  LDR             R0, [R0]
1A7ED2:  SUBS            R0, R0, R1
1A7ED4:  ITTTT EQ
1A7ED6:  MOVEQ           R0, #0
1A7ED8:  SUBEQ.W         R4, R7, #-var_1C
1A7EDC:  MOVEQ           SP, R4
1A7EDE:  POPEQ.W         {R8-R11}
1A7EE2:  IT EQ
1A7EE4:  POPEQ           {R4-R7,PC}
1A7EE6:  BLX             __stack_chk_fail
