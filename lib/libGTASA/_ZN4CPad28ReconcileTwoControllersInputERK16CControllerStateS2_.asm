; =========================================================
; Game Engine Function: _ZN4CPad28ReconcileTwoControllersInputERK16CControllerStateS2_
; Address            : 0x3F84F0 - 0x3F8918
; =========================================================

3F84F0:  PUSH            {R4-R7,LR}
3F84F2:  ADD             R7, SP, #0xC
3F84F4:  PUSH.W          {R11}
3F84F8:  LDR.W           R1, =(word_959DD0 - 0x3F8504)
3F84FC:  VMOV.I32        Q8, #0
3F8500:  ADD             R1, PC; word_959DD0
3F8502:  ADD.W           R5, R1, #0x20 ; ' '
3F8506:  VST1.64         {D16-D17}, [R5]
3F850A:  VST1.64         {D16-D17}, [R1]!
3F850E:  VST1.64         {D16-D17}, [R1]
3F8512:  LDRH            R1, [R2,#8]
3F8514:  CMP             R1, #0
3F8516:  ITT EQ
3F8518:  LDRHEQ          R1, [R3,#8]
3F851A:  CMPEQ           R1, #0
3F851C:  BEQ             loc_3F8528
3F851E:  LDR.W           R1, =(word_959DD0 - 0x3F8528)
3F8522:  MOVS            R5, #0xFF
3F8524:  ADD             R1, PC; word_959DD0
3F8526:  STRH            R5, [R1,#(word_959DD8 - 0x959DD0)]
3F8528:  LDRH            R1, [R2,#0xA]
3F852A:  CMP             R1, #0
3F852C:  ITT EQ
3F852E:  LDRHEQ          R1, [R3,#0xA]
3F8530:  CMPEQ           R1, #0
3F8532:  BEQ             loc_3F853E
3F8534:  LDR.W           R1, =(word_959DD0 - 0x3F853E)
3F8538:  MOVS            R5, #0xFF
3F853A:  ADD             R1, PC; word_959DD0
3F853C:  STRH            R5, [R1,#(word_959DDA - 0x959DD0)]
3F853E:  LDRH            R1, [R2,#0xC]
3F8540:  CMP             R1, #0
3F8542:  ITT EQ
3F8544:  LDRHEQ          R1, [R3,#0xC]
3F8546:  CMPEQ           R1, #0
3F8548:  BEQ             loc_3F8554
3F854A:  LDR.W           R1, =(word_959DD0 - 0x3F8554)
3F854E:  MOVS            R5, #0xFF
3F8550:  ADD             R1, PC; word_959DD0
3F8552:  STRH            R5, [R1,#(word_959DDC - 0x959DD0)]
3F8554:  LDRH            R1, [R2,#0xE]
3F8556:  CMP             R1, #0
3F8558:  ITT EQ
3F855A:  LDRHEQ          R1, [R3,#0xE]
3F855C:  CMPEQ           R1, #0
3F855E:  BEQ             loc_3F856A
3F8560:  LDR.W           R1, =(word_959DD0 - 0x3F856A)
3F8564:  MOVS            R5, #0xFF
3F8566:  ADD             R1, PC; word_959DD0
3F8568:  STRH            R5, [R1,#(word_959DDE - 0x959DD0)]
3F856A:  LDRH            R1, [R2,#0x18]
3F856C:  CMP             R1, #0
3F856E:  ITT EQ
3F8570:  LDRHEQ          R1, [R3,#0x18]
3F8572:  CMPEQ           R1, #0
3F8574:  BEQ             loc_3F8580
3F8576:  LDR.W           R1, =(word_959DD0 - 0x3F8580)
3F857A:  MOVS            R5, #0xFF
3F857C:  ADD             R1, PC; word_959DD0
3F857E:  STRH            R5, [R1,#(word_959DE8 - 0x959DD0)]
3F8580:  LDRH            R1, [R2,#0x1A]
3F8582:  CMP             R1, #0
3F8584:  ITT EQ
3F8586:  LDRHEQ          R1, [R3,#0x1A]
3F8588:  CMPEQ           R1, #0
3F858A:  BEQ             loc_3F8596
3F858C:  LDR.W           R1, =(word_959DD0 - 0x3F8596)
3F8590:  MOVS            R5, #0xFF
3F8592:  ADD             R1, PC; word_959DD0
3F8594:  STRH            R5, [R1,#(word_959DEA - 0x959DD0)]
3F8596:  LDRH            R1, [R2,#0x1C]
3F8598:  CMP             R1, #0
3F859A:  ITT EQ
3F859C:  LDRHEQ          R1, [R3,#0x1C]
3F859E:  CMPEQ           R1, #0
3F85A0:  BEQ             loc_3F85AC
3F85A2:  LDR.W           R1, =(word_959DD0 - 0x3F85AC)
3F85A6:  MOVS            R5, #0xFF
3F85A8:  ADD             R1, PC; word_959DD0
3F85AA:  STRH            R5, [R1,#(word_959DEC - 0x959DD0)]
3F85AC:  LDRH            R1, [R2,#0x1E]
3F85AE:  CMP             R1, #0
3F85B0:  ITT EQ
3F85B2:  LDRHEQ          R1, [R3,#0x1E]
3F85B4:  CMPEQ           R1, #0
3F85B6:  BEQ             loc_3F85C2
3F85B8:  LDR.W           R1, =(word_959DD0 - 0x3F85C2)
3F85BC:  MOVS            R5, #0xFF
3F85BE:  ADD             R1, PC; word_959DD0
3F85C0:  STRH            R5, [R1,#(word_959DEE - 0x959DD0)]
3F85C2:  LDRH            R1, [R2,#0x20]
3F85C4:  CMP             R1, #0
3F85C6:  ITT EQ
3F85C8:  LDRHEQ          R1, [R3,#0x20]
3F85CA:  CMPEQ           R1, #0
3F85CC:  BEQ             loc_3F85D8
3F85CE:  LDR.W           R1, =(word_959DD0 - 0x3F85D8)
3F85D2:  MOVS            R5, #0xFF
3F85D4:  ADD             R1, PC; word_959DD0
3F85D6:  STRH            R5, [R1,#(word_959DF0 - 0x959DD0)]
3F85D8:  LDRH            R1, [R2,#0x22]
3F85DA:  CMP             R1, #0
3F85DC:  ITT EQ
3F85DE:  LDRHEQ          R1, [R3,#0x22]
3F85E0:  CMPEQ           R1, #0
3F85E2:  BEQ             loc_3F85EE
3F85E4:  LDR.W           R1, =(word_959DD0 - 0x3F85EE)
3F85E8:  MOVS            R5, #0xFF
3F85EA:  ADD             R1, PC; word_959DD0
3F85EC:  STRH            R5, [R1,#(word_959DF2 - 0x959DD0)]
3F85EE:  LDRH            R1, [R2,#0x24]
3F85F0:  CMP             R1, #0
3F85F2:  ITT EQ
3F85F4:  LDRHEQ          R1, [R3,#0x24]
3F85F6:  CMPEQ           R1, #0
3F85F8:  BEQ             loc_3F8602
3F85FA:  LDR             R1, =(word_959DD0 - 0x3F8602)
3F85FC:  MOVS            R5, #0xFF
3F85FE:  ADD             R1, PC; word_959DD0
3F8600:  STRH            R5, [R1,#(word_959DF4 - 0x959DD0)]
3F8602:  LDRH            R1, [R2,#0x26]
3F8604:  CMP             R1, #0
3F8606:  ITT EQ
3F8608:  LDRHEQ          R1, [R3,#0x26]
3F860A:  CMPEQ           R1, #0
3F860C:  BEQ             loc_3F8616
3F860E:  LDR             R1, =(word_959DD0 - 0x3F8616)
3F8610:  MOVS            R5, #0xFF
3F8612:  ADD             R1, PC; word_959DD0
3F8614:  STRH            R5, [R1,#(word_959DF6 - 0x959DD0)]
3F8616:  LDRH            R1, [R2,#0x28]
3F8618:  CMP             R1, #0
3F861A:  ITT EQ
3F861C:  LDRHEQ          R1, [R3,#0x28]
3F861E:  CMPEQ           R1, #0
3F8620:  BEQ             loc_3F862A
3F8622:  LDR             R1, =(word_959DD0 - 0x3F862A)
3F8624:  MOVS            R5, #0xFF
3F8626:  ADD             R1, PC; word_959DD0
3F8628:  STRH            R5, [R1,#(word_959DF8 - 0x959DD0)]
3F862A:  LDRH            R1, [R2,#0x2A]
3F862C:  CMP             R1, #0
3F862E:  ITT EQ
3F8630:  LDRHEQ          R1, [R3,#0x2A]
3F8632:  CMPEQ           R1, #0
3F8634:  BEQ             loc_3F863E
3F8636:  LDR             R1, =(word_959DD0 - 0x3F863E)
3F8638:  MOVS            R5, #0xFF
3F863A:  ADD             R1, PC; word_959DD0
3F863C:  STRH            R5, [R1,#(word_959DFA - 0x959DD0)]
3F863E:  LDRH            R1, [R2,#0x2E]
3F8640:  CMP             R1, #0
3F8642:  ITT EQ
3F8644:  LDRHEQ          R1, [R3,#0x2E]
3F8646:  CMPEQ           R1, #0
3F8648:  BEQ             loc_3F8652
3F864A:  LDR             R1, =(word_959DD0 - 0x3F8652)
3F864C:  MOVS            R5, #0xFF
3F864E:  ADD             R1, PC; word_959DD0
3F8650:  STRH            R5, [R1,#(word_959DFE - 0x959DD0)]
3F8652:  LDRH            R1, [R2,#0x2C]
3F8654:  CMP             R1, #0
3F8656:  ITT EQ
3F8658:  LDRHEQ          R1, [R3,#0x2C]
3F865A:  CMPEQ           R1, #0
3F865C:  BEQ             loc_3F8666
3F865E:  LDR             R1, =(word_959DD0 - 0x3F8666)
3F8660:  MOVS            R5, #0xFF
3F8662:  ADD             R1, PC; word_959DD0
3F8664:  STRH            R5, [R1,#(word_959DFC - 0x959DD0)]
3F8666:  LDRSH.W         R5, [R2]
3F866A:  MOV.W           R1, #0xFFFFFFFF
3F866E:  CMP             R5, #0
3F8670:  BLT             loc_3F8694
3F8672:  LDRSH.W         R4, [R3]
3F8676:  CMP             R4, R1
3F8678:  BLE             loc_3F869A
3F867A:  LDR.W           LR, =(word_959DD0 - 0x3F868A)
3F867E:  CMP             R5, R4
3F8680:  MOV             R5, R3
3F8682:  IT GT
3F8684:  MOVGT           R5, R2
3F8686:  ADD             LR, PC; word_959DD0
3F8688:  LDRH.W          R12, [R5]
3F868C:  STRH.W          R12, [LR]
3F8690:  LDRH            R5, [R2]
3F8692:  B               loc_3F869E
3F8694:  MOV.W           R12, #0
3F8698:  B               loc_3F86A4
3F869A:  MOV.W           R12, #0
3F869E:  SXTH            R4, R5
3F86A0:  CMP             R4, #0
3F86A2:  BGT             loc_3F86C4
3F86A4:  LDRSH.W         R4, [R3]
3F86A8:  CMP             R4, #0
3F86AA:  BGT             loc_3F86C4
3F86AC:  SXTH            R5, R5
3F86AE:  CMP             R5, R4
3F86B0:  MOV             R5, R3
3F86B2:  LDR.W           LR, =(word_959DD0 - 0x3F86C2)
3F86B6:  IT LT
3F86B8:  MOVLT           R5, R2
3F86BA:  LDRH.W          R12, [R5]
3F86BE:  ADD             LR, PC; word_959DD0
3F86C0:  STRH.W          R12, [LR]
3F86C4:  LDRSH.W         R4, [R2,#2]
3F86C8:  CMP             R4, R1
3F86CA:  BLE             loc_3F86EC
3F86CC:  LDRSH.W         R5, [R3,#2]
3F86D0:  CMP             R5, R1
3F86D2:  BLE             loc_3F86F2
3F86D4:  LDR             R6, =(word_959DD0 - 0x3F86E2)
3F86D6:  CMP             R4, R5
3F86D8:  MOV             R5, R3
3F86DA:  IT GT
3F86DC:  MOVGT           R5, R2
3F86DE:  ADD             R6, PC; word_959DD0
3F86E0:  LDRH.W          LR, [R5,#2]
3F86E4:  STRH.W          LR, [R6,#(word_959DD2 - 0x959DD0)]
3F86E8:  LDRH            R4, [R2,#2]
3F86EA:  B               loc_3F86F6
3F86EC:  MOV.W           LR, #0
3F86F0:  B               loc_3F86FC
3F86F2:  MOV.W           LR, #0
3F86F6:  SXTH            R5, R4
3F86F8:  CMP             R5, #0
3F86FA:  BGT             loc_3F871A
3F86FC:  LDRSH.W         R5, [R3,#2]
3F8700:  CMP             R5, #0
3F8702:  BGT             loc_3F871A
3F8704:  SXTH            R4, R4
3F8706:  CMP             R4, R5
3F8708:  MOV             R5, R3
3F870A:  LDR             R6, =(word_959DD0 - 0x3F8718)
3F870C:  IT LT
3F870E:  MOVLT           R5, R2
3F8710:  LDRH.W          LR, [R5,#2]
3F8714:  ADD             R6, PC; word_959DD0
3F8716:  STRH.W          LR, [R6,#(word_959DD2 - 0x959DD0)]
3F871A:  LDRSH.W         R4, [R2]
3F871E:  CMP             R4, #1
3F8720:  BLT             loc_3F872C
3F8722:  LDRSH.W         R4, [R3]
3F8726:  CMP             R4, #0
3F8728:  BGE             loc_3F8746
3F872A:  B               loc_3F873A
3F872C:  CMP.W           R4, #0xFFFFFFFF
3F8730:  BGT             loc_3F8746
3F8732:  LDRSH.W         R4, [R3]
3F8736:  CMP             R4, #1
3F8738:  BLT             loc_3F8746
3F873A:  LDR             R4, =(word_959DD0 - 0x3F8744)
3F873C:  MOV.W           R12, #0
3F8740:  ADD             R4, PC; word_959DD0
3F8742:  STRH.W          R12, [R4]
3F8746:  LDRSH.W         R4, [R2,#2]
3F874A:  CMP             R4, #1
3F874C:  BLT             loc_3F8758
3F874E:  LDRSH.W         R4, [R3,#2]
3F8752:  CMP             R4, #0
3F8754:  BGE             loc_3F8772
3F8756:  B               loc_3F8766
3F8758:  CMP.W           R4, #0xFFFFFFFF
3F875C:  BGT             loc_3F8772
3F875E:  LDRSH.W         R4, [R3,#2]
3F8762:  CMP             R4, #1
3F8764:  BLT             loc_3F8772
3F8766:  LDR             R4, =(word_959DD0 - 0x3F8770)
3F8768:  MOV.W           LR, #0
3F876C:  ADD             R4, PC; word_959DD0
3F876E:  STRH.W          LR, [R4,#(word_959DD2 - 0x959DD0)]
3F8772:  LDRSH.W         R4, [R2,#4]
3F8776:  CMP             R4, R1
3F8778:  BLE             loc_3F879A
3F877A:  LDRSH.W         R5, [R3,#4]
3F877E:  CMP             R5, R1
3F8780:  BLE             loc_3F8794
3F8782:  LDR             R6, =(word_959DD0 - 0x3F8790)
3F8784:  CMP             R4, R5
3F8786:  MOV             R4, R3
3F8788:  IT GT
3F878A:  MOVGT           R4, R2
3F878C:  ADD             R6, PC; word_959DD0
3F878E:  LDRH            R4, [R4,#4]
3F8790:  STRH            R4, [R6,#(word_959DD4 - 0x959DD0)]
3F8792:  LDRH            R4, [R2,#4]
3F8794:  SXTH            R5, R4
3F8796:  CMP             R5, #0
3F8798:  BGT             loc_3F87B4
3F879A:  LDRSH.W         R5, [R3,#4]
3F879E:  CMP             R5, #0
3F87A0:  BGT             loc_3F87B4
3F87A2:  LDR             R6, =(word_959DD0 - 0x3F87B2)
3F87A4:  SXTH            R4, R4
3F87A6:  CMP             R4, R5
3F87A8:  MOV             R4, R3
3F87AA:  IT LT
3F87AC:  MOVLT           R4, R2
3F87AE:  ADD             R6, PC; word_959DD0
3F87B0:  LDRH            R4, [R4,#4]
3F87B2:  STRH            R4, [R6,#(word_959DD4 - 0x959DD0)]
3F87B4:  LDRSH.W         R4, [R2,#6]
3F87B8:  CMP             R4, R1
3F87BA:  BLE             loc_3F87DC
3F87BC:  LDRSH.W         R5, [R3,#6]
3F87C0:  CMP             R5, R1
3F87C2:  BLE             loc_3F87D6
3F87C4:  LDR             R1, =(word_959DD0 - 0x3F87D2)
3F87C6:  CMP             R4, R5
3F87C8:  MOV             R4, R3
3F87CA:  IT GT
3F87CC:  MOVGT           R4, R2
3F87CE:  ADD             R1, PC; word_959DD0
3F87D0:  LDRH            R4, [R4,#6]
3F87D2:  STRH            R4, [R1,#(word_959DD6 - 0x959DD0)]
3F87D4:  LDRH            R4, [R2,#6]
3F87D6:  SXTH            R1, R4
3F87D8:  CMP             R1, #0
3F87DA:  BGT             loc_3F87F6
3F87DC:  LDRSH.W         R1, [R3,#6]
3F87E0:  CMP             R1, #0
3F87E2:  BGT             loc_3F87F6
3F87E4:  LDR             R5, =(word_959DD0 - 0x3F87F4)
3F87E6:  SXTH            R4, R4
3F87E8:  CMP             R4, R1
3F87EA:  MOV             R1, R3
3F87EC:  IT LT
3F87EE:  MOVLT           R1, R2
3F87F0:  ADD             R5, PC; word_959DD0
3F87F2:  LDRH            R1, [R1,#6]
3F87F4:  STRH            R1, [R5,#(word_959DD6 - 0x959DD0)]
3F87F6:  LDRSH.W         R1, [R2,#4]
3F87FA:  CMP             R1, #1
3F87FC:  BLT             loc_3F8808
3F87FE:  LDRSH.W         R1, [R3,#4]
3F8802:  CMP             R1, #0
3F8804:  BGE             loc_3F881E
3F8806:  B               loc_3F8816
3F8808:  CMP.W           R1, #0xFFFFFFFF
3F880C:  BGT             loc_3F881E
3F880E:  LDRSH.W         R1, [R3,#4]
3F8812:  CMP             R1, #1
3F8814:  BLT             loc_3F881E
3F8816:  LDR             R1, =(word_959DD0 - 0x3F881E)
3F8818:  MOVS            R4, #0
3F881A:  ADD             R1, PC; word_959DD0
3F881C:  STRH            R4, [R1,#(word_959DD4 - 0x959DD0)]
3F881E:  LDRSH.W         R1, [R2,#6]
3F8822:  CMP             R1, #1
3F8824:  BLT             loc_3F8830
3F8826:  LDRSH.W         R1, [R3,#6]
3F882A:  CMP             R1, #0
3F882C:  BGE             loc_3F8846
3F882E:  B               loc_3F883E
3F8830:  CMP.W           R1, #0xFFFFFFFF
3F8834:  BGT             loc_3F8846
3F8836:  LDRSH.W         R1, [R3,#6]
3F883A:  CMP             R1, #1
3F883C:  BLT             loc_3F8846
3F883E:  LDR             R1, =(word_959DD0 - 0x3F8846)
3F8840:  MOVS            R4, #0
3F8842:  ADD             R1, PC; word_959DD0
3F8844:  STRH            R4, [R1,#(word_959DD6 - 0x959DD0)]
3F8846:  LDRH            R1, [R2,#0x10]
3F8848:  CMP             R1, #0
3F884A:  ITT EQ
3F884C:  LDRHEQ          R1, [R3,#0x10]
3F884E:  CMPEQ           R1, #0
3F8850:  BEQ             loc_3F8904
3F8852:  LDR             R4, =(word_959DD0 - 0x3F885A)
3F8854:  MOVS            R1, #0xFF
3F8856:  ADD             R4, PC; word_959DD0
3F8858:  STRH            R1, [R4,#(word_959DE0 - 0x959DD0)]
3F885A:  LDRH            R4, [R2,#0x12]
3F885C:  CMP             R4, #0
3F885E:  ITT EQ
3F8860:  LDRHEQ          R4, [R3,#0x12]
3F8862:  CMPEQ           R4, #0
3F8864:  BEQ             loc_3F8908
3F8866:  LDR             R5, =(word_959DD0 - 0x3F886E)
3F8868:  MOVS            R4, #0xFF
3F886A:  ADD             R5, PC; word_959DD0
3F886C:  STRH            R4, [R5,#(word_959DE2 - 0x959DD0)]
3F886E:  LDRH            R5, [R2,#0x14]
3F8870:  CMP             R5, #0
3F8872:  ITT EQ
3F8874:  LDRHEQ          R5, [R3,#0x14]
3F8876:  CMPEQ           R5, #0
3F8878:  BEQ             loc_3F890C
3F887A:  LDR             R6, =(word_959DD0 - 0x3F8882)
3F887C:  MOVS            R5, #0xFF
3F887E:  ADD             R6, PC; word_959DD0
3F8880:  STRH            R5, [R6,#(word_959DE4 - 0x959DD0)]
3F8882:  LDRH            R2, [R2,#0x16]
3F8884:  CMP             R2, #0
3F8886:  ITT EQ
3F8888:  LDRHEQ          R2, [R3,#0x16]
3F888A:  CMPEQ           R2, #0
3F888C:  BEQ             loc_3F8910
3F888E:  LDR             R3, =(word_959DD0 - 0x3F8896)
3F8890:  MOVS            R2, #0xFF
3F8892:  ADD             R3, PC; word_959DD0
3F8894:  STRH            R2, [R3,#(word_959DE6 - 0x959DD0)]
3F8896:  CBNZ            R1, loc_3F88A2
3F8898:  SXTH.W          R1, LR
3F889C:  CMP.W           R1, #0xFFFFFFFF
3F88A0:  BGT             loc_3F88B8
3F88A2:  SXTH.W          R1, LR
3F88A6:  CMP             R1, #0
3F88A8:  BGT             loc_3F88AC
3F88AA:  CBZ             R4, loc_3F88B8
3F88AC:  LDR             R1, =(word_959DD0 - 0x3F88B4)
3F88AE:  MOVS            R3, #0
3F88B0:  ADD             R1, PC; word_959DD0
3F88B2:  STRH            R3, [R1,#(word_959DE2 - 0x959DD0)]
3F88B4:  STRH            R3, [R1,#(word_959DE0 - 0x959DD0)]
3F88B6:  STRH            R3, [R1,#(word_959DD2 - 0x959DD0)]
3F88B8:  CBNZ            R5, loc_3F88C4
3F88BA:  SXTH.W          R1, R12
3F88BE:  CMP.W           R1, #0xFFFFFFFF
3F88C2:  BGT             loc_3F88DA
3F88C4:  SXTH.W          R1, R12
3F88C8:  CMP             R1, #0
3F88CA:  BGT             loc_3F88CE
3F88CC:  CBZ             R2, loc_3F88DA
3F88CE:  LDR             R1, =(word_959DD0 - 0x3F88D6)
3F88D0:  MOVS            R2, #0
3F88D2:  ADD             R1, PC; word_959DD0
3F88D4:  STRH            R2, [R1,#(word_959DE6 - 0x959DD0)]
3F88D6:  STRH            R2, [R1,#(word_959DE4 - 0x959DD0)]
3F88D8:  STRH            R2, [R1]
3F88DA:  LDR             R1, =(word_959DD0 - 0x3F88E0)
3F88DC:  ADD             R1, PC; word_959DD0
3F88DE:  MOV             R2, R1
3F88E0:  ADDS            R1, #0x20 ; ' '
3F88E2:  VLD1.16         {D16-D17}, [R2]!
3F88E6:  VLD1.64         {D20-D21}, [R1]
3F88EA:  ADD.W           R1, R0, #0x20 ; ' '
3F88EE:  VST1.16         {D20-D21}, [R1]
3F88F2:  VLD1.64         {D18-D19}, [R2]
3F88F6:  VST1.16         {D16-D17}, [R0]!
3F88FA:  VST1.16         {D18-D19}, [R0]
3F88FE:  POP.W           {R11}
3F8902:  POP             {R4-R7,PC}
3F8904:  MOVS            R1, #0
3F8906:  B               loc_3F885A
3F8908:  MOVS            R4, #0
3F890A:  B               loc_3F886E
3F890C:  MOVS            R5, #0
3F890E:  B               loc_3F8882
3F8910:  MOVS            R2, #0
3F8912:  CMP             R1, #0
3F8914:  BEQ             loc_3F8898
3F8916:  B               loc_3F88A2
