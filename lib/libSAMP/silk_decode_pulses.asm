; =========================================================
; Game Engine Function: silk_decode_pulses
; Address            : 0x1944E4 - 0x1948FC
; =========================================================

1944E4:  PUSH            {R4-R7,LR}
1944E6:  ADD             R7, SP, #0xC
1944E8:  PUSH.W          {R8-R11}
1944EC:  SUB             SP, SP, #0x10C
1944EE:  MOV             R6, R0
1944F0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1944FE)
1944F4:  MOV             R10, R1
1944F6:  LDR.W           R1, =(silk_rate_levels_iCDF_ptr - 0x194502)
1944FA:  ADD             R0, PC; __stack_chk_guard_ptr
1944FC:  STR             R3, [SP,#0x128+var_11C]
1944FE:  ADD             R1, PC; silk_rate_levels_iCDF_ptr
194500:  LDR             R0, [R0]; __stack_chk_guard
194502:  LDR             R1, [R1]; silk_rate_levels_iCDF
194504:  LDR             R0, [R0]
194506:  STR             R0, [SP,#0x128+var_20]
194508:  ASRS            R0, R2, #1
19450A:  ADD.W           R0, R0, R0,LSL#3
19450E:  STR             R2, [SP,#0x128+var_118]
194510:  ADD             R1, R0
194512:  MOV             R0, R6
194514:  MOVS            R2, #8
194516:  BLX             j_ec_dec_icdf
19451A:  LDR             R3, [R7,#arg_0]
19451C:  MOVS            R1, #1
19451E:  BIC.W           R2, R3, #0xF
194522:  ASRS            R5, R3, #4
194524:  CMP             R2, R3
194526:  IT LT
194528:  ADDLT.W         R5, R1, R3,ASR#4
19452C:  CMP             R5, #1
19452E:  STR             R5, [SP,#0x128+var_CC]
194530:  BLT.W           loc_1948CE
194534:  LDR.W           R1, =(silk_pulses_per_block_iCDF_ptr - 0x194548)
194538:  ADD.W           R0, R0, R0,LSL#3
19453C:  STR.W           R10, [SP,#0x128+var_D4]
194540:  ADD.W           R8, SP, #0x128+var_C0
194544:  ADD             R1, PC; silk_pulses_per_block_iCDF_ptr
194546:  ADD.W           R10, SP, #0x128+var_70
19454A:  MOVS            R5, #0
19454C:  LDR             R1, [R1]; silk_pulses_per_block_iCDF
19454E:  ADD.W           R9, R1, R0,LSL#1
194552:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0x19455A)
194556:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
194558:  LDR.W           R11, [R0]; silk_pulses_per_block_iCDF
19455C:  MOVS            R0, #0
19455E:  MOV             R1, R9
194560:  STR.W           R0, [R8,R5,LSL#2]
194564:  MOV             R0, R6
194566:  MOVS            R2, #8
194568:  BLX             j_ec_dec_icdf
19456C:  CMP             R0, #0x11
19456E:  STR.W           R0, [R10,R5,LSL#2]
194572:  BNE             loc_194598
194574:  MOVS            R4, #1
194576:  CMP             R4, #0xA
194578:  MOV             R0, R11
19457A:  STR.W           R4, [R8,R5,LSL#2]
19457E:  IT EQ
194580:  ADDEQ           R0, #1
194582:  ADD.W           R1, R0, #0xA2
194586:  MOV             R0, R6
194588:  MOVS            R2, #8
19458A:  BLX             j_ec_dec_icdf
19458E:  ADDS            R4, #1
194590:  CMP             R0, #0x11
194592:  STR.W           R0, [R10,R5,LSL#2]
194596:  BEQ             loc_194576
194598:  LDR             R0, [SP,#0x128+var_CC]
19459A:  ADDS            R5, #1
19459C:  CMP             R5, R0
19459E:  BNE             loc_19455C
1945A0:  LDR             R0, [SP,#0x128+var_CC]
1945A2:  LDR.W           R10, [SP,#0x128+var_D4]
1945A6:  CMP             R0, #1
1945A8:  BLT.W           loc_1948CE
1945AC:  LDR.W           R9, [SP,#0x128+var_CC]
1945B0:  ADD             R4, SP, #0x128+var_70
1945B2:  MOV.W           R8, #0
1945B6:  MOVS            R5, #0
1945B8:  LDR             R2, [R4]
1945BA:  ADD.W           R0, R10, R5,ASR#11
1945BE:  CMP             R2, #1
1945C0:  BLT             loc_1945CA
1945C2:  MOV             R1, R6
1945C4:  BLX             j_silk_shell_decoder
1945C8:  B               loc_1945EA
1945CA:  STR.W           R8, [R0,#0x1C]
1945CE:  STR.W           R8, [R0,#0x18]
1945D2:  STR.W           R8, [R0,#0x14]
1945D6:  STR.W           R8, [R0,#0x10]
1945DA:  STR.W           R8, [R0,#0xC]
1945DE:  STR.W           R8, [R0,#8]
1945E2:  STR.W           R8, [R0,#4]
1945E6:  STR.W           R8, [R0]
1945EA:  ADD.W           R5, R5, #0x10000
1945EE:  SUBS.W          R9, R9, #1
1945F2:  ADD.W           R4, R4, #4
1945F6:  BNE             loc_1945B8
1945F8:  LDR             R0, [SP,#0x128+var_CC]
1945FA:  ADD             R1, SP, #0x128+var_C0
1945FC:  CMP             R0, #1
1945FE:  BLT.W           loc_1948CE
194602:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x19460A)
194604:  MOVS            R2, #0
194606:  ADD             R0, PC; silk_lsb_iCDF_ptr
194608:  LDR             R5, [R0]; silk_lsb_iCDF
19460A:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194610)
19460C:  ADD             R0, PC; silk_lsb_iCDF_ptr
19460E:  LDR.W           R11, [R0]; silk_lsb_iCDF
194612:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194618)
194614:  ADD             R0, PC; silk_lsb_iCDF_ptr
194616:  LDR.W           R12, [R0]; silk_lsb_iCDF
19461A:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194620)
19461C:  ADD             R0, PC; silk_lsb_iCDF_ptr
19461E:  LDR.W           R8, [R0]; silk_lsb_iCDF
194622:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194628)
194624:  ADD             R0, PC; silk_lsb_iCDF_ptr
194626:  LDR.W           LR, [R0]; silk_lsb_iCDF
19462A:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194630)
19462C:  ADD             R0, PC; silk_lsb_iCDF_ptr
19462E:  LDR.W           R9, [R0]; silk_lsb_iCDF
194632:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194638)
194634:  ADD             R0, PC; silk_lsb_iCDF_ptr
194636:  LDR             R4, [R0]; silk_lsb_iCDF
194638:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x19463E)
19463A:  ADD             R0, PC; silk_lsb_iCDF_ptr
19463C:  LDR             R0, [R0]; silk_lsb_iCDF
19463E:  STR             R0, [SP,#0x128+var_F4]
194640:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194646)
194642:  ADD             R0, PC; silk_lsb_iCDF_ptr
194644:  LDR             R0, [R0]; silk_lsb_iCDF
194646:  STR             R0, [SP,#0x128+var_F8]
194648:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x19464E)
19464A:  ADD             R0, PC; silk_lsb_iCDF_ptr
19464C:  LDR             R0, [R0]; silk_lsb_iCDF
19464E:  STR             R0, [SP,#0x128+var_FC]
194650:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194656)
194652:  ADD             R0, PC; silk_lsb_iCDF_ptr
194654:  LDR             R0, [R0]; silk_lsb_iCDF
194656:  STR             R0, [SP,#0x128+var_100]
194658:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x19465E)
19465A:  ADD             R0, PC; silk_lsb_iCDF_ptr
19465C:  LDR             R0, [R0]; silk_lsb_iCDF
19465E:  STR             R0, [SP,#0x128+var_104]
194660:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194666)
194662:  ADD             R0, PC; silk_lsb_iCDF_ptr
194664:  LDR             R0, [R0]; silk_lsb_iCDF
194666:  STR             R0, [SP,#0x128+var_108]
194668:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x19466E)
19466A:  ADD             R0, PC; silk_lsb_iCDF_ptr
19466C:  LDR             R0, [R0]; silk_lsb_iCDF
19466E:  STR             R0, [SP,#0x128+var_10C]
194670:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x194676)
194672:  ADD             R0, PC; silk_lsb_iCDF_ptr
194674:  LDR             R0, [R0]; silk_lsb_iCDF
194676:  STR             R0, [SP,#0x128+var_110]
194678:  LDR             R0, =(silk_lsb_iCDF_ptr - 0x19467E)
19467A:  ADD             R0, PC; silk_lsb_iCDF_ptr
19467C:  LDR             R0, [R0]; silk_lsb_iCDF
19467E:  STR             R0, [SP,#0x128+var_114]
194680:  ADD             R0, SP, #0x128+var_F0
194682:  STRD.W          R11, R5, [SP,#0x128+var_DC]
194686:  STRD.W          R8, R12, [SP,#0x128+var_E4]
19468A:  STM.W           R0, {R4,R9,LR}
19468E:  LDR.W           R3, [R1,R2,LSL#2]
194692:  CMP             R3, #1
194694:  BLT.W           loc_1948C4
194698:  LSLS            R0, R2, #0x10
19469A:  STR             R2, [SP,#0x128+var_D0]
19469C:  ASRS            R1, R0, #0xB
19469E:  ADD.W           R0, R10, R0,ASR#11
1946A2:  LDRSH.W         R11, [R10,R1]
1946A6:  MOV             R4, R3
1946A8:  MOV             R10, R3
1946AA:  STR             R0, [SP,#0x128+var_C4]
1946AC:  MOV             R0, R6
1946AE:  MOV             R1, R5
1946B0:  MOVS            R2, #8
1946B2:  BLX             j_ec_dec_icdf
1946B6:  ADD.W           R11, R0, R11,LSL#1
1946BA:  SUBS            R4, #1
1946BC:  BNE             loc_1946AC
1946BE:  LDR             R0, [SP,#0x128+var_C4]
1946C0:  MOV             R5, R10
1946C2:  LDRSH.W         R4, [R0,#2]
1946C6:  STRH.W          R11, [R0]
1946CA:  LDR.W           R11, [SP,#0x128+var_DC]
1946CE:  MOV             R0, R6
1946D0:  MOV             R1, R11
1946D2:  MOVS            R2, #8
1946D4:  BLX             j_ec_dec_icdf
1946D8:  ADD.W           R4, R0, R4,LSL#1
1946DC:  SUBS            R5, #1
1946DE:  BNE             loc_1946CE
1946E0:  LDR             R0, [SP,#0x128+var_C4]
1946E2:  LDRSH.W         R5, [R0,#4]
1946E6:  STRH            R4, [R0,#2]
1946E8:  MOV             R4, R10
1946EA:  LDR.W           R8, [SP,#0x128+var_E0]
1946EE:  MOV             R0, R6
1946F0:  MOV             R1, R8
1946F2:  MOVS            R2, #8
1946F4:  BLX             j_ec_dec_icdf
1946F8:  ADD.W           R5, R0, R5,LSL#1
1946FC:  SUBS            R4, #1
1946FE:  BNE             loc_1946EE
194700:  LDR             R0, [SP,#0x128+var_C4]
194702:  LDRSH.W         R4, [R0,#6]
194706:  STRH            R5, [R0,#4]
194708:  MOV             R5, R10
19470A:  LDR.W           R8, [SP,#0x128+var_E4]
19470E:  MOV             R0, R6
194710:  MOV             R1, R8
194712:  MOVS            R2, #8
194714:  BLX             j_ec_dec_icdf
194718:  ADD.W           R4, R0, R4,LSL#1
19471C:  SUBS            R5, #1
19471E:  BNE             loc_19470E
194720:  LDR             R0, [SP,#0x128+var_C4]
194722:  LDRSH.W         R5, [R0,#8]
194726:  STRH            R4, [R0,#6]
194728:  MOV             R4, R10
19472A:  LDR.W           R9, [SP,#0x128+var_E8]
19472E:  MOV             R0, R6
194730:  MOV             R1, R9
194732:  MOVS            R2, #8
194734:  BLX             j_ec_dec_icdf
194738:  ADD.W           R5, R0, R5,LSL#1
19473C:  SUBS            R4, #1
19473E:  BNE             loc_19472E
194740:  LDR             R0, [SP,#0x128+var_C4]
194742:  LDRSH.W         R4, [R0,#0xA]
194746:  STRH            R5, [R0,#8]
194748:  MOV             R5, R10
19474A:  LDR.W           R9, [SP,#0x128+var_EC]
19474E:  MOV             R0, R6
194750:  MOV             R1, R9
194752:  MOVS            R2, #8
194754:  BLX             j_ec_dec_icdf
194758:  ADD.W           R4, R0, R4,LSL#1
19475C:  SUBS            R5, #1
19475E:  BNE             loc_19474E
194760:  LDR             R0, [SP,#0x128+var_C4]
194762:  LDRSH.W         R5, [R0,#0xC]
194766:  STRH            R4, [R0,#0xA]
194768:  MOV             R0, R10
19476A:  MOV             R4, R10
19476C:  LDR.W           R10, [SP,#0x128+var_F0]
194770:  STR             R0, [SP,#0x128+var_C8]
194772:  MOV             R0, R6
194774:  MOV             R1, R10
194776:  MOVS            R2, #8
194778:  BLX             j_ec_dec_icdf
19477C:  ADD.W           R5, R0, R5,LSL#1
194780:  SUBS            R4, #1
194782:  BNE             loc_194772
194784:  LDR             R0, [SP,#0x128+var_C4]
194786:  LDRSH.W         R4, [R0,#0xE]
19478A:  STRH            R5, [R0,#0xC]
19478C:  LDR             R5, [SP,#0x128+var_C8]
19478E:  LDR.W           R10, [SP,#0x128+var_F4]
194792:  MOV             R0, R6
194794:  MOV             R1, R10
194796:  MOVS            R2, #8
194798:  BLX             j_ec_dec_icdf
19479C:  ADD.W           R4, R0, R4,LSL#1
1947A0:  SUBS            R5, #1
1947A2:  BNE             loc_194792
1947A4:  LDR             R0, [SP,#0x128+var_C4]
1947A6:  LDRSH.W         R5, [R0,#0x10]
1947AA:  STRH            R4, [R0,#0xE]
1947AC:  LDR             R4, [SP,#0x128+var_C8]
1947AE:  LDR.W           R10, [SP,#0x128+var_F8]
1947B2:  MOV             R0, R6
1947B4:  MOV             R1, R10
1947B6:  MOVS            R2, #8
1947B8:  BLX             j_ec_dec_icdf
1947BC:  ADD.W           R5, R0, R5,LSL#1
1947C0:  SUBS            R4, #1
1947C2:  BNE             loc_1947B2
1947C4:  LDR             R0, [SP,#0x128+var_C4]
1947C6:  LDRSH.W         R4, [R0,#0x12]
1947CA:  STRH            R5, [R0,#0x10]
1947CC:  LDR             R5, [SP,#0x128+var_C8]
1947CE:  LDR.W           R10, [SP,#0x128+var_FC]
1947D2:  MOV             R0, R6
1947D4:  MOV             R1, R10
1947D6:  MOVS            R2, #8
1947D8:  BLX             j_ec_dec_icdf
1947DC:  ADD.W           R4, R0, R4,LSL#1
1947E0:  SUBS            R5, #1
1947E2:  BNE             loc_1947D2
1947E4:  LDR             R0, [SP,#0x128+var_C4]
1947E6:  LDRSH.W         R5, [R0,#0x14]
1947EA:  STRH            R4, [R0,#0x12]
1947EC:  LDR             R4, [SP,#0x128+var_C8]
1947EE:  LDR.W           R10, [SP,#0x128+var_100]
1947F2:  MOV             R0, R6
1947F4:  MOV             R1, R10
1947F6:  MOVS            R2, #8
1947F8:  BLX             j_ec_dec_icdf
1947FC:  ADD.W           R5, R0, R5,LSL#1
194800:  SUBS            R4, #1
194802:  BNE             loc_1947F2
194804:  LDR             R0, [SP,#0x128+var_C4]
194806:  LDRSH.W         R4, [R0,#0x16]
19480A:  STRH            R5, [R0,#0x14]
19480C:  LDR             R5, [SP,#0x128+var_C8]
19480E:  LDR.W           R10, [SP,#0x128+var_104]
194812:  MOV             R0, R6
194814:  MOV             R1, R10
194816:  MOVS            R2, #8
194818:  BLX             j_ec_dec_icdf
19481C:  ADD.W           R4, R0, R4,LSL#1
194820:  SUBS            R5, #1
194822:  BNE             loc_194812
194824:  LDR             R0, [SP,#0x128+var_C4]
194826:  LDRSH.W         R5, [R0,#0x18]
19482A:  STRH            R4, [R0,#0x16]
19482C:  LDR             R4, [SP,#0x128+var_C8]
19482E:  LDR.W           R10, [SP,#0x128+var_108]
194832:  MOV             R0, R6
194834:  MOV             R1, R10
194836:  MOVS            R2, #8
194838:  BLX             j_ec_dec_icdf
19483C:  ADD.W           R5, R0, R5,LSL#1
194840:  SUBS            R4, #1
194842:  BNE             loc_194832
194844:  LDR             R0, [SP,#0x128+var_C4]
194846:  LDRSH.W         R4, [R0,#0x1A]
19484A:  STRH            R5, [R0,#0x18]
19484C:  LDR             R5, [SP,#0x128+var_C8]
19484E:  LDR.W           R10, [SP,#0x128+var_10C]
194852:  MOV             R0, R6
194854:  MOV             R1, R10
194856:  MOVS            R2, #8
194858:  BLX             j_ec_dec_icdf
19485C:  ADD.W           R4, R0, R4,LSL#1
194860:  SUBS            R5, #1
194862:  BNE             loc_194852
194864:  LDR             R0, [SP,#0x128+var_C4]
194866:  LDRSH.W         R5, [R0,#0x1C]
19486A:  STRH            R4, [R0,#0x1A]
19486C:  LDR             R4, [SP,#0x128+var_C8]
19486E:  LDR.W           R10, [SP,#0x128+var_110]
194872:  MOV             R0, R6
194874:  MOV             R1, R10
194876:  MOVS            R2, #8
194878:  BLX             j_ec_dec_icdf
19487C:  ADD.W           R5, R0, R5,LSL#1
194880:  SUBS            R4, #1
194882:  BNE             loc_194872
194884:  LDR             R0, [SP,#0x128+var_C4]
194886:  LDRSH.W         R4, [R0,#0x1E]
19488A:  STRH            R5, [R0,#0x1C]
19488C:  LDR             R5, [SP,#0x128+var_C8]
19488E:  LDR.W           R10, [SP,#0x128+var_114]
194892:  MOV             R0, R6
194894:  MOV             R1, R10
194896:  MOVS            R2, #8
194898:  BLX             j_ec_dec_icdf
19489C:  ADD.W           R4, R0, R4,LSL#1
1948A0:  SUBS            R5, #1
1948A2:  BNE             loc_194892
1948A4:  LDR             R0, [SP,#0x128+var_C4]
1948A6:  STRH            R4, [R0,#0x1E]
1948A8:  ADD             R0, SP, #0x128+var_70
1948AA:  LDR             R2, [SP,#0x128+var_D0]
1948AC:  MOV             R1, R0
1948AE:  LDR             R3, [SP,#0x128+var_C8]
1948B0:  LDR.W           R10, [SP,#0x128+var_D4]
1948B4:  LDR.W           R0, [R1,R2,LSL#2]
1948B8:  LDR             R5, [SP,#0x128+var_D8]
1948BA:  ORR.W           R0, R0, R3,LSL#5
1948BE:  STR.W           R0, [R1,R2,LSL#2]
1948C2:  ADD             R1, SP, #0x128+var_C0
1948C4:  LDR             R0, [SP,#0x128+var_CC]
1948C6:  ADDS            R2, #1
1948C8:  CMP             R2, R0
1948CA:  BNE.W           loc_19468E
1948CE:  ADD             R0, SP, #0x128+var_70
1948D0:  LDR             R1, [SP,#0x128+var_11C]
1948D2:  LDR             R2, [R7,#arg_0]
1948D4:  STRD.W          R1, R0, [SP,#0x128+var_128]
1948D8:  MOV             R0, R6
1948DA:  LDR             R3, [SP,#0x128+var_118]
1948DC:  MOV             R1, R10
1948DE:  BLX             j_silk_decode_signs
1948E2:  LDR             R0, =(__stack_chk_guard_ptr - 0x1948EA)
1948E4:  LDR             R1, [SP,#0x128+var_20]
1948E6:  ADD             R0, PC; __stack_chk_guard_ptr
1948E8:  LDR             R0, [R0]; __stack_chk_guard
1948EA:  LDR             R0, [R0]
1948EC:  SUBS            R0, R0, R1
1948EE:  ITTT EQ
1948F0:  ADDEQ           SP, SP, #0x10C
1948F2:  POPEQ.W         {R8-R11}
1948F6:  POPEQ           {R4-R7,PC}
1948F8:  BLX             __stack_chk_fail
