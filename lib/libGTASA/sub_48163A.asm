; =========================================================
; Game Engine Function: sub_48163A
; Address            : 0x48163A - 0x4818A0
; =========================================================

48163A:  PUSH            {R4-R7,LR}
48163C:  ADD             R7, SP, #0xC
48163E:  PUSH.W          {R8-R11}
481642:  SUB             SP, SP, #0x14
481644:  MOV             R10, R1
481646:  MOV             R8, R0
481648:  LDR.W           R0, [R10,#4]
48164C:  MOV             R4, R2
48164E:  ADDS            R1, R3, R4
481650:  STR             R1, [SP,#0x30+var_24]
481652:  CMP             R1, R0
481654:  BHI             loc_481664
481656:  LDR.W           R0, [R10,#0xC]
48165A:  CMP             R0, R3
48165C:  BCC             loc_481664
48165E:  LDR.W           R0, [R10]
481662:  CBNZ            R0, loc_481676
481664:  LDR.W           R0, [R8]
481668:  MOVS            R1, #0x16
48166A:  STR             R1, [R0,#0x14]
48166C:  LDR.W           R0, [R8]
481670:  LDR             R1, [R0]
481672:  MOV             R0, R8
481674:  BLX             R1
481676:  LDR.W           R0, [R10,#0x18]
48167A:  STR             R4, [SP,#0x30+var_28]
48167C:  CMP             R0, R4
48167E:  STR.W           R8, [SP,#0x30+var_20]
481682:  BHI             loc_481692
481684:  LDR.W           R1, [R10,#0x10]
481688:  ADD             R0, R1
48168A:  LDR             R1, [SP,#0x30+var_24]
48168C:  CMP             R1, R0
48168E:  BLS.W           loc_4817F4
481692:  LDRB.W          R0, [R10,#0x22]
481696:  CBNZ            R0, loc_4816AA
481698:  LDR.W           R0, [R8]
48169C:  MOVS            R1, #0x45 ; 'E'
48169E:  STR             R1, [R0,#0x14]
4816A0:  LDR.W           R0, [R8]
4816A4:  LDR             R1, [R0]
4816A6:  MOV             R0, R8
4816A8:  BLX             R1
4816AA:  LDRB.W          R0, [R10,#0x21]
4816AE:  CMP             R0, #0
4816B0:  BEQ             loc_48174C
4816B2:  LDR.W           R0, [R10,#0x10]
4816B6:  CMP             R0, #1
4816B8:  BLT             loc_481742
4816BA:  LDR.W           R2, [R10,#4]
4816BE:  LDRD.W          R3, R1, [R10,#0x14]
4816C2:  LDR.W           R6, [R10,#0x1C]
4816C6:  SUBS            R2, R2, R1
4816C8:  CMP             R3, R0
4816CA:  IT LT
4816CC:  MOVLT           R0, R3
4816CE:  SUBS            R3, R6, R1
4816D0:  CMP             R0, R3
4816D2:  IT GE
4816D4:  MOVGE           R0, R3
4816D6:  CMP             R0, R2
4816D8:  IT GE
4816DA:  MOVGE           R0, R2
4816DC:  CMP             R0, #1
4816DE:  BLT             loc_481742
4816E0:  LDR.W           R6, [R10,#8]
4816E4:  ADD.W           R9, R10, #0x28 ; '('
4816E8:  MOV.W           R11, #0
4816EC:  MUL.W           R4, R1, R6
4816F0:  LDR.W           R1, [R10]
4816F4:  MUL.W           R8, R0, R6
4816F8:  LDR.W           R5, [R10,#0x2C]
4816FC:  LDR             R0, [SP,#0x30+var_20]
4816FE:  MOV             R3, R4
481700:  LDR.W           R2, [R1,R11,LSL#2]
481704:  MOV             R1, R9
481706:  STR.W           R8, [SP,#0x30+var_30]
48170A:  BLX             R5
48170C:  LDRD.W          R0, R1, [R10,#0x10]
481710:  ADD             R11, R1
481712:  CMP             R0, R11
481714:  BLE             loc_481742
481716:  LDR.W           R2, [R10,#4]
48171A:  SUB.W           R0, R0, R11
48171E:  LDRD.W          R3, R5, [R10,#0x18]
481722:  CMP             R1, R0
481724:  IT LT
481726:  MOVLT           R0, R1
481728:  ADD             R4, R8
48172A:  ADD.W           R1, R11, R3
48172E:  SUBS            R3, R5, R1
481730:  SUBS            R1, R2, R1
481732:  CMP             R0, R3
481734:  IT GE
481736:  MOVGE           R0, R3
481738:  CMP             R0, R1
48173A:  IT GE
48173C:  MOVGE           R0, R1
48173E:  CMP             R0, #0
481740:  BGT             loc_4816F0
481742:  MOVS            R0, #0
481744:  STRB.W          R0, [R10,#0x21]
481748:  LDR.W           R8, [SP,#0x30+var_20]
48174C:  LDR             R2, [SP,#0x30+var_28]
48174E:  LDR.W           R1, [R10,#0x18]
481752:  LDR.W           R0, [R10,#0x10]
481756:  CMP             R1, R2
481758:  MOV             R1, R2
48175A:  BCC             loc_481766
48175C:  LDR             R1, [SP,#0x30+var_24]
48175E:  SUBS            R1, R1, R0
481760:  CMP             R1, #0
481762:  IT LE
481764:  MOVLE           R1, #0
481766:  LDR.W           R9, [R10,#8]
48176A:  CMP             R0, #1
48176C:  STR.W           R1, [R10,#0x18]
481770:  BLT             loc_4817F4
481772:  LDR.W           R3, [R10,#0x14]
481776:  LDR.W           R6, [R10,#0x1C]
48177A:  CMP             R3, R0
48177C:  LDR.W           R2, [R10,#4]
481780:  SUB.W           R6, R6, R1
481784:  IT LT
481786:  MOVLT           R0, R3
481788:  CMP             R0, R6
48178A:  SUB.W           R2, R2, R1
48178E:  IT GE
481790:  MOVGE           R0, R6
481792:  CMP             R0, R2
481794:  IT GE
481796:  MOVGE           R0, R2
481798:  CMP             R0, #1
48179A:  BLT             loc_4817F4
48179C:  MUL.W           R6, R9, R1
4817A0:  ADD.W           R11, R10, #0x28 ; '('
4817A4:  MOVS            R4, #0
4817A6:  LDR.W           R1, [R10]
4817AA:  MUL.W           R5, R0, R9
4817AE:  LDR.W           R12, [R10,#0x28]
4817B2:  MOV             R0, R8
4817B4:  MOV             R3, R6
4817B6:  LDR.W           R2, [R1,R4,LSL#2]
4817BA:  MOV             R1, R11
4817BC:  STR             R5, [SP,#0x30+var_30]
4817BE:  BLX             R12
4817C0:  LDRD.W          R0, R1, [R10,#0x10]
4817C4:  ADD             R4, R1
4817C6:  CMP             R0, R4
4817C8:  BLE             loc_4817F4
4817CA:  LDR.W           R12, [R10,#4]
4817CE:  SUBS            R0, R0, R4
4817D0:  LDRD.W          R3, R2, [R10,#0x18]
4817D4:  CMP             R1, R0
4817D6:  IT LT
4817D8:  MOVLT           R0, R1
4817DA:  ADD             R6, R5
4817DC:  ADDS            R1, R4, R3
4817DE:  SUBS            R2, R2, R1
4817E0:  SUB.W           R1, R12, R1
4817E4:  CMP             R0, R2
4817E6:  IT GE
4817E8:  MOVGE           R0, R2
4817EA:  CMP             R0, R1
4817EC:  IT GE
4817EE:  MOVGE           R0, R1
4817F0:  CMP             R0, #0
4817F2:  BGT             loc_4817A6
4817F4:  LDR.W           R8, [R7,#arg_0]
4817F8:  LDR.W           R0, [R10,#0x1C]
4817FC:  LDR             R6, [SP,#0x30+var_24]
4817FE:  LDR.W           R9, [SP,#0x30+var_28]
481802:  CMP             R0, R6
481804:  BCS             loc_48187C
481806:  CMP             R0, R9
481808:  BCS             loc_481822
48180A:  CMP.W           R8, #0
48180E:  BEQ             loc_481830
481810:  LDR             R0, [SP,#0x30+var_20]
481812:  MOVS            R1, #0x16
481814:  LDR             R2, [R0]
481816:  STR             R1, [R2,#0x14]
481818:  LDR             R1, [R0]
48181A:  LDR             R1, [R1]
48181C:  BLX             R1
48181E:  MOV             R0, R9
481820:  B               loc_481828
481822:  CMP.W           R8, #0
481826:  BEQ             loc_481836
481828:  MOVS            R1, #1
48182A:  STR.W           R6, [R10,#0x1C]
48182E:  B               loc_481838
481830:  MOVS            R1, #0
481832:  MOV             R0, R9
481834:  B               loc_481838
481836:  MOVS            R1, #0
481838:  LDRB.W          R2, [R10,#0x20]
48183C:  CBZ             R2, loc_48186C
48183E:  LDR.W           R1, [R10,#0x18]
481842:  SUBS            R2, R6, R1
481844:  SUBS            R3, R0, R1
481846:  CMP             R3, R2
481848:  BCS             loc_48187C
48184A:  LDR.W           R4, [R10,#8]
48184E:  LSLS            R2, R0, #2
481850:  SUB.W           R5, R2, R1,LSL#2
481854:  SUBS            R6, R6, R0
481856:  LDR.W           R0, [R10]
48185A:  MOV             R1, R4; unsigned int
48185C:  LDR             R0, [R0,R5]; void *
48185E:  BLX             j__Z9jzero_farPvj; jzero_far(void *,uint)
481862:  SUBS            R6, #1
481864:  ADD.W           R5, R5, #4
481868:  BNE             loc_481856
48186A:  B               loc_48187C
48186C:  CBNZ            R1, loc_48187C
48186E:  LDR             R0, [SP,#0x30+var_20]
481870:  MOVS            R1, #0x16
481872:  LDR             R2, [R0]
481874:  STR             R1, [R2,#0x14]
481876:  LDR             R1, [R0]
481878:  LDR             R1, [R1]
48187A:  BLX             R1
48187C:  CMP.W           R8, #0
481880:  ITT NE
481882:  MOVNE           R0, #1
481884:  STRBNE.W        R0, [R10,#0x21]
481888:  LDR.W           R1, [R10,#0x18]
48188C:  LDR.W           R0, [R10]
481890:  SUB.W           R1, R9, R1
481894:  ADD.W           R0, R0, R1,LSL#2
481898:  ADD             SP, SP, #0x14
48189A:  POP.W           {R8-R11}
48189E:  POP             {R4-R7,PC}
