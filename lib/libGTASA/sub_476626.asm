; =========================================================
; Game Engine Function: sub_476626
; Address            : 0x476626 - 0x4767B4
; =========================================================

476626:  PUSH            {R4-R7,LR}
476628:  ADD             R7, SP, #0xC
47662A:  PUSH.W          {R8-R11}
47662E:  SUB             SP, SP, #0x34
476630:  MOV             R8, R1
476632:  LDR             R1, [R0,#0x3C]
476634:  CMP             R1, #1
476636:  BLT.W           loc_4767A6
47663A:  LDR.W           R1, [R0,#0xE0]
47663E:  MOVS            R4, #0
476640:  LDR.W           R2, [R0,#0x148]
476644:  STR             R2, [SP,#0x50+var_3C]
476646:  SUBS            R1, #1
476648:  STR             R1, [SP,#0x50+var_38]
47664A:  LDR             R6, [R0,#0x44]
47664C:  STR             R0, [SP,#0x50+var_2C]
47664E:  STR.W           R8, [SP,#0x50+var_40]
476652:  LDR.W           R9, [SP,#0x50+var_3C]
476656:  LDR             R3, [R6,#0xC]
476658:  LDR             R5, [R0,#4]
47665A:  ADD.W           R1, R9, R4,LSL#2
47665E:  LDR.W           R2, [R9,#8]
476662:  LDR             R1, [R1,#0x40]
476664:  LDR.W           R12, [R5,#0x20]
476668:  MOVS            R5, #1
47666A:  MULS            R2, R3
47666C:  STR             R5, [SP,#0x50+var_50]
47666E:  BLX             R12
476670:  STR             R0, [SP,#0x50+var_24]
476672:  LDR.W           R1, [R9,#8]
476676:  LDR             R0, [SP,#0x50+var_38]
476678:  STR             R4, [SP,#0x50+var_28]
47667A:  CMP             R1, R0
47667C:  STR             R1, [SP,#0x50+var_30]
47667E:  BCS             loc_476686
476680:  LDR.W           R9, [R6,#0xC]
476684:  B               loc_47669A
476686:  LDR             R5, [R6,#0xC]
476688:  LDR             R0, [R6,#0x20]
47668A:  MOV             R1, R5
47668C:  BLX             __aeabi_uidivmod
476690:  MOV             R9, R1
476692:  CMP.W           R9, #0
476696:  IT EQ
476698:  MOVEQ           R9, R5
47669A:  LDR             R5, [R6,#8]
47669C:  STR             R6, [SP,#0x50+var_20]
47669E:  LDR.W           R11, [R6,#0x1C]
4766A2:  MOV             R1, R5
4766A4:  MOV             R0, R11
4766A6:  BLX             __aeabi_uidivmod
4766AA:  MOV             R10, R1
4766AC:  CMP.W           R10, #0
4766B0:  IT GT
4766B2:  SUBGT.W         R10, R5, R10
4766B6:  LDR             R1, [SP,#0x50+var_30]
4766B8:  CMP.W           R9, #1
4766BC:  BLT             loc_476716
4766BE:  MOV.W           R0, R10,LSL#7
4766C2:  MOVS            R4, #0
4766C4:  STR             R0, [SP,#0x50+var_30]
4766C6:  LDR             R0, [SP,#0x50+var_2C]
4766C8:  LDR             R2, [SP,#0x50+var_28]
4766CA:  LDR             R3, [SP,#0x50+var_24]
4766CC:  LDR.W           R1, [R0,#0x158]
4766D0:  LDR.W           R2, [R8,R2,LSL#2]
4766D4:  LDR.W           R6, [R3,R4,LSL#2]
4766D8:  LDR.W           R12, [R1,#4]
4766DC:  LSLS            R1, R4, #3
4766DE:  STR             R1, [SP,#0x50+var_50]
4766E0:  MOVS            R1, #0
4766E2:  STRD.W          R1, R11, [SP,#0x50+var_4C]
4766E6:  MOV             R3, R6
4766E8:  LDR             R1, [SP,#0x50+var_20]
4766EA:  BLX             R12
4766EC:  CMP.W           R10, #1
4766F0:  BLT             loc_47670C
4766F2:  ADD.W           R6, R6, R11,LSL#7
4766F6:  LDR             R1, [SP,#0x50+var_30]; unsigned int
4766F8:  MOV             R0, R6; void *
4766FA:  BLX             j__Z9jzero_farPvj; jzero_far(void *,uint)
4766FE:  LDRH.W          R0, [R6,#-0x80]
476702:  MOV             R1, R10
476704:  STRH.W          R0, [R6],#0x80
476708:  SUBS            R1, #1
47670A:  BNE             loc_476704
47670C:  ADDS            R4, #1
47670E:  CMP             R4, R9
476710:  BNE             loc_4766C6
476712:  LDR             R0, [SP,#0x50+var_3C]
476714:  LDR             R1, [R0,#8]
476716:  LDR             R0, [SP,#0x50+var_38]
476718:  CMP             R1, R0
47671A:  BNE             loc_476790
47671C:  ADD.W           R0, R10, R11
476720:  MOV             R1, R0
476722:  STR             R1, [SP,#0x50+var_30]
476724:  MOV             R1, R5
476726:  BLX             __aeabi_uidiv
47672A:  MOV             R4, R0
47672C:  LDR             R0, [SP,#0x50+var_20]
47672E:  LDR             R0, [R0,#0xC]
476730:  CMP             R9, R0
476732:  BGE             loc_476790
476734:  LDR             R0, [SP,#0x50+var_30]
476736:  SUB.W           R10, R5, #1
47673A:  MOV.W           R11, R5,LSL#7
47673E:  LSLS            R0, R0, #7
476740:  STR             R0, [SP,#0x50+var_34]
476742:  LDR             R0, [SP,#0x50+var_24]
476744:  LDR             R1, [SP,#0x50+var_34]; unsigned int
476746:  LDR.W           R6, [R0,R9,LSL#2]
47674A:  ADD.W           R0, R0, R9,LSL#2
47674E:  LDR.W           R8, [R0,#-4]
476752:  MOV             R0, R6; void *
476754:  BLX             j__Z9jzero_farPvj; jzero_far(void *,uint)
476758:  LDR             R0, [SP,#0x50+var_30]
47675A:  CMP             R5, R0
47675C:  BHI             loc_476784
47675E:  MOVS            R0, #0
476760:  CMP             R5, #1
476762:  BLT             loc_476778
476764:  MOV.W           R1, R10,LSL#7
476768:  MOVS            R2, #0
47676A:  LDRH.W          R1, [R8,R1]
47676E:  MOV             R3, R5
476770:  STRH            R1, [R6,R2]
476772:  ADDS            R2, #0x80
476774:  SUBS            R3, #1
476776:  BNE             loc_476770
476778:  ADDS            R0, #1
47677A:  ADD             R6, R11
47677C:  ADD.W           R8, R8, R5,LSL#7
476780:  CMP             R0, R4
476782:  BCC             loc_476760
476784:  LDR             R0, [SP,#0x50+var_20]
476786:  ADD.W           R9, R9, #1
47678A:  LDR             R0, [R0,#0xC]
47678C:  CMP             R9, R0
47678E:  BLT             loc_476742
476790:  LDR             R0, [SP,#0x50+var_2C]
476792:  LDR             R6, [SP,#0x50+var_20]
476794:  LDR             R4, [SP,#0x50+var_28]
476796:  LDR             R1, [R0,#0x3C]
476798:  ADDS            R6, #0x54 ; 'T'
47679A:  LDR.W           R8, [SP,#0x50+var_40]
47679E:  ADDS            R4, #1
4767A0:  CMP             R4, R1
4767A2:  BLT.W           loc_476652
4767A6:  MOV             R1, R8
4767A8:  ADD             SP, SP, #0x34 ; '4'
4767AA:  POP.W           {R8-R11}
4767AE:  POP.W           {R4-R7,LR}
4767B2:  B               sub_4767B4
