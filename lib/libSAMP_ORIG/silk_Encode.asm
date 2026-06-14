; =========================================================
; Game Engine Function: silk_Encode
; Address            : 0xC8450 - 0xC95FA
; =========================================================

C8450:  PUSH            {R4-R7,LR}
C8452:  ADD             R7, SP, #0xC
C8454:  PUSH.W          {R8-R11}
C8458:  SUB             SP, SP, #0x11C
C845A:  MOV             R5, R0
C845C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xC846A)
C8460:  STR.W           R3, [R7,#var_8C]
C8464:  MOV             R8, R2
C8466:  ADD             R0, PC; __stack_chk_guard_ptr
C8468:  LDR             R0, [R0]; __stack_chk_guard
C846A:  LDR             R0, [R0]
C846C:  STR.W           R0, [R7,#var_24]
C8470:  LDR             R0, [R1,#0x44]
C8472:  CBZ             R0, loc_C8482
C8474:  MOVW            R0, #0x33F0
C8478:  MOVS            R2, #1
C847A:  STR             R2, [R5,R0]
C847C:  MOVW            R0, #0x1238
C8480:  STR             R2, [R5,R0]
C8482:  MOVW            R0, #0x1674
C8486:  MOVS            R6, #0
C8488:  STR             R6, [R5,R0]
C848A:  MOVW            R0, #0x382C
C848E:  MOV             R4, R1
C8490:  STR             R6, [R5,R0]
C8492:  MOV             R0, R1
C8494:  BLX             j_check_control_input
C8498:  CBZ             R0, loc_C84BC
C849A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xC84A6)
C849E:  LDR.W           R2, [R7,#var_24]
C84A2:  ADD             R1, PC; __stack_chk_guard_ptr
C84A4:  LDR             R1, [R1]; __stack_chk_guard
C84A6:  LDR             R1, [R1]
C84A8:  SUBS            R1, R1, R2
C84AA:  ITTTT EQ
C84AC:  SUBEQ.W         R4, R7, #-var_1C
C84B0:  MOVEQ           SP, R4
C84B2:  POPEQ.W         {R8-R11}
C84B6:  POPEQ           {R4-R7,PC}
C84B8:  BLX             __stack_chk_fail
C84BC:  MOVW            R0, #0x21B8
C84C0:  STR.W           R8, [R7,#var_84]
C84C4:  ADD.W           R8, R5, R0
C84C8:  STR             R6, [R4,#0x58]
C84CA:  MOVW            R0, #0x43B4
C84CE:  LDR             R1, [R4,#4]
C84D0:  LDR             R2, [R5,R0]
C84D2:  ADD.W           R9, R5, R0
C84D6:  MOV             R3, R4
C84D8:  CMP             R1, R2
C84DA:  MOV             R4, R5
C84DC:  MOV.W           R10, #0
C84E0:  STR.W           R3, [R7,#var_40]
C84E4:  BLE             loc_C8550
C84E6:  MOVW            R0, #0x13E4
C84EA:  LDR             R1, [R4,R0]
C84EC:  MOV             R0, R8
C84EE:  BLX             j_silk_init_encoder
C84F2:  MOV             R10, R0
C84F4:  MOVW            R0, #0x4370
C84F8:  MOVS            R1, #0
C84FA:  MOVS            R2, #1
C84FC:  STR             R1, [R4,R0]
C84FE:  MOVW            R0, #0x4378
C8502:  STR             R1, [R4,R0]
C8504:  MOVW            R0, #0x437C
C8508:  STR             R1, [R4,R0]
C850A:  MOV.W           R0, #0x4380
C850E:  STR             R2, [R4,R0]
C8510:  MOVW            R0, #0x4384
C8514:  STR             R1, [R4,R0]
C8516:  MOVW            R0, #0x4388
C851A:  MOVW            R1, #0x43B0
C851E:  STR             R2, [R4,R0]
C8520:  MOVW            R0, #0x438C
C8524:  MOV.W           R2, #0x4000
C8528:  LDR             R1, [R4,R1]
C852A:  STR             R2, [R4,R0]
C852C:  CMP             R1, #2
C852E:  BNE             loc_C854C
C8530:  MOVW            R0, #0x3848
C8534:  MOVW            R1, #0x1690
C8538:  ADD             R0, R4; dest
C853A:  ADD             R1, R4; src
C853C:  MOV.W           R2, #0x12C; n
C8540:  BLX             j_memcpy
C8544:  LDRD.W          R0, R1, [R4]
C8548:  STRD.W          R0, R1, [R8]
C854C:  LDR.W           R3, [R7,#var_40]
C8550:  MOV             R1, R4
C8552:  STR.W           R8, [R7,#var_E8]
C8556:  STR.W           R1, [R7,#var_7C]
C855A:  MOVW            R0, #0x1204
C855E:  LDR             R0, [R4,R0]
C8560:  LDR.W           R8, [R3,#0x18]
C8564:  CMP             R8, R0
C8566:  BNE             loc_C857C
C8568:  LDR             R4, [R3,#4]
C856A:  MOVS            R1, #0
C856C:  LDR.W           R0, [R9]
C8570:  CMP             R0, R4
C8572:  IT NE
C8574:  MOVNE           R1, #1
C8576:  STR.W           R1, [R7,#var_44]
C857A:  B               loc_C8584
C857C:  MOVS            R0, #1
C857E:  LDR             R4, [R3,#4]
C8580:  STR.W           R0, [R7,#var_44]
C8584:  LDR.W           R6, [R7,#var_8C]
C8588:  MOVS            R0, #0x64 ; 'd'
C858A:  MOVW            R1, #0x43B0
C858E:  LDR             R2, [R3]
C8590:  MUL.W           R11, R6, R0
C8594:  LDR.W           R0, [R7,#var_7C]
C8598:  STR             R2, [R0,R1]
C859A:  STR.W           R4, [R9]
C859E:  LDR             R5, [R3,#8]
C85A0:  MOV             R0, R11
C85A2:  MOV             R1, R5
C85A4:  BLX             sub_108848
C85A8:  MOV             R3, R0
C85AA:  MOVS            R0, #1
C85AC:  CMP             R3, #1
C85AE:  IT GT
C85B0:  ASRGT           R0, R3, #1
C85B2:  STR.W           R0, [R7,#var_64]
C85B6:  LDR             R0, [R7,#arg_8]
C85B8:  CBZ             R0, loc_C8630
C85BA:  CMP             R3, #1
C85BC:  BNE             loc_C8656
C85BE:  LDR             R0, [R7,#arg_8]
C85C0:  STR.W           R3, [R7,#var_48]
C85C4:  CMP             R0, #2
C85C6:  BNE             loc_C85E4
C85C8:  LDR.W           R0, [R7,#var_7C]
C85CC:  SUB.W           R12, R7, #-var_38
C85D0:  MOV             R6, R0
C85D2:  ADD.W           R3, R6, #0x10
C85D6:  LDM             R3, {R0-R3}
C85D8:  STM.W           R12, {R0-R3}
C85DC:  MOV.W           R0, #0x11E0
C85E0:  LDR.W           R8, [R6,R0]
C85E4:  LDR.W           R1, [R7,#var_40]
C85E8:  CMP             R4, #0
C85EA:  BLE             loc_C865C
C85EC:  LDR             R0, [R7,#arg_8]
C85EE:  MOVS            R6, #0
C85F0:  CMP             R0, #2
C85F2:  BNE             loc_C867A
C85F4:  LDR.W           R5, [R7,#var_7C]
C85F8:  MOVW            R9, #0x13E4
C85FC:  MOVW            R11, #0x21B8
C8600:  LDR.W           R1, [R5,R9]
C8604:  MOV             R0, R5
C8606:  BLX             j_silk_init_encoder
C860A:  LDR.W           R1, [R7,#var_40]
C860E:  MOV             R10, R0
C8610:  LDRD.W          R0, R4, [R7,#var_38]
C8614:  ADDS            R6, #1
C8616:  LDRD.W          R2, R3, [R7,#var_30]
C861A:  STRD.W          R0, R4, [R5,#0x10]
C861E:  ADD.W           R0, R5, #0x18
C8622:  STM.W           R0, {R2,R3,R8}
C8626:  ADD             R5, R11
C8628:  LDR             R4, [R1,#4]
C862A:  CMP             R6, R4
C862C:  BLT             loc_C8600
C862E:  B               loc_C86A0
C8630:  MOV             R0, #0xFFFFFF9B
C8634:  CMP             R6, #0
C8636:  BLT.W           loc_C849A
C863A:  MUL.W           R1, R3, R5
C863E:  CMP             R1, R11
C8640:  BNE.W           loc_C849A
C8644:  LDR.W           R2, [R7,#var_8C]
C8648:  MOV.W           R1, #0x3E8
C864C:  MUL.W           R0, R8, R5
C8650:  MULS            R1, R2
C8652:  CMP             R1, R0
C8654:  BLE             loc_C86E4
C8656:  MOV             R0, #0xFFFFFF9B
C865A:  B               loc_C849A
C865C:  SUB.W           LR, R7, #-var_100
C8660:  LDR             R2, [R1,#0x18]
C8662:  MOVS            R0, #0xA
C8664:  STR.W           R2, [LR,#-0x34]
C8668:  SUB.W           LR, R7, #-var_100
C866C:  LDR             R2, [R1,#0x24]
C866E:  STR.W           R2, [LR,#-0x30]
C8672:  STR             R0, [R1,#0x18]
C8674:  MOVS            R0, #0
C8676:  STR             R0, [R1,#0x24]
C8678:  B               loc_C8700
C867A:  LDR.W           R5, [R7,#var_7C]
C867E:  MOVW            R8, #0x13E4
C8682:  MOVW            R9, #0x21B8
C8686:  LDR.W           R1, [R5,R8]
C868A:  MOV             R0, R5
C868C:  BLX             j_silk_init_encoder
C8690:  LDR.W           R1, [R7,#var_40]
C8694:  ADD             R5, R9
C8696:  ADDS            R6, #1
C8698:  MOV             R10, R0
C869A:  LDR             R4, [R1,#4]
C869C:  CMP             R6, R4
C869E:  BLT             loc_C8686
C86A0:  SUB.W           LR, R7, #-var_100
C86A4:  LDR             R2, [R1,#0x18]
C86A6:  MOVS            R0, #0xA
C86A8:  CMP             R4, #1
C86AA:  STR.W           R2, [LR,#-0x34]
C86AE:  SUB.W           LR, R7, #-var_100
C86B2:  LDR             R2, [R1,#0x24]
C86B4:  STR.W           R2, [LR,#-0x30]
C86B8:  STR             R0, [R1,#0x18]
C86BA:  MOV.W           R0, #0
C86BE:  STR             R0, [R1,#0x24]
C86C0:  LDR.W           R8, [R7,#var_7C]
C86C4:  BLT             loc_C8704
C86C6:  MOVW            R2, #0x123C
C86CA:  ADD.W           R5, R8, R2
C86CE:  MOVS            R2, #1
C86D0:  MOVW            R3, #0x21B8
C86D4:  MOVS            R6, #0
C86D6:  STR             R2, [R5,#0xC]
C86D8:  ADDS            R6, #1
C86DA:  STR             R0, [R5]
C86DC:  ADD             R5, R3
C86DE:  CMP             R6, R4
C86E0:  BLT             loc_C86D6
C86E2:  B               loc_C8704
C86E4:  SUB.W           LR, R7, #-var_100
C86E8:  MOVS            R0, #0
C86EA:  LDR.W           R1, [R7,#var_40]
C86EE:  STR.W           R0, [LR,#-0x30]
C86F2:  SUB.W           LR, R7, #-var_100
C86F6:  MOVS            R0, #0
C86F8:  STR.W           R3, [R7,#var_48]
C86FC:  STR.W           R0, [LR,#-0x34]
C8700:  LDR.W           R8, [R7,#var_7C]
C8704:  MOVW            R0, #0x1670
C8708:  CMP             R4, #1
C870A:  ADD             R0, R8
C870C:  STR.W           R0, [R7,#var_68]
C8710:  MOVW            R0, #0x43C0
C8714:  ADD             R0, R8
C8716:  STR.W           R0, [R7,#var_90]
C871A:  ADD.W           R0, R8, #0x11E0
C871E:  STR.W           R0, [R7,#var_9C]
C8722:  BLT.W           loc_C882C
C8726:  LDR.W           R0, [R7,#var_44]
C872A:  CBZ             R0, loc_C87A6
C872C:  MOVW            R0, #0x1274
C8730:  ADD.W           R4, R8, R0
C8734:  MOVS            R6, #0
C8736:  MOVW            R9, #0x21B8
C873A:  MOVW            R10, #0x17BC
C873E:  MOV.W           R11, #0x17C0
C8742:  MOVS            R5, #0
C8744:  MLA.W           R8, R5, R9, R8
C8748:  CMP             R5, #1
C874A:  ITTE EQ
C874C:  LDREQ.W         R0, [R7,#var_9C]
C8750:  LDREQ           R0, [R0]
C8752:  MOVNE           R0, #0
C8754:  LDR.W           R2, [R7,#var_90]
C8758:  LDR             R2, [R2]
C875A:  SUB             SP, SP, #8
C875C:  STR             R0, [SP,#0x140+var_140]
C875E:  MOV             R0, R8
C8760:  MOV             R3, R5
C8762:  BLX             j_silk_control_encoder
C8766:  ADD             SP, SP, #8
C8768:  CMP             R0, #0
C876A:  BNE.W           loc_C849A
C876E:  LDR.W           R2, [R7,#var_68]
C8772:  LDR             R0, [R2]
C8774:  CMP             R0, #1
C8776:  BLT             loc_C8786
C8778:  MOVS            R0, #0
C877A:  STR.W           R6, [R4,R0,LSL#2]
C877E:  ADDS            R0, #1
C8780:  LDR             R1, [R2]
C8782:  CMP             R0, R1
C8784:  BLT             loc_C877A
C8786:  LDR.W           R0, [R8,R10]
C878A:  ADD             R4, R9
C878C:  STR.W           R0, [R8,R11]
C8790:  ADDS            R5, #1
C8792:  LDR.W           R1, [R7,#var_40]
C8796:  LDR.W           R8, [R7,#var_7C]
C879A:  LDR             R0, [R1,#4]
C879C:  CMP             R5, R0
C879E:  BLT             loc_C8744
C87A0:  MOV.W           R10, #0
C87A4:  B               loc_C882C
C87A6:  MOVW            R0, #0x1274
C87AA:  ADD.W           R4, R8, R0
C87AE:  MOV.W           R10, #0
C87B2:  MOVW            R11, #0x21B8
C87B6:  MOVW            R8, #0x17BC
C87BA:  MOV.W           R9, #0x17C0
C87BE:  MOVS            R5, #0
C87C0:  CMP             R5, #1
C87C2:  ITTE EQ
C87C4:  LDREQ.W         R0, [R7,#var_9C]
C87C8:  LDREQ           R0, [R0]
C87CA:  MOVNE           R0, #0
C87CC:  LDR.W           R2, [R7,#var_7C]
C87D0:  MLA.W           R6, R5, R11, R2
C87D4:  LDR.W           R2, [R7,#var_90]
C87D8:  LDR             R2, [R2]
C87DA:  SUB             SP, SP, #8
C87DC:  STR             R0, [SP,#0x140+var_140]
C87DE:  MOV             R0, R6
C87E0:  MOV             R3, R5
C87E2:  BLX             j_silk_control_encoder
C87E6:  ADD             SP, SP, #8
C87E8:  CMP             R0, #0
C87EA:  BNE.W           loc_C849A
C87EE:  MOVW            R0, #0x1238
C87F2:  LDR.W           R2, [R7,#var_68]
C87F6:  LDR             R0, [R6,R0]
C87F8:  CBZ             R0, loc_C880E
C87FA:  LDR             R0, [R2]
C87FC:  CMP             R0, #1
C87FE:  BLT             loc_C880E
C8800:  MOVS            R0, #0
C8802:  STR.W           R10, [R4,R0,LSL#2]
C8806:  ADDS            R0, #1
C8808:  LDR             R1, [R2]
C880A:  CMP             R0, R1
C880C:  BLT             loc_C8802
C880E:  LDR.W           R0, [R6,R8]
C8812:  ADD             R4, R11
C8814:  STR.W           R0, [R6,R9]
C8818:  ADDS            R5, #1
C881A:  LDR.W           R1, [R7,#var_40]
C881E:  LDR             R0, [R1,#4]
C8820:  CMP             R5, R0
C8822:  BLT             loc_C87C0
C8824:  MOV.W           R10, #0
C8828:  LDR.W           R8, [R7,#var_7C]
C882C:  MOVW            R0, #0x1674
C8830:  SUB.W           R9, R7, #-var_100
C8834:  ADD             R0, R8
C8836:  STR.W           R0, [R7,#var_60]
C883A:  LDR.W           R0, [R7,#var_9C]
C883E:  MOVW            R6, #0x11CC
C8842:  MOV.W           R1, #0x3E8
C8846:  MOV             R11, R10
C8848:  LDR             R4, [R0]
C884A:  LDR.W           R0, [R7,#var_48]
C884E:  MULS            R1, R4
C8850:  ADD.W           R0, R0, R0,LSL#2
C8854:  LSLS            R0, R0, #1
C8856:  STR.W           R0, [R9]
C885A:  MULS            R0, R4
C885C:  LDR.W           R5, [R8,R6]
C8860:  STR.W           R0, [R7,#var_B8]
C8864:  MULS            R0, R5
C8866:  BLX             sub_108848
C886A:  MOVS            R1, #7
C886C:  ADD.W           R0, R1, R0,LSL#1
C8870:  BIC.W           R0, R0, #7
C8874:  SUB.W           LR, R7, #-var_100
C8878:  SUB.W           R1, SP, R0
C887C:  MOVW            R0, #0x1270
C8880:  ADD             R0, R8
C8882:  STR.W           R0, [R7,#var_FC]
C8886:  MOVW            R0, #0x1274
C888A:  MOV.W           R9, #0
C888E:  ADD             R0, R8
C8890:  STR.W           R0, [R7,#var_DC]
C8894:  MOVW            R0, #0x4374
C8898:  STR.W           R1, [R7,#var_AC]
C889C:  ADD             R0, R8
C889E:  STR.W           R0, [R7,#var_C8]
C88A2:  MOVW            R0, #0x3978
C88A6:  ADD             R0, R8
C88A8:  STR.W           R0, [LR,#-0xC]
C88AC:  MOVW            R0, #0x43BC
C88B0:  SUB.W           LR, R7, #-var_100
C88B4:  ADD             R0, R8
C88B6:  STR.W           R0, [R7,#var_EC]
C88BA:  MOVW            R0, #0x3428
C88BE:  ADD             R0, R8
C88C0:  STR.W           R0, [R7,#var_CC]
C88C4:  MOVW            R0, #0x33F0
C88C8:  ADD             R0, R8
C88CA:  STR.W           R0, [LR,#-0x10]
C88CE:  MOVW            R0, #0x3344
C88D2:  SUB.W           LR, R7, #-var_100
C88D6:  ADD             R0, R8
C88D8:  STR.W           R0, [LR,#-0x14]
C88DC:  MOVW            R0, #0x3375
C88E0:  SUB.W           LR, R7, #-var_100
C88E4:  ADD             R0, R8
C88E6:  STR.W           R0, [LR,#-0x18]
C88EA:  MOVW            R0, #0x3334
C88EE:  SUB.W           LR, R7, #-var_100
C88F2:  ADD             R0, R8
C88F4:  STR.W           R0, [LR,#-0x1C]
C88F8:  MOVW            R0, #0x3378
C88FC:  SUB.W           LR, R7, #-var_100
C8900:  ADD             R0, R8
C8902:  STR.W           R0, [LR,#-0x20]
C8906:  MOVW            R0, #0x21C8
C890A:  SUB.W           LR, R7, #-var_100
C890E:  ADD             R0, R8
C8910:  STR.W           R0, [LR,#-0x24]
C8914:  MOVW            R0, #0x224C
C8918:  SUB.W           LR, R7, #-var_100
C891C:  ADD             R0, R8
C891E:  STR.W           R0, [LR,#-0x28]
C8922:  MOVW            R0, #0x3DB8
C8926:  SUB.W           LR, R7, #-var_100
C892A:  ADD             R0, R8
C892C:  STR.W           R0, [LR,#-0x2C]
C8930:  MOVW            R0, #0x43C4
C8934:  ADD             R0, R8
C8936:  STR.W           R0, [R7,#var_70]
C893A:  MOVW            R0, #0x11B4
C893E:  SUB.W           LR, R7, #-var_100
C8942:  ADD             R0, R8
C8944:  STR.W           R0, [R7,#var_C4]
C8948:  MOVW            R0, #0x35A4
C894C:  ADD             R0, R8
C894E:  STR.W           R0, [R7,#var_D0]
C8952:  MOVW            R0, #0x13EC
C8956:  ADD             R0, R8
C8958:  STR.W           R0, [R7,#var_D4]
C895C:  MOVW            R0, #0x4370
C8960:  ADD             R0, R8
C8962:  STR.W           R0, [R7,#var_D8]
C8966:  MOVW            R0, #0x43AC
C896A:  ADD             R0, R8
C896C:  STR.W           R0, [R7,#var_B0]
C8970:  MOVW            R0, #0x43A8
C8974:  ADD             R0, R8
C8976:  STR.W           R0, [R7,#var_BC]
C897A:  MOVW            R0, #0x43A4
C897E:  ADD             R0, R8
C8980:  STR.W           R0, [R7,#var_5C]
C8984:  MOVW            R0, #0x342C
C8988:  ADD             R0, R8
C898A:  STR.W           R0, [R7,#var_50]
C898E:  MOVW            R0, #0x4392
C8992:  ADD             R0, R8
C8994:  STR.W           R0, [R7,#var_6C]
C8998:  MOVW            R0, #0x35A0
C899C:  ADD             R0, R8
C899E:  STR.W           R0, [R7,#var_F8]
C89A2:  MOVW            R0, #0x3398
C89A6:  ADD             R0, R8
C89A8:  STR.W           R0, [LR,#-4]
C89AC:  MOVW            R0, #0x3824
C89B0:  SUB.W           LR, R7, #-var_100
C89B4:  ADD             R0, R8
C89B6:  STR.W           R0, [R7,#var_E0]
C89BA:  MOVW            R0, #0x33A0
C89BE:  ADD             R0, R8
C89C0:  STR.W           R0, [LR,#-8]
C89C4:  MOVW            R0, #0x13E8
C89C8:  ADD             R0, R8
C89CA:  STR.W           R0, [R7,#var_A0]
C89CE:  MOVW            R0, #0x1690
C89D2:  ADD             R0, R8
C89D4:  STR.W           R0, [R7,#src]
C89D8:  MOVW            R0, #0x3848
C89DC:  ADD             R0, R8
C89DE:  STR.W           R0, [R7,#dest]
C89E2:  MOVW            R0, #0x43B8
C89E6:  ADD             R0, R8
C89E8:  STR.W           R0, [R7,#var_E4]
C89EC:  MOVW            R0, #0x166C
C89F0:  ADD.W           R2, R8, R0
C89F4:  MOVW            R0, #0x11E8
C89F8:  ADD.W           R3, R8, R0
C89FC:  ADD.W           R0, R8, R6
C8A00:  STR.W           R0, [R7,#var_C0]
C8A04:  ADD.W           R0, R8, #0x1840
C8A08:  STR.W           R0, [R7,#var_78]
C8A0C:  ADD.W           R0, R8, #0x17C0
C8A10:  STR.W           R0, [R7,#var_F0]
C8A14:  LDR.W           R0, [R7,#var_64]
C8A18:  LSLS            R6, R0, #1
C8A1A:  SUBS            R0, #1
C8A1C:  STR.W           R6, [R7,#var_74]
C8A20:  STR.W           R0, [R7,#var_58]
C8A24:  MOV             SP, R1
C8A26:  LDR.W           R0, =(silk_LBRR_flags_iCDF_ptr_ptr - 0xC8A32)
C8A2A:  STR.W           R2, [R7,#var_98]
C8A2E:  ADD             R0, PC; silk_LBRR_flags_iCDF_ptr_ptr
C8A30:  STR.W           R3, [R7,#var_88]
C8A34:  LDR             R0, [R0]; silk_LBRR_flags_iCDF_ptr
C8A36:  STR.W           R0, [R7,#var_94]
C8A3A:  MOVS            R0, #0
C8A3C:  STR.W           R0, [R7,#var_54]
C8A40:  B               loc_C8B3C
C8A42:  MOVS            R1, #0
C8A44:  LDR             R0, [R7,#arg_8]
C8A46:  CBNZ            R0, loc_C8A5A
C8A48:  ADD.W           R0, R12, #1
C8A4C:  MUL.W           R2, R0, R9
C8A50:  LDR             R0, [R7,#arg_0]
C8A52:  BLX             j_ec_enc_patch_initial_bits
C8A56:  LDR.W           LR, [R7,#var_40]
C8A5A:  LDR.W           R0, [R7,#var_F0]
C8A5E:  MOVS            R4, #0
C8A60:  LDR             R0, [R0]
C8A62:  CBZ             R0, loc_C8A7C
C8A64:  LDR.W           R0, [LR,#4]
C8A68:  CMP             R0, #1
C8A6A:  BEQ             loc_C8A78
C8A6C:  SUB.W           R1, R7, #-var_100
C8A70:  LDR.W           R0, [R1,#-0xC]
C8A74:  LDR             R0, [R0]
C8A76:  CBZ             R0, loc_C8A7C
C8A78:  LDR             R0, [R7,#arg_4]
C8A7A:  STR             R4, [R0]
C8A7C:  LDRD.W          R0, R1, [LR,#0x18]
C8A80:  MOV             R2, #0x10624DD3
C8A88:  LDR.W           R3, [R7,#var_B0]
C8A8C:  MULS            R1, R0
C8A8E:  MOV             R5, R3
C8A90:  LDR             R3, [R5]
C8A92:  SMMUL.W         R1, R1, R2
C8A96:  LDR             R2, [R7,#arg_4]
C8A98:  LDR             R2, [R2]
C8A9A:  ASRS            R6, R1, #6
C8A9C:  ADD.W           R2, R3, R2,LSL#3
C8AA0:  ADD.W           R1, R6, R1,LSR#31
C8AA4:  MOVW            R3, #0xC74
C8AA8:  SUBS            R1, R2, R1
C8AAA:  MOVW            R2, #0x2710
C8AAE:  CMP             R1, #0
C8AB0:  IT LE
C8AB2:  MOVLE           R1, R4
C8AB4:  CMP             R1, R2
C8AB6:  IT GE
C8AB8:  MOVGE           R1, R2
C8ABA:  STR             R1, [R5]
C8ABC:  MOVS            R5, #0xD
C8ABE:  LDR.W           R6, [R7,#var_EC]
C8AC2:  LDR             R1, [R6]
C8AC4:  SXTH            R2, R1
C8AC6:  SMULBB.W        R2, R2, R3
C8ACA:  LDR.W           R3, [R7,#var_C4]
C8ACE:  LDR             R3, [R3]
C8AD0:  ADD.W           R2, R5, R2,ASR#16
C8AD4:  CMP             R3, R2
C8AD6:  BGE             loc_C8AE4
C8AD8:  LDR.W           R0, [R7,#var_90]
C8ADC:  MOVS            R1, #1
C8ADE:  STR             R1, [R0]
C8AE0:  STR             R4, [R6]
C8AE2:  B               loc_C8AEE
C8AE4:  LDR.W           R2, [R7,#var_90]
C8AE8:  ADD             R0, R1
C8AEA:  STR             R4, [R2]
C8AEC:  STR             R0, [R6]
C8AEE:  LDR.W           R6, [R7,#var_54]
C8AF2:  MOV             R0, R10
C8AF4:  CBNZ            R0, loc_C8B04
C8AF6:  B.W             loc_C953A
C8AFA:  LDR.W           R3, [R7,#var_98]
C8AFE:  LDR.W           LR, [R7,#var_40]
C8B02:  B               loc_C8C8A
C8B04:  STR.W           R0, [R7,#var_8C]
C8B08:  ADDS            R6, #1
C8B0A:  LDR.W           R0, [R7,#var_80]
C8B0E:  MOV.W           R9, #0
C8B12:  LDR.W           R1, [R7,#var_A8]
C8B16:  LDR.W           R2, [R7,#var_98]
C8B1A:  LDR.W           R3, [R7,#var_88]
C8B1E:  MULS            R0, R1
C8B20:  LDR.W           R1, [R7,#var_84]
C8B24:  ADD.W           R1, R1, R0,LSL#1
C8B28:  LDR.W           R0, [R7,#var_9C]
C8B2C:  STR.W           R1, [R7,#var_84]
C8B30:  LDR             R4, [R0]
C8B32:  LDR.W           R0, [R7,#var_C0]
C8B36:  LDR             R5, [R0]
C8B38:  STR.W           R6, [R7,#var_54]
C8B3C:  LDR.W           R10, [R2]
C8B40:  MOV.W           R1, #0x3E8
C8B44:  LDR             R0, [R3]
C8B46:  MULS            R1, R4
C8B48:  SUB.W           R4, R0, R10
C8B4C:  LDR.W           R0, [R7,#var_B8]
C8B50:  CMP             R4, R0
C8B52:  IT GE
C8B54:  MOVGE           R4, R0
C8B56:  MUL.W           R0, R4, R5
C8B5A:  BLX             sub_108848
C8B5E:  LDR.W           R1, [R7,#var_40]
C8B62:  MOV             R6, R0
C8B64:  LDR             R0, [R1]
C8B66:  STR.W           R6, [R7,#var_80]
C8B6A:  CMP             R0, #2
C8B6C:  BNE             loc_C8C58
C8B6E:  LDR             R0, [R1,#4]
C8B70:  CMP             R0, #1
C8B72:  BEQ.W           loc_C8D76
C8B76:  CMP             R0, #2
C8B78:  BNE             loc_C8C58
C8B7A:  LDR.W           R0, [R7,#var_60]
C8B7E:  CMP             R6, #1
C8B80:  LDR             R0, [R0]
C8B82:  BLT             loc_C8B9A
C8B84:  LDR.W           R1, [R7,#var_84]
C8B88:  MOV             R2, R6
C8B8A:  LDR.W           R3, [R7,#var_AC]
C8B8E:  LDRH.W          R5, [R1],#4
C8B92:  SUBS            R2, #1
C8B94:  STRH.W          R5, [R3],#2
C8B98:  BNE             loc_C8B8E
C8B9A:  CMP             R0, #0
C8B9C:  ITTT EQ
C8B9E:  LDREQ.W         R0, [R7,#var_E4]
C8BA2:  LDREQ           R0, [R0]
C8BA4:  CMPEQ           R0, #1
C8BA6:  BNE             loc_C8BBC
C8BA8:  LDR.W           R0, [R7,#dest]; dest
C8BAC:  MOV.W           R2, #0x12C; n
C8BB0:  LDR.W           R1, [R7,#src]; src
C8BB4:  BLX             j_memcpy
C8BB8:  LDR.W           R6, [R7,#var_80]
C8BBC:  LDR.W           R0, [R7,#var_A0]
C8BC0:  MOV             R3, R6
C8BC2:  LDR.W           R2, [R7,#var_AC]; src
C8BC6:  ADD.W           R0, R0, R10,LSL#1
C8BCA:  ADDS            R1, R0, #4; int
C8BCC:  LDR.W           R0, [R7,#src]; int
C8BD0:  BLX             j_silk_resampler
C8BD4:  LDR.W           R2, [R7,#var_98]
C8BD8:  SUB.W           LR, R7, #-var_100
C8BDC:  LDR.W           R3, [R7,#var_80]
C8BE0:  ADD.W           R10, R0, R11
C8BE4:  LDR             R1, [R2]
C8BE6:  ADD             R1, R4
C8BE8:  STR             R1, [R2]
C8BEA:  LDR.W           R1, [LR,#-4]
C8BEE:  SUB.W           LR, R7, #-var_100
C8BF2:  LDR.W           R2, [LR]
C8BF6:  SUB.W           LR, R7, #-var_100
C8BFA:  LDR             R1, [R1]
C8BFC:  MUL.W           R4, R1, R2
C8C00:  LDR.W           R1, [R7,#var_E0]
C8C04:  LDR.W           R2, [LR,#-8]
C8C08:  LDR             R1, [R1]
C8C0A:  LDR             R2, [R2]
C8C0C:  SUBS            R2, R2, R1
C8C0E:  CMP             R2, R4
C8C10:  IT LT
C8C12:  MOVLT           R4, R2
C8C14:  CMP             R3, #1
C8C16:  BLT             loc_C8C30
C8C18:  LDR.W           R0, [R7,#var_84]
C8C1C:  MOV             R2, R3
C8C1E:  LDR.W           R5, [R7,#var_AC]
C8C22:  ADDS            R0, #2
C8C24:  LDRH.W          R6, [R0],#4
C8C28:  SUBS            R2, #1
C8C2A:  STRH.W          R6, [R5],#2
C8C2E:  BNE             loc_C8C24
C8C30:  LDR.W           R0, [R7,#var_F8]
C8C34:  LDR.W           R2, [R7,#var_AC]; src
C8C38:  ADD.W           R0, R0, R1,LSL#1
C8C3C:  ADDS            R1, R0, #4; int
C8C3E:  LDR.W           R0, [R7,#dest]; int
C8C42:  BLX             j_silk_resampler
C8C46:  ADD.W           R6, R10, R0
C8C4A:  LDR.W           R0, [R7,#var_E0]
C8C4E:  LDR.W           LR, [R7,#var_40]
C8C52:  LDR.W           R3, [R7,#var_98]
C8C56:  B               loc_C8C8C
C8C58:  LDR.W           R5, [R7,#var_AC]
C8C5C:  LSLS            R2, R6, #1; n
C8C5E:  LDR.W           R1, [R7,#var_84]; src
C8C62:  MOV             R0, R5; dest
C8C64:  BLX             j_memcpy
C8C68:  LDR.W           R0, [R7,#var_A0]
C8C6C:  MOV             R2, R5; src
C8C6E:  MOV             R3, R6
C8C70:  ADD.W           R0, R0, R10,LSL#1
C8C74:  ADDS            R1, R0, #4; int
C8C76:  LDR.W           R0, [R7,#src]; int
C8C7A:  BLX             j_silk_resampler
C8C7E:  MOV             R6, R11
C8C80:  LDR.W           LR, [R7,#var_40]
C8C84:  LDR.W           R3, [R7,#var_98]
C8C88:  ADD             R6, R0
C8C8A:  MOV             R0, R3
C8C8C:  LDR             R1, [R0]
C8C8E:  MOVS            R2, #0
C8C90:  ADD             R1, R4
C8C92:  STR             R1, [R0]
C8C94:  LDR.W           R0, [R7,#var_90]
C8C98:  LDR.W           R5, [LR]
C8C9C:  STR             R2, [R0]
C8C9E:  LDR.W           R0, [R7,#var_88]
C8CA2:  LDR             R1, [R3]
C8CA4:  LDR             R0, [R0]
C8CA6:  CMP             R1, R0
C8CA8:  BLT.W           loc_C9536
C8CAC:  STRD.W          R5, R6, [R7,#var_A8]
C8CB0:  LDR.W           R0, [R7,#var_60]
C8CB4:  LDR             R6, [R7,#arg_8]
C8CB6:  LDR             R0, [R0]
C8CB8:  ORRS            R0, R6
C8CBA:  BNE.W           loc_C905A
C8CBE:  LDR.W           R0, [R7,#var_68]
C8CC2:  SUB.W           R2, R7, #-var_3A
C8CC6:  STRH.W          R9, [R7,#var_3A]
C8CCA:  MOVS            R3, #8
C8CCC:  LDR.W           R1, [LR,#4]
C8CD0:  LDR             R0, [R0]
C8CD2:  ADDS            R0, #1
C8CD4:  MULS            R0, R1
C8CD6:  MOV.W           R1, #0x100
C8CDA:  LSR.W           R0, R1, R0
C8CDE:  MOVS            R1, #0
C8CE0:  NEGS            R0, R0
C8CE2:  STRB.W          R0, [R7,#var_3A]
C8CE6:  LDR             R0, [R7,#arg_0]
C8CE8:  BLX             j_ec_enc_icdf
C8CEC:  LDR.W           LR, [R7,#var_40]
C8CF0:  LDR.W           R0, [LR,#4]
C8CF4:  CMP             R0, #1
C8CF6:  BLT.W           loc_C8E58
C8CFA:  LDR.W           R5, [R7,#var_DC]
C8CFE:  MOVS            R4, #0
C8D00:  MOVW            R9, #0x1670
C8D04:  MOVW            R1, #0x21B8
C8D08:  MLA.W           R12, R4, R1, R8
C8D0C:  LDR.W           R1, [R12,R9]
C8D10:  CMP             R1, #1
C8D12:  BLT             loc_C8D5E
C8D14:  MOVS            R6, #0
C8D16:  MOVS            R3, #0
C8D18:  LDR.W           R2, [R5,R6,LSL#2]
C8D1C:  LSLS            R2, R6
C8D1E:  ADDS            R6, #1
C8D20:  ORRS            R3, R2
C8D22:  CMP             R6, R1
C8D24:  BLT             loc_C8D18
C8D26:  CMP             R3, #0
C8D28:  MOV.W           R2, #0
C8D2C:  IT GT
C8D2E:  MOVGT           R2, #1
C8D30:  MOVW            R6, #0x1273
C8D34:  STRB.W          R2, [R12,R6]
C8D38:  BEQ             loc_C8D68
C8D3A:  CMP             R1, #2
C8D3C:  BLT             loc_C8D68
C8D3E:  LDR.W           R0, [R7,#var_94]
C8D42:  ADD.W           R0, R0, R1,LSL#2
C8D46:  SUBS            R1, R3, #1
C8D48:  MOVS            R3, #8
C8D4A:  LDR.W           R2, [R0,#-8]
C8D4E:  LDR             R0, [R7,#arg_0]
C8D50:  BLX             j_ec_enc_icdf
C8D54:  LDR.W           LR, [R7,#var_40]
C8D58:  LDR.W           R0, [LR,#4]
C8D5C:  B               loc_C8D68
C8D5E:  MOVS            R1, #0
C8D60:  MOVW            R2, #0x1273
C8D64:  STRB.W          R1, [R12,R2]
C8D68:  MOVW            R3, #0x21B8
C8D6C:  ADDS            R4, #1
C8D6E:  ADD             R5, R3
C8D70:  CMP             R4, R0
C8D72:  BLT             loc_C8D04
C8D74:  B               loc_C8E5C
C8D76:  CMP             R6, #1
C8D78:  BLT             loc_C8DA4
C8D7A:  LDR.W           R0, [R7,#var_84]
C8D7E:  MOV             R1, R6
C8D80:  LDR.W           R2, [R7,#var_AC]
C8D84:  ADDS            R0, #2
C8D86:  LDRSH.W         R3, [R0,#-2]
C8D8A:  SUBS            R1, #1
C8D8C:  LDRSH.W         R5, [R0]
C8D90:  ADD.W           R0, R0, #4
C8D94:  ADD             R3, R5
C8D96:  AND.W           R5, R3, #1
C8D9A:  ADD.W           R3, R5, R3,LSR#1
C8D9E:  STRH.W          R3, [R2],#2
C8DA2:  BNE             loc_C8D86
C8DA4:  LDR.W           R0, [R7,#var_A0]
C8DA8:  MOV             R3, R6
C8DAA:  LDR.W           R2, [R7,#var_AC]; src
C8DAE:  ADD.W           R0, R0, R10,LSL#1
C8DB2:  ADDS            R1, R0, #4; int
C8DB4:  LDR.W           R0, [R7,#src]; int
C8DB8:  BLX             j_silk_resampler
C8DBC:  MOV             R6, R11
C8DBE:  ADD             R6, R0
C8DC0:  LDR.W           R0, [R7,#var_E4]
C8DC4:  LDR             R0, [R0]
C8DC6:  CMP             R0, #2
C8DC8:  BNE.W           loc_C8AFA
C8DCC:  LDR.W           R0, [R7,#var_60]
C8DD0:  LDR.W           LR, [R7,#var_40]
C8DD4:  LDR.W           R3, [R7,#var_98]
C8DD8:  LDR             R0, [R0]
C8DDA:  CMP             R0, #0
C8DDC:  LDR.W           R0, [R7,#var_E0]
C8DE0:  BNE.W           loc_C8C8A
C8DE4:  LDR             R0, [R0]
C8DE6:  LDR.W           R10, [R7,#var_F8]
C8DEA:  LDR.W           R2, [R7,#var_AC]; src
C8DEE:  ADD.W           R0, R10, R0,LSL#1
C8DF2:  LDR.W           R3, [R7,#var_80]
C8DF6:  ADDS            R1, R0, #4; int
C8DF8:  LDR.W           R0, [R7,#dest]; int
C8DFC:  BLX             j_silk_resampler
C8E00:  ADD             R6, R0
C8E02:  LDR.W           R0, [R7,#var_88]
C8E06:  LDR             R0, [R0]
C8E08:  CMP             R0, #1
C8E0A:  BLT.W           loc_C8AFA
C8E0E:  LDR.W           R5, [R7,#var_E0]
C8E12:  MOVS            R0, #2
C8E14:  LDR.W           LR, [R7,#var_40]
C8E18:  LDR.W           R11, [R7,#var_98]
C8E1C:  MOV             R12, R5
C8E1E:  LDR.W           R5, [R7,#var_A0]
C8E22:  LDR.W           R9, [R7,#var_88]
C8E26:  LDR.W           R1, [R12]
C8E2A:  LDR.W           R2, [R11]
C8E2E:  ADD             R1, R0
C8E30:  ADD             R2, R0
C8E32:  LDRSH.W         R1, [R10,R1,LSL#1]
C8E36:  LDRSH.W         R3, [R5,R2,LSL#1]
C8E3A:  ADD             R1, R3
C8E3C:  LSRS            R1, R1, #1
C8E3E:  STRH.W          R1, [R5,R2,LSL#1]
C8E42:  SUBS            R1, R0, #1
C8E44:  ADDS            R0, #1
C8E46:  LDR.W           R2, [R9]
C8E4A:  CMP             R1, R2
C8E4C:  BLT             loc_C8E26
C8E4E:  MOV             R0, R11
C8E50:  MOV             R3, R11
C8E52:  MOV.W           R9, #0
C8E56:  B               loc_C8C8C
C8E58:  MOVW            R3, #0x21B8
C8E5C:  LDR.W           R1, [R7,#var_68]
C8E60:  LDR             R1, [R1]
C8E62:  CMP             R1, #1
C8E64:  BLT.W           loc_C901E
C8E68:  MOVW            R5, #0xF9F0
C8E6C:  MOVS            R1, #0
C8E6E:  STR.W           R1, [R7,#var_44]
C8E72:  MOVS            R1, #0
C8E74:  MOVW            R9, #0x1274
C8E78:  MOV.W           R8, #0
C8E7C:  MOVT            R5, #0xFFFF
C8E80:  STR.W           R1, [R7,#var_48]
C8E84:  CMP             R0, #1
C8E86:  BLT.W           loc_C8FF4
C8E8A:  ADD.W           R1, R8, R8,LSL#1
C8E8E:  LDR.W           R2, [R7,#var_6C]
C8E92:  CMP.W           R8, #0
C8E96:  ADD.W           R1, R2, R1,LSL#1
C8E9A:  STR.W           R1, [R7,#var_4C]
C8E9E:  BLE             loc_C8F56
C8EA0:  LDR.W           R10, [R7,#var_78]
C8EA4:  MOV.W           R11, #0
C8EA8:  ADD.W           R4, R10, R9
C8EAC:  LDR.W           R1, [R4,R5,LSL#2]
C8EB0:  CMP             R1, #0
C8EB2:  BEQ             loc_C8F4A
C8EB4:  CMP.W           R11, #0
C8EB8:  ADD.W           R5, R10, R5,LSL#2
C8EBC:  IT EQ
C8EBE:  CMPEQ           R0, #2
C8EC0:  BNE             loc_C8EE4
C8EC2:  LDR             R0, [R7,#arg_0]
C8EC4:  LDR.W           R1, [R7,#var_4C]
C8EC8:  BLX             j_silk_stereo_encode_pred
C8ECC:  LDR.W           R0, [R7,#var_50]
C8ED0:  LDR.W           R0, [R0,R8,LSL#2]
C8ED4:  CBNZ            R0, loc_C8EE4
C8ED6:  LDR.W           R0, [R7,#var_5C]
C8EDA:  LDRSB.W         R1, [R0,R8]
C8EDE:  LDR             R0, [R7,#arg_0]
C8EE0:  BLX             j_silk_stereo_encode_mid_only
C8EE4:  MOV             R0, #0xFFFFE7BC
C8EEC:  LDR             R0, [R4,R0]
C8EEE:  CMP             R0, #0
C8EF0:  IT NE
C8EF2:  MOVNE           R0, #2
C8EF4:  SUB             SP, SP, #8
C8EF6:  LDR             R4, [R7,#arg_0]
C8EF8:  MOV             R2, R8
C8EFA:  STR             R0, [SP,#0x140+var_140]
C8EFC:  MOV             R0, R5
C8EFE:  MOVS            R3, #1
C8F00:  MOV             R1, R4
C8F02:  BLX             j_silk_encode_indices
C8F06:  ADD             SP, SP, #8
C8F08:  MOVW            R0, #0xFE6A
C8F0C:  LDR.W           R1, [R7,#var_48]
C8F10:  MOVT            R0, #0xFFFF
C8F14:  LDR.W           R0, [R10,R0,LSL#2]
C8F18:  ADD             R1, R10
C8F1A:  LDRSB.W         R2, [R1,#-0x4E]
C8F1E:  LDRSB.W         R1, [R1,#-0x4F]
C8F22:  SUB             SP, SP, #8
C8F24:  STR             R0, [SP,#0x140+var_140]
C8F26:  LDR.W           R0, [R7,#var_44]
C8F2A:  ADD.W           R3, R10, R0
C8F2E:  MOV             R0, R4
C8F30:  BLX             j_silk_encode_pulses
C8F34:  ADD             SP, SP, #8
C8F36:  LDR.W           LR, [R7,#var_40]
C8F3A:  MOVW            R5, #0xF9F0
C8F3E:  MOVW            R3, #0x21B8
C8F42:  MOVT            R5, #0xFFFF
C8F46:  LDR.W           R0, [LR,#4]
C8F4A:  ADD.W           R11, R11, #1
C8F4E:  ADD             R10, R3
C8F50:  CMP             R11, R0
C8F52:  BLT             loc_C8EA8
C8F54:  B               loc_C8FF4
C8F56:  LDR.W           R4, [R7,#var_78]
C8F5A:  MOVS            R6, #0
C8F5C:  ADD.W           R1, R9, R4
C8F60:  LDR.W           R1, [R1,R5,LSL#2]
C8F64:  CMP             R1, #0
C8F66:  BEQ             loc_C8FEC
C8F68:  CMP             R6, #0
C8F6A:  ADD.W           R5, R4, R5,LSL#2
C8F6E:  IT EQ
C8F70:  CMPEQ           R0, #2
C8F72:  BNE             loc_C8F96
C8F74:  LDR             R0, [R7,#arg_0]
C8F76:  LDR.W           R1, [R7,#var_4C]
C8F7A:  BLX             j_silk_stereo_encode_pred
C8F7E:  LDR.W           R0, [R7,#var_50]
C8F82:  LDR.W           R0, [R0,R8,LSL#2]
C8F86:  CBNZ            R0, loc_C8F96
C8F88:  LDR.W           R0, [R7,#var_5C]
C8F8C:  LDRSB.W         R1, [R0,R8]
C8F90:  LDR             R0, [R7,#arg_0]
C8F92:  BLX             j_silk_stereo_encode_mid_only
C8F96:  SUB             SP, SP, #8
C8F98:  MOVS            R0, #0
C8F9A:  MOV             R2, R8
C8F9C:  STR             R0, [SP,#0x140+var_140]
C8F9E:  MOV             R0, R5
C8FA0:  LDR             R5, [R7,#arg_0]
C8FA2:  MOVS            R3, #1
C8FA4:  MOV             R1, R5
C8FA6:  BLX             j_silk_encode_indices
C8FAA:  ADD             SP, SP, #8
C8FAC:  MOVW            R0, #0xFE6A
C8FB0:  LDR.W           R1, [R7,#var_48]
C8FB4:  MOVT            R0, #0xFFFF
C8FB8:  LDR.W           R0, [R4,R0,LSL#2]
C8FBC:  ADD             R1, R4
C8FBE:  LDRSB.W         R2, [R1,#-0x4E]
C8FC2:  LDRSB.W         R1, [R1,#-0x4F]
C8FC6:  SUB             SP, SP, #8
C8FC8:  STR             R0, [SP,#0x140+var_140]
C8FCA:  LDR.W           R0, [R7,#var_44]
C8FCE:  ADDS            R3, R4, R0
C8FD0:  MOV             R0, R5
C8FD2:  BLX             j_silk_encode_pulses
C8FD6:  ADD             SP, SP, #8
C8FD8:  LDR.W           LR, [R7,#var_40]
C8FDC:  MOVW            R5, #0xF9F0
C8FE0:  MOVW            R3, #0x21B8
C8FE4:  MOVT            R5, #0xFFFF
C8FE8:  LDR.W           R0, [LR,#4]
C8FEC:  ADDS            R6, #1
C8FEE:  ADD             R4, R3
C8FF0:  CMP             R6, R0
C8FF2:  BLT             loc_C8F5C
C8FF4:  LDR.W           R1, [R7,#var_44]
C8FF8:  ADD.W           R9, R9, #4
C8FFC:  ADD.W           R8, R8, #1
C9000:  ADD.W           R1, R1, #0x140
C9004:  STR.W           R1, [R7,#var_44]
C9008:  LDR.W           R1, [R7,#var_48]
C900C:  ADDS            R1, #0x24 ; '$'
C900E:  STR.W           R1, [R7,#var_48]
C9012:  LDR.W           R1, [R7,#var_68]
C9016:  LDR             R1, [R1]
C9018:  CMP             R8, R1
C901A:  BLT.W           loc_C8E84
C901E:  LDR.W           R8, [R7,#var_7C]
C9022:  CMP             R0, #1
C9024:  MOV.W           R6, #0
C9028:  BLT             loc_C9042
C902A:  LDR.W           R1, [R7,#var_DC]
C902E:  MOVS            R0, #0
C9030:  STRD.W          R6, R6, [R1]
C9034:  ADDS            R0, #1
C9036:  STR             R6, [R1,#8]
C9038:  ADD             R1, R3
C903A:  LDR.W           R2, [LR,#4]
C903E:  CMP             R0, R2
C9040:  BLT             loc_C9030
C9042:  LDR             R0, [R7,#arg_0]
C9044:  LDR             R6, [R7,#arg_8]
C9046:  MOV             R1, R0
C9048:  LDR             R0, [R1,#0x14]
C904A:  LDR             R1, [R1,#0x1C]
C904C:  CLZ.W           R1, R1
C9050:  ADD             R0, R1
C9052:  LDR.W           R1, [R7,#var_BC]
C9056:  SUBS            R0, #0x20 ; ' '
C9058:  STR             R0, [R1]
C905A:  MOV             R0, R8
C905C:  MOV.W           R10, #0
C9060:  MOV             R4, LR
C9062:  BLX             j_silk_HP_variable_cutoff
C9066:  LDRD.W          R5, R4, [R4,#0x18]
C906A:  MOV             R1, #0x10624DD3
C9072:  CMP             R6, #0
C9074:  MOV             R9, R6
C9076:  MUL.W           R0, R5, R4
C907A:  SMMUL.W         R0, R0, R1
C907E:  MOV.W           R1, R0,ASR#6
C9082:  ADD.W           R0, R1, R0,LSR#31
C9086:  ITTT EQ
C9088:  LDREQ.W         R1, [R7,#var_BC]
C908C:  LDREQ           R1, [R1]
C908E:  SUBEQ           R0, R0, R1
C9090:  LDR.W           R1, [R7,#var_68]
C9094:  LDR             R1, [R1]
C9096:  BLX             sub_108848
C909A:  CMP             R5, #0xA
C909C:  MOV.W           R1, #0x32 ; '2'
C90A0:  IT EQ
C90A2:  MOVEQ           R1, #0x64 ; 'd'
C90A4:  SXTH            R2, R0
C90A6:  SMULBB.W        R1, R1, R2
C90AA:  LDR.W           R2, [R7,#var_B0]
C90AE:  LDR.W           R6, [R7,#var_54]
C90B2:  CMP.W           R9, #0
C90B6:  LDR             R2, [R2]
C90B8:  SUB.W           R1, R1, R2,LSL#1
C90BC:  BEQ             loc_C90C8
C90BE:  LDR.W           R5, [R7,#var_A0]
C90C2:  LDR.W           R12, [R7,#var_88]
C90C6:  B               loc_C9102
C90C8:  LDR.W           R2, [R7,#var_60]
C90CC:  LDR.W           R5, [R7,#var_A0]
C90D0:  LDR.W           R12, [R7,#var_88]
C90D4:  LDR             R2, [R2]
C90D6:  CMP             R2, #1
C90D8:  BLT             loc_C9102
C90DA:  MOV             R3, #0xFFFFFFE0
C90DE:  LDR.W           R6, [R7,#var_BC]
C90E2:  MLS.W           R0, R2, R0, R3
C90E6:  LDR             R2, [R7,#arg_0]
C90E8:  LDR             R6, [R6]
C90EA:  MOV             R3, R2
C90EC:  LDR             R2, [R3,#0x14]
C90EE:  LDR             R3, [R3,#0x1C]
C90F0:  ADD             R0, R2
C90F2:  CLZ.W           R2, R3
C90F6:  ADD             R0, R2
C90F8:  SUBS            R0, R0, R6
C90FA:  LDR.W           R6, [R7,#var_54]
C90FE:  SUB.W           R1, R1, R0,LSL#1
C9102:  LDR.W           R2, [R7,#var_40]
C9106:  MOVW            R0, #0x1389
C910A:  CMP             R4, R0
C910C:  BLT             loc_C9120
C910E:  CMP             R1, R4
C9110:  MOV             R8, R4
C9112:  BGT             loc_C9130
C9114:  MOVW            R0, #0x1388
C9118:  CMP             R1, R0
C911A:  IT LE
C911C:  MOVLE           R1, R0
C911E:  B               loc_C912E
C9120:  MOVW            R8, #0x1388
C9124:  CMP             R1, R8
C9126:  BGT             loc_C9130
C9128:  CMP             R1, R4
C912A:  IT LT
C912C:  MOVLT           R1, R4
C912E:  MOV             R8, R1
C9130:  LDR             R0, [R2,#4]
C9132:  CMP             R0, #2
C9134:  BNE             loc_C9192
C9136:  LDR.W           R0, [R7,#var_60]
C913A:  LDR.W           R1, [R7,#var_C4]
C913E:  LDR.W           R3, [R7,#var_9C]
C9142:  MOV             R4, R0
C9144:  LDR             R2, [R2,#0x3C]
C9146:  LDR             R0, [R4]
C9148:  LDR             R1, [R1]
C914A:  LDR             R3, [R3]
C914C:  LDR.W           R12, [R12]
C9150:  SUB             SP, SP, #0x20 ; ' '
C9152:  LDR.W           R6, [R7,#var_5C]
C9156:  ADD.W           LR, SP, #0x158+var_14C
C915A:  ADDS            R5, R6, R0
C915C:  STR             R5, [SP,#0x158+var_158]
C915E:  SUB.W           R5, R7, #-var_38
C9162:  STRD.W          R5, R8, [SP,#0x158+var_154]
C9166:  STM.W           LR, {R1-R3,R12}
C916A:  ADD.W           R0, R0, R0,LSL#1
C916E:  SUB.W           R2, R7, #-var_D8
C9172:  LDR.W           R1, [R7,#var_6C]
C9176:  ADD.W           R3, R1, R0,LSL#1
C917A:  LDM             R2, {R0-R2}
C917C:  BLX             j_silk_stereo_LR_to_MS
C9180:  ADD             SP, SP, #0x20 ; ' '
C9182:  LDR             R0, [R4]
C9184:  LDRB            R1, [R6,R0]
C9186:  CBZ             R1, loc_C91A8
C9188:  LDR.W           R1, [R7,#var_CC]
C918C:  STRB.W          R10, [R1,R0]
C9190:  B               loc_C922A
C9192:  LDR.W           R0, [R7,#var_C8]
C9196:  MOV             R1, R0
C9198:  LDR             R0, [R1]
C919A:  STR             R0, [R5]
C919C:  LDR.W           R0, [R12]
C91A0:  LDR.W           R0, [R5,R0,LSL#1]
C91A4:  STR             R0, [R1]
C91A6:  B               loc_C9264
C91A8:  LDR.W           R0, [R7,#var_70]
C91AC:  LDR             R0, [R0]
C91AE:  CMP             R0, #1
C91B0:  BNE             loc_C9220
C91B2:  SUB.W           R6, R7, #-var_100
C91B6:  MOVS            R5, #0
C91B8:  MOV.W           R1, #0x1120; n
C91BC:  LDR.W           R0, [R6,#-0x2C]
C91C0:  SUB.W           R6, R7, #-var_100
C91C4:  MOV             R4, R0
C91C6:  STRD.W          R5, R5, [R4]
C91CA:  STRD.W          R5, R5, [R4,#8]
C91CE:  LDR.W           R0, [R6,#-0x24]
C91D2:  SUB.W           R6, R7, #-var_100
C91D6:  STRD.W          R5, R5, [R0]
C91DA:  LDR.W           R0, [R6,#-0x28]; int
C91DE:  BLX             sub_10967C
C91E2:  SUB.W           LR, R7, #-var_100
C91E6:  MOVS            R1, #0x64 ; 'd'
C91E8:  LDR.W           R0, [LR,#-0x20]
C91EC:  SUB.W           LR, R7, #-var_100
C91F0:  STR             R1, [R0]
C91F2:  LDR.W           R0, [LR,#-0x1C]
C91F6:  SUB.W           LR, R7, #-var_100
C91FA:  STR             R1, [R0]
C91FC:  MOVS            R0, #0xA
C91FE:  STRB            R0, [R4]
C9200:  MOV.W           R1, #0x10000
C9204:  LDR.W           R0, [LR,#-0x18]
C9208:  SUB.W           LR, R7, #-var_100
C920C:  STRB            R5, [R0]
C920E:  LDR.W           R0, [LR,#-0x14]
C9212:  SUB.W           LR, R7, #-var_100
C9216:  STR             R1, [R0]
C9218:  MOVS            R1, #1
C921A:  LDR.W           R0, [LR,#-0x10]
C921E:  STR             R1, [R0]
C9220:  LDR.W           R0, [R7,#var_E8]
C9224:  LDR             R1, [R7,#arg_C]
C9226:  BLX             j_silk_encode_do_VAD_FIX
C922A:  LDR.W           R6, [R7,#var_54]
C922E:  CMP.W           R9, #0
C9232:  BNE             loc_C9264
C9234:  LDR.W           R0, [R7,#var_60]
C9238:  LDR.W           R1, [R7,#var_6C]
C923C:  MOV             R4, R0
C923E:  LDR             R0, [R4]
C9240:  ADD.W           R0, R0, R0,LSL#1
C9244:  ADD.W           R1, R1, R0,LSL#1
C9248:  LDR             R0, [R7,#arg_0]
C924A:  BLX             j_silk_stereo_encode_pred
C924E:  LDR             R0, [R4]
C9250:  LDR.W           R1, [R7,#var_CC]
C9254:  LDRB            R1, [R1,R0]
C9256:  CBNZ            R1, loc_C9264
C9258:  LDR.W           R1, [R7,#var_5C]
C925C:  LDRSB           R1, [R1,R0]
C925E:  LDR             R0, [R7,#arg_0]
C9260:  BLX             j_silk_stereo_encode_mid_only
C9264:  LDR.W           R0, [R7,#var_7C]
C9268:  LDR             R1, [R7,#arg_C]
C926A:  BLX             j_silk_encode_do_VAD_FIX
C926E:  LDR.W           LR, [R7,#var_40]
C9272:  LDR.W           R9, [LR,#4]
C9276:  CMP.W           R9, #1
C927A:  BLT.W           loc_C93AE
C927E:  LDR.W           R0, [R7,#var_64]
C9282:  LDR.W           R12, [R7,#var_A4]
C9286:  CMP             R0, #2
C9288:  IT EQ
C928A:  CMPEQ           R6, #0
C928C:  BEQ.W           loc_C93B4
C9290:  LDR.W           R5, [R7,#var_7C]
C9294:  MOVS            R4, #0
C9296:  LDR.W           R0, [LR,#0x38]
C929A:  LDR.W           R1, [R7,#var_64]
C929E:  CMP             R1, #3
C92A0:  MOV             R10, R0
C92A2:  BNE             loc_C92D0
C92A4:  CBZ             R6, loc_C92BC
C92A6:  CMP             R6, #1
C92A8:  MOV             R10, R0
C92AA:  ITTTT EQ
C92AC:  ADDEQ.W         R1, R0, R0,LSL#1
C92B0:  ASREQ           R2, R1, #0x1F
C92B2:  ADDEQ.W         R1, R1, R2,LSR#30
C92B6:  MOVEQ.W         R10, R1,ASR#2
C92BA:  B               loc_C92D0
C92BC:  MOVW            R2, #0x6667
C92C0:  LSLS            R1, R0, #1
C92C2:  MOVT            R2, #0x6666
C92C6:  SMMUL.W         R1, R1, R2
C92CA:  ASRS            R2, R1, #1
C92CC:  ADD.W           R10, R2, R1,LSR#31
C92D0:  LDR.W           R2, [R7,#var_58]
C92D4:  LDR.W           R1, [LR,#0x34]
C92D8:  CMP             R6, R2
C92DA:  MOV.W           R2, #0
C92DE:  IT EQ
C92E0:  MOVEQ           R2, #1
C92E2:  CMP             R1, #0
C92E4:  IT NE
C92E6:  MOVNE           R1, #1
C92E8:  CMP.W           R9, #1
C92EC:  AND.W           R11, R2, R1
C92F0:  BNE             loc_C92FA
C92F2:  MOV             R6, R8
C92F4:  CMP             R6, #1
C92F6:  BGE             loc_C932A
C92F8:  B               loc_C9374
C92FA:  SUB.W           R1, R7, #-var_38
C92FE:  CMP             R4, #0
C9300:  LDR.W           R6, [R1,R4,LSL#2]
C9304:  BNE             loc_C9326
C9306:  LDR.W           R1, [R7,#var_34]
C930A:  CMP             R1, #1
C930C:  BLT             loc_C9326
C930E:  LDR.W           R1, [R7,#var_74]
C9312:  MOV             R11, R12
C9314:  BLX             sub_108848
C9318:  LDR.W           LR, [R7,#var_40]
C931C:  SUB.W           R10, R10, R0
C9320:  MOV             R12, R11
C9322:  MOV.W           R11, #0
C9326:  CMP             R6, #1
C9328:  BLT             loc_C9374
C932A:  MOV             R0, R5
C932C:  MOV             R1, R6
C932E:  BLX             j_silk_control_SNR
C9332:  LDR.W           R0, [R7,#var_60]
C9336:  LDR             R0, [R0]
C9338:  CMP             R0, R4
C933A:  BLE             loc_C934C
C933C:  CMP             R4, #1
C933E:  BLT             loc_C9358
C9340:  LDR.W           R0, [R7,#var_70]
C9344:  LDR             R0, [R0]
C9346:  CBZ             R0, loc_C9358
C9348:  MOVS            R3, #1
C934A:  B               loc_C935A
C934C:  MOVS            R3, #0
C934E:  B               loc_C935A
C9350:  DCD __stack_chk_guard_ptr - 0xC846A
C9354:  DCD __stack_chk_guard_ptr - 0xC84A6
C9358:  MOVS            R3, #2
C935A:  STRD.W          R10, R11, [SP,#0x138+var_140]!
C935E:  LDRD.W          R2, R1, [R7,#arg_0]
C9362:  MOV             R0, R5
C9364:  BLX             j_silk_encode_frame_FIX
C9368:  ADD             SP, SP, #8
C936A:  LDR.W           LR, [R7,#var_40]
C936E:  MOV             R12, R0
C9370:  LDR.W           R9, [LR,#4]
C9374:  MOVW            R2, #0xFE6A
C9378:  MOVW            R1, #0x166C
C937C:  ADDS            R0, R5, R1
C937E:  MOVT            R2, #0xFFFF
C9382:  ADD.W           R0, R0, R2,LSL#2
C9386:  MOVS            R2, #0
C9388:  MOVW            R3, #0x1674
C938C:  ADDS            R4, #1
C938E:  STR.W           R2, [R0,#0x228]
C9392:  CMP             R4, R9
C9394:  LDR             R0, [R5,R3]
C9396:  STR             R2, [R5,R1]
C9398:  ADD.W           R0, R0, #1
C939C:  STR             R0, [R5,R3]
C939E:  MOVW            R0, #0x21B8
C93A2:  ADD             R5, R0
C93A4:  LDR.W           R6, [R7,#var_54]
C93A8:  BLT.W           loc_C9296
C93AC:  B               loc_C94A6
C93AE:  LDR.W           R12, [R7,#var_A4]
C93B2:  B               loc_C94A6
C93B4:  LDR.W           R5, [R7,#var_7C]
C93B8:  MOVS            R4, #0
C93BA:  LDRD.W          R1, R0, [LR,#0x34]
C93BE:  MOVW            R3, #0x6667
C93C2:  ADD.W           R2, R0, R0,LSL#1
C93C6:  MOVT            R3, #0x6666
C93CA:  SMMUL.W         R2, R2, R3
C93CE:  LDR.W           R3, [R7,#var_58]
C93D2:  CMP             R6, R3
C93D4:  MOV.W           R3, #0
C93D8:  IT EQ
C93DA:  MOVEQ           R3, #1
C93DC:  CMP             R1, #0
C93DE:  IT NE
C93E0:  MOVNE           R1, #1
C93E2:  CMP.W           R9, #1
C93E6:  AND.W           R11, R3, R1
C93EA:  MOV.W           R1, R2,ASR#1
C93EE:  ADD.W           R10, R1, R2,LSR#31
C93F2:  BNE             loc_C93FC
C93F4:  MOV             R6, R8
C93F6:  CMP             R6, #1
C93F8:  BGE             loc_C942C
C93FA:  B               loc_C946E
C93FC:  SUB.W           R1, R7, #-var_38
C9400:  CMP             R4, #0
C9402:  LDR.W           R6, [R1,R4,LSL#2]
C9406:  BNE             loc_C9428
C9408:  LDR.W           R1, [R7,#var_34]
C940C:  CMP             R1, #1
C940E:  BLT             loc_C9428
C9410:  LDR.W           R1, [R7,#var_74]
C9414:  MOV             R11, R12
C9416:  BLX             sub_108848
C941A:  LDR.W           LR, [R7,#var_40]
C941E:  SUB.W           R10, R10, R0
C9422:  MOV             R12, R11
C9424:  MOV.W           R11, #0
C9428:  CMP             R6, #1
C942A:  BLT             loc_C946E
C942C:  MOV             R0, R5
C942E:  MOV             R1, R6
C9430:  BLX             j_silk_control_SNR
C9434:  LDR.W           R0, [R7,#var_60]
C9438:  LDR             R0, [R0]
C943A:  CMP             R0, R4
C943C:  BLE             loc_C944E
C943E:  CMP             R4, #1
C9440:  BLT             loc_C9452
C9442:  LDR.W           R0, [R7,#var_70]
C9446:  LDR             R0, [R0]
C9448:  CBZ             R0, loc_C9452
C944A:  MOVS            R3, #1
C944C:  B               loc_C9454
C944E:  MOVS            R3, #0
C9450:  B               loc_C9454
C9452:  MOVS            R3, #2
C9454:  STRD.W          R10, R11, [SP,#0x138+var_140]!
C9458:  LDRD.W          R2, R1, [R7,#arg_0]
C945C:  MOV             R0, R5
C945E:  BLX             j_silk_encode_frame_FIX
C9462:  ADD             SP, SP, #8
C9464:  LDR.W           LR, [R7,#var_40]
C9468:  MOV             R12, R0
C946A:  LDR.W           R9, [LR,#4]
C946E:  MOVW            R2, #0xFE6A
C9472:  MOVW            R1, #0x166C
C9476:  ADDS            R0, R5, R1
C9478:  MOVT            R2, #0xFFFF
C947C:  ADD.W           R0, R0, R2,LSL#2
C9480:  MOVS            R2, #0
C9482:  MOVW            R3, #0x1674
C9486:  ADDS            R4, #1
C9488:  STR.W           R2, [R0,#0x228]
C948C:  CMP             R4, R9
C948E:  LDR             R0, [R5,R3]
C9490:  STR             R2, [R5,R1]
C9492:  ADD.W           R0, R0, #1
C9496:  STR             R0, [R5,R3]
C9498:  MOVW            R0, #0x21B8
C949C:  ADD             R5, R0
C949E:  LDR.W           R6, [R7,#var_54]
C94A2:  BLT.W           loc_C93BA
C94A6:  LDR.W           R0, [R7,#var_8C]
C94AA:  MOV             R11, R12
C94AC:  LDR.W           R1, [R7,#var_80]
C94B0:  LDR.W           R2, [R7,#var_70]
C94B4:  SUBS            R0, R0, R1
C94B6:  LDR.W           R1, [R7,#var_60]
C94BA:  LDR.W           R12, [R1]
C94BE:  LDR.W           R1, [R7,#var_5C]
C94C2:  ADD             R1, R12
C94C4:  LDRSB.W         R1, [R1,#-1]
C94C8:  STR             R1, [R2]
C94CA:  LDR             R1, [R7,#arg_4]
C94CC:  LDR.W           R8, [R7,#var_7C]
C94D0:  LDR             R1, [R1]
C94D2:  CMP             R1, #1
C94D4:  BLT.W           loc_C8AF4
C94D8:  LDR.W           R1, [R7,#var_68]
C94DC:  LDR             R1, [R1]
C94DE:  CMP             R12, R1
C94E0:  BNE.W           loc_C8AF4
C94E4:  MOV             R10, R0
C94E6:  CMP.W           R9, #1
C94EA:  BLT.W           loc_C8A42
C94EE:  LDR.W           R3, [R7,#var_FC]
C94F2:  MOVS            R2, #0
C94F4:  MOVS            R1, #0
C94F6:  MOVW            R0, #0x21B8
C94FA:  MLA.W           R6, R2, R0, R8
C94FE:  MOVW            R0, #0x1670
C9502:  LSLS            R1, R1, #1
C9504:  LDR             R5, [R6,R0]
C9506:  CMP             R5, #1
C9508:  BLT             loc_C951C
C950A:  MOVS            R4, #0
C950C:  LDRSB           R0, [R3,R4]
C950E:  ADDS            R4, #1
C9510:  CMP             R4, R5
C9512:  ORR.W           R0, R0, R1
C9516:  MOV.W           R1, R0,LSL#1
C951A:  BLT             loc_C950C
C951C:  MOVW            R0, #0x1273
C9520:  ADDS            R2, #1
C9522:  LDRSB           R0, [R6,R0]
C9524:  CMP             R2, R9
C9526:  ORR.W           R1, R1, R0
C952A:  MOVW            R0, #0x21B8
C952E:  ADD             R3, R0
C9530:  BLT             loc_C94FA
C9532:  B.W             loc_C8A44
C9536:  MOV             R0, R6
C9538:  B               loc_C9542
C953A:  LDR.W           R0, [R7,#var_90]
C953E:  LDR             R2, [R0]
C9540:  MOV             R0, R11
C9542:  LDR.W           R3, [R7,#var_E4]
C9546:  LDR.W           R1, [LR,#4]
C954A:  LDR             R5, [R7,#arg_8]
C954C:  STR             R1, [R3]
C954E:  STR.W           R2, [LR,#0x4C]
C9552:  LDR.W           R2, [R7,#var_9C]
C9556:  LDR             R3, [R2]
C9558:  MOVS            R2, #0
C955A:  CMP             R3, #0x10
C955C:  BNE             loc_C9568
C955E:  LDR.W           R6, [R8,#0x1C]
C9562:  CMP             R6, #0
C9564:  IT EQ
C9566:  MOVEQ           R2, #1
C9568:  SXTH            R3, R3
C956A:  MOV.W           R6, #0x3E8
C956E:  STR.W           R2, [LR,#0x50]
C9572:  SMULBB.W        R3, R3, R6
C9576:  LDR.W           R2, [LR,#0x3C]
C957A:  STR.W           R3, [LR,#0x48]
C957E:  CMP             R2, #0
C9580:  ITTE EQ
C9582:  MOVWEQ          R2, #0x438C
C9586:  LDRSHEQ.W       R2, [R8,R2]
C958A:  MOVNE           R2, #0
C958C:  CMP             R5, #0
C958E:  STR.W           R2, [LR,#0x54]
C9592:  BEQ             loc_C95CA
C9594:  SUB.W           R3, R7, #-var_100
C9598:  CMP             R1, #1
C959A:  LDR.W           R2, [R3,#-0x30]
C959E:  SUB.W           R3, R7, #-var_100
C95A2:  STR.W           R2, [LR,#0x24]
C95A6:  LDR.W           R2, [R3,#-0x34]
C95AA:  STR.W           R2, [LR,#0x18]
C95AE:  BLT             loc_C95CA
C95B0:  MOVW            R2, #0x123C
C95B4:  MOVS            R3, #0
C95B6:  ADD             R2, R8
C95B8:  MOVW            R6, #0x21B8
C95BC:  MOVS            R5, #0
C95BE:  STR             R3, [R2,#0xC]
C95C0:  ADDS            R5, #1
C95C2:  STR             R3, [R2]
C95C4:  ADD             R2, R6
C95C6:  CMP             R5, R1
C95C8:  BLT             loc_C95BE
C95CA:  LDR             R1, =(silk_Quantization_Offsets_Q10_ptr - 0xC95DC)
C95CC:  MOVW            R2, #0x129D
C95D0:  LDRSB.W         R2, [R8,R2]
C95D4:  MOVW            R3, #0x129E
C95D8:  ADD             R1, PC; silk_Quantization_Offsets_Q10_ptr
C95DA:  STR.W           R2, [LR,#0x5C]
C95DE:  MOV             R6, #0xFFFFFFFC
C95E2:  LDRSB.W         R3, [R8,R3]
C95E6:  LDR             R1, [R1]; silk_Quantization_Offsets_Q10
C95E8:  AND.W           R2, R6, R2,LSL#1
C95EC:  ADD             R1, R2
C95EE:  LDRSH.W         R1, [R1,R3,LSL#1]
C95F2:  STR.W           R1, [LR,#0x60]
C95F6:  B.W             loc_C849A
