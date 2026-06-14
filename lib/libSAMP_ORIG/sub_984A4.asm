; =========================================================
; Game Engine Function: sub_984A4
; Address            : 0x984A4 - 0x986F0
; =========================================================

984A4:  PUSH            {R4-R7,LR}
984A6:  ADD             R7, SP, #0xC
984A8:  PUSH.W          {R8-R11}
984AC:  SUB             SP, SP, #0x3C
984AE:  LDR             R6, =(dword_1ACF68 - 0x984BC)
984B0:  MOV             R9, R0
984B2:  MOV.W           R1, #0x1960
984B6:  MOVS            R2, #0
984B8:  ADD             R6, PC; dword_1ACF68
984BA:  LDR             R5, [R6]
984BC:  LDR             R0, =(__stack_chk_guard_ptr - 0x984C6)
984BE:  ADD.W           R8, R5, #0x1960
984C2:  ADD             R0, PC; __stack_chk_guard_ptr
984C4:  LDR             R0, [R0]; __stack_chk_guard
984C6:  LDR             R0, [R0]
984C8:  STR             R0, [SP,#0x58+var_20]
984CA:  LDR.W           R0, [R8,#0x4C]
984CE:  LDR.W           R11, [R5,R1]
984D2:  STRD.W          R2, R2, [SP,#0x58+var_2C]
984D6:  LDR.W           R1, [R0,#0x1C4]
984DA:  LDR.W           R0, [R0,#0x1CC]
984DE:  STR             R2, [SP,#0x58+var_44]
984E0:  ADD.W           R0, R0, R1,LSL#2
984E4:  LDR.W           R2, [R8,#0x154]
984E8:  LDR.W           R4, [R8,#0x148]
984EC:  LDR.W           R0, [R0,#-4]
984F0:  STR             R0, [SP,#0x58+var_38]
984F2:  ADD             R0, SP, #0x58+var_50
984F4:  STR.W           R9, [SP,#0x58+var_48]
984F8:  STRD.W          R2, R11, [SP,#0x58+var_40]
984FC:  BL              sub_98718
98500:  LDRD.W          R0, R1, [SP,#0x58+var_50]
98504:  ADD.W           R10, SP, #0x58+var_48
98508:  STRD.W          R0, R1, [SP,#0x58+var_34]
9850C:  ADD.W           R0, R10, #0x14
98510:  VLDR            S0, =-256000.0
98514:  VLDR            S4, [R5,#0xE4]
98518:  MOV             R1, R0
9851A:  VLDR            S2, [R5,#0xE0]
9851E:  VCMP.F32        S4, S0
98522:  VMRS            APSR_nzcv, FPSCR
98526:  IT GE
98528:  ADDGE.W         R1, R5, #0xE0
9852C:  VCMP.F32        S2, S0
98530:  VMRS            APSR_nzcv, FPSCR
98534:  IT LT
98536:  MOVLT           R1, R0
98538:  LDRD.W          R2, R3, [R1]
9853C:  LDR.W           R0, [R8,#0x13C]
98540:  LDR             R1, [R6]
98542:  CMP             R0, R4
98544:  STR             R6, [SP,#0x58+var_54]
98546:  STRD.W          R2, R3, [SP,#0x58+var_2C]
9854A:  BLE             loc_98574
9854C:  LDR.W           R6, [R8,#0x144]
98550:  ADD.W           R5, R4, R4,LSL#3
98554:  LDR.W           R0, [R6,R5,LSL#2]
98558:  CMP             R0, R9
9855A:  BNE             loc_9862C
9855C:  ADD.W           R0, R6, R5,LSL#2
98560:  LDR.W           R2, [R8]
98564:  LDR.W           R3, [R0,#0xC]!
98568:  SUBS            R2, #1
9856A:  CMP             R3, R2
9856C:  BNE             loc_9862C
9856E:  STR.W           R11, [R0]
98572:  B               loc_986D6
98574:  LDR.W           R2, [R8,#0x140]
98578:  CMP             R0, R2
9857A:  BNE             loc_985FE
9857C:  CMP             R0, #0
9857E:  ADD.W           R5, R0, #1
98582:  ITTE NE
98584:  ADDNE.W         R2, R0, R0,LSR#31
98588:  ADDNE.W         R2, R0, R2,ASR#1
9858C:  MOVEQ           R2, #8
9858E:  CMP             R2, R5
98590:  IT GT
98592:  MOVGT           R5, R2
98594:  CMP             R0, R5
98596:  BGE             loc_985FE
98598:  CMP             R1, #0
9859A:  ITTT NE
9859C:  LDRNE.W         R2, [R1,#0x370]
985A0:  ADDNE           R2, #1
985A2:  STRNE.W         R2, [R1,#0x370]
985A6:  LDR             R4, =(dword_1ACF70 - 0x985B2)
985A8:  ADD.W           R0, R5, R5,LSL#3
985AC:  LDR             R2, =(off_117248 - 0x985B6)
985AE:  ADD             R4, PC; dword_1ACF70
985B0:  LSLS            R0, R0, #2
985B2:  ADD             R2, PC; off_117248
985B4:  LDR             R1, [R4]
985B6:  LDR             R2, [R2]; sub_9A720
985B8:  BLX             R2; sub_9A720
985BA:  LDR.W           R1, [R8,#0x144]; src
985BE:  MOV             R6, R0
985C0:  CBZ             R1, loc_985F6
985C2:  LDR.W           R0, [R8,#0x13C]
985C6:  ADD.W           R0, R0, R0,LSL#3
985CA:  LSLS            R2, R0, #2; n
985CC:  MOV             R0, R6; dest
985CE:  BLX             j_memcpy
985D2:  LDR.W           R0, [R8,#0x144]
985D6:  CMP             R0, #0
985D8:  ITTTT NE
985DA:  LDRNE           R1, [SP,#0x58+var_54]
985DC:  LDRNE           R1, [R1]
985DE:  CMPNE           R1, #0
985E0:  LDRNE.W         R2, [R1,#0x370]
985E4:  ITT NE
985E6:  SUBNE           R2, #1
985E8:  STRNE.W         R2, [R1,#0x370]
985EC:  LDR             R2, =(off_11724C - 0x985F4)
985EE:  LDR             R1, [R4]
985F0:  ADD             R2, PC; off_11724C
985F2:  LDR             R2, [R2]; j_opus_decoder_destroy_0
985F4:  BLX             R2; j_opus_decoder_destroy_0
985F6:  LDR.W           R0, [R8,#0x13C]
985FA:  STRD.W          R5, R6, [R8,#0x140]
985FE:  LDR.W           R1, [R8,#0x144]
98602:  ADD.W           R0, R0, R0,LSL#3
98606:  VLD1.8          {D16-D17}, [R10]!
9860A:  ADD.W           R0, R1, R0,LSL#2
9860E:  VLD1.8          {D18-D19}, [R10]!
98612:  VST1.8          {D16-D17}, [R0]!
98616:  VST1.8          {D18-D19}, [R0]!
9861A:  LDR.W           R2, [R10]
9861E:  STR             R2, [R0]
98620:  LDR.W           R0, [R8,#0x13C]
98624:  ADDS            R0, #1
98626:  STR.W           R0, [R8,#0x13C]
9862A:  B               loc_986D6
9862C:  LDR.W           R0, [R8,#0x140]
98630:  ADD.W           R9, R4, #1
98634:  CMP             R0, R4
98636:  BGT             loc_986B8
98638:  CMP             R0, #0
9863A:  ITTE NE
9863C:  ADDNE.W         R2, R0, R0,LSR#31
98640:  ADDNE.W         R2, R0, R2,ASR#1
98644:  MOVEQ           R2, #8
98646:  CMP             R2, R9
98648:  MOV             R4, R9
9864A:  IT GT
9864C:  MOVGT           R4, R2
9864E:  CMP             R0, R4
98650:  BGE             loc_986B8
98652:  CMP             R1, #0
98654:  ITTT NE
98656:  LDRNE.W         R2, [R1,#0x370]
9865A:  ADDNE           R2, #1
9865C:  STRNE.W         R2, [R1,#0x370]
98660:  LDR             R1, =(dword_1ACF70 - 0x9866C)
98662:  ADD.W           R0, R4, R4,LSL#3
98666:  LDR             R2, =(off_117248 - 0x98670)
98668:  ADD             R1, PC; dword_1ACF70
9866A:  LSLS            R0, R0, #2
9866C:  ADD             R2, PC; off_117248
9866E:  MOV             R11, R1
98670:  LDR             R1, [R1]
98672:  LDR             R2, [R2]; sub_9A720
98674:  BLX             R2; sub_9A720
98676:  LDR.W           R1, [R8,#0x144]; src
9867A:  MOV             R6, R0
9867C:  CBZ             R1, loc_986B4
9867E:  LDR.W           R0, [R8,#0x13C]
98682:  ADD.W           R0, R0, R0,LSL#3
98686:  LSLS            R2, R0, #2; n
98688:  MOV             R0, R6; dest
9868A:  BLX             j_memcpy
9868E:  LDR.W           R0, [R8,#0x144]
98692:  CMP             R0, #0
98694:  ITTTT NE
98696:  LDRNE           R1, [SP,#0x58+var_54]
98698:  LDRNE           R1, [R1]
9869A:  CMPNE           R1, #0
9869C:  LDRNE.W         R2, [R1,#0x370]
986A0:  ITT NE
986A2:  SUBNE           R2, #1
986A4:  STRNE.W         R2, [R1,#0x370]
986A8:  LDR             R2, =(off_11724C - 0x986B2)
986AA:  LDR.W           R1, [R11]
986AE:  ADD             R2, PC; off_11724C
986B0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
986B2:  BLX             R2; j_opus_decoder_destroy_0
986B4:  STRD.W          R4, R6, [R8,#0x140]
986B8:  VLD1.32         {D16-D17}, [R10]!
986BC:  ADD.W           R1, R6, R5,LSL#2
986C0:  VLD1.32         {D18-D19}, [R10]!
986C4:  STR.W           R9, [R8,#0x13C]
986C8:  VST1.32         {D16-D17}, [R1]!
986CC:  VST1.32         {D18-D19}, [R1]!
986D0:  LDR.W           R0, [R10]
986D4:  STR             R0, [R1]
986D6:  LDR             R0, [SP,#0x58+var_20]
986D8:  LDR             R1, =(__stack_chk_guard_ptr - 0x986DE)
986DA:  ADD             R1, PC; __stack_chk_guard_ptr
986DC:  LDR             R1, [R1]; __stack_chk_guard
986DE:  LDR             R1, [R1]
986E0:  CMP             R1, R0
986E2:  ITTT EQ
986E4:  ADDEQ           SP, SP, #0x3C ; '<'
986E6:  POPEQ.W         {R8-R11}
986EA:  POPEQ           {R4-R7,PC}
986EC:  BLX             __stack_chk_fail
