; =========================================================
; Game Engine Function: celt_decode_with_ec
; Address            : 0x197488 - 0x198364
; =========================================================

197488:  PUSH            {R4-R7,LR}
19748A:  ADD             R7, SP, #0xC
19748C:  PUSH.W          {R8-R11}
197490:  SUB             SP, SP, #0xEC
197492:  MOV             R9, R0
197494:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1974A2)
197498:  STR.W           R3, [R7,#var_9C]
19749C:  MOV             R11, R2
19749E:  ADD             R0, PC; __stack_chk_guard_ptr
1974A0:  MOVS            R6, #0
1974A2:  LDR             R0, [R0]; __stack_chk_guard
1974A4:  LDR             R0, [R0]
1974A6:  STR.W           R0, [R7,#var_24]
1974AA:  LDRD.W          R10, R0, [R9,#8]
1974AE:  STR.W           R0, [R7,#var_98]
1974B2:  LDRD.W          R0, R2, [R9,#0x10]
1974B6:  STR.W           R2, [R7,#var_94]
1974BA:  LDR.W           R12, [R9,#0x18]
1974BE:  LDR             R2, [R7,#arg_0]
1974C0:  STRD.W          R6, R6, [R7,#var_6C]
1974C4:  LDR.W           R5, [R9]
1974C8:  MUL.W           R4, R0, R2
1974CC:  LDRD.W          R8, LR, [R5,#4]
1974D0:  LDR             R0, [R5,#0x18]
1974D2:  STR.W           R0, [R7,#var_A4]
1974D6:  LDR             R0, [R5,#0x1C]
1974D8:  CMP             R0, #0
1974DA:  BLT             loc_1974F0
1974DC:  LDR             R2, [R5,#0x24]
1974DE:  MOVS            R3, #0
1974E0:  LSL.W           R6, R2, R3
1974E4:  CMP             R6, R4
1974E6:  BEQ             loc_1974FC
1974E8:  ADDS            R6, R3, #1
1974EA:  CMP             R3, R0
1974EC:  MOV             R3, R6
1974EE:  BLT             loc_1974E0
1974F0:  CMP             R6, R0
1974F2:  BLE             loc_197502
1974F4:  MOV.W           R0, #0xFFFFFFFF
1974F8:  B.W             loc_198344
1974FC:  MOV             R6, R3
1974FE:  CMP             R6, R0
197500:  BGT             loc_1974F4
197502:  MOVW            R2, #0x4FB
197506:  MOV.W           R0, #0xFFFFFFFF
19750A:  CMP             R11, R2
19750C:  BHI.W           loc_198344
197510:  LDR.W           R2, [R7,#var_9C]
197514:  CMP             R2, #0
197516:  BEQ.W           loc_198344
19751A:  ADD.W           R0, R8, #0x800
19751E:  ADD.W           R2, R10, R10,LSL#1
197522:  STR.W           R12, [R7,#var_A8]
197526:  MUL.W           R0, R0, R10
19752A:  STR.W           R4, [R7,#var_C4]
19752E:  LDR.W           R12, [R7,#arg_4]
197532:  ADD.W           R0, R9, R0,LSL#2
197536:  ADD.W           R0, R0, R2,LSL#4
19753A:  ADDS            R0, #0x58 ; 'X'
19753C:  STR.W           R0, [R7,#src]
197540:  ADD.W           R0, R0, LR,LSL#2
197544:  STR.W           R0, [R7,#var_E4]
197548:  ADD.W           R0, R0, LR,LSL#2
19754C:  STR.W           R0, [R7,#var_E8]
197550:  MOV.W           R0, LR,LSL#1
197554:  STR.W           R0, [R7,#n]
197558:  MOVS            R0, #1
19755A:  LSLS            R0, R6
19755C:  STR.W           R0, [R7,#var_CC]
197560:  MOV             R0, R5
197562:  STR.W           R0, [R7,#var_B0]
197566:  MOV.W           R0, #0x2000
19756A:  LDR             R2, [R5,#0x24]
19756C:  ADD.W           R0, R0, R8,LSL#2
197570:  STR.W           R8, [R7,#var_74]
197574:  SUB.W           R8, R7, #-var_2C
197578:  STR.W           R6, [R7,#var_90]
19757C:  MOV             R5, R9
19757E:  LSL.W           R3, R2, R6
197582:  MOVW            R2, #0x2058
197586:  SUB.W           R2, R2, R3,LSL#2
19758A:  SUB.W           R6, R7, #-var_34
19758E:  STR.W           R3, [R7,#var_7C]
197592:  MOVS            R3, #0
197594:  ADD.W           R4, R5, #0x58 ; 'X'
197598:  STR.W           R4, [R8,R3,LSL#2]
19759C:  ADDS            R4, R5, R2
19759E:  STR.W           R4, [R6,R3,LSL#2]
1975A2:  ADDS            R3, #1
1975A4:  ADD             R5, R0
1975A6:  CMP             R3, R10
1975A8:  BLT             loc_197594
1975AA:  LDR.W           R8, [R7,#var_B0]
1975AE:  LDR.W           R0, [R7,#var_A8]
1975B2:  LDR.W           R2, [R8,#0xC]
1975B6:  CMP             R0, R2
1975B8:  IT LE
1975BA:  MOVLE           R2, R0
1975BC:  CMP             R1, #0
1975BE:  BEQ             loc_19768C
1975C0:  CMP.W           R11, #1
1975C4:  BLE             loc_19768C
1975C6:  STR.W           R11, [R7,#var_D0]
1975CA:  MOV             R11, R12
1975CC:  STR.W           R2, [R7,#var_F0]
1975D0:  LDR.W           R0, [R9,#0x34]
1975D4:  CMP             R0, #0
1975D6:  IT NE
1975D8:  MOVNE           R0, #1
1975DA:  CMP.W           R11, #0
1975DE:  STR.W           R0, [R9,#0x38]
1975E2:  STR.W           LR, [R7,#var_AC]
1975E6:  BNE             loc_1975FA
1975E8:  SUB.W           R11, R7, #-var_64
1975EC:  LDR.W           R2, [R7,#var_D0]
1975F0:  MOV             R0, R11
1975F2:  BLX             j_ec_dec_init
1975F6:  LDR.W           LR, [R7,#var_AC]
1975FA:  LDR.W           R0, [R7,#var_98]
1975FE:  LDR.W           R4, [R7,#src]
197602:  CMP             R0, #1
197604:  BNE             loc_197644
197606:  CMP.W           LR, #1
19760A:  BLT             loc_197644
19760C:  LDR.W           R1, [R7,#var_74]
197610:  MOVW            R0, #0x2030
197614:  MOVS            R2, #0
197616:  ADD.W           R0, R0, R1,LSL#2
19761A:  LDR.W           R1, [R7,#n]
19761E:  MLA.W           R0, R10, R0, R9
197622:  ADDS            R0, #0x58 ; 'X'
197624:  ADD             R1, R0
197626:  LDRSH.W         R3, [R1,R2,LSL#1]
19762A:  LDRSH.W         R6, [R0,R2,LSL#1]
19762E:  CMP             R6, R3
197630:  MOV             R3, R2
197632:  IT LE
197634:  ADDLE           R3, LR
197636:  LDRH.W          R3, [R4,R3,LSL#1]
19763A:  STRH.W          R3, [R0,R2,LSL#1]
19763E:  ADDS            R2, #1
197640:  CMP             LR, R2
197642:  BNE             loc_197626
197644:  LDR.W           R2, [R11,#0x1C]
197648:  LDR.W           R1, [R11,#0x14]
19764C:  CLZ.W           R0, R2
197650:  ADD             R0, R1
197652:  SUB.W           R5, R0, #0x20 ; ' '
197656:  LDR.W           R0, [R7,#var_D0]
19765A:  LSLS            R3, R0, #3
19765C:  CMP.W           R5, R0,LSL#3
197660:  STR.W           R3, [R7,#var_BC]
197664:  BGE             loc_1976CE
197666:  CMP             R5, #1
197668:  BNE             loc_1976FA
19766A:  MOV             R0, R11
19766C:  MOVS            R1, #0xF
19766E:  BLX             j_ec_dec_bit_logp
197672:  CMP             R0, #0
197674:  BEQ             loc_19770C
197676:  SUB.W           LR, R7, #-var_100
19767A:  LDR.W           R4, [R7,#src]
19767E:  STR.W           R0, [LR]
197682:  LDR.W           R1, [R11,#0x14]
197686:  LDR.W           R2, [R11,#0x1C]
19768A:  B               loc_1976D8
19768C:  LDR.W           R4, [R7,#var_7C]
197690:  MOV             R0, R9
197692:  LDR.W           R2, [R7,#var_90]
197696:  MOV             R1, R4
197698:  BL              sub_198380
19769C:  LDR.W           R0, [R9,#0x10]
1976A0:  SUB             SP, SP, #0x10
1976A2:  ADD.W           R2, R8, #0x10
1976A6:  ADD.W           R1, R9, #0x50 ; 'P'
1976AA:  MOV             R3, R10
1976AC:  STRD.W          R0, R2, [SP,#0x118+var_118]
1976B0:  MOV             R2, R4
1976B2:  STR             R1, [SP,#0x118+var_110]
1976B4:  LDR             R0, [R7,#arg_8]
1976B6:  LDR.W           R1, [R7,#var_9C]
1976BA:  STR             R0, [SP,#0x118+var_10C]
1976BC:  SUB.W           R0, R7, #-var_34
1976C0:  BL              sub_199154
1976C4:  ADD             SP, SP, #0x10
1976C6:  LDR.W           R1, [R9,#0x10]
1976CA:  B.W             loc_19833C
1976CE:  SUB.W           LR, R7, #-var_100
1976D2:  MOVS            R0, #1
1976D4:  STR.W           R0, [LR]
1976D8:  LDR.W           R0, [R7,#var_BC]
1976DC:  CLZ.W           R2, R2
1976E0:  MOV             R3, R0
1976E2:  ADD.W           R0, R3, #0x20 ; ' '
1976E6:  SUBS            R0, R0, R1
1976E8:  MOV             R5, R3
1976EA:  SUBS            R0, R0, R2
1976EC:  ADD             R0, R1
1976EE:  STR.W           R0, [R11,#0x14]
1976F2:  MOVS            R0, #1
1976F4:  STR.W           R0, [R7,#var_FC]
1976F8:  B               loc_197722
1976FA:  MOVS            R0, #0
1976FC:  SUB.W           LR, R7, #-var_100
197700:  STR.W           R0, [R7,#var_FC]
197704:  MOVS            R0, #0
197706:  STR.W           R0, [LR]
19770A:  B               loc_197722
19770C:  MOVS            R0, #0
19770E:  SUB.W           LR, R7, #-var_100
197712:  STR.W           R0, [R7,#var_FC]
197716:  MOVS            R0, #0
197718:  MOVS            R5, #1
19771A:  STR.W           R0, [LR]
19771E:  LDR.W           R4, [R7,#src]
197722:  MOVS            R1, #0
197724:  STR.W           R9, [R7,#var_C0]
197728:  STR.W           R1, [R7,#var_80]
19772C:  LDR.W           R1, [R7,#var_94]
197730:  STR.W           R10, [R7,#var_78]
197734:  CBNZ            R1, loc_19779E
197736:  LDR.W           R2, [R7,#var_BC]
19773A:  ADD.W           R1, R5, #0x10
19773E:  LDR.W           R6, [R7,#var_98]
197742:  MOV.W           R9, #0
197746:  CMP             R1, R2
197748:  MOV.W           R0, #0
19774C:  BGT             loc_1977F0
19774E:  MOV             R0, R11
197750:  MOVS            R1, #1
197752:  BLX             j_ec_dec_bit_logp
197756:  CBZ             R0, loc_1977AA
197758:  MOV             R0, R11
19775A:  MOVS            R1, #6
19775C:  BLX             j_ec_dec_uint
197760:  MOV             R6, R0
197762:  ADDS            R1, R6, #4
197764:  MOV             R0, R11
197766:  BLX             j_ec_dec_bits
19776A:  MOV             R10, R0
19776C:  MOV             R0, R11
19776E:  MOVS            R1, #3
197770:  BLX             j_ec_dec_bits
197774:  MOV             R9, R0
197776:  MOVS            R0, #0x10
197778:  LSLS            R0, R6
19777A:  LDR.W           R2, [R11,#0x1C]
19777E:  ADD             R0, R10
197780:  LDR.W           R1, [R11,#0x14]
197784:  SUBS            R3, R0, #1
197786:  CLZ.W           R0, R2
19778A:  ADD             R0, R1
19778C:  LDR.W           R1, [R7,#var_BC]
197790:  SUBS            R0, #0x1E
197792:  STR.W           R3, [R7,#var_80]
197796:  CMP             R0, R1
197798:  BLE             loc_1977BC
19779A:  MOVS            R0, #0
19779C:  B               loc_1977CA
19779E:  MOV.W           R9, #0
1977A2:  MOVS            R0, #0
1977A4:  LDR.W           R6, [R7,#var_98]
1977A8:  B               loc_1977F0
1977AA:  MOVS            R0, #0
1977AC:  MOV.W           R9, #0
1977B0:  STR.W           R0, [R7,#var_80]
1977B4:  MOVS            R0, #0
1977B6:  LDR.W           R4, [R7,#src]
1977BA:  B               loc_1977DE
1977BC:  LDR.W           R1, =(unk_C0461 - 0x1977C8)
1977C0:  MOV             R0, R11
1977C2:  MOVS            R2, #2
1977C4:  ADD             R1, PC; unk_C0461
1977C6:  BLX             j_ec_dec_icdf
1977CA:  ADD.W           R2, R9, R9,LSL#1
1977CE:  LDR.W           R4, [R7,#src]
1977D2:  LDR.W           R6, [R7,#var_98]
1977D6:  MOV.W           R1, #0xC00
1977DA:  ADD.W           R9, R1, R2,LSL#10
1977DE:  LDR.W           R1, [R11,#0x1C]
1977E2:  LDR.W           R2, [R11,#0x14]
1977E6:  CLZ.W           R1, R1
1977EA:  ADD             R1, R2
1977EC:  SUB.W           R5, R1, #0x20 ; ' '
1977F0:  LDR.W           R1, [R7,#var_90]
1977F4:  STR.W           R0, [R7,#var_84]
1977F8:  MOVS            R0, #0
1977FA:  CMP             R1, #1
1977FC:  STR.W           R0, [R7,#var_B8]
197800:  BLT             loc_19782E
197802:  LDR.W           R2, [R7,#var_BC]
197806:  ADDS            R1, R5, #3
197808:  CMP             R1, R2
19780A:  BGT             loc_19782E
19780C:  MOV             R0, R11
19780E:  MOVS            R1, #3
197810:  BLX             j_ec_dec_bit_logp
197814:  STR.W           R0, [R7,#var_B8]
197818:  LDR.W           R1, [R11,#0x1C]
19781C:  LDR.W           R0, [R11,#0x14]
197820:  CLZ.W           R1, R1
197824:  LDR.W           R4, [R7,#src]
197828:  ADD             R0, R1
19782A:  SUB.W           R5, R0, #0x20 ; ' '
19782E:  LDR.W           R0, [R7,#var_B8]
197832:  LDR.W           R1, [R7,#var_CC]
197836:  CMP             R0, #0
197838:  MOV             R2, R0
19783A:  ADD.W           R0, R5, #3
19783E:  IT NE
197840:  MOVNE           R2, R1
197842:  LDR.W           R1, [R7,#var_BC]
197846:  STR.W           R2, [R7,#var_F4]
19784A:  CMP             R0, R1
19784C:  BLE             loc_197852
19784E:  MOVS            R0, #0
197850:  B               loc_19785E
197852:  MOV             R0, R11
197854:  MOVS            R1, #3
197856:  BLX             j_ec_dec_bit_logp
19785A:  LDR.W           R4, [R7,#src]
19785E:  SUB             SP, SP, #0x10
197860:  STRD.W          R0, R11, [SP,#0x118+var_118]
197864:  MOV             R3, R4
197866:  LDR.W           R5, [R7,#var_A8]
19786A:  LDR.W           R0, [R7,#var_90]
19786E:  LDR.W           R1, [R7,#var_94]
197872:  STR             R6, [SP,#0x118+var_110]
197874:  MOV             R2, R5
197876:  MOV             R6, R0
197878:  MOV             R0, R8
19787A:  STR             R6, [SP,#0x118+var_10C]
19787C:  BLX             j_unquant_coarse_energy
197880:  ADD             SP, SP, #0x10
197882:  LDR.W           R12, [R7,#var_AC]
197886:  MOVS            R0, #7
197888:  ADD.W           R0, R0, R12,LSL#2
19788C:  BIC.W           R0, R0, #7
197890:  SUB.W           R0, SP, R0
197894:  STR.W           R0, [R7,#var_D8]
197898:  MOV             SP, R0
19789A:  LDR.W           R3, [R11,#0x1C]
19789E:  MOVS            R1, #4
1978A0:  LDR.W           R0, [R11,#0x14]
1978A4:  LDR.W           R2, [R11,#4]
1978A8:  CLZ.W           R3, R3
1978AC:  LDR.W           R4, [R7,#var_B8]
1978B0:  ADD             R0, R3
1978B2:  SUBS            R0, #0x20 ; ' '
1978B4:  CMP             R4, #0
1978B6:  MOV.W           R2, R2,LSL#3
1978BA:  IT NE
1978BC:  MOVNE           R1, #2
1978BE:  MOVS            R4, #0
1978C0:  CMP             R6, #1
1978C2:  BLT             loc_1978D0
1978C4:  ORR.W           R3, R1, #1
1978C8:  ADD             R3, R0
1978CA:  CMP             R3, R2
1978CC:  IT LS
1978CE:  MOVLS           R4, #1
1978D0:  LDR.W           R3, [R7,#var_94]
1978D4:  STR.W           R9, [R7,#var_88]
1978D8:  CMP             R3, R5
1978DA:  STR.W           R11, [R7,#var_8C]
1978DE:  STR.W           R4, [R7,#var_A0]
1978E2:  BGE             loc_19790A
1978E4:  SUB.W           R8, R2, R4
1978E8:  LDR.W           R2, [R7,#var_B8]
1978EC:  MOV.W           R9, #5
1978F0:  CMP             R2, #0
1978F2:  ADD.W           R2, R0, R1
1978F6:  IT NE
1978F8:  MOVNE.W         R9, #4
1978FC:  LDR.W           R4, [R7,#var_D8]
197900:  CMP             R2, R8
197902:  BLS             loc_197910
197904:  MOV.W           R10, #0
197908:  B               loc_19792C
19790A:  MOV.W           R10, #0
19790E:  B               loc_19797A
197910:  MOV             R0, R11
197912:  BLX             j_ec_dec_bit_logp
197916:  LDR.W           R1, [R11,#0x1C]
19791A:  MOV             R10, R0
19791C:  LDR.W           R0, [R11,#0x14]
197920:  CLZ.W           R1, R1
197924:  LDR.W           R12, [R7,#var_AC]
197928:  ADD             R0, R1
19792A:  SUBS            R0, #0x20 ; ' '
19792C:  LDR.W           R2, [R7,#var_94]
197930:  ADDS            R1, R2, #1
197932:  CMP             R1, R5
197934:  STR.W           R10, [R4,R2,LSL#2]
197938:  BEQ             loc_19797A
19793A:  SUBS            R1, R5, #1
19793C:  LDR.W           R6, [R7,#var_8C]
197940:  SUBS            R5, R1, R2
197942:  ADD.W           R1, R4, R2,LSL#2
197946:  ADD.W           R11, R1, #4
19794A:  MOV             R4, R10
19794C:  ADD.W           R1, R0, R9
197950:  CMP             R1, R8
197952:  BHI             loc_197972
197954:  MOV             R0, R6
197956:  MOV             R1, R9
197958:  BLX             j_ec_dec_bit_logp
19795C:  LDR             R2, [R6,#0x1C]
19795E:  EORS            R4, R0
197960:  LDR             R1, [R6,#0x14]
197962:  ORR.W           R10, R10, R4
197966:  CLZ.W           R0, R2
19796A:  LDR.W           R12, [R7,#var_AC]
19796E:  ADD             R0, R1
197970:  SUBS            R0, #0x20 ; ' '
197972:  STR.W           R4, [R11],#4
197976:  SUBS            R5, #1
197978:  BNE             loc_19794C
19797A:  LDR.W           R0, [R7,#var_A0]
19797E:  CMP             R0, #1
197980:  BNE             loc_1979BA
197982:  LDR.W           R0, =(tf_select_table_ptr - 0x197990)
197986:  MOVS            R1, #2
197988:  LDR.W           R3, [R7,#var_B8]
19798C:  ADD             R0, PC; tf_select_table_ptr
19798E:  LDR.W           R2, [R7,#var_90]
197992:  LDR.W           R8, [R7,#var_B0]
197996:  LDR             R0, [R0]; tf_select_table
197998:  ORR.W           R1, R1, R3,LSL#2
19799C:  ADD             R1, R10
19799E:  LDR.W           R4, [R7,#var_A8]
1979A2:  ADD.W           R0, R0, R2,LSL#3
1979A6:  ADD.W           R2, R10, R3,LSL#2
1979AA:  LDRD.W          R9, R5, [R7,#var_98]
1979AE:  LDRB            R1, [R0,R1]
1979B0:  LDRB            R0, [R0,R2]
1979B2:  CMP             R0, R1
1979B4:  BNE             loc_1979D2
1979B6:  MOVS            R2, #0
1979B8:  B               loc_1979E2
1979BA:  MOVS            R2, #0
1979BC:  LDR.W           R10, [R7,#var_78]
1979C0:  LDR.W           R8, [R7,#var_B0]
1979C4:  LDR.W           R4, [R7,#var_A8]
1979C8:  LDRD.W          R9, R5, [R7,#var_98]
1979CC:  CMP             R5, R4
1979CE:  BLT             loc_1979EA
1979D0:  B               loc_197A1A
1979D2:  LDR.W           R0, [R7,#var_8C]
1979D6:  MOVS            R1, #1
1979D8:  BLX             j_ec_dec_bit_logp
1979DC:  LDR.W           R12, [R7,#var_AC]
1979E0:  LSLS            R2, R0, #1
1979E2:  LDR.W           R10, [R7,#var_78]
1979E6:  CMP             R5, R4
1979E8:  BGE             loc_197A1A
1979EA:  LDR.W           R3, [R7,#var_B8]
1979EE:  SUBS            R1, R4, R5
1979F0:  LDR.W           R6, [R7,#var_90]
1979F4:  LDR.W           R0, [R7,#var_D8]
1979F8:  ADD.W           R2, R2, R3,LSL#2
1979FC:  LDR.W           R3, =(tf_select_table_ptr - 0x197A08)
197A00:  ADD.W           R0, R0, R5,LSL#2
197A04:  ADD             R3, PC; tf_select_table_ptr
197A06:  LDR             R3, [R3]; tf_select_table
197A08:  ADD.W           R3, R3, R6,LSL#3
197A0C:  LDR             R6, [R0]
197A0E:  SUBS            R1, #1
197A10:  ADD             R6, R2
197A12:  LDRSB           R6, [R3,R6]
197A14:  STR.W           R6, [R0],#4
197A18:  BNE             loc_197A0C
197A1A:  LDR.W           R11, [R7,#var_8C]
197A1E:  MOV.W           R6, R12,LSL#2
197A22:  LDR.W           R1, [R11,#0x1C]
197A26:  LDR.W           R0, [R11,#0x14]
197A2A:  CLZ.W           R1, R1
197A2E:  ADD             R0, R1
197A30:  LDR.W           R1, [R7,#var_BC]
197A34:  SUBS            R0, #0x1C
197A36:  CMP             R0, R1
197A38:  MOV.W           R0, #2
197A3C:  BGT             loc_197A4C
197A3E:  LDR.W           R1, =(unk_C0464 - 0x197A4A)
197A42:  MOV             R0, R11
197A44:  MOVS            R2, #5
197A46:  ADD             R1, PC; unk_C0464
197A48:  BLX             j_ec_dec_icdf
197A4C:  SUB.W           LR, R7, #-var_100
197A50:  STR.W           R0, [R7,#var_F8]
197A54:  ADDS            R0, R6, #7
197A56:  STR.W           R6, [LR,#-4]
197A5A:  BIC.W           R6, R0, #7
197A5E:  SUB.W           R1, SP, R6
197A62:  MOV             SP, R1
197A64:  MOV             R0, R8
197A66:  LDR.W           R8, [R7,#var_90]
197A6A:  MOV             R3, R9
197A6C:  STR.W           R1, [R7,#var_A0]
197A70:  MOV             R2, R8
197A72:  BLX             j_init_caps
197A76:  STR.W           R6, [R7,#var_D4]
197A7A:  SUB.W           R6, SP, R6
197A7E:  MOV             SP, R6
197A80:  LDR.W           R0, [R7,#var_D0]
197A84:  MOV.W           R9, R0,LSL#6
197A88:  MOV             R0, R11
197A8A:  BLX             j_ec_tell_frac
197A8E:  LDR.W           R1, [R7,#var_A4]
197A92:  MOVS            R2, #6
197A94:  MOVS            R3, #0
197A96:  MOV             R11, R5
197A98:  ADDS            R1, #2
197A9A:  STR.W           R1, [R7,#var_E0]
197A9E:  STR.W           R9, [R7,#var_D0]
197AA2:  B               loc_197AB2
197AA4:  LDR.W           R2, [R7,#var_EC]
197AA8:  MOVS            R1, #2
197AAA:  SUBS            R2, #1
197AAC:  CMP             R2, #2
197AAE:  IT LE
197AB0:  MOVLE           R2, R1
197AB2:  LSLS            R1, R2, #3
197AB4:  STR.W           R2, [R7,#var_EC]
197AB8:  STR.W           R1, [R7,#var_DC]
197ABC:  CMP             R11, R4
197ABE:  BGE             loc_197B6E
197AC0:  LDR.W           R1, [R7,#var_DC]
197AC4:  MOV             R5, R11
197AC6:  ADDS            R2, R1, R0
197AC8:  LDR.W           R1, [R7,#var_E0]
197ACC:  ADD.W           R1, R1, R11,LSL#1
197AD0:  ADD.W           R11, R5, #1
197AD4:  CMP             R2, R9
197AD6:  BLT             loc_197AE6
197AD8:  ADDS            R1, #2
197ADA:  STR.W           R3, [R6,R5,LSL#2]
197ADE:  CMP             R11, R4
197AE0:  MOV             R5, R11
197AE2:  BLT             loc_197AD0
197AE4:  B               loc_197B6E
197AE6:  LDRSH.W         R2, [R1,#-2]
197AEA:  MOV.W           R10, #0
197AEE:  LDRSH.W         R1, [R1]
197AF2:  SUBS            R1, R1, R2
197AF4:  LDR.W           R2, [R7,#var_98]
197AF8:  MULS            R1, R2
197AFA:  LSL.W           R1, R1, R8
197AFE:  CMP             R1, #0x30 ; '0'
197B00:  MOV             R4, R1
197B02:  MOV.W           R2, R1,LSL#3
197B06:  IT LE
197B08:  MOVLE           R4, #0x30 ; '0'
197B0A:  CMP             R2, R4
197B0C:  IT LT
197B0E:  LSLLT           R4, R1, #3
197B10:  LDR.W           R1, [R7,#var_EC]
197B14:  STR.W           R4, [R7,#var_A4]
197B18:  LDR.W           R2, [R7,#var_A0]
197B1C:  LDR.W           R2, [R2,R5,LSL#2]
197B20:  CMP             R10, R2
197B22:  BGE             loc_197B5A
197B24:  LDR.W           R8, [R7,#var_8C]
197B28:  MOV             R0, R8
197B2A:  BLX             j_ec_dec_bit_logp
197B2E:  MOV             R4, R0
197B30:  MOV             R0, R8
197B32:  BLX             j_ec_tell_frac
197B36:  CBZ             R4, loc_197B54
197B38:  LDR.W           R1, [R7,#var_A4]
197B3C:  ADD.W           R2, R0, #8
197B40:  LDR.W           R8, [R7,#var_90]
197B44:  MOVS            R3, #0
197B46:  SUB.W           R9, R9, R1
197B4A:  ADD             R10, R1
197B4C:  MOVS            R1, #1
197B4E:  CMP             R2, R9
197B50:  BLT             loc_197B18
197B52:  B               loc_197B5A
197B54:  LDR.W           R8, [R7,#var_90]
197B58:  MOVS            R3, #0
197B5A:  STR.W           R10, [R6,R5,LSL#2]
197B5E:  CMP.W           R10, #1
197B62:  LDR.W           R10, [R7,#var_78]
197B66:  LDR.W           R4, [R7,#var_A8]
197B6A:  BLT             loc_197ABC
197B6C:  B               loc_197AA4
197B6E:  LDR.W           R1, [R7,#var_D4]
197B72:  SUB.W           R1, SP, R1
197B76:  STR.W           R1, [R7,#var_A4]
197B7A:  MOV             SP, R1
197B7C:  ADDS            R0, #0x30 ; '0'
197B7E:  CMP             R0, R9
197B80:  BLE             loc_197B8C
197B82:  MOV.W           R11, #5
197B86:  LDR.W           R5, [R7,#var_8C]
197B8A:  B               loc_197BA0
197B8C:  LDR.W           R1, =(unk_C0468 - 0x197B9A)
197B90:  MOVS            R2, #7
197B92:  LDR.W           R5, [R7,#var_8C]
197B96:  ADD             R1, PC; unk_C0468
197B98:  MOV             R0, R5
197B9A:  BLX             j_ec_dec_icdf
197B9E:  MOV             R11, R0
197BA0:  MOV             R0, R5
197BA2:  LDR.W           R9, [R7,#var_98]
197BA6:  BLX             j_ec_tell_frac
197BAA:  LDR.W           R1, [R7,#var_D0]
197BAE:  MOVS            R5, #0
197BB0:  MOV             R3, R6
197BB2:  CMP.W           R8, #2
197BB6:  SUB.W           R0, R1, R0
197BBA:  SUB.W           R12, R0, #1
197BBE:  BLT             loc_197BD8
197BC0:  LDR.W           R1, [R7,#var_B8]
197BC4:  MOVS            R2, #0
197BC6:  CBZ             R1, loc_197BDA
197BC8:  MOVS            R1, #0x10
197BCA:  MOVS            R2, #0
197BCC:  ADD.W           R1, R1, R8,LSL#3
197BD0:  CMP             R12, R1
197BD2:  IT GE
197BD4:  MOVGE           R2, #1
197BD6:  B               loc_197BDA
197BD8:  MOVS            R2, #0
197BDA:  LDR.W           R1, [R7,#var_D4]
197BDE:  SUB.W           LR, SP, R1
197BE2:  MOV             SP, LR
197BE4:  SUB.W           R0, SP, R1
197BE8:  MOV             SP, R0
197BEA:  SUB             SP, SP, #0x40 ; '@'
197BEC:  STR             R5, [SP,#0x148+var_110]
197BEE:  CMP             R2, #0
197BF0:  STRD.W          R5, R5, [SP,#0x148+var_118]
197BF4:  LDR.W           R1, [R7,#var_8C]
197BF8:  STRD.W          R8, R1, [SP,#0x148+var_120]
197BFC:  SUB.W           R1, R7, #-var_70
197C00:  STR             R1, [SP,#0x148+var_134]
197C02:  STR.W           R2, [R7,#var_DC]
197C06:  IT NE
197C08:  MOVNE           R2, #8
197C0A:  STR.W           R9, [SP,#0x148+var_124]
197C0E:  SUB.W           R1, R12, R2
197C12:  STR             R0, [SP,#0x148+var_128]
197C14:  STR.W           R0, [R7,#var_EC]
197C18:  SUB.W           R0, R7, #-var_6C
197C1C:  STR             R1, [SP,#0x148+var_138]
197C1E:  STR             R0, [SP,#0x148+var_13C]
197C20:  SUB.W           R0, R7, #-var_68
197C24:  STR.W           R2, [R7,#var_E0]
197C28:  MOV             R2, R4
197C2A:  STRD.W          R11, R0, [SP,#0x148+var_144]
197C2E:  MOV             R11, R9
197C30:  LDR.W           R9, [R7,#var_94]
197C34:  LDR.W           R6, [R7,#var_B0]
197C38:  LDR.W           R8, [R7,#var_A4]
197C3C:  LDR.W           R0, [R7,#var_A0]
197C40:  MOV             R1, R9
197C42:  STR.W           R8, [SP,#0x148+var_12C]
197C46:  STR.W           LR, [SP,#0x148+var_130]
197C4A:  STR             R0, [SP,#0x148+var_148]
197C4C:  MOV             R0, R6
197C4E:  STR.W           LR, [R7,#var_D4]
197C52:  BLX             j_clt_compute_allocation
197C56:  ADD             SP, SP, #0x40 ; '@'
197C58:  STR.W           R0, [R7,#var_A0]
197C5C:  SUB             SP, SP, #0x10
197C5E:  LDR.W           R0, [R7,#var_8C]
197C62:  MOV             R1, R9
197C64:  STR.W           R8, [SP,#0x118+var_118]
197C68:  MOV             R2, R4
197C6A:  STRD.W          R0, R11, [SP,#0x118+var_114]
197C6E:  MOV             R0, R6
197C70:  LDR.W           R3, [R7,#src]
197C74:  BLX             j_unquant_fine_energy
197C78:  ADD             SP, SP, #0x10
197C7A:  LDR.W           R0, [R7,#var_74]
197C7E:  MOV.W           R1, #0x800
197C82:  LDR.W           R11, [R7,#var_7C]
197C86:  SUB.W           R4, R7, #-var_2C
197C8A:  ADD.W           R0, R0, R0,LSR#31
197C8E:  ADD.W           R0, R1, R0,LSR#1
197C92:  SUB.W           R0, R0, R11
197C96:  LSLS            R6, R0, #2
197C98:  LDR.W           R0, [R4,R5,LSL#2]; dest
197C9C:  MOV             R2, R6; n
197C9E:  ADD.W           R1, R0, R11,LSL#2; src
197CA2:  BLX             j_memmove
197CA6:  ADDS            R5, #1
197CA8:  CMP             R5, R10
197CAA:  BLT             loc_197C98
197CAC:  LDR.W           R0, [R7,#var_AC]
197CB0:  LDR.W           R9, [R7,#var_98]
197CB4:  MUL.W           R10, R0, R9
197CB8:  MUL.W           R0, R9, R11
197CBC:  ADD.W           R1, R10, #7
197CC0:  BIC.W           R1, R1, #7
197CC4:  SUB.W           R2, SP, R1
197CC8:  MOVS            R1, #7
197CCA:  ADD.W           R0, R1, R0,LSL#1
197CCE:  BIC.W           R0, R0, #7
197CD2:  MOV             SP, R2
197CD4:  SUB.W           R4, SP, R0
197CD8:  MOV             SP, R4
197CDA:  LDR.W           R6, [R7,#var_C0]
197CDE:  LDRD.W          R0, R1, [R6,#0x20]
197CE2:  LDR.W           R3, [R7,#var_68]
197CE6:  LDRD.W          R5, R12, [R7,#var_70]
197CEA:  SUB             SP, SP, #0x50 ; 'P'
197CEC:  STRD.W          R1, R0, [SP,#0x158+var_114]
197CF0:  ADD.W           R0, R6, #0x28 ; '('
197CF4:  LDR.W           R1, [R7,#var_D0]
197CF8:  CMP.W           R9, #2
197CFC:  LDR.W           R6, [R7,#var_E0]
197D00:  STR             R3, [SP,#0x158+var_138]
197D02:  SUB.W           R1, R1, R6
197D06:  LDR.W           R3, [R7,#var_D8]
197D0A:  STRD.W          R3, R1, [SP,#0x158+var_134]
197D0E:  LDR.W           R6, [R7,#var_8C]
197D12:  LDR.W           R1, [R7,#var_90]
197D16:  STR             R5, [SP,#0x158+var_12C]
197D18:  STR             R6, [SP,#0x158+var_128]; int
197D1A:  STR             R1, [SP,#0x158+var_124]
197D1C:  LDR.W           R1, [R7,#var_A0]
197D20:  STRD.W          R1, R0, [SP,#0x158+var_120]
197D24:  MOV.W           R0, #0
197D28:  MOV.W           R1, #0
197D2C:  STR             R0, [SP,#0x158+var_118]
197D2E:  IT EQ
197D30:  ADDEQ.W         R1, R4, R11,LSL#1
197D34:  STR.W           R4, [R7,#var_A0]
197D38:  STRD.W          R4, R1, [SP,#0x158+var_158]
197D3C:  STR.W           R2, [R7,#var_D0]
197D40:  STRD.W          R2, R0, [SP,#0x158+var_150]
197D44:  LDR.W           R0, [R7,#var_D4]
197D48:  STR             R0, [SP,#0x158+var_148]
197D4A:  LDR.W           R0, [R7,#var_F4]
197D4E:  STR             R0, [SP,#0x158+var_144]
197D50:  LDR.W           R0, [R7,#var_F8]
197D54:  STRD.W          R0, R12, [SP,#0x158+var_140]
197D58:  MOVS            R0, #0
197D5A:  LDR.W           R4, [R7,#var_B0]
197D5E:  LDR.W           R8, [R7,#var_94]
197D62:  LDR.W           R5, [R7,#var_A8]
197D66:  MOV             R1, R4
197D68:  MOV             R2, R8
197D6A:  MOV             R3, R5
197D6C:  BLX             j_quant_all_bands
197D70:  ADD             SP, SP, #0x50 ; 'P'
197D72:  LDR.W           R0, [R7,#var_DC]
197D76:  CMP             R0, #1
197D78:  BNE             loc_197E18
197D7A:  MOV             R0, R6
197D7C:  MOVS            R1, #1
197D7E:  BLX             j_ec_dec_bits
197D82:  MOV             R9, R0
197D84:  LDR             R0, [R6,#0x14]
197D86:  LDR             R1, [R6,#0x1C]
197D88:  SUB             SP, SP, #0x18
197D8A:  LDR.W           R2, [R7,#var_BC]
197D8E:  CLZ.W           R1, R1
197D92:  ADDS            R2, #0x20 ; ' '
197D94:  SUBS            R0, R2, R0
197D96:  MOV             R2, R5
197D98:  SUBS            R0, R0, R1
197D9A:  LDR.W           R1, [R7,#var_A4]
197D9E:  STR             R1, [SP,#0x120+var_120]
197DA0:  LDR.W           R1, [R7,#var_EC]
197DA4:  STRD.W          R1, R0, [SP,#0x120+var_11C]
197DA8:  MOV             R1, R8
197DAA:  LDR.W           R3, [R7,#src]
197DAE:  LDR.W           R0, [R7,#var_98]
197DB2:  STR             R6, [SP,#0x120+var_114]
197DB4:  STR             R0, [SP,#0x120+var_110]
197DB6:  MOV             R0, R4
197DB8:  BLX             j_unquant_energy_finalise
197DBC:  ADD             SP, SP, #0x18
197DBE:  CMP.W           R9, #0
197DC2:  LDR.W           R9, [R7,#var_98]
197DC6:  LDR.W           R6, [R7,#var_C0]
197DCA:  LDR.W           R5, [R7,#var_90]
197DCE:  LDR.W           R8, [R7,#var_A0]
197DD2:  BEQ             loc_197E5A
197DD4:  LDRD.W          R0, R1, [R6,#0x24]
197DD8:  SUB             SP, SP, #0x28 ; '('
197DDA:  STRD.W          R1, R0, [SP,#0x130+var_110]
197DDE:  MOV             R1, R8
197DE0:  STRD.W          R9, R11, [SP,#0x130+var_130]
197DE4:  MOV             R3, R5
197DE6:  LDR.W           R0, [R7,#var_94]
197DEA:  STR             R0, [SP,#0x130+var_128]
197DEC:  LDR.W           R0, [R7,#var_A8]
197DF0:  STR             R0, [SP,#0x130+var_124]
197DF2:  LDR.W           R0, [R7,#src]
197DF6:  STR             R0, [SP,#0x130+var_120]
197DF8:  LDR.W           R0, [R7,#var_E4]
197DFC:  STR             R0, [SP,#0x130+var_11C]
197DFE:  LDR.W           R0, [R7,#var_E8]
197E02:  LDR.W           R2, [R7,#var_D0]
197E06:  STR             R0, [SP,#0x130+var_118]
197E08:  LDR.W           R0, [R7,#var_D4]
197E0C:  STR             R0, [SP,#0x130+var_114]
197E0E:  MOV             R0, R4
197E10:  BLX             j_anti_collapse
197E14:  ADD             SP, SP, #0x28 ; '('
197E16:  B               loc_197E5A
197E18:  LDR             R0, [R6,#0x14]
197E1A:  LDR             R1, [R6,#0x1C]
197E1C:  SUB             SP, SP, #0x18
197E1E:  LDR.W           R2, [R7,#var_BC]
197E22:  CLZ.W           R1, R1
197E26:  ADDS            R2, #0x20 ; ' '
197E28:  SUBS            R0, R2, R0
197E2A:  MOV             R2, R5
197E2C:  SUBS            R0, R0, R1
197E2E:  LDR.W           R1, [R7,#var_A4]
197E32:  STR             R1, [SP,#0x120+var_120]
197E34:  LDR.W           R1, [R7,#var_EC]
197E38:  STRD.W          R1, R0, [SP,#0x120+var_11C]; int
197E3C:  MOV             R0, R4
197E3E:  STRD.W          R6, R9, [SP,#0x120+var_114]
197E42:  MOV             R1, R8
197E44:  LDR.W           R3, [R7,#src]
197E48:  BLX             j_unquant_energy_finalise
197E4C:  ADD             SP, SP, #0x18
197E4E:  LDR.W           R6, [R7,#var_C0]
197E52:  LDR.W           R5, [R7,#var_90]
197E56:  LDR.W           R8, [R7,#var_A0]
197E5A:  MOVS            R0, #0
197E5C:  CMP.W           R10, #0
197E60:  IT GT
197E62:  MOVGT           R0, #1
197E64:  LDR.W           R1, [R7,#var_FC]
197E68:  ANDS            R0, R1
197E6A:  CMP             R0, #1
197E6C:  BNE             loc_197E92
197E6E:  LDR.W           R1, [R7,#var_74]
197E72:  MOVW            R0, #0x2030
197E76:  ADD.W           R0, R0, R1,LSL#2
197E7A:  LDR.W           R1, [R7,#var_78]
197E7E:  MLA.W           R0, R1, R0, R6
197E82:  MOV.W           R1, #0x9000
197E86:  ADDS            R0, #0x58 ; 'X'
197E88:  STRH.W          R1, [R0],#2
197E8C:  SUBS.W          R10, R10, #1
197E90:  BNE             loc_197E88
197E92:  LDR             R0, [R6,#0x10]
197E94:  LDR             R1, [R6,#0x24]
197E96:  SUB             SP, SP, #0x28 ; '('
197E98:  STR             R1, [SP,#0x130+var_110]; int
197E9A:  SUB.W           R6, R7, #-var_34
197E9E:  LDR.W           R1, [R7,#var_94]
197EA2:  STR             R1, [SP,#0x130+var_130]; int
197EA4:  MOV             R2, R6; int
197EA6:  LDR.W           R1, [R7,#var_F0]
197EAA:  STRD.W          R1, R9, [SP,#0x130+var_12C]; int
197EAE:  SUB.W           R9, R7, #-var_100
197EB2:  LDR.W           R1, [R7,#var_78]
197EB6:  STR             R1, [SP,#0x130+var_124]; int
197EB8:  LDR.W           R1, [R7,#var_B8]
197EBC:  STRD.W          R1, R5, [SP,#0x130+var_120]; int
197EC0:  MOV             R1, R8; int
197EC2:  LDR.W           R3, [R7,#src]; int
197EC6:  STR             R0, [SP,#0x130+var_118]; int
197EC8:  LDR.W           R0, [R9]
197ECC:  STR             R0, [SP,#0x130+var_114]; int
197ECE:  MOV             R0, R4; int
197ED0:  BL              sub_1994A8
197ED4:  ADD             SP, SP, #0x28 ; '('
197ED6:  CMP             R5, #0
197ED8:  BEQ             loc_197F90
197EDA:  LDR.W           R8, [R7,#var_C0]
197EDE:  MOVS            R5, #0
197EE0:  LDR.W           R9, [R7,#var_B0]
197EE4:  LDR.W           R12, [R8,#0x24]
197EE8:  MOVS            R0, #0xF
197EEA:  LDRD.W          R3, R2, [R8,#0x3C]
197EEE:  LDRSH.W         LR, [R8,#0x46]
197EF2:  CMP             R3, #0xF
197EF4:  IT LE
197EF6:  MOVLE           R3, R0
197EF8:  CMP             R2, #0xF
197EFA:  IT LE
197EFC:  MOVLE           R2, R0
197EFE:  SUB.W           R0, R7, #-var_34
197F02:  STRD.W          R3, R2, [R8,#0x3C]
197F06:  LDR.W           R6, [R0,R5,LSL#2]
197F0A:  LDRSH.W         R4, [R8,#0x44]
197F0E:  LDRD.W          R11, R1, [R8,#0x48]
197F12:  LDR.W           R10, [R9,#0x34]
197F16:  LDR.W           R0, [R9,#0x24]
197F1A:  SUB             SP, SP, #0x20 ; ' '
197F1C:  STRD.W          R0, LR, [SP,#0x128+var_128]
197F20:  MOV             R0, R6
197F22:  STRD.W          R4, R1, [SP,#0x128+var_120]
197F26:  MOV             R1, R6
197F28:  STRD.W          R11, R10, [SP,#0x128+var_118]
197F2C:  LDR.W           R11, [R7,#var_74]
197F30:  STRD.W          R11, R12, [SP,#0x128+var_110]
197F34:  BLX             j_comb_filter
197F38:  ADD             SP, SP, #0x20 ; ' '
197F3A:  LDR.W           R10, [R8,#0x48]
197F3E:  LDR.W           R0, [R9,#0x24]
197F42:  LDR.W           R12, [R9,#0x34]
197F46:  LDRSH.W         R3, [R8,#0x44]
197F4A:  LDR.W           LR, [R8,#0x24]
197F4E:  LDR.W           R2, [R8,#0x3C]
197F52:  SUB             SP, SP, #0x20 ; ' '
197F54:  LDR.W           R1, [R7,#var_88]
197F58:  LDR.W           R4, [R7,#var_7C]
197F5C:  SXTH            R1, R1
197F5E:  SUBS            R4, R4, R0
197F60:  STRD.W          R4, R3, [SP,#0x128+var_128]
197F64:  ADD.W           R0, R6, R0,LSL#2
197F68:  STRD.W          R1, R10, [SP,#0x128+var_120]
197F6C:  LDR.W           R1, [R7,#var_84]
197F70:  LDR.W           R10, [R7,#var_78]
197F74:  STRD.W          R1, R12, [SP,#0x128+var_118]
197F78:  MOV             R1, R0
197F7A:  STRD.W          R11, LR, [SP,#0x128+var_110]
197F7E:  LDR.W           R3, [R7,#var_80]
197F82:  BLX             j_comb_filter
197F86:  ADD             SP, SP, #0x20 ; ' '
197F88:  ADDS            R5, #1
197F8A:  CMP             R5, R10
197F8C:  BLT             loc_197EE4
197F8E:  B               loc_197FFA
197F90:  LDR.W           R8, [R7,#var_C0]
197F94:  MOVS            R4, #0
197F96:  LDR.W           R9, [R7,#var_B0]
197F9A:  LDR.W           R12, [R8,#0x24]
197F9E:  MOVS            R0, #0xF
197FA0:  LDRD.W          R3, R2, [R8,#0x3C]
197FA4:  LDRSH.W         LR, [R8,#0x46]
197FA8:  CMP             R3, #0xF
197FAA:  IT LE
197FAC:  MOVLE           R3, R0
197FAE:  CMP             R2, #0xF
197FB0:  IT LE
197FB2:  MOVLE           R2, R0
197FB4:  STRD.W          R3, R2, [R8,#0x3C]
197FB8:  LDR.W           R0, [R6,R4,LSL#2]
197FBC:  LDRSH.W         R11, [R8,#0x44]
197FC0:  LDRD.W          R10, R6, [R8,#0x48]
197FC4:  LDR.W           R1, [R9,#0x24]
197FC8:  LDR.W           R5, [R9,#0x34]
197FCC:  SUB             SP, SP, #0x20 ; ' '
197FCE:  STRD.W          R1, LR, [SP,#0x128+var_128]
197FD2:  STRD.W          R11, R6, [SP,#0x128+var_120]
197FD6:  SUB.W           R6, R7, #-var_34
197FDA:  LDR.W           R1, [R7,#var_74]
197FDE:  STR.W           R10, [SP,#0x128+var_118]
197FE2:  LDR.W           R10, [R7,#var_78]
197FE6:  STR             R5, [SP,#0x128+var_114]
197FE8:  STRD.W          R1, R12, [SP,#0x128+var_110]
197FEC:  MOV             R1, R0
197FEE:  BLX             j_comb_filter
197FF2:  ADD             SP, SP, #0x20 ; ' '
197FF4:  ADDS            R4, #1
197FF6:  CMP             R4, R10
197FF8:  BLT             loc_197F9A
197FFA:  LDR.W           R1, [R8,#0x48]
197FFE:  LDRH.W          R2, [R8,#0x44]
198002:  LDR.W           R3, [R7,#var_88]
198006:  LDR.W           R0, [R8,#0x3C]
19800A:  STRH.W          R3, [R8,#0x44]
19800E:  STRH.W          R2, [R8,#0x46]
198012:  LDR.W           R2, [R7,#var_84]
198016:  STRD.W          R2, R1, [R8,#0x48]
19801A:  LDR.W           R1, [R7,#var_80]
19801E:  STRD.W          R1, R0, [R8,#0x3C]
198022:  LDR.W           R0, [R7,#var_90]
198026:  CMP             R0, #0
198028:  ITTT NE
19802A:  STRHNE.W        R3, [R8,#0x46]
19802E:  STRNE.W         R1, [R8,#0x40]
198032:  STRNE.W         R2, [R8,#0x4C]
198036:  LDR.W           R0, [R7,#var_98]
19803A:  LDR.W           R9, [R7,#var_9C]
19803E:  LDRD.W          LR, R4, [R7,#var_AC]
198042:  CMP             R0, #1
198044:  LDR.W           R11, [R7,#var_94]
198048:  LDR.W           R5, [R7,#n]
19804C:  BNE             loc_198060
19804E:  LDR.W           R1, [R7,#src]; src
198052:  MOV             R2, R5; n
198054:  ADD.W           R0, R1, LR,LSL#1; dest
198058:  BLX             j_memcpy
19805C:  LDR.W           LR, [R7,#var_AC]
198060:  LDR.W           R0, [R7,#var_B8]
198064:  CBZ             R0, loc_198098
198066:  CMP             R5, #1
198068:  BLT             loc_19810A
19806A:  LDR.W           R1, [R7,#var_74]
19806E:  MOVW            R0, #0x2030
198072:  ADD.W           R0, R0, R1,LSL#2
198076:  MLA.W           R0, R10, R0, R8
19807A:  ADDS            R0, #0x58 ; 'X'
19807C:  LDRSH.W         R1, [R0]
198080:  LDRSH.W         R2, [R0,LR,LSL#2]
198084:  CMP             R2, R1
198086:  IT LT
198088:  MOVLT           R1, R2
19808A:  SUBS            R5, #1
19808C:  STRH.W          R1, [R0,LR,LSL#2]
198090:  ADD.W           R0, R0, #2
198094:  BNE             loc_19807C
198096:  B               loc_19810A
198098:  SUB.W           LR, R7, #-var_100
19809C:  LDRD.W          R0, R6, [R7,#var_E8]; dest
1980A0:  MOV             R4, R9
1980A2:  MOV             R1, R6; src
1980A4:  LDR.W           R9, [LR,#-4]
1980A8:  MOV             R2, R9; n
1980AA:  BLX             j_memcpy
1980AE:  LDR.W           R1, [R7,#src]; src
1980B2:  MOV             R2, R9; n
1980B4:  MOV             R0, R6; dest
1980B6:  MOV             R9, R4
1980B8:  LDR.W           R4, [R7,#var_A8]
1980BC:  BLX             j_memcpy
1980C0:  LDR.W           R1, [R8,#0x34]
1980C4:  MOV.W           R0, #0x400
1980C8:  LDR.W           LR, [R7,#var_AC]
1980CC:  CMP             R1, #0xA
1980CE:  LDR.W           R1, [R7,#var_CC]
1980D2:  IT LT
1980D4:  SXTHLT          R0, R1
1980D6:  CMP             R5, #1
1980D8:  BLT             loc_19810A
1980DA:  LDR.W           R2, [R7,#var_74]
1980DE:  MOVW            R1, #0x2030
1980E2:  ADD.W           R1, R1, R2,LSL#2
1980E6:  ADD.W           R2, LR, LR,LSL#1
1980EA:  MLA.W           R1, R10, R1, R8
1980EE:  LSLS            R2, R2, #2
1980F0:  ADDS            R1, #0x58 ; 'X'
1980F2:  LDRSH           R3, [R1,R2]
1980F4:  LDRSH.W         R6, [R1]
1980F8:  ADD             R3, R0
1980FA:  CMP             R3, R6
1980FC:  IT LT
1980FE:  MOVLT           R6, R3
198100:  SUBS            R5, #1
198102:  STRH            R6, [R1,R2]
198104:  ADD.W           R1, R1, #2
198108:  BNE             loc_1980F2
19810A:  CMP.W           R11, #1
19810E:  BLT.W           loc_19823A
198112:  LDR.W           R1, [R7,#var_74]
198116:  MOVW            R0, #0x2030
19811A:  MOVS            R3, #0
19811C:  MOV.W           R6, #0x9000
198120:  MOVS            R5, #0
198122:  ADD.W           R0, R0, R1,LSL#2
198126:  MLA.W           R0, R10, R0, R8
19812A:  ADDS            R0, #0x58 ; 'X'
19812C:  ADD.W           R1, R0, LR,LSL#2
198130:  ADD.W           R2, R0, LR,LSL#3
198134:  STRH.W          R3, [R0,R5,LSL#1]
198138:  STRH.W          R6, [R2,R5,LSL#1]
19813C:  STRH.W          R6, [R1,R5,LSL#1]
198140:  ADDS            R5, #1
198142:  CMP             R11, R5
198144:  BNE             loc_198134
198146:  CMP             R4, LR
198148:  BGE             loc_19818C
19814A:  LDR.W           R1, [R7,#var_74]
19814E:  MOVW            R0, #0x2030
198152:  LDR.W           R2, [R7,#var_A8]
198156:  MOVS            R6, #0
198158:  MOV.W           R5, #0x9000
19815C:  MOVS            R4, #0
19815E:  ADD.W           R0, R0, R1,LSL#2
198162:  MUL.W           R1, R10, R0
198166:  SUB.W           R0, LR, R2
19816A:  ADD.W           R1, R1, R2,LSL#1
19816E:  ADD             R1, R8
198170:  ADDS            R1, #0x58 ; 'X'
198172:  ADD.W           R2, R1, LR,LSL#2
198176:  ADD.W           R3, R1, LR,LSL#3
19817A:  STRH.W          R6, [R1,R4,LSL#1]
19817E:  STRH.W          R5, [R3,R4,LSL#1]
198182:  STRH.W          R5, [R2,R4,LSL#1]
198186:  ADDS            R4, #1
198188:  CMP             R0, R4
19818A:  BNE             loc_19817A
19818C:  LDR.W           R1, [R7,#var_74]
198190:  MOVW            R0, #0x2030
198194:  ADD.W           R12, LR, LR,LSL#2
198198:  MOVS            R5, #0
19819A:  MOV.W           R4, #0x9000
19819E:  ADD.W           R0, R0, R1,LSL#2
1981A2:  MUL.W           R0, R10, R0
1981A6:  ADD.W           R1, R0, LR,LSL#1
1981AA:  ADD             R1, R8
1981AC:  ADD.W           R2, R1, #0x58 ; 'X'
1981B0:  ADD.W           R1, R0, R12,LSL#1
1981B4:  ADD             R1, R8
1981B6:  ADD.W           R3, R1, #0x58 ; 'X'
1981BA:  ADD.W           R1, LR, LR,LSL#1
1981BE:  ADD.W           R0, R0, R1,LSL#1
1981C2:  ADD             R0, R8
1981C4:  ADD.W           R6, R0, #0x58 ; 'X'
1981C8:  MOVS            R0, #0
1981CA:  STRH.W          R5, [R2,R0,LSL#1]
1981CE:  STRH.W          R4, [R3,R0,LSL#1]
1981D2:  STRH.W          R4, [R6,R0,LSL#1]
1981D6:  ADDS            R0, #1
1981D8:  CMP             R11, R0
1981DA:  BNE             loc_1981CA
1981DC:  LDR.W           R5, [R7,#var_A8]
1981E0:  CMP             R5, LR
1981E2:  BGE             loc_1982D6
1981E4:  LDR.W           R2, [R7,#var_74]
1981E8:  MOVW            R0, #0x2030
1981EC:  MOVS            R4, #0
1981EE:  ADD.W           R0, R0, R2,LSL#2
1981F2:  SUB.W           R2, LR, R5
1981F6:  MUL.W           R6, R10, R0
1981FA:  ADD.W           R0, R6, LR,LSL#1
1981FE:  ADD.W           R1, R6, R1,LSL#1
198202:  ADD.W           R0, R0, R5,LSL#1
198206:  ADD.W           R1, R1, R5,LSL#1
19820A:  ADD             R0, R8
19820C:  ADD             R1, R8
19820E:  ADD.W           R3, R0, #0x58 ; 'X'
198212:  ADD.W           R0, R6, R12,LSL#1
198216:  ADD.W           R0, R0, R5,LSL#1
19821A:  ADDS            R1, #0x58 ; 'X'
19821C:  ADD             R0, R8
19821E:  MOVS            R6, #0
198220:  ADDS            R0, #0x58 ; 'X'
198222:  MOV.W           R5, #0x9000
198226:  STRH.W          R6, [R3,R4,LSL#1]
19822A:  STRH.W          R5, [R0,R4,LSL#1]
19822E:  STRH.W          R5, [R1,R4,LSL#1]
198232:  ADDS            R4, #1
198234:  CMP             R2, R4
198236:  BNE             loc_198226
198238:  B               loc_1982D6
19823A:  CMP             R4, LR
19823C:  BGE             loc_1982D6
19823E:  LDR.W           R1, [R7,#var_74]
198242:  MOVW            R0, #0x2030
198246:  MOVS            R6, #0
198248:  MOV.W           R5, #0x9000
19824C:  ADD.W           R0, R0, R1,LSL#2
198250:  MUL.W           R1, R10, R0
198254:  SUB.W           R0, LR, R4
198258:  ADD.W           R1, R1, R4,LSL#1
19825C:  MOVS            R4, #0
19825E:  ADD             R1, R8
198260:  ADDS            R1, #0x58 ; 'X'
198262:  ADD.W           R2, R1, LR,LSL#2
198266:  ADD.W           R3, R1, LR,LSL#3
19826A:  STRH.W          R6, [R1,R4,LSL#1]
19826E:  STRH.W          R5, [R3,R4,LSL#1]
198272:  STRH.W          R5, [R2,R4,LSL#1]
198276:  ADDS            R4, #1
198278:  CMP             R0, R4
19827A:  BNE             loc_19826A
19827C:  LDR.W           R2, [R7,#var_74]
198280:  MOVW            R1, #0x2030
198284:  LDR.W           R5, [R7,#var_A8]
198288:  ADD.W           R6, LR, LR,LSL#1
19828C:  MOVS            R4, #0
19828E:  ADD.W           R1, R1, R2,LSL#2
198292:  ADD.W           R2, LR, LR,LSL#2
198296:  MUL.W           R3, R10, R1
19829A:  ADD.W           R1, R3, LR,LSL#1
19829E:  ADD.W           R2, R3, R2,LSL#1
1982A2:  ADD.W           R3, R3, R6,LSL#1
1982A6:  ADD.W           R1, R1, R5,LSL#1
1982AA:  ADD.W           R2, R2, R5,LSL#1
1982AE:  ADD.W           R3, R3, R5,LSL#1
1982B2:  ADD             R1, R8
1982B4:  ADD             R2, R8
1982B6:  ADD             R3, R8
1982B8:  ADDS            R1, #0x58 ; 'X'
1982BA:  ADDS            R2, #0x58 ; 'X'
1982BC:  ADDS            R3, #0x58 ; 'X'
1982BE:  MOVS            R6, #0
1982C0:  MOV.W           R5, #0x9000
1982C4:  STRH.W          R6, [R1,R4,LSL#1]
1982C8:  STRH.W          R5, [R2,R4,LSL#1]
1982CC:  STRH.W          R5, [R3,R4,LSL#1]
1982D0:  ADDS            R4, #1
1982D2:  CMP             R0, R4
1982D4:  BNE             loc_1982C4
1982D6:  LDR.W           R4, [R7,#var_8C]
1982DA:  LDR.W           R1, [R8,#0x10]
1982DE:  LDR             R0, [R4,#0x1C]
1982E0:  STR.W           R0, [R8,#0x28]
1982E4:  SUB             SP, SP, #0x10
1982E6:  LDR.W           R2, [R7,#var_B0]
1982EA:  ADD.W           R0, R8, #0x50 ; 'P'
1982EE:  MOV             R3, R10
1982F0:  ADDS            R2, #0x10
1982F2:  STRD.W          R1, R2, [SP,#0x118+var_118]
1982F6:  MOV             R1, R9
1982F8:  STR             R0, [SP,#0x118+var_110]
1982FA:  LDR             R0, [R7,#arg_8]
1982FC:  LDR.W           R2, [R7,#var_7C]
198300:  STR             R0, [SP,#0x118+var_10C]
198302:  SUB.W           R0, R7, #-var_34
198306:  BL              sub_199154
19830A:  ADD             SP, SP, #0x10
19830C:  MOVS            R0, #0
19830E:  STR.W           R0, [R8,#0x34]
198312:  LDR             R1, [R4,#0x1C]
198314:  LDR             R0, [R4,#0x14]
198316:  CLZ.W           R1, R1
19831A:  ADD             R0, R1
19831C:  LDR.W           R1, [R7,#var_BC]
198320:  SUBS            R0, #0x20 ; ' '
198322:  CMP             R0, R1
198324:  BLE             loc_19832C
198326:  MOV             R0, #0xFFFFFFFD
19832A:  B               loc_198344
19832C:  LDR             R0, [R4,#0x2C]
19832E:  CMP             R0, #0
198330:  ITT NE
198332:  MOVNE           R0, #1
198334:  STRNE.W         R0, [R8,#0x2C]
198338:  LDR.W           R1, [R8,#0x10]
19833C:  LDR.W           R0, [R7,#var_C4]
198340:  BLX             sub_220A40
198344:  LDR             R1, =(__stack_chk_guard_ptr - 0x19834E)
198346:  LDR.W           R2, [R7,#var_24]
19834A:  ADD             R1, PC; __stack_chk_guard_ptr
19834C:  LDR             R1, [R1]; __stack_chk_guard
19834E:  LDR             R1, [R1]
198350:  SUBS            R1, R1, R2
198352:  ITTTT EQ
198354:  SUBEQ.W         R4, R7, #-var_1C
198358:  MOVEQ           SP, R4
19835A:  POPEQ.W         {R8-R11}
19835E:  POPEQ           {R4-R7,PC}
198360:  BLX             __stack_chk_fail
