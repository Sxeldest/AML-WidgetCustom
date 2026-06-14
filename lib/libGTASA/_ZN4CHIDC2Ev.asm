; =========================================================
; Game Engine Function: _ZN4CHIDC2Ev
; Address            : 0x2875EC - 0x28BE94
; =========================================================

2875EC:  PUSH            {R4-R7,LR}
2875EE:  ADD             R7, SP, #0xC
2875F0:  PUSH.W          {R8-R11}
2875F4:  SUB             SP, SP, #0x94
2875F6:  LDR.W           R6, =(__stack_chk_guard_ptr - 0x287606)
2875FA:  LDR.W           R1, =(_ZTV4CHID_ptr - 0x287608)
2875FE:  LDR.W           R2, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287610)
287602:  ADD             R6, PC; __stack_chk_guard_ptr
287604:  ADD             R1, PC; _ZTV4CHID_ptr
287606:  LDR.W           R3, =(_ZN4CHID13m_nDeadFramesE_ptr - 0x287614)
28760A:  LDR             R5, [R6]; __stack_chk_guard
28760C:  ADD             R2, PC; _ZN4CHID14m_MappingPairsE_ptr
28760E:  LDR             R1, [R1]; `vtable for'CHID ...
287610:  ADD             R3, PC; _ZN4CHID13m_nDeadFramesE_ptr
287612:  LDR             R2, [R2]; CHID::m_MappingPairs ...
287614:  LDR             R5, [R5]
287616:  ADDS            R1, #8
287618:  LDR.W           R6, =(aMappingUnknown - 0x287624); "MAPPING_UNKNOWN"
28761C:  STR             R5, [SP,#0xB0+var_20]
28761E:  STR             R0, [SP,#0xB0+var_AC]
287620:  ADD             R6, PC; "MAPPING_UNKNOWN"
287622:  STR             R1, [R0]
287624:  MOVS            R0, #0
287626:  STR             R0, [R2,#(dword_6E001C - 0x6E0018)]
287628:  ADD             R1, SP, #0xB0+var_A8
28762A:  LDR             R3, [R3]; CHID::m_nDeadFrames ...
28762C:  ORR.W           R1, R1, #4
287630:  LDR.W           R9, [R2]; CHID::m_MappingPairs
287634:  VLD1.64         {D16-D17}, [R6]
287638:  CMP.W           R9, #0
28763C:  VST1.32         {D16-D17}, [R1]
287640:  STR             R0, [R3]; CHID::m_nDeadFrames
287642:  STR             R0, [SP,#0xB0+var_A8]
287644:  BEQ             loc_287656
287646:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287650)
28764A:  MOVS            R5, #0
28764C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28764E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287650:  LDR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
287654:  B               loc_287692
287656:  MOV.W           R0, #0x210; byte_count
28765A:  BLX             malloc
28765E:  MOV             R10, R0
287660:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287668)
287664:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287666:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287668:  LDR             R0, [R0,#(dword_6E0020 - 0x6E0018)]; p
28766A:  CBZ             R0, loc_28767C
28766C:  BLX             free
287670:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287678)
287674:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287676:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287678:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28767A:  B               loc_28767E
28767C:  MOVS            R5, #0
28767E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28768A)
287682:  MOV.W           R9, #4
287686:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287688:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28768A:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28768E:  STR.W           R9, [R0]; CHID::m_MappingPairs
287692:  ADD.W           R0, R5, R5,LSL#5
287696:  ADD             R4, SP, #0xB0+var_A8
287698:  MOVS            R2, #0x84; size_t
28769A:  ADD.W           R0, R10, R0,LSL#2; void *
28769E:  MOV             R1, R4; void *
2876A0:  BLX             memcpy_0
2876A4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2876B2)
2876A8:  ADDS            R6, R5, #1
2876AA:  LDR.W           R1, =(aMappingAttack - 0x2876B4); "MAPPING_ATTACK"
2876AE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2876B0:  ADD             R1, PC; "MAPPING_ATTACK"
2876B2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2876B4:  VLDR            D17, [R1]
2876B8:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2876BA:  ADDS            R0, R1, #7
2876BC:  VLD1.8          {D16}, [R0]
2876C0:  ADD.W           R0, R4, #0xB
2876C4:  VST1.8          {D16}, [R0]
2876C8:  MOVS            R0, #1
2876CA:  STR             R0, [SP,#0xB0+var_A8]
2876CC:  ADDS            R0, R5, #2
2876CE:  CMP             R9, R0
2876D0:  VSTR            D17, [SP,#0xB0+var_A4]
2876D4:  BCS             loc_28772C
2876D6:  MOVW            R1, #0xAAAB
2876DA:  LSLS            R0, R0, #2
2876DC:  MOVT            R1, #0xAAAA
2876E0:  UMULL.W         R0, R1, R0, R1
2876E4:  MOVS            R0, #3
2876E6:  ADD.W           R9, R0, R1,LSR#1
2876EA:  ADD.W           R0, R9, R9,LSL#5
2876EE:  LSLS            R0, R0, #2; byte_count
2876F0:  BLX             malloc
2876F4:  MOV             R8, R0
2876F6:  CMP.W           R10, #0
2876FA:  BEQ             loc_28771A
2876FC:  ADD.W           R0, R6, R6,LSL#5
287700:  MOV             R1, R10; void *
287702:  LSLS            R2, R0, #2; size_t
287704:  MOV             R0, R8; void *
287706:  BLX             memcpy_0
28770A:  MOV             R0, R10; p
28770C:  BLX             free
287710:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287718)
287714:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287716:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287718:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28771A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287722)
28771E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287720:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287722:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
287726:  STR.W           R9, [R0]; CHID::m_MappingPairs
28772A:  B               loc_28772E
28772C:  MOV             R8, R10
28772E:  ADD.W           R0, R6, R6,LSL#5
287732:  ADD             R5, SP, #0xB0+var_A8
287734:  MOVS            R2, #0x84; size_t
287736:  ADD.W           R0, R8, R0,LSL#2; void *
28773A:  MOV             R1, R5; void *
28773C:  BLX             memcpy_0
287740:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28774E)
287744:  ADDS            R4, R6, #1
287746:  LDR.W           R1, =(aMappingSprint - 0x287750); "MAPPING_SPRINT"
28774A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28774C:  ADD             R1, PC; "MAPPING_SPRINT"
28774E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287750:  VLDR            D17, [R1]
287754:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
287756:  ADDS            R0, R1, #7
287758:  VLD1.8          {D16}, [R0]
28775C:  ADD.W           R0, R5, #0xB
287760:  VST1.8          {D16}, [R0]
287764:  MOVS            R0, #2
287766:  STR             R0, [SP,#0xB0+var_A8]
287768:  ADDS            R0, R6, #2
28776A:  CMP             R9, R0
28776C:  VSTR            D17, [SP,#0xB0+var_A4]
287770:  BCS             loc_2877C8
287772:  MOVW            R1, #0xAAAB
287776:  LSLS            R0, R0, #2
287778:  MOVT            R1, #0xAAAA
28777C:  UMULL.W         R0, R1, R0, R1
287780:  MOVS            R0, #3
287782:  ADD.W           R9, R0, R1,LSR#1
287786:  ADD.W           R0, R9, R9,LSL#5
28778A:  LSLS            R0, R0, #2; byte_count
28778C:  BLX             malloc
287790:  MOV             R10, R0
287792:  CMP.W           R8, #0
287796:  BEQ             loc_2877B6
287798:  ADD.W           R0, R4, R4,LSL#5
28779C:  MOV             R1, R8; void *
28779E:  LSLS            R2, R0, #2; size_t
2877A0:  MOV             R0, R10; void *
2877A2:  BLX             memcpy_0
2877A6:  MOV             R0, R8; p
2877A8:  BLX             free
2877AC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2877B4)
2877B0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2877B2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2877B4:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2877B6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2877BE)
2877BA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2877BC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2877BE:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
2877C2:  STR.W           R9, [R0]; CHID::m_MappingPairs
2877C6:  B               loc_2877CA
2877C8:  MOV             R10, R8
2877CA:  ADD.W           R0, R4, R4,LSL#5
2877CE:  ADD             R6, SP, #0xB0+var_A8
2877D0:  MOVS            R2, #0x84; size_t
2877D2:  ADD.W           R0, R10, R0,LSL#2; void *
2877D6:  MOV             R1, R6; void *
2877D8:  BLX             memcpy_0
2877DC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2877EA)
2877E0:  ADDS            R5, R4, #1
2877E2:  LDR.W           R1, =(aMappingJump - 0x2877EC); "MAPPING_JUMP"
2877E6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2877E8:  ADD             R1, PC; "MAPPING_JUMP"
2877EA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2877EC:  VLDR            D17, [R1]
2877F0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
2877F2:  ADDS            R0, R1, #5
2877F4:  ADDS            R1, R4, #2
2877F6:  VLD1.8          {D16}, [R0]
2877FA:  ADD.W           R0, R6, #9
2877FE:  CMP             R9, R1
287800:  VST1.8          {D16}, [R0]
287804:  MOV.W           R0, #3
287808:  STR             R0, [SP,#0xB0+var_A8]
28780A:  VSTR            D17, [SP,#0xB0+var_A4]
28780E:  BCS             loc_287864
287810:  MOVW            R2, #0xAAAB
287814:  LSLS            R1, R1, #2
287816:  MOVT            R2, #0xAAAA
28781A:  UMULL.W         R1, R2, R1, R2
28781E:  ADD.W           R9, R0, R2,LSR#1
287822:  ADD.W           R0, R9, R9,LSL#5
287826:  LSLS            R0, R0, #2; byte_count
287828:  BLX             malloc
28782C:  MOV             R8, R0
28782E:  CMP.W           R10, #0
287832:  BEQ             loc_287852
287834:  ADD.W           R0, R5, R5,LSL#5
287838:  MOV             R1, R10; void *
28783A:  LSLS            R2, R0, #2; size_t
28783C:  MOV             R0, R8; void *
28783E:  BLX             memcpy_0
287842:  MOV             R0, R10; p
287844:  BLX             free
287848:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287850)
28784C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28784E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287850:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287852:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28785A)
287856:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287858:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28785A:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28785E:  STR.W           R9, [R0]; CHID::m_MappingPairs
287862:  B               loc_287866
287864:  MOV             R8, R10
287866:  ADD.W           R0, R5, R5,LSL#5
28786A:  ADD             R4, SP, #0xB0+var_A8
28786C:  MOVS            R2, #0x84; size_t
28786E:  ADD.W           R0, R8, R0,LSL#2; void *
287872:  MOV             R1, R4; void *
287874:  BLX             memcpy_0
287878:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287886)
28787C:  ADDS            R6, R5, #1
28787E:  LDR.W           R1, =(aMappingCrouch - 0x287888); "MAPPING_CROUCH"
287882:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287884:  ADD             R1, PC; "MAPPING_CROUCH"
287886:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287888:  VLDR            D17, [R1]
28788C:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28788E:  ADDS            R0, R1, #7
287890:  VLD1.8          {D16}, [R0]
287894:  ADD.W           R0, R4, #0xB
287898:  VST1.8          {D16}, [R0]
28789C:  MOVS            R0, #4
28789E:  STR             R0, [SP,#0xB0+var_A8]
2878A0:  ADDS            R0, R5, #2
2878A2:  CMP             R9, R0
2878A4:  VSTR            D17, [SP,#0xB0+var_A4]
2878A8:  BCS             loc_287900
2878AA:  MOVW            R1, #0xAAAB
2878AE:  LSLS            R0, R0, #2
2878B0:  MOVT            R1, #0xAAAA
2878B4:  UMULL.W         R0, R1, R0, R1
2878B8:  MOVS            R0, #3
2878BA:  ADD.W           R9, R0, R1,LSR#1
2878BE:  ADD.W           R0, R9, R9,LSL#5
2878C2:  LSLS            R0, R0, #2; byte_count
2878C4:  BLX             malloc
2878C8:  MOV             R10, R0
2878CA:  CMP.W           R8, #0
2878CE:  BEQ             loc_2878EE
2878D0:  ADD.W           R0, R6, R6,LSL#5
2878D4:  MOV             R1, R8; void *
2878D6:  LSLS            R2, R0, #2; size_t
2878D8:  MOV             R0, R10; void *
2878DA:  BLX             memcpy_0
2878DE:  MOV             R0, R8; p
2878E0:  BLX             free
2878E4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2878EC)
2878E8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2878EA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2878EC:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2878EE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2878F6)
2878F2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2878F4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2878F6:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
2878FA:  STR.W           R9, [R0]; CHID::m_MappingPairs
2878FE:  B               loc_287902
287900:  MOV             R10, R8
287902:  ADD.W           R0, R6, R6,LSL#5
287906:  ADD             R4, SP, #0xB0+var_A8
287908:  MOVS            R2, #0x84; size_t
28790A:  ADD.W           R0, R10, R0,LSL#2; void *
28790E:  MOV             R1, R4; void *
287910:  BLX             memcpy_0
287914:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287922)
287918:  ADDS            R5, R6, #1
28791A:  LDR.W           R1, =(aMappingEnterCa - 0x287924); "MAPPING_ENTER_CAR"
28791E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287920:  ADD             R1, PC; "MAPPING_ENTER_CAR"
287922:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287924:  VLD1.64         {D16-D17}, [R1]
287928:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28792A:  ORR.W           R0, R4, #4
28792E:  VST1.32         {D16-D17}, [R0]
287932:  MOVS            R0, #0x52 ; 'R'
287934:  STRH.W          R0, [SP,#0xB0+var_94]
287938:  MOVS            R0, #5
28793A:  STR             R0, [SP,#0xB0+var_A8]
28793C:  ADDS            R0, R6, #2
28793E:  CMP             R9, R0
287940:  BCS             loc_287998
287942:  MOVW            R1, #0xAAAB
287946:  LSLS            R0, R0, #2
287948:  MOVT            R1, #0xAAAA
28794C:  UMULL.W         R0, R1, R0, R1
287950:  MOVS            R0, #3
287952:  ADD.W           R9, R0, R1,LSR#1
287956:  ADD.W           R0, R9, R9,LSL#5
28795A:  LSLS            R0, R0, #2; byte_count
28795C:  BLX             malloc
287960:  MOV             R8, R0
287962:  CMP.W           R10, #0
287966:  BEQ             loc_287986
287968:  ADD.W           R0, R5, R5,LSL#5
28796C:  MOV             R1, R10; void *
28796E:  LSLS            R2, R0, #2; size_t
287970:  MOV             R0, R8; void *
287972:  BLX             memcpy_0
287976:  MOV             R0, R10; p
287978:  BLX             free
28797C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287984)
287980:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287982:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287984:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287986:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28798E)
28798A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28798C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28798E:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
287992:  STR.W           R9, [R0]; CHID::m_MappingPairs
287996:  B               loc_28799A
287998:  MOV             R8, R10
28799A:  ADD.W           R0, R5, R5,LSL#5
28799E:  ADD             R6, SP, #0xB0+var_A8
2879A0:  MOVS            R2, #0x84; size_t
2879A2:  ADD.W           R0, R8, R0,LSL#2; void *
2879A6:  MOV             R1, R6; void *
2879A8:  BLX             memcpy_0
2879AC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2879BA)
2879B0:  ADDS            R4, R5, #1
2879B2:  LDR.W           R1, =(aMappingBrake - 0x2879BC); "MAPPING_BRAKE"
2879B6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2879B8:  ADD             R1, PC; "MAPPING_BRAKE"
2879BA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2879BC:  VLDR            D17, [R1]
2879C0:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2879C2:  ADDS            R0, R1, #6
2879C4:  VLD1.16         {D16}, [R0]
2879C8:  ADD.W           R0, R6, #0xA
2879CC:  VST1.16         {D16}, [R0]
2879D0:  MOVS            R0, #6
2879D2:  STR             R0, [SP,#0xB0+var_A8]
2879D4:  ADDS            R0, R5, #2
2879D6:  CMP             R9, R0
2879D8:  VSTR            D17, [SP,#0xB0+var_A4]
2879DC:  BCS             loc_287A34
2879DE:  MOVW            R1, #0xAAAB
2879E2:  LSLS            R0, R0, #2
2879E4:  MOVT            R1, #0xAAAA
2879E8:  UMULL.W         R0, R1, R0, R1
2879EC:  MOVS            R0, #3
2879EE:  ADD.W           R9, R0, R1,LSR#1
2879F2:  ADD.W           R0, R9, R9,LSL#5
2879F6:  LSLS            R0, R0, #2; byte_count
2879F8:  BLX             malloc
2879FC:  MOV             R11, R0
2879FE:  CMP.W           R8, #0
287A02:  BEQ             loc_287A22
287A04:  ADD.W           R0, R4, R4,LSL#5
287A08:  MOV             R1, R8; void *
287A0A:  LSLS            R2, R0, #2; size_t
287A0C:  MOV             R0, R11; void *
287A0E:  BLX             memcpy_0
287A12:  MOV             R0, R8; p
287A14:  BLX             free
287A18:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287A20)
287A1C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287A1E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287A20:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
287A22:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287A2A)
287A26:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287A28:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287A2A:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
287A2E:  STR.W           R9, [R0]; CHID::m_MappingPairs
287A32:  B               loc_287A36
287A34:  MOV             R11, R8
287A36:  ADD.W           R0, R4, R4,LSL#5
287A3A:  ADD             R5, SP, #0xB0+var_A8
287A3C:  MOVS            R2, #0x84; size_t
287A3E:  ADD.W           R0, R11, R0,LSL#2; void *
287A42:  MOV             R1, R5; void *
287A44:  BLX             memcpy_0
287A48:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287A56)
287A4C:  ADDS            R6, R4, #1
287A4E:  LDR.W           R1, =(aMappingHandbra - 0x287A58); "MAPPING_HANDBRAKE"
287A52:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287A54:  ADD             R1, PC; "MAPPING_HANDBRAKE"
287A56:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287A58:  VLD1.64         {D16-D17}, [R1]
287A5C:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287A5E:  ORR.W           R0, R5, #4
287A62:  VST1.32         {D16-D17}, [R0]
287A66:  MOVS            R0, #0x45 ; 'E'
287A68:  STRH.W          R0, [SP,#0xB0+var_94]
287A6C:  MOVS            R0, #7
287A6E:  STR             R0, [SP,#0xB0+var_A8]
287A70:  ADDS            R0, R4, #2
287A72:  CMP             R9, R0
287A74:  BCS             loc_287ACC
287A76:  MOVW            R1, #0xAAAB
287A7A:  LSLS            R0, R0, #2
287A7C:  MOVT            R1, #0xAAAA
287A80:  UMULL.W         R0, R1, R0, R1
287A84:  MOVS            R0, #3
287A86:  ADD.W           R9, R0, R1,LSR#1
287A8A:  ADD.W           R0, R9, R9,LSL#5
287A8E:  LSLS            R0, R0, #2; byte_count
287A90:  BLX             malloc
287A94:  MOV             R10, R0
287A96:  CMP.W           R11, #0
287A9A:  BEQ             loc_287ABA
287A9C:  ADD.W           R0, R6, R6,LSL#5
287AA0:  MOV             R1, R11; void *
287AA2:  LSLS            R2, R0, #2; size_t
287AA4:  MOV             R0, R10; void *
287AA6:  BLX             memcpy_0
287AAA:  MOV             R0, R11; p
287AAC:  BLX             free
287AB0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287AB8)
287AB4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287AB6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287AB8:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287ABA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287AC2)
287ABE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287AC0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287AC2:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
287AC6:  STR.W           R9, [R0]; CHID::m_MappingPairs
287ACA:  B               loc_287ACE
287ACC:  MOV             R10, R11
287ACE:  ADD.W           R0, R6, R6,LSL#5
287AD2:  ADD             R4, SP, #0xB0+var_A8
287AD4:  MOVS            R2, #0x84; size_t
287AD6:  ADD.W           R0, R10, R0,LSL#2; void *
287ADA:  MOV             R1, R4; void *
287ADC:  BLX             memcpy_0
287AE0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287AEE)
287AE4:  ADDS            R5, R6, #1
287AE6:  LDR.W           R1, =(aMappingAcceler - 0x287AF0); "MAPPING_ACCELERATE"
287AEA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287AEC:  ADD             R1, PC; "MAPPING_ACCELERATE"
287AEE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287AF0:  VLD1.64         {D16-D17}, [R1]
287AF4:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287AF6:  ORR.W           R0, R4, #4
287AFA:  VST1.32         {D16-D17}, [R0]
287AFE:  MOVS            R0, #0
287B00:  STRB.W          R0, [SP,#0xB0+var_94+2]
287B04:  MOVW            R0, #0x4554
287B08:  STRH.W          R0, [SP,#0xB0+var_94]
287B0C:  MOVS            R0, #8
287B0E:  STR             R0, [SP,#0xB0+var_A8]
287B10:  ADDS            R0, R6, #2
287B12:  CMP             R9, R0
287B14:  BCS             loc_287B6C
287B16:  MOVW            R1, #0xAAAB
287B1A:  LSLS            R0, R0, #2
287B1C:  MOVT            R1, #0xAAAA
287B20:  UMULL.W         R0, R1, R0, R1
287B24:  MOVS            R0, #3
287B26:  ADD.W           R9, R0, R1,LSR#1
287B2A:  ADD.W           R0, R9, R9,LSL#5
287B2E:  LSLS            R0, R0, #2; byte_count
287B30:  BLX             malloc
287B34:  MOV             R11, R0
287B36:  CMP.W           R10, #0
287B3A:  BEQ             loc_287B5A
287B3C:  ADD.W           R0, R5, R5,LSL#5
287B40:  MOV             R1, R10; void *
287B42:  LSLS            R2, R0, #2; size_t
287B44:  MOV             R0, R11; void *
287B46:  BLX             memcpy_0
287B4A:  MOV             R0, R10; p
287B4C:  BLX             free
287B50:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287B58)
287B54:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287B56:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287B58:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287B5A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287B62)
287B5E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287B60:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287B62:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
287B66:  STR.W           R9, [R0]; CHID::m_MappingPairs
287B6A:  B               loc_287B6E
287B6C:  MOV             R11, R10
287B6E:  ADD.W           R0, R5, R5,LSL#5
287B72:  ADD             R4, SP, #0xB0+var_A8
287B74:  MOVS            R2, #0x84; size_t
287B76:  ADD.W           R0, R11, R0,LSL#2; void *
287B7A:  MOV             R1, R4; void *
287B7C:  BLX             memcpy_0
287B80:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287B8E)
287B84:  ADDS            R6, R5, #1
287B86:  LDR.W           R1, =(aMappingCameraC - 0x287B90); "MAPPING_CAMERA_CLOSER"
287B8A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287B8C:  ADD             R1, PC; "MAPPING_CAMERA_CLOSER"
287B8E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287B90:  VLD1.64         {D16-D17}, [R1]
287B94:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287B96:  ADD.W           R0, R1, #0xE
287B9A:  VLD1.16         {D18}, [R0]
287B9E:  ADD.W           R0, R4, #0x12
287BA2:  VST1.16         {D18}, [R0]
287BA6:  ORR.W           R0, R4, #4
287BAA:  VST1.32         {D16-D17}, [R0]
287BAE:  MOVS            R0, #9
287BB0:  STR             R0, [SP,#0xB0+var_A8]
287BB2:  ADDS            R0, R5, #2
287BB4:  CMP             R9, R0
287BB6:  BCS             loc_287C0E
287BB8:  MOVW            R1, #0xAAAB
287BBC:  LSLS            R0, R0, #2
287BBE:  MOVT            R1, #0xAAAA
287BC2:  UMULL.W         R0, R1, R0, R1
287BC6:  MOVS            R0, #3
287BC8:  ADD.W           R9, R0, R1,LSR#1
287BCC:  ADD.W           R0, R9, R9,LSL#5
287BD0:  LSLS            R0, R0, #2; byte_count
287BD2:  BLX             malloc
287BD6:  MOV             R8, R0
287BD8:  CMP.W           R11, #0
287BDC:  BEQ             loc_287BFC
287BDE:  ADD.W           R0, R6, R6,LSL#5
287BE2:  MOV             R1, R11; void *
287BE4:  LSLS            R2, R0, #2; size_t
287BE6:  MOV             R0, R8; void *
287BE8:  BLX             memcpy_0
287BEC:  MOV             R0, R11; p
287BEE:  BLX             free
287BF2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287BFA)
287BF6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287BF8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287BFA:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287BFC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287C04)
287C00:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287C02:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287C04:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
287C08:  STR.W           R9, [R0]; CHID::m_MappingPairs
287C0C:  B               loc_287C10
287C0E:  MOV             R8, R11
287C10:  ADD.W           R0, R6, R6,LSL#5
287C14:  ADD             R4, SP, #0xB0+var_A8
287C16:  MOVS            R2, #0x84; size_t
287C18:  ADD.W           R0, R8, R0,LSL#2; void *
287C1C:  MOV             R1, R4; void *
287C1E:  BLX             memcpy_0
287C22:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287C30)
287C26:  ADDS            R5, R6, #1
287C28:  LDR.W           R1, =(aMappingCameraF - 0x287C32); "MAPPING_CAMERA_FARTHER"
287C2C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287C2E:  ADD             R1, PC; "MAPPING_CAMERA_FARTHER"
287C30:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287C32:  VLD1.64         {D16-D17}, [R1]
287C36:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287C38:  ADD.W           R0, R1, #0xF
287C3C:  VLD1.8          {D18}, [R0]
287C40:  ADD.W           R0, R4, #0x13
287C44:  VST1.8          {D18}, [R0]
287C48:  ORR.W           R0, R4, #4
287C4C:  VST1.32         {D16-D17}, [R0]
287C50:  MOVS            R0, #0xA
287C52:  STR             R0, [SP,#0xB0+var_A8]
287C54:  ADDS            R0, R6, #2
287C56:  CMP             R9, R0
287C58:  BCS             loc_287CB0
287C5A:  MOVW            R1, #0xAAAB
287C5E:  LSLS            R0, R0, #2
287C60:  MOVT            R1, #0xAAAA
287C64:  UMULL.W         R0, R1, R0, R1
287C68:  MOVS            R0, #3
287C6A:  ADD.W           R9, R0, R1,LSR#1
287C6E:  ADD.W           R0, R9, R9,LSL#5
287C72:  LSLS            R0, R0, #2; byte_count
287C74:  BLX             malloc
287C78:  MOV             R11, R0
287C7A:  CMP.W           R8, #0
287C7E:  BEQ             loc_287C9E
287C80:  ADD.W           R0, R5, R5,LSL#5
287C84:  MOV             R1, R8; void *
287C86:  LSLS            R2, R0, #2; size_t
287C88:  MOV             R0, R11; void *
287C8A:  BLX             memcpy_0
287C8E:  MOV             R0, R8; p
287C90:  BLX             free
287C94:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287C9C)
287C98:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287C9A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287C9C:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287C9E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287CA6)
287CA2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287CA4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287CA6:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
287CAA:  STR.W           R9, [R0]; CHID::m_MappingPairs
287CAE:  B               loc_287CB2
287CB0:  MOV             R11, R8
287CB2:  ADD.W           R0, R5, R5,LSL#5
287CB6:  ADD             R4, SP, #0xB0+var_A8
287CB8:  MOVS            R2, #0x84; size_t
287CBA:  ADD.W           R0, R11, R0,LSL#2; void *
287CBE:  MOV             R1, R4; void *
287CC0:  BLX             memcpy_0
287CC4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287CD2)
287CC8:  ADDS            R6, R5, #1
287CCA:  LDR.W           R1, =(aMappingHorn - 0x287CD4); "MAPPING_HORN"
287CCE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287CD0:  ADD             R1, PC; "MAPPING_HORN"
287CD2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287CD4:  VLDR            D17, [R1]
287CD8:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287CDA:  ADDS            R0, R1, #5
287CDC:  VLD1.8          {D16}, [R0]
287CE0:  ADD.W           R0, R4, #9
287CE4:  VST1.8          {D16}, [R0]
287CE8:  MOVS            R0, #0xB
287CEA:  STR             R0, [SP,#0xB0+var_A8]
287CEC:  ADDS            R0, R5, #2
287CEE:  CMP             R9, R0
287CF0:  VSTR            D17, [SP,#0xB0+var_A4]
287CF4:  BCS             loc_287D4C
287CF6:  MOVW            R1, #0xAAAB
287CFA:  LSLS            R0, R0, #2
287CFC:  MOVT            R1, #0xAAAA
287D00:  UMULL.W         R0, R1, R0, R1
287D04:  MOVS            R0, #3
287D06:  ADD.W           R9, R0, R1,LSR#1
287D0A:  ADD.W           R0, R9, R9,LSL#5
287D0E:  LSLS            R0, R0, #2; byte_count
287D10:  BLX             malloc
287D14:  MOV             R10, R0
287D16:  CMP.W           R11, #0
287D1A:  BEQ             loc_287D3A
287D1C:  ADD.W           R0, R6, R6,LSL#5
287D20:  MOV             R1, R11; void *
287D22:  LSLS            R2, R0, #2; size_t
287D24:  MOV             R0, R10; void *
287D26:  BLX             memcpy_0
287D2A:  MOV             R0, R11; p
287D2C:  BLX             free
287D30:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287D38)
287D34:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287D36:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287D38:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287D3A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287D42)
287D3E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287D40:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287D42:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
287D46:  STR.W           R9, [R0]; CHID::m_MappingPairs
287D4A:  B               loc_287D4E
287D4C:  MOV             R10, R11
287D4E:  ADD.W           R0, R6, R6,LSL#5
287D52:  ADD             R4, SP, #0xB0+var_A8
287D54:  MOVS            R2, #0x84; size_t
287D56:  ADD.W           R0, R10, R0,LSL#2; void *
287D5A:  MOV             R1, R4; void *
287D5C:  BLX             memcpy_0
287D60:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287D6E)
287D64:  ADDS            R5, R6, #1
287D66:  LDR.W           R1, =(aMappingRadioPr - 0x287D70); "MAPPING_RADIO_PREV_STATION"
287D6A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287D6C:  ADD             R1, PC; "MAPPING_RADIO_PREV_STATION"
287D6E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287D70:  VLD1.64         {D16-D17}, [R1]
287D74:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287D76:  ADD.W           R0, R1, #0xB
287D7A:  VLD1.8          {D18-D19}, [R0]
287D7E:  ADD.W           R0, R4, #0xF
287D82:  VST1.8          {D18-D19}, [R0]
287D86:  ORR.W           R0, R4, #4
287D8A:  VST1.32         {D16-D17}, [R0]
287D8E:  MOVS            R0, #0xC
287D90:  STR             R0, [SP,#0xB0+var_A8]
287D92:  ADDS            R0, R6, #2
287D94:  CMP             R9, R0
287D96:  BCS             loc_287DEE
287D98:  MOVW            R1, #0xAAAB
287D9C:  LSLS            R0, R0, #2
287D9E:  MOVT            R1, #0xAAAA
287DA2:  UMULL.W         R0, R1, R0, R1
287DA6:  MOVS            R0, #3
287DA8:  ADD.W           R9, R0, R1,LSR#1
287DAC:  ADD.W           R0, R9, R9,LSL#5
287DB0:  LSLS            R0, R0, #2; byte_count
287DB2:  BLX             malloc
287DB6:  MOV             R8, R0
287DB8:  CMP.W           R10, #0
287DBC:  BEQ             loc_287DDC
287DBE:  ADD.W           R0, R5, R5,LSL#5
287DC2:  MOV             R1, R10; void *
287DC4:  LSLS            R2, R0, #2; size_t
287DC6:  MOV             R0, R8; void *
287DC8:  BLX             memcpy_0
287DCC:  MOV             R0, R10; p
287DCE:  BLX             free
287DD2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287DDA)
287DD6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287DD8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287DDA:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287DDC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287DE4)
287DE0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287DE2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287DE4:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
287DE8:  STR.W           R9, [R0]; CHID::m_MappingPairs
287DEC:  B               loc_287DF0
287DEE:  MOV             R8, R10
287DF0:  ADD.W           R0, R5, R5,LSL#5
287DF4:  ADD             R4, SP, #0xB0+var_A8
287DF6:  MOVS            R2, #0x84; size_t
287DF8:  ADD.W           R0, R8, R0,LSL#2; void *
287DFC:  MOV             R1, R4; void *
287DFE:  BLX             memcpy_0
287E02:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287E10)
287E06:  ADDS            R6, R5, #1
287E08:  LDR.W           R1, =(aMappingRadioNe - 0x287E12); "MAPPING_RADIO_NEXT_STATION"
287E0C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287E0E:  ADD             R1, PC; "MAPPING_RADIO_NEXT_STATION"
287E10:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287E12:  VLD1.64         {D16-D17}, [R1]
287E16:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287E18:  ADD.W           R0, R1, #0xB
287E1C:  VLD1.8          {D18-D19}, [R0]
287E20:  ADD.W           R0, R4, #0xF
287E24:  VST1.8          {D18-D19}, [R0]
287E28:  ORR.W           R0, R4, #4
287E2C:  VST1.32         {D16-D17}, [R0]
287E30:  MOVS            R0, #0xD
287E32:  STR             R0, [SP,#0xB0+var_A8]
287E34:  ADDS            R0, R5, #2
287E36:  CMP             R9, R0
287E38:  BCS             loc_287E90
287E3A:  MOVW            R1, #0xAAAB
287E3E:  LSLS            R0, R0, #2
287E40:  MOVT            R1, #0xAAAA
287E44:  UMULL.W         R0, R1, R0, R1
287E48:  MOVS            R0, #3
287E4A:  ADD.W           R9, R0, R1,LSR#1
287E4E:  ADD.W           R0, R9, R9,LSL#5
287E52:  LSLS            R0, R0, #2; byte_count
287E54:  BLX             malloc
287E58:  MOV             R10, R0
287E5A:  CMP.W           R8, #0
287E5E:  BEQ             loc_287E7E
287E60:  ADD.W           R0, R6, R6,LSL#5
287E64:  MOV             R1, R8; void *
287E66:  LSLS            R2, R0, #2; size_t
287E68:  MOV             R0, R10; void *
287E6A:  BLX             memcpy_0
287E6E:  MOV             R0, R8; p
287E70:  BLX             free
287E74:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287E7C)
287E78:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287E7A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287E7C:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287E7E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287E86)
287E82:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287E84:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287E86:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
287E8A:  STR.W           R9, [R0]; CHID::m_MappingPairs
287E8E:  B               loc_287E92
287E90:  MOV             R10, R8
287E92:  ADD.W           R0, R6, R6,LSL#5
287E96:  ADD             R5, SP, #0xB0+var_A8
287E98:  MOVS            R2, #0x84; size_t
287E9A:  ADD.W           R0, R10, R0,LSL#2; void *
287E9E:  MOV             R1, R5; void *
287EA0:  BLX             memcpy_0
287EA4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287EB2)
287EA8:  ADDS            R4, R6, #1
287EAA:  LDR.W           R1, =(aMappingVitalSt - 0x287EB4); "MAPPING_VITAL_STATS"
287EAE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287EB0:  ADD             R1, PC; "MAPPING_VITAL_STATS"
287EB2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287EB4:  VLD1.64         {D16-D17}, [R1]
287EB8:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
287EBA:  ORR.W           R0, R5, #4
287EBE:  VST1.32         {D16-D17}, [R0]
287EC2:  MOV             R0, #0x535441
287ECA:  STR             R0, [SP,#0xB0+var_94]
287ECC:  MOVS            R0, #0xE
287ECE:  STR             R0, [SP,#0xB0+var_A8]
287ED0:  ADDS            R0, R6, #2
287ED2:  CMP             R9, R0
287ED4:  BCS             loc_287F2C
287ED6:  MOVW            R1, #0xAAAB
287EDA:  LSLS            R0, R0, #2
287EDC:  MOVT            R1, #0xAAAA
287EE0:  UMULL.W         R0, R1, R0, R1
287EE4:  MOVS            R0, #3
287EE6:  ADD.W           R9, R0, R1,LSR#1
287EEA:  ADD.W           R0, R9, R9,LSL#5
287EEE:  LSLS            R0, R0, #2; byte_count
287EF0:  BLX             malloc
287EF4:  MOV             R8, R0
287EF6:  CMP.W           R10, #0
287EFA:  BEQ             loc_287F1A
287EFC:  ADD.W           R0, R4, R4,LSL#5
287F00:  MOV             R1, R10; void *
287F02:  LSLS            R2, R0, #2; size_t
287F04:  MOV             R0, R8; void *
287F06:  BLX             memcpy_0
287F0A:  MOV             R0, R10; p
287F0C:  BLX             free
287F10:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287F18)
287F14:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287F16:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287F18:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
287F1A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287F22)
287F1E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287F20:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287F22:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
287F26:  STR.W           R9, [R0]; CHID::m_MappingPairs
287F2A:  B               loc_287F2E
287F2C:  MOV             R8, R10
287F2E:  ADD.W           R0, R4, R4,LSL#5
287F32:  ADD             R5, SP, #0xB0+var_A8
287F34:  MOVS            R2, #0x84; size_t
287F36:  ADD.W           R0, R8, R0,LSL#2; void *
287F3A:  MOV             R1, R5; void *
287F3C:  BLX             memcpy_0
287F40:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287F52)
287F44:  ADDS            R6, R4, #1
287F46:  LDR.W           R1, =(aMappingNextWea - 0x287F58); "MAPPING_NEXT_WEAPON"
287F4A:  MOVW            R10, #:lower16:loc_4E4F50
287F4E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287F50:  MOVT            R10, #:upper16:loc_4E4F50
287F54:  ADD             R1, PC; "MAPPING_NEXT_WEAPON"
287F56:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287F58:  VLD1.64         {D16-D17}, [R1]
287F5C:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287F5E:  ORR.W           R0, R5, #4
287F62:  VST1.32         {D16-D17}, [R0]
287F66:  MOVS            R0, #0xF
287F68:  STR.W           R10, [SP,#0xB0+var_94]
287F6C:  STR             R0, [SP,#0xB0+var_A8]
287F6E:  ADDS            R0, R4, #2
287F70:  CMP             R9, R0
287F72:  BCS             loc_287FCA
287F74:  MOVW            R1, #0xAAAB
287F78:  LSLS            R0, R0, #2
287F7A:  MOVT            R1, #0xAAAA
287F7E:  UMULL.W         R0, R1, R0, R1
287F82:  MOVS            R0, #3
287F84:  ADD.W           R9, R0, R1,LSR#1
287F88:  ADD.W           R0, R9, R9,LSL#5
287F8C:  LSLS            R0, R0, #2; byte_count
287F8E:  BLX             malloc
287F92:  MOV             R11, R0
287F94:  CMP.W           R8, #0
287F98:  BEQ             loc_287FB8
287F9A:  ADD.W           R0, R6, R6,LSL#5
287F9E:  MOV             R1, R8; void *
287FA0:  LSLS            R2, R0, #2; size_t
287FA2:  MOV             R0, R11; void *
287FA4:  BLX             memcpy_0
287FA8:  MOV             R0, R8; p
287FAA:  BLX             free
287FAE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287FB6)
287FB2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287FB4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287FB6:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
287FB8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287FC0)
287FBC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287FBE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287FC0:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
287FC4:  STR.W           R9, [R0]; CHID::m_MappingPairs
287FC8:  B               loc_287FCC
287FCA:  MOV             R11, R8
287FCC:  ADD.W           R0, R6, R6,LSL#5
287FD0:  ADD             R4, SP, #0xB0+var_A8
287FD2:  MOVS            R2, #0x84; size_t
287FD4:  ADD.W           R0, R11, R0,LSL#2; void *
287FD8:  MOV             R1, R4; void *
287FDA:  BLX             memcpy_0
287FDE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x287FEC)
287FE2:  ADDS            R5, R6, #1
287FE4:  LDR.W           R1, =(aMappingPrevWea - 0x287FEE); "MAPPING_PREV_WEAPON"
287FE8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
287FEA:  ADD             R1, PC; "MAPPING_PREV_WEAPON"
287FEC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
287FEE:  VLD1.64         {D16-D17}, [R1]
287FF2:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
287FF4:  ORR.W           R0, R4, #4
287FF8:  VST1.32         {D16-D17}, [R0]
287FFC:  MOVS            R0, #0x10
287FFE:  STR.W           R10, [SP,#0xB0+var_94]
288002:  STR             R0, [SP,#0xB0+var_A8]
288004:  ADDS            R0, R6, #2
288006:  CMP             R9, R0
288008:  BCS             loc_288060
28800A:  MOVW            R1, #0xAAAB
28800E:  LSLS            R0, R0, #2
288010:  MOVT            R1, #0xAAAA
288014:  UMULL.W         R0, R1, R0, R1
288018:  MOVS            R0, #3
28801A:  ADD.W           R9, R0, R1,LSR#1
28801E:  ADD.W           R0, R9, R9,LSL#5
288022:  LSLS            R0, R0, #2; byte_count
288024:  BLX             malloc
288028:  MOV             R8, R0
28802A:  CMP.W           R11, #0
28802E:  BEQ             loc_28804E
288030:  ADD.W           R0, R5, R5,LSL#5
288034:  MOV             R1, R11; void *
288036:  LSLS            R2, R0, #2; size_t
288038:  MOV             R0, R8; void *
28803A:  BLX             memcpy_0
28803E:  MOV             R0, R11; p
288040:  BLX             free
288044:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28804C)
288048:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28804A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28804C:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28804E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288056)
288052:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288054:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288056:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28805A:  STR.W           R9, [R0]; CHID::m_MappingPairs
28805E:  B               loc_288062
288060:  MOV             R8, R11
288062:  ADD.W           R0, R5, R5,LSL#5
288066:  ADD             R4, SP, #0xB0+var_A8
288068:  MOVS            R2, #0x84; size_t
28806A:  ADD.W           R0, R8, R0,LSL#2; void *
28806E:  MOV             R1, R4; void *
288070:  BLX             memcpy_0
288074:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288082)
288078:  ADDS            R6, R5, #1
28807A:  LDR.W           R1, =(aMappingRadar - 0x288084); "MAPPING_RADAR"
28807E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288080:  ADD             R1, PC; "MAPPING_RADAR"
288082:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288084:  VLDR            D17, [R1]
288088:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28808A:  ADDS            R0, R1, #6
28808C:  VLD1.16         {D16}, [R0]
288090:  ADD.W           R0, R4, #0xA
288094:  VST1.16         {D16}, [R0]
288098:  MOVS            R0, #0x11
28809A:  STR             R0, [SP,#0xB0+var_A8]
28809C:  ADDS            R0, R5, #2
28809E:  CMP             R9, R0
2880A0:  VSTR            D17, [SP,#0xB0+var_A4]
2880A4:  BCS             loc_2880FC
2880A6:  MOVW            R1, #0xAAAB
2880AA:  LSLS            R0, R0, #2
2880AC:  MOVT            R1, #0xAAAA
2880B0:  UMULL.W         R0, R1, R0, R1
2880B4:  MOVS            R0, #3
2880B6:  ADD.W           R9, R0, R1,LSR#1
2880BA:  ADD.W           R0, R9, R9,LSL#5
2880BE:  LSLS            R0, R0, #2; byte_count
2880C0:  BLX             malloc
2880C4:  MOV             R10, R0
2880C6:  CMP.W           R8, #0
2880CA:  BEQ             loc_2880EA
2880CC:  ADD.W           R0, R6, R6,LSL#5
2880D0:  MOV             R1, R8; void *
2880D2:  LSLS            R2, R0, #2; size_t
2880D4:  MOV             R0, R10; void *
2880D6:  BLX             memcpy_0
2880DA:  MOV             R0, R8; p
2880DC:  BLX             free
2880E0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2880E8)
2880E4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2880E6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2880E8:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2880EA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2880F2)
2880EE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2880F0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2880F2:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
2880F6:  STR.W           R9, [R0]; CHID::m_MappingPairs
2880FA:  B               loc_2880FE
2880FC:  MOV             R10, R8
2880FE:  ADD.W           R0, R6, R6,LSL#5
288102:  ADD             R4, SP, #0xB0+var_A8
288104:  MOVS            R2, #0x84; size_t
288106:  ADD.W           R0, R10, R0,LSL#2; void *
28810A:  MOV             R1, R4; void *
28810C:  BLX             memcpy_0
288110:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28811E)
288114:  ADDS            R5, R6, #1
288116:  LDR.W           R1, =(aMappingPedLook - 0x288120); "MAPPING_PED_LOOK_BACK"
28811A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28811C:  ADD             R1, PC; "MAPPING_PED_LOOK_BACK"
28811E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288120:  VLD1.64         {D16-D17}, [R1]
288124:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288126:  ADD.W           R0, R1, #0xE
28812A:  VLD1.16         {D18}, [R0]
28812E:  ADD.W           R0, R4, #0x12
288132:  VST1.16         {D18}, [R0]
288136:  ORR.W           R0, R4, #4
28813A:  VST1.32         {D16-D17}, [R0]
28813E:  MOVS            R0, #0x12
288140:  STR             R0, [SP,#0xB0+var_A8]
288142:  ADDS            R0, R6, #2
288144:  CMP             R9, R0
288146:  BCS             loc_28819E
288148:  MOVW            R1, #0xAAAB
28814C:  LSLS            R0, R0, #2
28814E:  MOVT            R1, #0xAAAA
288152:  UMULL.W         R0, R1, R0, R1
288156:  MOVS            R0, #3
288158:  ADD.W           R9, R0, R1,LSR#1
28815C:  ADD.W           R0, R9, R9,LSL#5
288160:  LSLS            R0, R0, #2; byte_count
288162:  BLX             malloc
288166:  MOV             R11, R0
288168:  CMP.W           R10, #0
28816C:  BEQ             loc_28818C
28816E:  ADD.W           R0, R5, R5,LSL#5
288172:  MOV             R1, R10; void *
288174:  LSLS            R2, R0, #2; size_t
288176:  MOV             R0, R11; void *
288178:  BLX             memcpy_0
28817C:  MOV             R0, R10; p
28817E:  BLX             free
288182:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28818A)
288186:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288188:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28818A:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28818C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288194)
288190:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288192:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288194:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
288198:  STR.W           R9, [R0]; CHID::m_MappingPairs
28819C:  B               loc_2881A0
28819E:  MOV             R11, R10
2881A0:  ADD.W           R0, R5, R5,LSL#5
2881A4:  ADD             R4, SP, #0xB0+var_A8
2881A6:  MOVS            R2, #0x84; size_t
2881A8:  ADD.W           R0, R11, R0,LSL#2; void *
2881AC:  MOV             R1, R4; void *
2881AE:  BLX             memcpy_0
2881B2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2881C0)
2881B6:  ADDS            R6, R5, #1
2881B8:  LDR.W           R1, =(aMappingVehicle - 0x2881C2); "MAPPING_VEHICLE_LOOK_LEFT"
2881BC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2881BE:  ADD             R1, PC; "MAPPING_VEHICLE_LOOK_LEFT"
2881C0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2881C2:  VLD1.64         {D16-D17}, [R1]
2881C6:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2881C8:  ADD.W           R0, R1, #0xA
2881CC:  VLD1.16         {D18-D19}, [R0]
2881D0:  ADD.W           R0, R4, #0xE
2881D4:  VST1.16         {D18-D19}, [R0]
2881D8:  ORR.W           R0, R4, #4
2881DC:  VST1.32         {D16-D17}, [R0]
2881E0:  MOVS            R0, #0x13
2881E2:  STR             R0, [SP,#0xB0+var_A8]
2881E4:  ADDS            R0, R5, #2
2881E6:  CMP             R9, R0
2881E8:  BCS             loc_288240
2881EA:  MOVW            R1, #0xAAAB
2881EE:  LSLS            R0, R0, #2
2881F0:  MOVT            R1, #0xAAAA
2881F4:  UMULL.W         R0, R1, R0, R1
2881F8:  MOVS            R0, #3
2881FA:  ADD.W           R9, R0, R1,LSR#1
2881FE:  ADD.W           R0, R9, R9,LSL#5
288202:  LSLS            R0, R0, #2; byte_count
288204:  BLX             malloc
288208:  MOV             R8, R0
28820A:  CMP.W           R11, #0
28820E:  BEQ             loc_28822E
288210:  ADD.W           R0, R6, R6,LSL#5
288214:  MOV             R1, R11; void *
288216:  LSLS            R2, R0, #2; size_t
288218:  MOV             R0, R8; void *
28821A:  BLX             memcpy_0
28821E:  MOV             R0, R11; p
288220:  BLX             free
288224:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28822C)
288228:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28822A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28822C:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28822E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288236)
288232:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288234:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288236:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28823A:  STR.W           R9, [R0]; CHID::m_MappingPairs
28823E:  B               loc_288242
288240:  MOV             R8, R11
288242:  ADD.W           R0, R6, R6,LSL#5
288246:  ADD             R5, SP, #0xB0+var_A8
288248:  MOVS            R2, #0x84; size_t
28824A:  ADD.W           R0, R8, R0,LSL#2; void *
28824E:  MOV             R1, R5; void *
288250:  BLX             memcpy_0
288254:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28825E)
288256:  ADDS            R4, R6, #1
288258:  LDR             R1, =(aMappingVehicle_0 - 0x288260); "MAPPING_VEHICLE_LOOK_RIGHT"
28825A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28825C:  ADD             R1, PC; "MAPPING_VEHICLE_LOOK_RIGHT"
28825E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288260:  VLD1.64         {D16-D17}, [R1]
288264:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
288266:  ADD.W           R0, R1, #0xB
28826A:  VLD1.8          {D18-D19}, [R0]
28826E:  ADD.W           R0, R5, #0xF
288272:  VST1.8          {D18-D19}, [R0]
288276:  ORR.W           R0, R5, #4
28827A:  VST1.32         {D16-D17}, [R0]
28827E:  MOVS            R0, #0x14
288280:  STR             R0, [SP,#0xB0+var_A8]
288282:  ADDS            R0, R6, #2
288284:  CMP             R9, R0
288286:  BCS             loc_2882DA
288288:  MOVW            R1, #0xAAAB
28828C:  LSLS            R0, R0, #2
28828E:  MOVT            R1, #0xAAAA
288292:  UMULL.W         R0, R1, R0, R1
288296:  MOVS            R0, #3
288298:  ADD.W           R9, R0, R1,LSR#1
28829C:  ADD.W           R0, R9, R9,LSL#5
2882A0:  LSLS            R0, R0, #2; byte_count
2882A2:  BLX             malloc
2882A6:  MOV             R10, R0
2882A8:  CMP.W           R8, #0
2882AC:  BEQ             loc_2882CA
2882AE:  ADD.W           R0, R4, R4,LSL#5
2882B2:  MOV             R1, R8; void *
2882B4:  LSLS            R2, R0, #2; size_t
2882B6:  MOV             R0, R10; void *
2882B8:  BLX             memcpy_0
2882BC:  MOV             R0, R8; p
2882BE:  BLX             free
2882C2:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2882C8)
2882C4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2882C6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2882C8:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2882CA:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2882D0)
2882CC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2882CE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2882D0:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
2882D4:  STR.W           R9, [R0]; CHID::m_MappingPairs
2882D8:  B               loc_2882DC
2882DA:  MOV             R10, R8
2882DC:  ADD.W           R0, R4, R4,LSL#5
2882E0:  ADD             R5, SP, #0xB0+var_A8
2882E2:  MOVS            R2, #0x84; size_t
2882E4:  ADD.W           R0, R10, R0,LSL#2; void *
2882E8:  MOV             R1, R5; void *
2882EA:  BLX             memcpy_0
2882EE:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2882F8)
2882F0:  ADDS            R6, R4, #1
2882F2:  LDR             R1, =(aMappingVehicle_1 - 0x2882FA); "MAPPING_VEHICLE_LOOK_BACK"
2882F4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2882F6:  ADD             R1, PC; "MAPPING_VEHICLE_LOOK_BACK"
2882F8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2882FA:  VLD1.64         {D16-D17}, [R1]
2882FE:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288300:  ADD.W           R0, R1, #0xA
288304:  VLD1.16         {D18-D19}, [R0]
288308:  ADD.W           R0, R5, #0xE
28830C:  VST1.16         {D18-D19}, [R0]
288310:  ORR.W           R0, R5, #4
288314:  VST1.32         {D16-D17}, [R0]
288318:  MOVS            R0, #0x15
28831A:  STR             R0, [SP,#0xB0+var_A8]
28831C:  ADDS            R0, R4, #2
28831E:  CMP             R9, R0
288320:  BCS             loc_288374
288322:  MOVW            R1, #0xAAAB
288326:  LSLS            R0, R0, #2
288328:  MOVT            R1, #0xAAAA
28832C:  UMULL.W         R0, R1, R0, R1
288330:  MOVS            R0, #3
288332:  ADD.W           R9, R0, R1,LSR#1
288336:  ADD.W           R0, R9, R9,LSL#5
28833A:  LSLS            R0, R0, #2; byte_count
28833C:  BLX             malloc
288340:  MOV             R11, R0
288342:  CMP.W           R10, #0
288346:  BEQ             loc_288364
288348:  ADD.W           R0, R6, R6,LSL#5
28834C:  MOV             R1, R10; void *
28834E:  LSLS            R2, R0, #2; size_t
288350:  MOV             R0, R11; void *
288352:  BLX             memcpy_0
288356:  MOV             R0, R10; p
288358:  BLX             free
28835C:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288362)
28835E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288360:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288362:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288364:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28836A)
288366:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288368:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28836A:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
28836E:  STR.W           R9, [R0]; CHID::m_MappingPairs
288372:  B               loc_288376
288374:  MOV             R11, R10
288376:  ADD.W           R0, R6, R6,LSL#5
28837A:  ADD             R4, SP, #0xB0+var_A8
28837C:  MOVS            R2, #0x84; size_t
28837E:  ADD.W           R0, R11, R0,LSL#2; void *
288382:  MOV             R1, R4; void *
288384:  BLX             memcpy_0
288388:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288392)
28838A:  ADDS            R5, R6, #1
28838C:  LDR             R1, =(aMappingMission - 0x288394); "MAPPING_MISSION_START_AND_CANCEL"
28838E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288390:  ADD             R1, PC; "MAPPING_MISSION_START_AND_CANCEL"
288392:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288394:  VLD1.64         {D16-D17}, [R1]!
288398:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28839A:  ORR.W           R0, R4, #4
28839E:  VLD1.64         {D18-D19}, [R1]
2883A2:  VST1.32         {D16-D17}, [R0]
2883A6:  ADD.W           R0, R4, #0x14
2883AA:  VST1.32         {D18-D19}, [R0]
2883AE:  MOVS            R0, #0
2883B0:  STRB.W          R0, [SP,#0xB0+var_84]
2883B4:  MOVS            R0, #0x16
2883B6:  STR             R0, [SP,#0xB0+var_A8]
2883B8:  ADDS            R0, R6, #2
2883BA:  CMP             R9, R0
2883BC:  BCS             loc_288410
2883BE:  MOVW            R1, #0xAAAB
2883C2:  LSLS            R0, R0, #2
2883C4:  MOVT            R1, #0xAAAA
2883C8:  UMULL.W         R0, R1, R0, R1
2883CC:  MOVS            R0, #3
2883CE:  ADD.W           R9, R0, R1,LSR#1
2883D2:  ADD.W           R0, R9, R9,LSL#5
2883D6:  LSLS            R0, R0, #2; byte_count
2883D8:  BLX             malloc
2883DC:  MOV             R10, R0
2883DE:  CMP.W           R11, #0
2883E2:  BEQ             loc_288400
2883E4:  ADD.W           R0, R5, R5,LSL#5
2883E8:  MOV             R1, R11; void *
2883EA:  LSLS            R2, R0, #2; size_t
2883EC:  MOV             R0, R10; void *
2883EE:  BLX             memcpy_0
2883F2:  MOV             R0, R11; p
2883F4:  BLX             free
2883F8:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2883FE)
2883FA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2883FC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2883FE:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288400:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288406)
288402:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288404:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288406:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28840A:  STR.W           R9, [R0]; CHID::m_MappingPairs
28840E:  B               loc_288412
288410:  MOV             R10, R11
288412:  ADD.W           R0, R5, R5,LSL#5
288416:  ADD             R4, SP, #0xB0+var_A8
288418:  MOVS            R2, #0x84; size_t
28841A:  ADD.W           R0, R10, R0,LSL#2; void *
28841E:  MOV             R1, R4; void *
288420:  BLX             memcpy_0
288424:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28842E)
288426:  ADDS            R6, R5, #1
288428:  LDR             R1, =(aMappingMission_0 - 0x288430); "MAPPING_MISSION_START_AND_CANCEL_VIGILA"...
28842A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28842C:  ADD             R1, PC; "MAPPING_MISSION_START_AND_CANCEL_VIGILA"...
28842E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288430:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288432:  ADD.W           R0, R1, #0x1B
288436:  VLD1.8          {D18-D19}, [R0]
28843A:  ADD.W           R0, R4, #0x1F
28843E:  VLD1.64         {D16-D17}, [R1]!
288442:  VST1.8          {D18-D19}, [R0]
288446:  ORR.W           R0, R4, #4
28844A:  VST1.32         {D16-D17}, [R0]
28844E:  ADD.W           R0, R4, #0x14
288452:  VLD1.64         {D20-D21}, [R1]
288456:  VST1.32         {D20-D21}, [R0]
28845A:  MOVS            R0, #0x17
28845C:  STR             R0, [SP,#0xB0+var_A8]
28845E:  ADDS            R0, R5, #2
288460:  CMP             R9, R0
288462:  BCS.W           loc_2887D8
288466:  MOVW            R1, #0xAAAB
28846A:  LSLS            R0, R0, #2
28846C:  MOVT            R1, #0xAAAA
288470:  UMULL.W         R0, R1, R0, R1
288474:  MOVS            R0, #3
288476:  ADD.W           R9, R0, R1,LSR#1
28847A:  ADD.W           R0, R9, R9,LSL#5
28847E:  LSLS            R0, R0, #2; byte_count
288480:  BLX             malloc
288484:  MOV             R8, R0
288486:  CMP.W           R10, #0
28848A:  BEQ             loc_2884A8
28848C:  ADD.W           R0, R6, R6,LSL#5
288490:  MOV             R1, R10; void *
288492:  LSLS            R2, R0, #2; size_t
288494:  MOV             R0, R8; void *
288496:  BLX             memcpy_0
28849A:  MOV             R0, R10; p
28849C:  BLX             free
2884A0:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2884A6)
2884A2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2884A4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2884A6:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2884A8:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2884AE)
2884AA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2884AC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2884AE:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
2884B2:  STR.W           R9, [R0]; CHID::m_MappingPairs
2884B6:  B               loc_2887DA
2884B8:  DCD __stack_chk_guard_ptr - 0x287606
2884BC:  DCD _ZTV4CHID_ptr - 0x287608
2884C0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287610
2884C4:  DCD _ZN4CHID13m_nDeadFramesE_ptr - 0x287614
2884C8:  DCD aMappingUnknown - 0x287624
2884CC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287650
2884D0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287668
2884D4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287678
2884D8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28768A
2884DC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2876B2
2884E0:  DCD aMappingAttack - 0x2876B4
2884E4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287718
2884E8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287722
2884EC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28774E
2884F0:  DCD aMappingSprint - 0x287750
2884F4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2877B4
2884F8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2877BE
2884FC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2877EA
288500:  DCD aMappingJump - 0x2877EC
288504:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287850
288508:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28785A
28850C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287886
288510:  DCD aMappingCrouch - 0x287888
288514:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2878EC
288518:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2878F6
28851C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287922
288520:  DCD aMappingEnterCa - 0x287924
288524:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287984
288528:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28798E
28852C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2879BA
288530:  DCD aMappingBrake - 0x2879BC
288534:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287A20
288538:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287A2A
28853C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287A56
288540:  DCD aMappingHandbra - 0x287A58
288544:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287AB8
288548:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287AC2
28854C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287AEE
288550:  DCD aMappingAcceler - 0x287AF0
288554:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287B58
288558:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287B62
28855C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287B8E
288560:  DCD aMappingCameraC - 0x287B90
288564:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287BFA
288568:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287C04
28856C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287C30
288570:  DCD aMappingCameraF - 0x287C32
288574:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287C9C
288578:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287CA6
28857C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287CD2
288580:  DCD aMappingHorn - 0x287CD4
288584:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287D38
288588:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287D42
28858C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287D6E
288590:  DCD aMappingRadioPr - 0x287D70
288594:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287DDA
288598:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287DE4
28859C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287E10
2885A0:  DCD aMappingRadioNe - 0x287E12
2885A4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287E7C
2885A8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287E86
2885AC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287EB2
2885B0:  DCD aMappingVitalSt - 0x287EB4
2885B4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287F18
2885B8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287F22
2885BC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287F52
2885C0:  DCD aMappingNextWea - 0x287F58
2885C4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287FB6
2885C8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287FC0
2885CC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x287FEC
2885D0:  DCD aMappingPrevWea - 0x287FEE
2885D4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28804C
2885D8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288056
2885DC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288082
2885E0:  DCD aMappingRadar - 0x288084
2885E4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2880E8
2885E8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2880F2
2885EC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28811E
2885F0:  DCD aMappingPedLook - 0x288120
2885F4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28818A
2885F8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288194
2885FC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2881C0
288600:  DCD aMappingVehicle - 0x2881C2
288604:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28822C
288608:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288236
28860C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28825E
288610:  DCD aMappingVehicle_0 - 0x288260
288614:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2882C8
288618:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2882D0
28861C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2882F8
288620:  DCD aMappingVehicle_1 - 0x2882FA
288624:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288362
288628:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28836A
28862C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288392
288630:  DCD aMappingMission - 0x288394
288634:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2883FE
288638:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288406
28863C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28842E
288640:  DCD aMappingMission_0 - 0x288430
288644:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2884A6
288648:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2884AE
28864C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2887FA
288650:  DCD aMappingVehicle_2 - 0x2887FC
288654:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28885E
288658:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288868
28865C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288894
288660:  DCD aMappingVehicle_3 - 0x288896
288664:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2888F8
288668:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288902
28866C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28892E
288670:  DCD aMappingVehicle_4 - 0x288930
288674:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28899A
288678:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2889A4
28867C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2889D0
288680:  DCD aMappingVehicle_5 - 0x2889D2
288684:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288A3C
288688:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288A46
28868C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288A72
288690:  DCD aMappingLookX - 0x288A74
288694:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288AD8
288698:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288AE2
28869C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288B0E
2886A0:  DCD aMappingLookY - 0x288B10
2886A4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288B74
2886A8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288B7E
2886AC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288BAE
2886B0:  DCD aMappingPedMove - 0x288BB0
2886B4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288C16
2886B8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288C20
2886BC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288C4C
2886C0:  DCD aMappingPedMove_0 - 0x288C4E
2886C4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288CB4
2886C8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288CBE
2886CC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288CEA
2886D0:  DCD aMappingAutoHyd - 0x288CEC
2886D4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288D4E
2886D8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288D58
2886DC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288D84
2886E0:  DCD aMappingSwapWea - 0x288D86
2886E4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288DF2
2886E8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288DFC
2886EC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288E28
2886F0:  DCD aMappingWeaponZ - 0x288E2A
2886F4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288E94
2886F8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288E9E
2886FC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288ECA
288700:  DCD aMappingWeaponZ_0 - 0x288ECC
288704:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288F2E
288708:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288F38
28870C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288F64
288710:  DCD aMappingEnterAn - 0x288F66
288714:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288FD2
288718:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x288FDC
28871C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289008
288720:  DCD aMappingVehicle_6 - 0x28900A
288724:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289074
288728:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28907E
28872C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2890AA
288730:  DCD aMappingTurretL - 0x2890AC
288734:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289110
288738:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28911A
28873C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289146
288740:  DCD aMappingTurretR - 0x289148
288744:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2891B2
288748:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2891BC
28874C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2891E8
288750:  DCD aMappingMagnet - 0x2891EA
288754:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28924E
288758:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289258
28875C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289284
288760:  DCD aMappingSkipCut - 0x289286
288764:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2892F0
288768:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2892FA
28876C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289326
288770:  DCD aMappingGangRec - 0x289328
288774:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289392
288778:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28939C
28877C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2893C8
288780:  DCD aMappingGangIgn - 0x2893CA
288784:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28942E
288788:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289438
28878C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289464
288790:  DCD aMappingGangFol - 0x289466
288794:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2894CA
288798:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2894D4
28879C:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289500
2887A0:  DCD aMappingGangHol - 0x289502
2887A4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28956C
2887A8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289576
2887AC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2895A2
2887B0:  DCD aMappingRhythmU - 0x2895A4
2887B4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289604
2887B8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28960E
2887BC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28963A
2887C0:  DCD aMappingRhythmD - 0x28963C
2887C4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2896A0
2887C8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2896AA
2887CC:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2896D6
2887D0:  DCD aMappingRhythmL - 0x2896D8
2887D4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28973C
2887D8:  MOV             R8, R10
2887DA:  ADD.W           R0, R6, R6,LSL#5
2887DE:  ADD             R4, SP, #0xB0+var_A8
2887E0:  MOVS            R2, #0x84; size_t
2887E2:  ADD.W           R0, R8, R0,LSL#2; void *
2887E6:  MOV             R1, R4; void *
2887E8:  BLX             memcpy_0
2887EC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2887FA)
2887F0:  ADDS            R5, R6, #1
2887F2:  LDR.W           R1, =(aMappingVehicle_2 - 0x2887FC); "MAPPING_VEHICLE_STEER_X"
2887F6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2887F8:  ADD             R1, PC; "MAPPING_VEHICLE_STEER_X"
2887FA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2887FC:  VLD1.64         {D16-D17}, [R1]!
288800:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288802:  ORR.W           R0, R4, #4
288806:  VST1.32         {D16-D17}, [R0]
28880A:  MOVS            R0, #0x18
28880C:  STR             R0, [SP,#0xB0+var_A8]
28880E:  ADDS            R0, R6, #2
288810:  VLDR            D16, [R1]
288814:  CMP             R9, R0
288816:  VSTR            D16, [SP,#0xB0+var_94]
28881A:  BCS             loc_288872
28881C:  MOVW            R1, #0xAAAB
288820:  LSLS            R0, R0, #2
288822:  MOVT            R1, #0xAAAA
288826:  UMULL.W         R0, R1, R0, R1
28882A:  MOVS            R0, #3
28882C:  ADD.W           R9, R0, R1,LSR#1
288830:  ADD.W           R0, R9, R9,LSL#5
288834:  LSLS            R0, R0, #2; byte_count
288836:  BLX             malloc
28883A:  MOV             R10, R0
28883C:  CMP.W           R8, #0
288840:  BEQ             loc_288860
288842:  ADD.W           R0, R5, R5,LSL#5
288846:  MOV             R1, R8; void *
288848:  LSLS            R2, R0, #2; size_t
28884A:  MOV             R0, R10; void *
28884C:  BLX             memcpy_0
288850:  MOV             R0, R8; p
288852:  BLX             free
288856:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28885E)
28885A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28885C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28885E:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288860:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288868)
288864:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288866:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288868:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28886C:  STR.W           R9, [R0]; CHID::m_MappingPairs
288870:  B               loc_288874
288872:  MOV             R10, R8
288874:  ADD.W           R0, R5, R5,LSL#5
288878:  ADD             R6, SP, #0xB0+var_A8
28887A:  MOVS            R2, #0x84; size_t
28887C:  ADD.W           R0, R10, R0,LSL#2; void *
288880:  MOV             R1, R6; void *
288882:  BLX             memcpy_0
288886:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288894)
28888A:  ADDS            R4, R5, #1
28888C:  LDR.W           R1, =(aMappingVehicle_3 - 0x288896); "MAPPING_VEHICLE_STEER_Y"
288890:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288892:  ADD             R1, PC; "MAPPING_VEHICLE_STEER_Y"
288894:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288896:  VLD1.64         {D16-D17}, [R1]!
28889A:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28889C:  ORR.W           R0, R6, #4
2888A0:  VST1.32         {D16-D17}, [R0]
2888A4:  MOVS            R0, #0x19
2888A6:  STR             R0, [SP,#0xB0+var_A8]
2888A8:  ADDS            R0, R5, #2
2888AA:  VLDR            D16, [R1]
2888AE:  CMP             R9, R0
2888B0:  VSTR            D16, [SP,#0xB0+var_94]
2888B4:  BCS             loc_28890C
2888B6:  MOVW            R1, #0xAAAB
2888BA:  LSLS            R0, R0, #2
2888BC:  MOVT            R1, #0xAAAA
2888C0:  UMULL.W         R0, R1, R0, R1
2888C4:  MOVS            R0, #3
2888C6:  ADD.W           R9, R0, R1,LSR#1
2888CA:  ADD.W           R0, R9, R9,LSL#5
2888CE:  LSLS            R0, R0, #2; byte_count
2888D0:  BLX             malloc
2888D4:  MOV             R8, R0
2888D6:  CMP.W           R10, #0
2888DA:  BEQ             loc_2888FA
2888DC:  ADD.W           R0, R4, R4,LSL#5
2888E0:  MOV             R1, R10; void *
2888E2:  LSLS            R2, R0, #2; size_t
2888E4:  MOV             R0, R8; void *
2888E6:  BLX             memcpy_0
2888EA:  MOV             R0, R10; p
2888EC:  BLX             free
2888F0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2888F8)
2888F4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2888F6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2888F8:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2888FA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288902)
2888FE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288900:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288902:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
288906:  STR.W           R9, [R0]; CHID::m_MappingPairs
28890A:  B               loc_28890E
28890C:  MOV             R8, R10
28890E:  ADD.W           R0, R4, R4,LSL#5
288912:  ADD             R5, SP, #0xB0+var_A8
288914:  MOVS            R2, #0x84; size_t
288916:  ADD.W           R0, R8, R0,LSL#2; void *
28891A:  MOV             R1, R5; void *
28891C:  BLX             memcpy_0
288920:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28892E)
288924:  ADDS            R6, R4, #1
288926:  LDR.W           R1, =(aMappingVehicle_4 - 0x288930); "MAPPING_VEHICLE_STEER_LEFT"
28892A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28892C:  ADD             R1, PC; "MAPPING_VEHICLE_STEER_LEFT"
28892E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288930:  VLD1.64         {D16-D17}, [R1]
288934:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288936:  ADD.W           R0, R1, #0xB
28893A:  VLD1.8          {D18-D19}, [R0]
28893E:  ADD.W           R0, R5, #0xF
288942:  VST1.8          {D18-D19}, [R0]
288946:  ORR.W           R0, R5, #4
28894A:  VST1.32         {D16-D17}, [R0]
28894E:  MOVS            R0, #0x1A
288950:  STR             R0, [SP,#0xB0+var_A8]
288952:  ADDS            R0, R4, #2
288954:  CMP             R9, R0
288956:  BCS             loc_2889AE
288958:  MOVW            R1, #0xAAAB
28895C:  LSLS            R0, R0, #2
28895E:  MOVT            R1, #0xAAAA
288962:  UMULL.W         R0, R1, R0, R1
288966:  MOVS            R0, #3
288968:  ADD.W           R9, R0, R1,LSR#1
28896C:  ADD.W           R0, R9, R9,LSL#5
288970:  LSLS            R0, R0, #2; byte_count
288972:  BLX             malloc
288976:  MOV             R10, R0
288978:  CMP.W           R8, #0
28897C:  BEQ             loc_28899C
28897E:  ADD.W           R0, R6, R6,LSL#5
288982:  MOV             R1, R8; void *
288984:  LSLS            R2, R0, #2; size_t
288986:  MOV             R0, R10; void *
288988:  BLX             memcpy_0
28898C:  MOV             R0, R8; p
28898E:  BLX             free
288992:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28899A)
288996:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288998:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28899A:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28899C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2889A4)
2889A0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2889A2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2889A4:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
2889A8:  STR.W           R9, [R0]; CHID::m_MappingPairs
2889AC:  B               loc_2889B0
2889AE:  MOV             R10, R8
2889B0:  ADD.W           R0, R6, R6,LSL#5
2889B4:  ADD             R4, SP, #0xB0+var_A8
2889B6:  MOVS            R2, #0x84; size_t
2889B8:  ADD.W           R0, R10, R0,LSL#2; void *
2889BC:  MOV             R1, R4; void *
2889BE:  BLX             memcpy_0
2889C2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2889D0)
2889C6:  ADDS            R5, R6, #1
2889C8:  LDR.W           R1, =(aMappingVehicle_5 - 0x2889D2); "MAPPING_VEHICLE_STEER_RIGHT"
2889CC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2889CE:  ADD             R1, PC; "MAPPING_VEHICLE_STEER_RIGHT"
2889D0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2889D2:  VLD1.64         {D16-D17}, [R1]
2889D6:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
2889D8:  ADD.W           R0, R1, #0xC
2889DC:  VLD1.32         {D18-D19}, [R0]
2889E0:  ADD.W           R0, R4, #0x10
2889E4:  VST1.32         {D18-D19}, [R0]
2889E8:  ORR.W           R0, R4, #4
2889EC:  VST1.32         {D16-D17}, [R0]
2889F0:  MOVS            R0, #0x1B
2889F2:  STR             R0, [SP,#0xB0+var_A8]
2889F4:  ADDS            R0, R6, #2
2889F6:  CMP             R9, R0
2889F8:  BCS             loc_288A50
2889FA:  MOVW            R1, #0xAAAB
2889FE:  LSLS            R0, R0, #2
288A00:  MOVT            R1, #0xAAAA
288A04:  UMULL.W         R0, R1, R0, R1
288A08:  MOVS            R0, #3
288A0A:  ADD.W           R9, R0, R1,LSR#1
288A0E:  ADD.W           R0, R9, R9,LSL#5
288A12:  LSLS            R0, R0, #2; byte_count
288A14:  BLX             malloc
288A18:  MOV             R8, R0
288A1A:  CMP.W           R10, #0
288A1E:  BEQ             loc_288A3E
288A20:  ADD.W           R0, R5, R5,LSL#5
288A24:  MOV             R1, R10; void *
288A26:  LSLS            R2, R0, #2; size_t
288A28:  MOV             R0, R8; void *
288A2A:  BLX             memcpy_0
288A2E:  MOV             R0, R10; p
288A30:  BLX             free
288A34:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288A3C)
288A38:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288A3A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288A3C:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288A3E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288A46)
288A42:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288A44:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288A46:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
288A4A:  STR.W           R9, [R0]; CHID::m_MappingPairs
288A4E:  B               loc_288A52
288A50:  MOV             R8, R10
288A52:  ADD.W           R0, R5, R5,LSL#5
288A56:  ADD             R6, SP, #0xB0+var_A8
288A58:  MOVS            R2, #0x84; size_t
288A5A:  ADD.W           R0, R8, R0,LSL#2; void *
288A5E:  MOV             R1, R6; void *
288A60:  BLX             memcpy_0
288A64:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288A72)
288A68:  ADDS            R4, R5, #1
288A6A:  LDR.W           R1, =(aMappingLookX - 0x288A74); "MAPPING_LOOK_X"
288A6E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288A70:  ADD             R1, PC; "MAPPING_LOOK_X"
288A72:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288A74:  VLDR            D17, [R1]
288A78:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
288A7A:  ADDS            R0, R1, #7
288A7C:  VLD1.8          {D16}, [R0]
288A80:  ADD.W           R0, R6, #0xB
288A84:  VST1.8          {D16}, [R0]
288A88:  MOVS            R0, #0x1C
288A8A:  STR             R0, [SP,#0xB0+var_A8]
288A8C:  ADDS            R0, R5, #2
288A8E:  CMP             R9, R0
288A90:  VSTR            D17, [SP,#0xB0+var_A4]
288A94:  BCS             loc_288AEC
288A96:  MOVW            R1, #0xAAAB
288A9A:  LSLS            R0, R0, #2
288A9C:  MOVT            R1, #0xAAAA
288AA0:  UMULL.W         R0, R1, R0, R1
288AA4:  MOVS            R0, #3
288AA6:  ADD.W           R9, R0, R1,LSR#1
288AAA:  ADD.W           R0, R9, R9,LSL#5
288AAE:  LSLS            R0, R0, #2; byte_count
288AB0:  BLX             malloc
288AB4:  MOV             R11, R0
288AB6:  CMP.W           R8, #0
288ABA:  BEQ             loc_288ADA
288ABC:  ADD.W           R0, R4, R4,LSL#5
288AC0:  MOV             R1, R8; void *
288AC2:  LSLS            R2, R0, #2; size_t
288AC4:  MOV             R0, R11; void *
288AC6:  BLX             memcpy_0
288ACA:  MOV             R0, R8; p
288ACC:  BLX             free
288AD0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288AD8)
288AD4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288AD6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288AD8:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
288ADA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288AE2)
288ADE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288AE0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288AE2:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
288AE6:  STR.W           R9, [R0]; CHID::m_MappingPairs
288AEA:  B               loc_288AEE
288AEC:  MOV             R11, R8
288AEE:  ADD.W           R0, R4, R4,LSL#5
288AF2:  ADD             R5, SP, #0xB0+var_A8
288AF4:  MOVS            R2, #0x84; size_t
288AF6:  ADD.W           R0, R11, R0,LSL#2; void *
288AFA:  MOV             R1, R5; void *
288AFC:  BLX             memcpy_0
288B00:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288B0E)
288B04:  ADDS            R6, R4, #1
288B06:  LDR.W           R1, =(aMappingLookY - 0x288B10); "MAPPING_LOOK_Y"
288B0A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288B0C:  ADD             R1, PC; "MAPPING_LOOK_Y"
288B0E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288B10:  VLDR            D17, [R1]
288B14:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288B16:  ADDS            R0, R1, #7
288B18:  VLD1.8          {D16}, [R0]
288B1C:  ADD.W           R0, R5, #0xB
288B20:  VST1.8          {D16}, [R0]
288B24:  MOVS            R0, #0x1D
288B26:  STR             R0, [SP,#0xB0+var_A8]
288B28:  ADDS            R0, R4, #2
288B2A:  CMP             R9, R0
288B2C:  VSTR            D17, [SP,#0xB0+var_A4]
288B30:  BCS             loc_288B88
288B32:  MOVW            R1, #0xAAAB
288B36:  LSLS            R0, R0, #2
288B38:  MOVT            R1, #0xAAAA
288B3C:  UMULL.W         R0, R1, R0, R1
288B40:  MOVS            R0, #3
288B42:  ADD.W           R9, R0, R1,LSR#1
288B46:  ADD.W           R0, R9, R9,LSL#5
288B4A:  LSLS            R0, R0, #2; byte_count
288B4C:  BLX             malloc
288B50:  MOV             R10, R0
288B52:  CMP.W           R11, #0
288B56:  BEQ             loc_288B76
288B58:  ADD.W           R0, R6, R6,LSL#5
288B5C:  MOV             R1, R11; void *
288B5E:  LSLS            R2, R0, #2; size_t
288B60:  MOV             R0, R10; void *
288B62:  BLX             memcpy_0
288B66:  MOV             R0, R11; p
288B68:  BLX             free
288B6C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288B74)
288B70:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288B72:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288B74:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288B76:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288B7E)
288B7A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288B7C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288B7E:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
288B82:  STR.W           R9, [R0]; CHID::m_MappingPairs
288B86:  B               loc_288B8A
288B88:  MOV             R10, R11
288B8A:  ADD.W           R0, R6, R6,LSL#5
288B8E:  ADD             R5, SP, #0xB0+var_A8
288B90:  MOVS            R2, #0x84; size_t
288B92:  ADD.W           R0, R10, R0,LSL#2; void *
288B96:  MOV             R1, R5; void *
288B98:  BLX             memcpy_0
288B9C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288BAE)
288BA0:  ADDS            R4, R6, #1
288BA2:  LDR.W           R1, =(aMappingPedMove - 0x288BB0); "MAPPING_PED_MOVE_X"
288BA6:  MOV.W           R8, #0
288BAA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288BAC:  ADD             R1, PC; "MAPPING_PED_MOVE_X"
288BAE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288BB0:  VLD1.64         {D16-D17}, [R1]
288BB4:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
288BB6:  ORR.W           R0, R5, #4
288BBA:  VST1.32         {D16-D17}, [R0]
288BBE:  MOVW            R0, #0x585F
288BC2:  STRB.W          R8, [SP,#0xB0+var_94+2]
288BC6:  STRH.W          R0, [SP,#0xB0+var_94]
288BCA:  MOVS            R0, #0x1E
288BCC:  STR             R0, [SP,#0xB0+var_A8]
288BCE:  ADDS            R0, R6, #2
288BD0:  CMP             R9, R0
288BD2:  BCS             loc_288C2A
288BD4:  MOVW            R1, #0xAAAB
288BD8:  LSLS            R0, R0, #2
288BDA:  MOVT            R1, #0xAAAA
288BDE:  UMULL.W         R0, R1, R0, R1
288BE2:  MOVS            R0, #3
288BE4:  ADD.W           R9, R0, R1,LSR#1
288BE8:  ADD.W           R0, R9, R9,LSL#5
288BEC:  LSLS            R0, R0, #2; byte_count
288BEE:  BLX             malloc
288BF2:  MOV             R11, R0
288BF4:  CMP.W           R10, #0
288BF8:  BEQ             loc_288C18
288BFA:  ADD.W           R0, R4, R4,LSL#5
288BFE:  MOV             R1, R10; void *
288C00:  LSLS            R2, R0, #2; size_t
288C02:  MOV             R0, R11; void *
288C04:  BLX             memcpy_0
288C08:  MOV             R0, R10; p
288C0A:  BLX             free
288C0E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288C16)
288C12:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288C14:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288C16:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
288C18:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288C20)
288C1C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288C1E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288C20:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
288C24:  STR.W           R9, [R0]; CHID::m_MappingPairs
288C28:  B               loc_288C2C
288C2A:  MOV             R11, R10
288C2C:  ADD.W           R0, R4, R4,LSL#5
288C30:  ADD             R5, SP, #0xB0+var_A8
288C32:  MOVS            R2, #0x84; size_t
288C34:  ADD.W           R0, R11, R0,LSL#2; void *
288C38:  MOV             R1, R5; void *
288C3A:  BLX             memcpy_0
288C3E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288C4C)
288C42:  ADDS            R6, R4, #1
288C44:  LDR.W           R1, =(aMappingPedMove_0 - 0x288C4E); "MAPPING_PED_MOVE_Y"
288C48:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288C4A:  ADD             R1, PC; "MAPPING_PED_MOVE_Y"
288C4C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288C4E:  VLD1.64         {D16-D17}, [R1]
288C52:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288C54:  ORR.W           R0, R5, #4
288C58:  VST1.32         {D16-D17}, [R0]
288C5C:  MOVW            R0, #0x595F
288C60:  STRB.W          R8, [SP,#0xB0+var_94+2]
288C64:  STRH.W          R0, [SP,#0xB0+var_94]
288C68:  MOVS            R0, #0x1F
288C6A:  STR             R0, [SP,#0xB0+var_A8]
288C6C:  ADDS            R0, R4, #2
288C6E:  CMP             R9, R0
288C70:  BCS             loc_288CC8
288C72:  MOVW            R1, #0xAAAB
288C76:  LSLS            R0, R0, #2
288C78:  MOVT            R1, #0xAAAA
288C7C:  UMULL.W         R0, R1, R0, R1
288C80:  MOVS            R0, #3
288C82:  ADD.W           R9, R0, R1,LSR#1
288C86:  ADD.W           R0, R9, R9,LSL#5
288C8A:  LSLS            R0, R0, #2; byte_count
288C8C:  BLX             malloc
288C90:  MOV             R8, R0
288C92:  CMP.W           R11, #0
288C96:  BEQ             loc_288CB6
288C98:  ADD.W           R0, R6, R6,LSL#5
288C9C:  MOV             R1, R11; void *
288C9E:  LSLS            R2, R0, #2; size_t
288CA0:  MOV             R0, R8; void *
288CA2:  BLX             memcpy_0
288CA6:  MOV             R0, R11; p
288CA8:  BLX             free
288CAC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288CB4)
288CB0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288CB2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288CB4:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288CB6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288CBE)
288CBA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288CBC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288CBE:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
288CC2:  STR.W           R9, [R0]; CHID::m_MappingPairs
288CC6:  B               loc_288CCA
288CC8:  MOV             R8, R11
288CCA:  ADD.W           R0, R6, R6,LSL#5
288CCE:  ADD             R4, SP, #0xB0+var_A8
288CD0:  MOVS            R2, #0x84; size_t
288CD2:  ADD.W           R0, R8, R0,LSL#2; void *
288CD6:  MOV             R1, R4; void *
288CD8:  BLX             memcpy_0
288CDC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288CEA)
288CE0:  ADDS            R5, R6, #1
288CE2:  LDR.W           R1, =(aMappingAutoHyd - 0x288CEC); "MAPPING_AUTO_HYDRAULICS"
288CE6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288CE8:  ADD             R1, PC; "MAPPING_AUTO_HYDRAULICS"
288CEA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288CEC:  VLD1.64         {D16-D17}, [R1]!
288CF0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288CF2:  ORR.W           R0, R4, #4
288CF6:  VST1.32         {D16-D17}, [R0]
288CFA:  MOVS            R0, #0x20 ; ' '
288CFC:  STR             R0, [SP,#0xB0+var_A8]
288CFE:  ADDS            R0, R6, #2
288D00:  VLDR            D16, [R1]
288D04:  CMP             R9, R0
288D06:  VSTR            D16, [SP,#0xB0+var_94]
288D0A:  BCS             loc_288D62
288D0C:  MOVW            R1, #0xAAAB
288D10:  LSLS            R0, R0, #2
288D12:  MOVT            R1, #0xAAAA
288D16:  UMULL.W         R0, R1, R0, R1
288D1A:  MOVS            R0, #3
288D1C:  ADD.W           R9, R0, R1,LSR#1
288D20:  ADD.W           R0, R9, R9,LSL#5
288D24:  LSLS            R0, R0, #2; byte_count
288D26:  BLX             malloc
288D2A:  MOV             R10, R0
288D2C:  CMP.W           R8, #0
288D30:  BEQ             loc_288D50
288D32:  ADD.W           R0, R5, R5,LSL#5
288D36:  MOV             R1, R8; void *
288D38:  LSLS            R2, R0, #2; size_t
288D3A:  MOV             R0, R10; void *
288D3C:  BLX             memcpy_0
288D40:  MOV             R0, R8; p
288D42:  BLX             free
288D46:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288D4E)
288D4A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288D4C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288D4E:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288D50:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288D58)
288D54:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288D56:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288D58:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
288D5C:  STR.W           R9, [R0]; CHID::m_MappingPairs
288D60:  B               loc_288D64
288D62:  MOV             R10, R8
288D64:  ADD.W           R0, R5, R5,LSL#5
288D68:  ADD             R4, SP, #0xB0+var_A8
288D6A:  MOVS            R2, #0x84; size_t
288D6C:  ADD.W           R0, R10, R0,LSL#2; void *
288D70:  MOV             R1, R4; void *
288D72:  BLX             memcpy_0
288D76:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288D84)
288D7A:  ADDS            R6, R5, #1
288D7C:  LDR.W           R1, =(aMappingSwapWea - 0x288D86); "MAPPING_SWAP_WEAPONS_AND_PURCHASE"
288D80:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288D82:  ADD             R1, PC; "MAPPING_SWAP_WEAPONS_AND_PURCHASE"
288D84:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288D86:  VLD1.64         {D16-D17}, [R1]!
288D8A:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288D8C:  ORR.W           R0, R4, #4
288D90:  VLD1.64         {D18-D19}, [R1]
288D94:  VST1.32         {D16-D17}, [R0]
288D98:  ADD.W           R0, R4, #0x14
288D9C:  VST1.32         {D18-D19}, [R0]
288DA0:  MOVS            R0, #0x45 ; 'E'
288DA2:  STRH.W          R0, [SP,#0xB0+var_84]
288DA6:  MOVS            R0, #0x21 ; '!'
288DA8:  STR             R0, [SP,#0xB0+var_A8]
288DAA:  ADDS            R0, R5, #2
288DAC:  CMP             R9, R0
288DAE:  BCS             loc_288E06
288DB0:  MOVW            R1, #0xAAAB
288DB4:  LSLS            R0, R0, #2
288DB6:  MOVT            R1, #0xAAAA
288DBA:  UMULL.W         R0, R1, R0, R1
288DBE:  MOVS            R0, #3
288DC0:  ADD.W           R9, R0, R1,LSR#1
288DC4:  ADD.W           R0, R9, R9,LSL#5
288DC8:  LSLS            R0, R0, #2; byte_count
288DCA:  BLX             malloc
288DCE:  MOV             R8, R0
288DD0:  CMP.W           R10, #0
288DD4:  BEQ             loc_288DF4
288DD6:  ADD.W           R0, R6, R6,LSL#5
288DDA:  MOV             R1, R10; void *
288DDC:  LSLS            R2, R0, #2; size_t
288DDE:  MOV             R0, R8; void *
288DE0:  BLX             memcpy_0
288DE4:  MOV             R0, R10; p
288DE6:  BLX             free
288DEA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288DF2)
288DEE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288DF0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288DF2:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288DF4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288DFC)
288DF8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288DFA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288DFC:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
288E00:  STR.W           R9, [R0]; CHID::m_MappingPairs
288E04:  B               loc_288E08
288E06:  MOV             R8, R10
288E08:  ADD.W           R0, R6, R6,LSL#5
288E0C:  ADD             R5, SP, #0xB0+var_A8
288E0E:  MOVS            R2, #0x84; size_t
288E10:  ADD.W           R0, R8, R0,LSL#2; void *
288E14:  MOV             R1, R5; void *
288E16:  BLX             memcpy_0
288E1A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288E28)
288E1E:  ADDS            R4, R6, #1
288E20:  LDR.W           R1, =(aMappingWeaponZ - 0x288E2A); "MAPPING_WEAPON_ZOOM_IN"
288E24:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288E26:  ADD             R1, PC; "MAPPING_WEAPON_ZOOM_IN"
288E28:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288E2A:  VLD1.64         {D16-D17}, [R1]
288E2E:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
288E30:  ADD.W           R0, R1, #0xF
288E34:  VLD1.8          {D18}, [R0]
288E38:  ADD.W           R0, R5, #0x13
288E3C:  VST1.8          {D18}, [R0]
288E40:  ORR.W           R0, R5, #4
288E44:  VST1.32         {D16-D17}, [R0]
288E48:  MOVS            R0, #0x22 ; '"'
288E4A:  STR             R0, [SP,#0xB0+var_A8]
288E4C:  ADDS            R0, R6, #2
288E4E:  CMP             R9, R0
288E50:  BCS             loc_288EA8
288E52:  MOVW            R1, #0xAAAB
288E56:  LSLS            R0, R0, #2
288E58:  MOVT            R1, #0xAAAA
288E5C:  UMULL.W         R0, R1, R0, R1
288E60:  MOVS            R0, #3
288E62:  ADD.W           R9, R0, R1,LSR#1
288E66:  ADD.W           R0, R9, R9,LSL#5
288E6A:  LSLS            R0, R0, #2; byte_count
288E6C:  BLX             malloc
288E70:  MOV             R11, R0
288E72:  CMP.W           R8, #0
288E76:  BEQ             loc_288E96
288E78:  ADD.W           R0, R4, R4,LSL#5
288E7C:  MOV             R1, R8; void *
288E7E:  LSLS            R2, R0, #2; size_t
288E80:  MOV             R0, R11; void *
288E82:  BLX             memcpy_0
288E86:  MOV             R0, R8; p
288E88:  BLX             free
288E8C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288E94)
288E90:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288E92:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288E94:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
288E96:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288E9E)
288E9A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288E9C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288E9E:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
288EA2:  STR.W           R9, [R0]; CHID::m_MappingPairs
288EA6:  B               loc_288EAA
288EA8:  MOV             R11, R8
288EAA:  ADD.W           R0, R4, R4,LSL#5
288EAE:  ADD             R6, SP, #0xB0+var_A8
288EB0:  MOVS            R2, #0x84; size_t
288EB2:  ADD.W           R0, R11, R0,LSL#2; void *
288EB6:  MOV             R1, R6; void *
288EB8:  BLX             memcpy_0
288EBC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288ECA)
288EC0:  ADDS            R5, R4, #1
288EC2:  LDR.W           R1, =(aMappingWeaponZ_0 - 0x288ECC); "MAPPING_WEAPON_ZOOM_OUT"
288EC6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288EC8:  ADD             R1, PC; "MAPPING_WEAPON_ZOOM_OUT"
288ECA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288ECC:  VLD1.64         {D16-D17}, [R1]!
288ED0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288ED2:  ORR.W           R0, R6, #4
288ED6:  VST1.32         {D16-D17}, [R0]
288EDA:  MOVS            R0, #0x23 ; '#'
288EDC:  STR             R0, [SP,#0xB0+var_A8]
288EDE:  ADDS            R0, R4, #2
288EE0:  VLDR            D16, [R1]
288EE4:  CMP             R9, R0
288EE6:  VSTR            D16, [SP,#0xB0+var_94]
288EEA:  BCS             loc_288F42
288EEC:  MOVW            R1, #0xAAAB
288EF0:  LSLS            R0, R0, #2
288EF2:  MOVT            R1, #0xAAAA
288EF6:  UMULL.W         R0, R1, R0, R1
288EFA:  MOVS            R0, #3
288EFC:  ADD.W           R9, R0, R1,LSR#1
288F00:  ADD.W           R0, R9, R9,LSL#5
288F04:  LSLS            R0, R0, #2; byte_count
288F06:  BLX             malloc
288F0A:  MOV             R10, R0
288F0C:  CMP.W           R11, #0
288F10:  BEQ             loc_288F30
288F12:  ADD.W           R0, R5, R5,LSL#5
288F16:  MOV             R1, R11; void *
288F18:  LSLS            R2, R0, #2; size_t
288F1A:  MOV             R0, R10; void *
288F1C:  BLX             memcpy_0
288F20:  MOV             R0, R11; p
288F22:  BLX             free
288F26:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288F2E)
288F2A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288F2C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288F2E:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
288F30:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288F38)
288F34:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288F36:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288F38:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
288F3C:  STR.W           R9, [R0]; CHID::m_MappingPairs
288F40:  B               loc_288F44
288F42:  MOV             R10, R11
288F44:  ADD.W           R0, R5, R5,LSL#5
288F48:  ADD             R4, SP, #0xB0+var_A8
288F4A:  MOVS            R2, #0x84; size_t
288F4C:  ADD.W           R0, R10, R0,LSL#2; void *
288F50:  MOV             R1, R4; void *
288F52:  BLX             memcpy_0
288F56:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288F64)
288F5A:  ADDS            R6, R5, #1
288F5C:  LDR.W           R1, =(aMappingEnterAn - 0x288F66); "MAPPING_ENTER_AND_EXIT_TARGETING"
288F60:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288F62:  ADD             R1, PC; "MAPPING_ENTER_AND_EXIT_TARGETING"
288F64:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288F66:  VLD1.64         {D16-D17}, [R1]!
288F6A:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288F6C:  ORR.W           R0, R4, #4
288F70:  VLD1.64         {D18-D19}, [R1]
288F74:  VST1.32         {D16-D17}, [R0]
288F78:  ADD.W           R0, R4, #0x14
288F7C:  VST1.32         {D18-D19}, [R0]
288F80:  MOVS            R0, #0
288F82:  STRB.W          R0, [SP,#0xB0+var_84]
288F86:  MOVS            R0, #0x24 ; '$'
288F88:  STR             R0, [SP,#0xB0+var_A8]
288F8A:  ADDS            R0, R5, #2
288F8C:  CMP             R9, R0
288F8E:  BCS             loc_288FE6
288F90:  MOVW            R1, #0xAAAB
288F94:  LSLS            R0, R0, #2
288F96:  MOVT            R1, #0xAAAA
288F9A:  UMULL.W         R0, R1, R0, R1
288F9E:  MOVS            R0, #3
288FA0:  ADD.W           R9, R0, R1,LSR#1
288FA4:  ADD.W           R0, R9, R9,LSL#5
288FA8:  LSLS            R0, R0, #2; byte_count
288FAA:  BLX             malloc
288FAE:  MOV             R8, R0
288FB0:  CMP.W           R10, #0
288FB4:  BEQ             loc_288FD4
288FB6:  ADD.W           R0, R6, R6,LSL#5
288FBA:  MOV             R1, R10; void *
288FBC:  LSLS            R2, R0, #2; size_t
288FBE:  MOV             R0, R8; void *
288FC0:  BLX             memcpy_0
288FC4:  MOV             R0, R10; p
288FC6:  BLX             free
288FCA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288FD2)
288FCE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288FD0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288FD2:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
288FD4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x288FDC)
288FD8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
288FDA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
288FDC:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
288FE0:  STR.W           R9, [R0]; CHID::m_MappingPairs
288FE4:  B               loc_288FE8
288FE6:  MOV             R8, R10
288FE8:  ADD.W           R0, R6, R6,LSL#5
288FEC:  ADD             R5, SP, #0xB0+var_A8
288FEE:  MOVS            R2, #0x84; size_t
288FF0:  ADD.W           R0, R8, R0,LSL#2; void *
288FF4:  MOV             R1, R5; void *
288FF6:  BLX             memcpy_0
288FFA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289008)
288FFE:  ADDS            R4, R6, #1
289000:  LDR.W           R1, =(aMappingVehicle_6 - 0x28900A); "MAPPING_VEHICLE_BOMB"
289004:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289006:  ADD             R1, PC; "MAPPING_VEHICLE_BOMB"
289008:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28900A:  VLD1.64         {D16-D17}, [R1]
28900E:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289010:  ADD.W           R0, R1, #0xD
289014:  VLD1.8          {D18}, [R0]
289018:  ADD.W           R0, R5, #0x11
28901C:  VST1.8          {D18}, [R0]
289020:  ORR.W           R0, R5, #4
289024:  VST1.32         {D16-D17}, [R0]
289028:  MOVS            R0, #0x25 ; '%'
28902A:  STR             R0, [SP,#0xB0+var_A8]
28902C:  ADDS            R0, R6, #2
28902E:  CMP             R9, R0
289030:  BCS             loc_289088
289032:  MOVW            R1, #0xAAAB
289036:  LSLS            R0, R0, #2
289038:  MOVT            R1, #0xAAAA
28903C:  UMULL.W         R0, R1, R0, R1
289040:  MOVS            R0, #3
289042:  ADD.W           R9, R0, R1,LSR#1
289046:  ADD.W           R0, R9, R9,LSL#5
28904A:  LSLS            R0, R0, #2; byte_count
28904C:  BLX             malloc
289050:  MOV             R10, R0
289052:  CMP.W           R8, #0
289056:  BEQ             loc_289076
289058:  ADD.W           R0, R4, R4,LSL#5
28905C:  MOV             R1, R8; void *
28905E:  LSLS            R2, R0, #2; size_t
289060:  MOV             R0, R10; void *
289062:  BLX             memcpy_0
289066:  MOV             R0, R8; p
289068:  BLX             free
28906C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289074)
289070:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289072:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289074:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289076:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28907E)
28907A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28907C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28907E:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
289082:  STR.W           R9, [R0]; CHID::m_MappingPairs
289086:  B               loc_28908A
289088:  MOV             R10, R8
28908A:  ADD.W           R0, R4, R4,LSL#5
28908E:  ADD             R6, SP, #0xB0+var_A8
289090:  MOVS            R2, #0x84; size_t
289092:  ADD.W           R0, R10, R0,LSL#2; void *
289096:  MOV             R1, R6; void *
289098:  BLX             memcpy_0
28909C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2890AA)
2890A0:  ADDS            R5, R4, #1
2890A2:  LDR.W           R1, =(aMappingTurretL - 0x2890AC); "MAPPING_TURRET_LEFT"
2890A6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2890A8:  ADD             R1, PC; "MAPPING_TURRET_LEFT"
2890AA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2890AC:  VLD1.64         {D16-D17}, [R1]
2890B0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
2890B2:  ORR.W           R0, R6, #4
2890B6:  VST1.32         {D16-D17}, [R0]
2890BA:  MOV             R0, #0x544645
2890C2:  STR             R0, [SP,#0xB0+var_94]
2890C4:  MOVS            R0, #0x26 ; '&'
2890C6:  STR             R0, [SP,#0xB0+var_A8]
2890C8:  ADDS            R0, R4, #2
2890CA:  CMP             R9, R0
2890CC:  BCS             loc_289124
2890CE:  MOVW            R1, #0xAAAB
2890D2:  LSLS            R0, R0, #2
2890D4:  MOVT            R1, #0xAAAA
2890D8:  UMULL.W         R0, R1, R0, R1
2890DC:  MOVS            R0, #3
2890DE:  ADD.W           R9, R0, R1,LSR#1
2890E2:  ADD.W           R0, R9, R9,LSL#5
2890E6:  LSLS            R0, R0, #2; byte_count
2890E8:  BLX             malloc
2890EC:  MOV             R8, R0
2890EE:  CMP.W           R10, #0
2890F2:  BEQ             loc_289112
2890F4:  ADD.W           R0, R5, R5,LSL#5
2890F8:  MOV             R1, R10; void *
2890FA:  LSLS            R2, R0, #2; size_t
2890FC:  MOV             R0, R8; void *
2890FE:  BLX             memcpy_0
289102:  MOV             R0, R10; p
289104:  BLX             free
289108:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289110)
28910C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28910E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289110:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289112:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28911A)
289116:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289118:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28911A:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28911E:  STR.W           R9, [R0]; CHID::m_MappingPairs
289122:  B               loc_289126
289124:  MOV             R8, R10
289126:  ADD.W           R0, R5, R5,LSL#5
28912A:  ADD             R4, SP, #0xB0+var_A8
28912C:  MOVS            R2, #0x84; size_t
28912E:  ADD.W           R0, R8, R0,LSL#2; void *
289132:  MOV             R1, R4; void *
289134:  BLX             memcpy_0
289138:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289146)
28913C:  ADDS            R6, R5, #1
28913E:  LDR.W           R1, =(aMappingTurretR - 0x289148); "MAPPING_TURRET_RIGHT"
289142:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289144:  ADD             R1, PC; "MAPPING_TURRET_RIGHT"
289146:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289148:  VLD1.64         {D16-D17}, [R1]
28914C:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28914E:  ADD.W           R0, R1, #0xD
289152:  VLD1.8          {D18}, [R0]
289156:  ADD.W           R0, R4, #0x11
28915A:  VST1.8          {D18}, [R0]
28915E:  ORR.W           R0, R4, #4
289162:  VST1.32         {D16-D17}, [R0]
289166:  MOVS            R0, #0x27 ; '''
289168:  STR             R0, [SP,#0xB0+var_A8]
28916A:  ADDS            R0, R5, #2
28916C:  CMP             R9, R0
28916E:  BCS             loc_2891C6
289170:  MOVW            R1, #0xAAAB
289174:  LSLS            R0, R0, #2
289176:  MOVT            R1, #0xAAAA
28917A:  UMULL.W         R0, R1, R0, R1
28917E:  MOVS            R0, #3
289180:  ADD.W           R9, R0, R1,LSR#1
289184:  ADD.W           R0, R9, R9,LSL#5
289188:  LSLS            R0, R0, #2; byte_count
28918A:  BLX             malloc
28918E:  MOV             R11, R0
289190:  CMP.W           R8, #0
289194:  BEQ             loc_2891B4
289196:  ADD.W           R0, R6, R6,LSL#5
28919A:  MOV             R1, R8; void *
28919C:  LSLS            R2, R0, #2; size_t
28919E:  MOV             R0, R11; void *
2891A0:  BLX             memcpy_0
2891A4:  MOV             R0, R8; p
2891A6:  BLX             free
2891AA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2891B2)
2891AE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2891B0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2891B2:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2891B4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2891BC)
2891B8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2891BA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2891BC:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
2891C0:  STR.W           R9, [R0]; CHID::m_MappingPairs
2891C4:  B               loc_2891C8
2891C6:  MOV             R11, R8
2891C8:  ADD.W           R0, R6, R6,LSL#5
2891CC:  ADD             R5, SP, #0xB0+var_A8
2891CE:  MOVS            R2, #0x84; size_t
2891D0:  ADD.W           R0, R11, R0,LSL#2; void *
2891D4:  MOV             R1, R5; void *
2891D6:  BLX             memcpy_0
2891DA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2891E8)
2891DE:  ADDS            R4, R6, #1
2891E0:  LDR.W           R1, =(aMappingMagnet - 0x2891EA); "MAPPING_MAGNET"
2891E4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2891E6:  ADD             R1, PC; "MAPPING_MAGNET"
2891E8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2891EA:  VLDR            D17, [R1]
2891EE:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2891F0:  ADDS            R0, R1, #7
2891F2:  VLD1.8          {D16}, [R0]
2891F6:  ADD.W           R0, R5, #0xB
2891FA:  VST1.8          {D16}, [R0]
2891FE:  MOVS            R0, #0x28 ; '('
289200:  STR             R0, [SP,#0xB0+var_A8]
289202:  ADDS            R0, R6, #2
289204:  CMP             R9, R0
289206:  VSTR            D17, [SP,#0xB0+var_A4]
28920A:  BCS             loc_289262
28920C:  MOVW            R1, #0xAAAB
289210:  LSLS            R0, R0, #2
289212:  MOVT            R1, #0xAAAA
289216:  UMULL.W         R0, R1, R0, R1
28921A:  MOVS            R0, #3
28921C:  ADD.W           R9, R0, R1,LSR#1
289220:  ADD.W           R0, R9, R9,LSL#5
289224:  LSLS            R0, R0, #2; byte_count
289226:  BLX             malloc
28922A:  MOV             R10, R0
28922C:  CMP.W           R11, #0
289230:  BEQ             loc_289250
289232:  ADD.W           R0, R4, R4,LSL#5
289236:  MOV             R1, R11; void *
289238:  LSLS            R2, R0, #2; size_t
28923A:  MOV             R0, R10; void *
28923C:  BLX             memcpy_0
289240:  MOV             R0, R11; p
289242:  BLX             free
289246:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28924E)
28924A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28924C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28924E:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289250:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289258)
289254:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289256:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289258:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28925C:  STR.W           R9, [R0]; CHID::m_MappingPairs
289260:  B               loc_289264
289262:  MOV             R10, R11
289264:  ADD.W           R0, R4, R4,LSL#5
289268:  ADD             R5, SP, #0xB0+var_A8
28926A:  MOVS            R2, #0x84; size_t
28926C:  ADD.W           R0, R10, R0,LSL#2; void *
289270:  MOV             R1, R5; void *
289272:  BLX             memcpy_0
289276:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289284)
28927A:  ADDS            R6, R4, #1
28927C:  LDR.W           R1, =(aMappingSkipCut - 0x289286); "MAPPING_SKIP_CUTSCENE"
289280:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289282:  ADD             R1, PC; "MAPPING_SKIP_CUTSCENE"
289284:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289286:  VLD1.64         {D16-D17}, [R1]
28928A:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28928C:  ADD.W           R0, R1, #0xE
289290:  VLD1.16         {D18}, [R0]
289294:  ADD.W           R0, R5, #0x12
289298:  VST1.16         {D18}, [R0]
28929C:  ORR.W           R0, R5, #4
2892A0:  VST1.32         {D16-D17}, [R0]
2892A4:  MOVS            R0, #0x29 ; ')'
2892A6:  STR             R0, [SP,#0xB0+var_A8]
2892A8:  ADDS            R0, R4, #2
2892AA:  CMP             R9, R0
2892AC:  BCS             loc_289304
2892AE:  MOVW            R1, #0xAAAB
2892B2:  LSLS            R0, R0, #2
2892B4:  MOVT            R1, #0xAAAA
2892B8:  UMULL.W         R0, R1, R0, R1
2892BC:  MOVS            R0, #3
2892BE:  ADD.W           R9, R0, R1,LSR#1
2892C2:  ADD.W           R0, R9, R9,LSL#5
2892C6:  LSLS            R0, R0, #2; byte_count
2892C8:  BLX             malloc
2892CC:  MOV             R8, R0
2892CE:  CMP.W           R10, #0
2892D2:  BEQ             loc_2892F2
2892D4:  ADD.W           R0, R6, R6,LSL#5
2892D8:  MOV             R1, R10; void *
2892DA:  LSLS            R2, R0, #2; size_t
2892DC:  MOV             R0, R8; void *
2892DE:  BLX             memcpy_0
2892E2:  MOV             R0, R10; p
2892E4:  BLX             free
2892E8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2892F0)
2892EC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2892EE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2892F0:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2892F2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2892FA)
2892F6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2892F8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2892FA:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
2892FE:  STR.W           R9, [R0]; CHID::m_MappingPairs
289302:  B               loc_289306
289304:  MOV             R8, R10
289306:  ADD.W           R0, R6, R6,LSL#5
28930A:  ADD             R4, SP, #0xB0+var_A8
28930C:  MOVS            R2, #0x84; size_t
28930E:  ADD.W           R0, R8, R0,LSL#2; void *
289312:  MOV             R1, R4; void *
289314:  BLX             memcpy_0
289318:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289326)
28931C:  ADDS            R5, R6, #1
28931E:  LDR.W           R1, =(aMappingGangRec - 0x289328); "MAPPING_GANG_RECRUIT"
289322:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289324:  ADD             R1, PC; "MAPPING_GANG_RECRUIT"
289326:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289328:  VLD1.64         {D16-D17}, [R1]
28932C:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28932E:  ADD.W           R0, R1, #0xD
289332:  VLD1.8          {D18}, [R0]
289336:  ADD.W           R0, R4, #0x11
28933A:  VST1.8          {D18}, [R0]
28933E:  ORR.W           R0, R4, #4
289342:  VST1.32         {D16-D17}, [R0]
289346:  MOVS            R0, #0x2A ; '*'
289348:  STR             R0, [SP,#0xB0+var_A8]
28934A:  ADDS            R0, R6, #2
28934C:  CMP             R9, R0
28934E:  BCS             loc_2893A6
289350:  MOVW            R1, #0xAAAB
289354:  LSLS            R0, R0, #2
289356:  MOVT            R1, #0xAAAA
28935A:  UMULL.W         R0, R1, R0, R1
28935E:  MOVS            R0, #3
289360:  ADD.W           R9, R0, R1,LSR#1
289364:  ADD.W           R0, R9, R9,LSL#5
289368:  LSLS            R0, R0, #2; byte_count
28936A:  BLX             malloc
28936E:  MOV             R10, R0
289370:  CMP.W           R8, #0
289374:  BEQ             loc_289394
289376:  ADD.W           R0, R5, R5,LSL#5
28937A:  MOV             R1, R8; void *
28937C:  LSLS            R2, R0, #2; size_t
28937E:  MOV             R0, R10; void *
289380:  BLX             memcpy_0
289384:  MOV             R0, R8; p
289386:  BLX             free
28938A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289392)
28938E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289390:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289392:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289394:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28939C)
289398:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28939A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28939C:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
2893A0:  STR.W           R9, [R0]; CHID::m_MappingPairs
2893A4:  B               loc_2893A8
2893A6:  MOV             R10, R8
2893A8:  ADD.W           R0, R5, R5,LSL#5
2893AC:  ADD             R6, SP, #0xB0+var_A8
2893AE:  MOVS            R2, #0x84; size_t
2893B0:  ADD.W           R0, R10, R0,LSL#2; void *
2893B4:  MOV             R1, R6; void *
2893B6:  BLX             memcpy_0
2893BA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2893C8)
2893BE:  ADDS            R4, R5, #1
2893C0:  LDR.W           R1, =(aMappingGangIgn - 0x2893CA); "MAPPING_GANG_IGNORE"
2893C4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2893C6:  ADD             R1, PC; "MAPPING_GANG_IGNORE"
2893C8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2893CA:  VLD1.64         {D16-D17}, [R1]
2893CE:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2893D0:  ORR.W           R0, R6, #4
2893D4:  VST1.32         {D16-D17}, [R0]
2893D8:  MOV             R0, #0x45524F
2893E0:  STR             R0, [SP,#0xB0+var_94]
2893E2:  MOVS            R0, #0x2B ; '+'
2893E4:  STR             R0, [SP,#0xB0+var_A8]
2893E6:  ADDS            R0, R5, #2
2893E8:  CMP             R9, R0
2893EA:  BCS             loc_289442
2893EC:  MOVW            R1, #0xAAAB
2893F0:  LSLS            R0, R0, #2
2893F2:  MOVT            R1, #0xAAAA
2893F6:  UMULL.W         R0, R1, R0, R1
2893FA:  MOVS            R0, #3
2893FC:  ADD.W           R9, R0, R1,LSR#1
289400:  ADD.W           R0, R9, R9,LSL#5
289404:  LSLS            R0, R0, #2; byte_count
289406:  BLX             malloc
28940A:  MOV             R11, R0
28940C:  CMP.W           R10, #0
289410:  BEQ             loc_289430
289412:  ADD.W           R0, R4, R4,LSL#5
289416:  MOV             R1, R10; void *
289418:  LSLS            R2, R0, #2; size_t
28941A:  MOV             R0, R11; void *
28941C:  BLX             memcpy_0
289420:  MOV             R0, R10; p
289422:  BLX             free
289426:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28942E)
28942A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28942C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28942E:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289430:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289438)
289434:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289436:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289438:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
28943C:  STR.W           R9, [R0]; CHID::m_MappingPairs
289440:  B               loc_289444
289442:  MOV             R11, R10
289444:  ADD.W           R0, R4, R4,LSL#5
289448:  ADD             R5, SP, #0xB0+var_A8
28944A:  MOVS            R2, #0x84; size_t
28944C:  ADD.W           R0, R11, R0,LSL#2; void *
289450:  MOV             R1, R5; void *
289452:  BLX             memcpy_0
289456:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289464)
28945A:  ADDS            R6, R4, #1
28945C:  LDR.W           R1, =(aMappingGangFol - 0x289466); "MAPPING_GANG_FOLLOW"
289460:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289462:  ADD             R1, PC; "MAPPING_GANG_FOLLOW"
289464:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289466:  VLD1.64         {D16-D17}, [R1]
28946A:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28946C:  ORR.W           R0, R5, #4
289470:  VST1.32         {D16-D17}, [R0]
289474:  MOV             R0, #0x574F4C
28947C:  STR             R0, [SP,#0xB0+var_94]
28947E:  MOVS            R0, #0x2C ; ','
289480:  STR             R0, [SP,#0xB0+var_A8]
289482:  ADDS            R0, R4, #2
289484:  CMP             R9, R0
289486:  BCS             loc_2894DE
289488:  MOVW            R1, #0xAAAB
28948C:  LSLS            R0, R0, #2
28948E:  MOVT            R1, #0xAAAA
289492:  UMULL.W         R0, R1, R0, R1
289496:  MOVS            R0, #3
289498:  ADD.W           R9, R0, R1,LSR#1
28949C:  ADD.W           R0, R9, R9,LSL#5
2894A0:  LSLS            R0, R0, #2; byte_count
2894A2:  BLX             malloc
2894A6:  MOV             R8, R0
2894A8:  CMP.W           R11, #0
2894AC:  BEQ             loc_2894CC
2894AE:  ADD.W           R0, R6, R6,LSL#5
2894B2:  MOV             R1, R11; void *
2894B4:  LSLS            R2, R0, #2; size_t
2894B6:  MOV             R0, R8; void *
2894B8:  BLX             memcpy_0
2894BC:  MOV             R0, R11; p
2894BE:  BLX             free
2894C2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2894CA)
2894C6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2894C8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2894CA:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2894CC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2894D4)
2894D0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2894D2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2894D4:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
2894D8:  STR.W           R9, [R0]; CHID::m_MappingPairs
2894DC:  B               loc_2894E0
2894DE:  MOV             R8, R11
2894E0:  ADD.W           R0, R6, R6,LSL#5
2894E4:  ADD             R5, SP, #0xB0+var_A8
2894E6:  MOVS            R2, #0x84; size_t
2894E8:  ADD.W           R0, R8, R0,LSL#2; void *
2894EC:  MOV             R1, R5; void *
2894EE:  BLX             memcpy_0
2894F2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289500)
2894F6:  ADDS            R4, R6, #1
2894F8:  LDR.W           R1, =(aMappingGangHol - 0x289502); "MAPPING_GANG_HOLD_POSITION"
2894FC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2894FE:  ADD             R1, PC; "MAPPING_GANG_HOLD_POSITION"
289500:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289502:  VLD1.64         {D16-D17}, [R1]
289506:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289508:  ADD.W           R0, R1, #0xB
28950C:  VLD1.8          {D18-D19}, [R0]
289510:  ADD.W           R0, R5, #0xF
289514:  VST1.8          {D18-D19}, [R0]
289518:  ORR.W           R0, R5, #4
28951C:  VST1.32         {D16-D17}, [R0]
289520:  MOVS            R0, #0x2D ; '-'
289522:  STR             R0, [SP,#0xB0+var_A8]
289524:  ADDS            R0, R6, #2
289526:  CMP             R9, R0
289528:  BCS             loc_289580
28952A:  MOVW            R1, #0xAAAB
28952E:  LSLS            R0, R0, #2
289530:  MOVT            R1, #0xAAAA
289534:  UMULL.W         R0, R1, R0, R1
289538:  MOVS            R0, #3
28953A:  ADD.W           R9, R0, R1,LSR#1
28953E:  ADD.W           R0, R9, R9,LSL#5
289542:  LSLS            R0, R0, #2; byte_count
289544:  BLX             malloc
289548:  MOV             R10, R0
28954A:  CMP.W           R8, #0
28954E:  BEQ             loc_28956E
289550:  ADD.W           R0, R4, R4,LSL#5
289554:  MOV             R1, R8; void *
289556:  LSLS            R2, R0, #2; size_t
289558:  MOV             R0, R10; void *
28955A:  BLX             memcpy_0
28955E:  MOV             R0, R8; p
289560:  BLX             free
289564:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28956C)
289568:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28956A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28956C:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28956E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289576)
289572:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289574:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289576:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28957A:  STR.W           R9, [R0]; CHID::m_MappingPairs
28957E:  B               loc_289582
289580:  MOV             R10, R8
289582:  ADD.W           R0, R4, R4,LSL#5
289586:  ADD             R6, SP, #0xB0+var_A8
289588:  MOVS            R2, #0x84; size_t
28958A:  ADD.W           R0, R10, R0,LSL#2; void *
28958E:  MOV             R1, R6; void *
289590:  BLX             memcpy_0
289594:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2895A2)
289598:  ADDS            R5, R4, #1
28959A:  LDR.W           R1, =(aMappingRhythmU - 0x2895A4); "MAPPING_RHYTHM_UP"
28959E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2895A0:  ADD             R1, PC; "MAPPING_RHYTHM_UP"
2895A2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2895A4:  VLD1.64         {D16-D17}, [R1]
2895A8:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
2895AA:  ORR.W           R0, R6, #4
2895AE:  VST1.32         {D16-D17}, [R0]
2895B2:  MOVS            R0, #0x50 ; 'P'
2895B4:  STRH.W          R0, [SP,#0xB0+var_94]
2895B8:  MOVS            R0, #0x2E ; '.'
2895BA:  STR             R0, [SP,#0xB0+var_A8]
2895BC:  ADDS            R0, R4, #2
2895BE:  CMP             R9, R0
2895C0:  BCS             loc_289618
2895C2:  MOVW            R1, #0xAAAB
2895C6:  LSLS            R0, R0, #2
2895C8:  MOVT            R1, #0xAAAA
2895CC:  UMULL.W         R0, R1, R0, R1
2895D0:  MOVS            R0, #3
2895D2:  ADD.W           R9, R0, R1,LSR#1
2895D6:  ADD.W           R0, R9, R9,LSL#5
2895DA:  LSLS            R0, R0, #2; byte_count
2895DC:  BLX             malloc
2895E0:  MOV             R8, R0
2895E2:  CMP.W           R10, #0
2895E6:  BEQ             loc_289606
2895E8:  ADD.W           R0, R5, R5,LSL#5
2895EC:  MOV             R1, R10; void *
2895EE:  LSLS            R2, R0, #2; size_t
2895F0:  MOV             R0, R8; void *
2895F2:  BLX             memcpy_0
2895F6:  MOV             R0, R10; p
2895F8:  BLX             free
2895FC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289604)
289600:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289602:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289604:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289606:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28960E)
28960A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28960C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28960E:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
289612:  STR.W           R9, [R0]; CHID::m_MappingPairs
289616:  B               loc_28961A
289618:  MOV             R8, R10
28961A:  ADD.W           R0, R5, R5,LSL#5
28961E:  ADD             R4, SP, #0xB0+var_A8
289620:  MOVS            R2, #0x84; size_t
289622:  ADD.W           R0, R8, R0,LSL#2; void *
289626:  MOV             R1, R4; void *
289628:  BLX             memcpy_0
28962C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28963A)
289630:  ADDS            R6, R5, #1
289632:  LDR.W           R1, =(aMappingRhythmD - 0x28963C); "MAPPING_RHYTHM_DOWN"
289636:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289638:  ADD             R1, PC; "MAPPING_RHYTHM_DOWN"
28963A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28963C:  VLD1.64         {D16-D17}, [R1]
289640:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289642:  ORR.W           R0, R4, #4
289646:  VST1.32         {D16-D17}, [R0]
28964A:  MOV             R0, #0x4E574F
289652:  STR             R0, [SP,#0xB0+var_94]
289654:  MOVS            R0, #0x2F ; '/'
289656:  STR             R0, [SP,#0xB0+var_A8]
289658:  ADDS            R0, R5, #2
28965A:  CMP             R9, R0
28965C:  BCS             loc_2896B4
28965E:  MOVW            R1, #0xAAAB
289662:  LSLS            R0, R0, #2
289664:  MOVT            R1, #0xAAAA
289668:  UMULL.W         R0, R1, R0, R1
28966C:  MOVS            R0, #3
28966E:  ADD.W           R9, R0, R1,LSR#1
289672:  ADD.W           R0, R9, R9,LSL#5
289676:  LSLS            R0, R0, #2; byte_count
289678:  BLX             malloc
28967C:  MOV             R11, R0
28967E:  CMP.W           R8, #0
289682:  BEQ             loc_2896A2
289684:  ADD.W           R0, R6, R6,LSL#5
289688:  MOV             R1, R8; void *
28968A:  LSLS            R2, R0, #2; size_t
28968C:  MOV             R0, R11; void *
28968E:  BLX             memcpy_0
289692:  MOV             R0, R8; p
289694:  BLX             free
289698:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2896A0)
28969C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28969E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2896A0:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2896A2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2896AA)
2896A6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2896A8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2896AA:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
2896AE:  STR.W           R9, [R0]; CHID::m_MappingPairs
2896B2:  B               loc_2896B6
2896B4:  MOV             R11, R8
2896B6:  ADD.W           R0, R6, R6,LSL#5
2896BA:  ADD             R5, SP, #0xB0+var_A8
2896BC:  MOVS            R2, #0x84; size_t
2896BE:  ADD.W           R0, R11, R0,LSL#2; void *
2896C2:  MOV             R1, R5; void *
2896C4:  BLX             memcpy_0
2896C8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2896D6)
2896CC:  ADDS            R4, R6, #1
2896CE:  LDR.W           R1, =(aMappingRhythmL - 0x2896D8); "MAPPING_RHYTHM_LEFT"
2896D2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2896D4:  ADD             R1, PC; "MAPPING_RHYTHM_LEFT"
2896D6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2896D8:  VLD1.64         {D16-D17}, [R1]
2896DC:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2896DE:  ORR.W           R0, R5, #4
2896E2:  VST1.32         {D16-D17}, [R0]
2896E6:  MOV             R0, #0x544645
2896EE:  STR             R0, [SP,#0xB0+var_94]
2896F0:  MOVS            R0, #0x30 ; '0'
2896F2:  STR             R0, [SP,#0xB0+var_A8]
2896F4:  ADDS            R0, R6, #2
2896F6:  CMP             R9, R0
2896F8:  BCS             loc_289750
2896FA:  MOVW            R1, #0xAAAB
2896FE:  LSLS            R0, R0, #2
289700:  MOVT            R1, #0xAAAA
289704:  UMULL.W         R0, R1, R0, R1
289708:  MOVS            R0, #3
28970A:  ADD.W           R9, R0, R1,LSR#1
28970E:  ADD.W           R0, R9, R9,LSL#5
289712:  LSLS            R0, R0, #2; byte_count
289714:  BLX             malloc
289718:  MOV             R10, R0
28971A:  CMP.W           R11, #0
28971E:  BEQ             loc_28973E
289720:  ADD.W           R0, R4, R4,LSL#5
289724:  MOV             R1, R11; void *
289726:  LSLS            R2, R0, #2; size_t
289728:  MOV             R0, R10; void *
28972A:  BLX             memcpy_0
28972E:  MOV             R0, R11; p
289730:  BLX             free
289734:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28973C)
289738:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28973A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28973C:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28973E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289746)
289742:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289744:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289746:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28974A:  STR.W           R9, [R0]; CHID::m_MappingPairs
28974E:  B               loc_289752
289750:  MOV             R10, R11
289752:  ADD.W           R0, R4, R4,LSL#5
289756:  ADD             R5, SP, #0xB0+var_A8
289758:  MOVS            R2, #0x84; size_t
28975A:  ADD.W           R0, R10, R0,LSL#2; void *
28975E:  MOV             R1, R5; void *
289760:  BLX             memcpy_0
289764:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289772)
289768:  ADDS            R6, R4, #1
28976A:  LDR.W           R1, =(aMappingRhythmR - 0x289774); "MAPPING_RHYTHM_RIGHT"
28976E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289770:  ADD             R1, PC; "MAPPING_RHYTHM_RIGHT"
289772:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289774:  VLD1.64         {D16-D17}, [R1]
289778:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28977A:  ADD.W           R0, R1, #0xD
28977E:  VLD1.8          {D18}, [R0]
289782:  ADD.W           R0, R5, #0x11
289786:  VST1.8          {D18}, [R0]
28978A:  ORR.W           R0, R5, #4
28978E:  VST1.32         {D16-D17}, [R0]
289792:  MOVS            R0, #0x31 ; '1'
289794:  STR             R0, [SP,#0xB0+var_A8]
289796:  ADDS            R0, R4, #2
289798:  CMP             R9, R0
28979A:  BCS             loc_2897F2
28979C:  MOVW            R1, #0xAAAB
2897A0:  LSLS            R0, R0, #2
2897A2:  MOVT            R1, #0xAAAA
2897A6:  UMULL.W         R0, R1, R0, R1
2897AA:  MOVS            R0, #3
2897AC:  ADD.W           R9, R0, R1,LSR#1
2897B0:  ADD.W           R0, R9, R9,LSL#5
2897B4:  LSLS            R0, R0, #2; byte_count
2897B6:  BLX             malloc
2897BA:  MOV             R8, R0
2897BC:  CMP.W           R10, #0
2897C0:  BEQ             loc_2897E0
2897C2:  ADD.W           R0, R6, R6,LSL#5
2897C6:  MOV             R1, R10; void *
2897C8:  LSLS            R2, R0, #2; size_t
2897CA:  MOV             R0, R8; void *
2897CC:  BLX             memcpy_0
2897D0:  MOV             R0, R10; p
2897D2:  BLX             free
2897D6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2897DE)
2897DA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2897DC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2897DE:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2897E0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2897E8)
2897E4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2897E6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2897E8:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
2897EC:  STR.W           R9, [R0]; CHID::m_MappingPairs
2897F0:  B               loc_2897F4
2897F2:  MOV             R8, R10
2897F4:  ADD.W           R0, R6, R6,LSL#5
2897F8:  ADD             R4, SP, #0xB0+var_A8
2897FA:  MOVS            R2, #0x84; size_t
2897FC:  ADD.W           R0, R8, R0,LSL#2; void *
289800:  MOV             R1, R4; void *
289802:  BLX             memcpy_0
289806:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289814)
28980A:  ADDS            R5, R6, #1
28980C:  LDR.W           R1, =(aMappingDropCra - 0x289816); "MAPPING_DROP_CRANE"
289810:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289812:  ADD             R1, PC; "MAPPING_DROP_CRANE"
289814:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289816:  VLD1.64         {D16-D17}, [R1]
28981A:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28981C:  ORR.W           R0, R4, #4
289820:  VST1.32         {D16-D17}, [R0]
289824:  MOVS            R0, #0
289826:  STRB.W          R0, [SP,#0xB0+var_94+2]
28982A:  MOVW            R0, #0x454E
28982E:  STRH.W          R0, [SP,#0xB0+var_94]
289832:  MOVS            R0, #0x32 ; '2'
289834:  STR             R0, [SP,#0xB0+var_A8]
289836:  ADDS            R0, R6, #2
289838:  CMP             R9, R0
28983A:  BCS             loc_289892
28983C:  MOVW            R1, #0xAAAB
289840:  LSLS            R0, R0, #2
289842:  MOVT            R1, #0xAAAA
289846:  UMULL.W         R0, R1, R0, R1
28984A:  MOVS            R0, #3
28984C:  ADD.W           R9, R0, R1,LSR#1
289850:  ADD.W           R0, R9, R9,LSL#5
289854:  LSLS            R0, R0, #2; byte_count
289856:  BLX             malloc
28985A:  MOV             R10, R0
28985C:  CMP.W           R8, #0
289860:  BEQ             loc_289880
289862:  ADD.W           R0, R5, R5,LSL#5
289866:  MOV             R1, R8; void *
289868:  LSLS            R2, R0, #2; size_t
28986A:  MOV             R0, R10; void *
28986C:  BLX             memcpy_0
289870:  MOV             R0, R8; p
289872:  BLX             free
289876:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28987E)
28987A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28987C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28987E:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289880:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289888)
289884:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289886:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289888:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28988C:  STR.W           R9, [R0]; CHID::m_MappingPairs
289890:  B               loc_289894
289892:  MOV             R10, R8
289894:  ADD.W           R0, R5, R5,LSL#5
289898:  ADD             R6, SP, #0xB0+var_A8
28989A:  MOVS            R2, #0x84; size_t
28989C:  ADD.W           R0, R10, R0,LSL#2; void *
2898A0:  MOV             R1, R6; void *
2898A2:  BLX             memcpy_0
2898A6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2898B4)
2898AA:  ADDS            R4, R5, #1
2898AC:  LDR.W           R1, =(aMappingDropIte - 0x2898B6); "MAPPING_DROP_ITEM"
2898B0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2898B2:  ADD             R1, PC; "MAPPING_DROP_ITEM"
2898B4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2898B6:  VLD1.64         {D16-D17}, [R1]
2898BA:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
2898BC:  ORR.W           R0, R6, #4
2898C0:  VST1.32         {D16-D17}, [R0]
2898C4:  MOVS            R0, #0x4D ; 'M'
2898C6:  STRH.W          R0, [SP,#0xB0+var_94]
2898CA:  MOVS            R0, #0x33 ; '3'
2898CC:  STR             R0, [SP,#0xB0+var_A8]
2898CE:  ADDS            R0, R5, #2
2898D0:  CMP             R9, R0
2898D2:  BCS             loc_28992A
2898D4:  MOVW            R1, #0xAAAB
2898D8:  LSLS            R0, R0, #2
2898DA:  MOVT            R1, #0xAAAA
2898DE:  UMULL.W         R0, R1, R0, R1
2898E2:  MOVS            R0, #3
2898E4:  ADD.W           R9, R0, R1,LSR#1
2898E8:  ADD.W           R0, R9, R9,LSL#5
2898EC:  LSLS            R0, R0, #2; byte_count
2898EE:  BLX             malloc
2898F2:  MOV             R8, R0
2898F4:  CMP.W           R10, #0
2898F8:  BEQ             loc_289918
2898FA:  ADD.W           R0, R4, R4,LSL#5
2898FE:  MOV             R1, R10; void *
289900:  LSLS            R2, R0, #2; size_t
289902:  MOV             R0, R8; void *
289904:  BLX             memcpy_0
289908:  MOV             R0, R10; p
28990A:  BLX             free
28990E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289916)
289912:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289914:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289916:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289918:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289920)
28991C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28991E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289920:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
289924:  STR.W           R9, [R0]; CHID::m_MappingPairs
289928:  B               loc_28992C
28992A:  MOV             R8, R10
28992C:  ADD.W           R0, R4, R4,LSL#5
289930:  ADD             R5, SP, #0xB0+var_A8
289932:  MOVS            R2, #0x84; size_t
289934:  ADD.W           R0, R8, R0,LSL#2; void *
289938:  MOV             R1, R5; void *
28993A:  BLX             memcpy_0
28993E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28994C)
289942:  ADDS            R6, R4, #1
289944:  LDR.W           R1, =(aMappingPhone - 0x28994E); "MAPPING_PHONE"
289948:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28994A:  ADD             R1, PC; "MAPPING_PHONE"
28994C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28994E:  VLDR            D17, [R1]
289952:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289954:  ADDS            R0, R1, #6
289956:  VLD1.16         {D16}, [R0]
28995A:  ADD.W           R0, R5, #0xA
28995E:  VST1.16         {D16}, [R0]
289962:  MOVS            R0, #0x34 ; '4'
289964:  STR             R0, [SP,#0xB0+var_A8]
289966:  ADDS            R0, R4, #2
289968:  CMP             R9, R0
28996A:  VSTR            D17, [SP,#0xB0+var_A4]
28996E:  BCS             loc_2899C6
289970:  MOVW            R1, #0xAAAB
289974:  LSLS            R0, R0, #2
289976:  MOVT            R1, #0xAAAA
28997A:  UMULL.W         R0, R1, R0, R1
28997E:  MOVS            R0, #3
289980:  ADD.W           R9, R0, R1,LSR#1
289984:  ADD.W           R0, R9, R9,LSL#5
289988:  LSLS            R0, R0, #2; byte_count
28998A:  BLX             malloc
28998E:  MOV             R10, R0
289990:  CMP.W           R8, #0
289994:  BEQ             loc_2899B4
289996:  ADD.W           R0, R6, R6,LSL#5
28999A:  MOV             R1, R8; void *
28999C:  LSLS            R2, R0, #2; size_t
28999E:  MOV             R0, R10; void *
2899A0:  BLX             memcpy_0
2899A4:  MOV             R0, R8; p
2899A6:  BLX             free
2899AA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2899B2)
2899AE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2899B0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2899B2:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
2899B4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2899BC)
2899B8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2899BA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2899BC:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
2899C0:  STR.W           R9, [R0]; CHID::m_MappingPairs
2899C4:  B               loc_2899C8
2899C6:  MOV             R10, R8
2899C8:  ADD.W           R0, R6, R6,LSL#5
2899CC:  ADD             R4, SP, #0xB0+var_A8
2899CE:  MOVS            R2, #0x84; size_t
2899D0:  ADD.W           R0, R10, R0,LSL#2; void *
2899D4:  MOV             R1, R4; void *
2899D6:  BLX             memcpy_0
2899DA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2899E8)
2899DE:  ADDS            R5, R6, #1
2899E0:  LDR.W           R1, =(aMappingNitro - 0x2899EA); "MAPPING_NITRO"
2899E4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2899E6:  ADD             R1, PC; "MAPPING_NITRO"
2899E8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2899EA:  VLDR            D17, [R1]
2899EE:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
2899F0:  ADDS            R0, R1, #6
2899F2:  VLD1.16         {D16}, [R0]
2899F6:  ADD.W           R0, R4, #0xA
2899FA:  VST1.16         {D16}, [R0]
2899FE:  MOVS            R0, #0x35 ; '5'
289A00:  STR             R0, [SP,#0xB0+var_A8]
289A02:  ADDS            R0, R6, #2
289A04:  CMP             R9, R0
289A06:  VSTR            D17, [SP,#0xB0+var_A4]
289A0A:  BCS             loc_289A62
289A0C:  MOVW            R1, #0xAAAB
289A10:  LSLS            R0, R0, #2
289A12:  MOVT            R1, #0xAAAA
289A16:  UMULL.W         R0, R1, R0, R1
289A1A:  MOVS            R0, #3
289A1C:  ADD.W           R9, R0, R1,LSR#1
289A20:  ADD.W           R0, R9, R9,LSL#5
289A24:  LSLS            R0, R0, #2; byte_count
289A26:  BLX             malloc
289A2A:  MOV             R8, R0
289A2C:  CMP.W           R10, #0
289A30:  BEQ             loc_289A50
289A32:  ADD.W           R0, R5, R5,LSL#5
289A36:  MOV             R1, R10; void *
289A38:  LSLS            R2, R0, #2; size_t
289A3A:  MOV             R0, R8; void *
289A3C:  BLX             memcpy_0
289A40:  MOV             R0, R10; p
289A42:  BLX             free
289A46:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289A4E)
289A4A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289A4C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289A4E:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289A50:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289A58)
289A54:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289A56:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289A58:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
289A5C:  STR.W           R9, [R0]; CHID::m_MappingPairs
289A60:  B               loc_289A64
289A62:  MOV             R8, R10
289A64:  ADD.W           R0, R5, R5,LSL#5
289A68:  ADD             R6, SP, #0xB0+var_A8
289A6A:  MOVS            R2, #0x84; size_t
289A6C:  ADD.W           R0, R8, R0,LSL#2; void *
289A70:  MOV             R1, R6; void *
289A72:  BLX             memcpy_0
289A76:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289A88)
289A7A:  ADDS            R4, R5, #1
289A7C:  LDR.W           R1, =(aMappingCraneUp - 0x289A8A); "MAPPING_CRANE_UP"
289A80:  MOV.W           R10, #0
289A84:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289A86:  ADD             R1, PC; "MAPPING_CRANE_UP"
289A88:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289A8A:  VLD1.64         {D16-D17}, [R1]
289A8E:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289A90:  ORR.W           R0, R6, #4
289A94:  VST1.32         {D16-D17}, [R0]
289A98:  MOVS            R0, #0x36 ; '6'
289A9A:  STRB.W          R10, [SP,#0xB0+var_94]
289A9E:  STR             R0, [SP,#0xB0+var_A8]
289AA0:  ADDS            R0, R5, #2
289AA2:  CMP             R9, R0
289AA4:  BCS             loc_289AFC
289AA6:  MOVW            R1, #0xAAAB
289AAA:  LSLS            R0, R0, #2
289AAC:  MOVT            R1, #0xAAAA
289AB0:  UMULL.W         R0, R1, R0, R1
289AB4:  MOVS            R0, #3
289AB6:  ADD.W           R9, R0, R1,LSR#1
289ABA:  ADD.W           R0, R9, R9,LSL#5
289ABE:  LSLS            R0, R0, #2; byte_count
289AC0:  BLX             malloc
289AC4:  MOV             R11, R0
289AC6:  CMP.W           R8, #0
289ACA:  BEQ             loc_289AEA
289ACC:  ADD.W           R0, R4, R4,LSL#5
289AD0:  MOV             R1, R8; void *
289AD2:  LSLS            R2, R0, #2; size_t
289AD4:  MOV             R0, R11; void *
289AD6:  BLX             memcpy_0
289ADA:  MOV             R0, R8; p
289ADC:  BLX             free
289AE0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289AE8)
289AE4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289AE6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289AE8:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289AEA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289AF2)
289AEE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289AF0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289AF2:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
289AF6:  STR.W           R9, [R0]; CHID::m_MappingPairs
289AFA:  B               loc_289AFE
289AFC:  MOV             R11, R8
289AFE:  ADD.W           R0, R4, R4,LSL#5
289B02:  ADD             R5, SP, #0xB0+var_A8
289B04:  MOVS            R2, #0x84; size_t
289B06:  ADD.W           R0, R11, R0,LSL#2; void *
289B0A:  MOV             R1, R5; void *
289B0C:  BLX             memcpy_0
289B10:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289B1E)
289B14:  ADDS            R6, R4, #1
289B16:  LDR.W           R1, =(aMappingCraneDo - 0x289B20); "MAPPING_CRANE_DOWN"
289B1A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289B1C:  ADD             R1, PC; "MAPPING_CRANE_DOWN"
289B1E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289B20:  VLD1.64         {D16-D17}, [R1]
289B24:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289B26:  ORR.W           R0, R5, #4
289B2A:  VST1.32         {D16-D17}, [R0]
289B2E:  MOVW            R0, #0x4E57
289B32:  STRB.W          R10, [SP,#0xB0+var_94+2]
289B36:  STRH.W          R0, [SP,#0xB0+var_94]
289B3A:  MOVS            R0, #0x37 ; '7'
289B3C:  STR             R0, [SP,#0xB0+var_A8]
289B3E:  ADDS            R0, R4, #2
289B40:  CMP             R9, R0
289B42:  BCS             loc_289B9A
289B44:  MOVW            R1, #0xAAAB
289B48:  LSLS            R0, R0, #2
289B4A:  MOVT            R1, #0xAAAA
289B4E:  UMULL.W         R0, R1, R0, R1
289B52:  MOVS            R0, #3
289B54:  ADD.W           R9, R0, R1,LSR#1
289B58:  ADD.W           R0, R9, R9,LSL#5
289B5C:  LSLS            R0, R0, #2; byte_count
289B5E:  BLX             malloc
289B62:  MOV             R8, R0
289B64:  CMP.W           R11, #0
289B68:  BEQ             loc_289B88
289B6A:  ADD.W           R0, R6, R6,LSL#5
289B6E:  MOV             R1, R11; void *
289B70:  LSLS            R2, R0, #2; size_t
289B72:  MOV             R0, R8; void *
289B74:  BLX             memcpy_0
289B78:  MOV             R0, R11; p
289B7A:  BLX             free
289B7E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289B86)
289B82:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289B84:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289B86:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289B88:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289B90)
289B8C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289B8E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289B90:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
289B94:  STR.W           R9, [R0]; CHID::m_MappingPairs
289B98:  B               loc_289B9C
289B9A:  MOV             R8, R11
289B9C:  ADD.W           R0, R6, R6,LSL#5
289BA0:  ADD             R5, SP, #0xB0+var_A8
289BA2:  MOVS            R2, #0x84; size_t
289BA4:  ADD.W           R0, R8, R0,LSL#2; void *
289BA8:  MOV             R1, R5; void *
289BAA:  BLX             memcpy_0
289BAE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289BBC)
289BB2:  ADDS            R4, R6, #1
289BB4:  LDR.W           R1, =(aMappingAccept - 0x289BBE); "MAPPING_ACCEPT"
289BB8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289BBA:  ADD             R1, PC; "MAPPING_ACCEPT"
289BBC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289BBE:  VLDR            D17, [R1]
289BC2:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289BC4:  ADDS            R0, R1, #7
289BC6:  VLD1.8          {D16}, [R0]
289BCA:  ADD.W           R0, R5, #0xB
289BCE:  VST1.8          {D16}, [R0]
289BD2:  MOVS            R0, #0x38 ; '8'
289BD4:  STR             R0, [SP,#0xB0+var_A8]
289BD6:  ADDS            R0, R6, #2
289BD8:  CMP             R9, R0
289BDA:  VSTR            D17, [SP,#0xB0+var_A4]
289BDE:  BCS             loc_289C36
289BE0:  MOVW            R1, #0xAAAB
289BE4:  LSLS            R0, R0, #2
289BE6:  MOVT            R1, #0xAAAA
289BEA:  UMULL.W         R0, R1, R0, R1
289BEE:  MOVS            R0, #3
289BF0:  ADD.W           R9, R0, R1,LSR#1
289BF4:  ADD.W           R0, R9, R9,LSL#5
289BF8:  LSLS            R0, R0, #2; byte_count
289BFA:  BLX             malloc
289BFE:  MOV             R10, R0
289C00:  CMP.W           R8, #0
289C04:  BEQ             loc_289C24
289C06:  ADD.W           R0, R4, R4,LSL#5
289C0A:  MOV             R1, R8; void *
289C0C:  LSLS            R2, R0, #2; size_t
289C0E:  MOV             R0, R10; void *
289C10:  BLX             memcpy_0
289C14:  MOV             R0, R8; p
289C16:  BLX             free
289C1A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289C22)
289C1E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289C20:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289C22:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289C24:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289C2C)
289C28:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289C2A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289C2C:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
289C30:  STR.W           R9, [R0]; CHID::m_MappingPairs
289C34:  B               loc_289C38
289C36:  MOV             R10, R8
289C38:  ADD.W           R0, R4, R4,LSL#5
289C3C:  ADD             R5, SP, #0xB0+var_A8
289C3E:  MOVS            R2, #0x84; size_t
289C40:  ADD.W           R0, R10, R0,LSL#2; void *
289C44:  MOV             R1, R5; void *
289C46:  BLX             memcpy_0
289C4A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289C58)
289C4E:  ADDS            R6, R4, #1
289C50:  LDR.W           R1, =(aMappingCancel - 0x289C5A); "MAPPING_CANCEL"
289C54:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289C56:  ADD             R1, PC; "MAPPING_CANCEL"
289C58:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289C5A:  VLDR            D17, [R1]
289C5E:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289C60:  ADDS            R0, R1, #7
289C62:  VLD1.8          {D16}, [R0]
289C66:  ADD.W           R0, R5, #0xB
289C6A:  VST1.8          {D16}, [R0]
289C6E:  MOVS            R0, #0x39 ; '9'
289C70:  STR             R0, [SP,#0xB0+var_A8]
289C72:  ADDS            R0, R4, #2
289C74:  CMP             R9, R0
289C76:  VSTR            D17, [SP,#0xB0+var_A4]
289C7A:  BCS             loc_289CD2
289C7C:  MOVW            R1, #0xAAAB
289C80:  LSLS            R0, R0, #2
289C82:  MOVT            R1, #0xAAAA
289C86:  UMULL.W         R0, R1, R0, R1
289C8A:  MOVS            R0, #3
289C8C:  ADD.W           R9, R0, R1,LSR#1
289C90:  ADD.W           R0, R9, R9,LSL#5
289C94:  LSLS            R0, R0, #2; byte_count
289C96:  BLX             malloc
289C9A:  MOV             R8, R0
289C9C:  CMP.W           R10, #0
289CA0:  BEQ             loc_289CC0
289CA2:  ADD.W           R0, R6, R6,LSL#5
289CA6:  MOV             R1, R10; void *
289CA8:  LSLS            R2, R0, #2; size_t
289CAA:  MOV             R0, R8; void *
289CAC:  BLX             memcpy_0
289CB0:  MOV             R0, R10; p
289CB2:  BLX             free
289CB6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289CBE)
289CBA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289CBC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289CBE:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289CC0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289CC8)
289CC4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289CC6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289CC8:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
289CCC:  STR.W           R9, [R0]; CHID::m_MappingPairs
289CD0:  B               loc_289CD4
289CD2:  MOV             R8, R10
289CD4:  ADD.W           R0, R6, R6,LSL#5
289CD8:  ADD             R4, SP, #0xB0+var_A8
289CDA:  MOVS            R2, #0x84; size_t
289CDC:  ADD.W           R0, R8, R0,LSL#2; void *
289CE0:  MOV             R1, R4; void *
289CE2:  BLX             memcpy_0
289CE6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289CF4)
289CEA:  ADDS            R5, R6, #1
289CEC:  LDR.W           R1, =(aMappingGrab - 0x289CF6); "MAPPING_GRAB"
289CF0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289CF2:  ADD             R1, PC; "MAPPING_GRAB"
289CF4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289CF6:  VLDR            D17, [R1]
289CFA:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289CFC:  ADDS            R0, R1, #5
289CFE:  VLD1.8          {D16}, [R0]
289D02:  ADD.W           R0, R4, #9
289D06:  VST1.8          {D16}, [R0]
289D0A:  MOVS            R0, #0x3A ; ':'
289D0C:  STR             R0, [SP,#0xB0+var_A8]
289D0E:  ADDS            R0, R6, #2
289D10:  CMP             R9, R0
289D12:  VSTR            D17, [SP,#0xB0+var_A4]
289D16:  BCS             loc_289D6E
289D18:  MOVW            R1, #0xAAAB
289D1C:  LSLS            R0, R0, #2
289D1E:  MOVT            R1, #0xAAAA
289D22:  UMULL.W         R0, R1, R0, R1
289D26:  MOVS            R0, #3
289D28:  ADD.W           R9, R0, R1,LSR#1
289D2C:  ADD.W           R0, R9, R9,LSL#5
289D30:  LSLS            R0, R0, #2; byte_count
289D32:  BLX             malloc
289D36:  MOV             R10, R0
289D38:  CMP.W           R8, #0
289D3C:  BEQ             loc_289D5C
289D3E:  ADD.W           R0, R5, R5,LSL#5
289D42:  MOV             R1, R8; void *
289D44:  LSLS            R2, R0, #2; size_t
289D46:  MOV             R0, R10; void *
289D48:  BLX             memcpy_0
289D4C:  MOV             R0, R8; p
289D4E:  BLX             free
289D52:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289D5A)
289D56:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289D58:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289D5A:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289D5C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289D64)
289D60:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289D62:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289D64:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
289D68:  STR.W           R9, [R0]; CHID::m_MappingPairs
289D6C:  B               loc_289D70
289D6E:  MOV             R10, R8
289D70:  ADD.W           R0, R5, R5,LSL#5
289D74:  ADD             R4, SP, #0xB0+var_A8
289D76:  MOVS            R2, #0x84; size_t
289D78:  ADD.W           R0, R10, R0,LSL#2; void *
289D7C:  MOV             R1, R4; void *
289D7E:  BLX             memcpy_0
289D82:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289D90)
289D86:  ADDS            R6, R5, #1
289D88:  LDR.W           R1, =(aMappingStinger - 0x289D92); "MAPPING_STINGER"
289D8C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289D8E:  ADD             R1, PC; "MAPPING_STINGER"
289D90:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289D92:  VLD1.64         {D16-D17}, [R1]
289D96:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289D98:  ORR.W           R0, R4, #4
289D9C:  VST1.32         {D16-D17}, [R0]
289DA0:  MOVS            R0, #0x3B ; ';'
289DA2:  STR             R0, [SP,#0xB0+var_A8]
289DA4:  ADDS            R0, R5, #2
289DA6:  CMP             R9, R0
289DA8:  BCS             loc_289E00
289DAA:  MOVW            R1, #0xAAAB
289DAE:  LSLS            R0, R0, #2
289DB0:  MOVT            R1, #0xAAAA
289DB4:  UMULL.W         R0, R1, R0, R1
289DB8:  MOVS            R0, #3
289DBA:  ADD.W           R9, R0, R1,LSR#1
289DBE:  ADD.W           R0, R9, R9,LSL#5
289DC2:  LSLS            R0, R0, #2; byte_count
289DC4:  BLX             malloc
289DC8:  MOV             R8, R0
289DCA:  CMP.W           R10, #0
289DCE:  BEQ             loc_289DEE
289DD0:  ADD.W           R0, R6, R6,LSL#5
289DD4:  MOV             R1, R10; void *
289DD6:  LSLS            R2, R0, #2; size_t
289DD8:  MOV             R0, R8; void *
289DDA:  BLX             memcpy_0
289DDE:  MOV             R0, R10; p
289DE0:  BLX             free
289DE4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289DEC)
289DE8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289DEA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289DEC:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289DEE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289DF6)
289DF2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289DF4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289DF6:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
289DFA:  STR.W           R9, [R0]; CHID::m_MappingPairs
289DFE:  B               loc_289E02
289E00:  MOV             R8, R10
289E02:  ADD.W           R0, R6, R6,LSL#5
289E06:  ADD             R5, SP, #0xB0+var_A8
289E08:  MOVS            R2, #0x84; size_t
289E0A:  ADD.W           R0, R8, R0,LSL#2; void *
289E0E:  MOV             R1, R5; void *
289E10:  BLX             memcpy_0
289E14:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289E22)
289E18:  ADDS            R4, R6, #1
289E1A:  LDR.W           R1, =(aMappingMenuDow - 0x289E24); "MAPPING_MENU_DOWN"
289E1E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289E20:  ADD             R1, PC; "MAPPING_MENU_DOWN"
289E22:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289E24:  VLD1.64         {D16-D17}, [R1]
289E28:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289E2A:  ORR.W           R0, R5, #4
289E2E:  VST1.32         {D16-D17}, [R0]
289E32:  MOVS            R0, #0x4E ; 'N'
289E34:  STRH.W          R0, [SP,#0xB0+var_94]
289E38:  MOVS            R0, #0x3C ; '<'
289E3A:  STR             R0, [SP,#0xB0+var_A8]
289E3C:  ADDS            R0, R6, #2
289E3E:  CMP             R9, R0
289E40:  BCS             loc_289E98
289E42:  MOVW            R1, #0xAAAB
289E46:  LSLS            R0, R0, #2
289E48:  MOVT            R1, #0xAAAA
289E4C:  UMULL.W         R0, R1, R0, R1
289E50:  MOVS            R0, #3
289E52:  ADD.W           R9, R0, R1,LSR#1
289E56:  ADD.W           R0, R9, R9,LSL#5
289E5A:  LSLS            R0, R0, #2; byte_count
289E5C:  BLX             malloc
289E60:  MOV             R11, R0
289E62:  CMP.W           R8, #0
289E66:  BEQ             loc_289E86
289E68:  ADD.W           R0, R4, R4,LSL#5
289E6C:  MOV             R1, R8; void *
289E6E:  LSLS            R2, R0, #2; size_t
289E70:  MOV             R0, R11; void *
289E72:  BLX             memcpy_0
289E76:  MOV             R0, R8; p
289E78:  BLX             free
289E7C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289E84)
289E80:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289E82:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289E84:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289E86:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289E8E)
289E8A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289E8C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289E8E:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
289E92:  STR.W           R9, [R0]; CHID::m_MappingPairs
289E96:  B               loc_289E9A
289E98:  MOV             R11, R8
289E9A:  ADD.W           R0, R4, R4,LSL#5
289E9E:  ADD             R6, SP, #0xB0+var_A8
289EA0:  MOVS            R2, #0x84; size_t
289EA2:  ADD.W           R0, R11, R0,LSL#2; void *
289EA6:  MOV             R1, R6; void *
289EA8:  BLX             memcpy_0
289EAC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289EBA)
289EB0:  ADDS            R5, R4, #1
289EB2:  LDR.W           R1, =(aMappingMenuUp - 0x289EBC); "MAPPING_MENU_UP"
289EB6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289EB8:  ADD             R1, PC; "MAPPING_MENU_UP"
289EBA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289EBC:  VLD1.64         {D16-D17}, [R1]
289EC0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289EC2:  ORR.W           R0, R6, #4
289EC6:  VST1.32         {D16-D17}, [R0]
289ECA:  MOVS            R0, #0x3D ; '='
289ECC:  STR             R0, [SP,#0xB0+var_A8]
289ECE:  ADDS            R0, R4, #2
289ED0:  CMP             R9, R0
289ED2:  BCS             loc_289F2A
289ED4:  MOVW            R1, #0xAAAB
289ED8:  LSLS            R0, R0, #2
289EDA:  MOVT            R1, #0xAAAA
289EDE:  UMULL.W         R0, R1, R0, R1
289EE2:  MOVS            R0, #3
289EE4:  ADD.W           R9, R0, R1,LSR#1
289EE8:  ADD.W           R0, R9, R9,LSL#5
289EEC:  LSLS            R0, R0, #2; byte_count
289EEE:  BLX             malloc
289EF2:  MOV             R10, R0
289EF4:  CMP.W           R11, #0
289EF8:  BEQ             loc_289F18
289EFA:  ADD.W           R0, R5, R5,LSL#5
289EFE:  MOV             R1, R11; void *
289F00:  LSLS            R2, R0, #2; size_t
289F02:  MOV             R0, R10; void *
289F04:  BLX             memcpy_0
289F08:  MOV             R0, R11; p
289F0A:  BLX             free
289F0E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289F16)
289F12:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289F14:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289F16:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
289F18:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289F20)
289F1C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289F1E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289F20:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
289F24:  STR.W           R9, [R0]; CHID::m_MappingPairs
289F28:  B               loc_289F2C
289F2A:  MOV             R10, R11
289F2C:  ADD.W           R0, R5, R5,LSL#5
289F30:  ADD             R4, SP, #0xB0+var_A8
289F32:  MOVS            R2, #0x84; size_t
289F34:  ADD.W           R0, R10, R0,LSL#2; void *
289F38:  MOV             R1, R4; void *
289F3A:  BLX             memcpy_0
289F3E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289F4C)
289F42:  ADDS            R6, R5, #1
289F44:  LDR.W           R1, =(aMappingMenuLef - 0x289F4E); "MAPPING_MENU_LEFT"
289F48:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289F4A:  ADD             R1, PC; "MAPPING_MENU_LEFT"
289F4C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289F4E:  VLD1.64         {D16-D17}, [R1]
289F52:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289F54:  ORR.W           R0, R4, #4
289F58:  VST1.32         {D16-D17}, [R0]
289F5C:  MOVS            R0, #0x54 ; 'T'
289F5E:  STRH.W          R0, [SP,#0xB0+var_94]
289F62:  MOVS            R0, #0x3E ; '>'
289F64:  STR             R0, [SP,#0xB0+var_A8]
289F66:  ADDS            R0, R5, #2
289F68:  CMP             R9, R0
289F6A:  BCS             loc_289FC2
289F6C:  MOVW            R1, #0xAAAB
289F70:  LSLS            R0, R0, #2
289F72:  MOVT            R1, #0xAAAA
289F76:  UMULL.W         R0, R1, R0, R1
289F7A:  MOVS            R0, #3
289F7C:  ADD.W           R9, R0, R1,LSR#1
289F80:  ADD.W           R0, R9, R9,LSL#5
289F84:  LSLS            R0, R0, #2; byte_count
289F86:  BLX             malloc
289F8A:  MOV             R8, R0
289F8C:  CMP.W           R10, #0
289F90:  BEQ             loc_289FB0
289F92:  ADD.W           R0, R6, R6,LSL#5
289F96:  MOV             R1, R10; void *
289F98:  LSLS            R2, R0, #2; size_t
289F9A:  MOV             R0, R8; void *
289F9C:  BLX             memcpy_0
289FA0:  MOV             R0, R10; p
289FA2:  BLX             free
289FA6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289FAE)
289FAA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289FAC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289FAE:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
289FB0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289FB8)
289FB4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289FB6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289FB8:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
289FBC:  STR.W           R9, [R0]; CHID::m_MappingPairs
289FC0:  B               loc_289FC4
289FC2:  MOV             R8, R10
289FC4:  ADD.W           R0, R6, R6,LSL#5
289FC8:  ADD             R5, SP, #0xB0+var_A8
289FCA:  MOVS            R2, #0x84; size_t
289FCC:  ADD.W           R0, R8, R0,LSL#2; void *
289FD0:  MOV             R1, R5; void *
289FD2:  BLX             memcpy_0
289FD6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x289FE4)
289FDA:  ADDS            R4, R6, #1
289FDC:  LDR.W           R1, =(aMappingMenuRig - 0x289FE6); "MAPPING_MENU_RIGHT"
289FE0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
289FE2:  ADD             R1, PC; "MAPPING_MENU_RIGHT"
289FE4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
289FE6:  VLD1.64         {D16-D17}, [R1]
289FEA:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
289FEC:  ORR.W           R0, R5, #4
289FF0:  VST1.32         {D16-D17}, [R0]
289FF4:  MOVS            R0, #0
289FF6:  STRB.W          R0, [SP,#0xB0+var_94+2]
289FFA:  MOVW            R0, #0x5448
289FFE:  STRH.W          R0, [SP,#0xB0+var_94]
28A002:  MOVS            R0, #0x3F ; '?'
28A004:  STR             R0, [SP,#0xB0+var_A8]
28A006:  ADDS            R0, R6, #2
28A008:  CMP             R9, R0
28A00A:  BCS             loc_28A062
28A00C:  MOVW            R1, #0xAAAB
28A010:  LSLS            R0, R0, #2
28A012:  MOVT            R1, #0xAAAA
28A016:  UMULL.W         R0, R1, R0, R1
28A01A:  MOVS            R0, #3
28A01C:  ADD.W           R9, R0, R1,LSR#1
28A020:  ADD.W           R0, R9, R9,LSL#5
28A024:  LSLS            R0, R0, #2; byte_count
28A026:  BLX             malloc
28A02A:  MOV             R10, R0
28A02C:  CMP.W           R8, #0
28A030:  BEQ             loc_28A050
28A032:  ADD.W           R0, R4, R4,LSL#5
28A036:  MOV             R1, R8; void *
28A038:  LSLS            R2, R0, #2; size_t
28A03A:  MOV             R0, R10; void *
28A03C:  BLX             memcpy_0
28A040:  MOV             R0, R8; p
28A042:  BLX             free
28A046:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A04E)
28A04A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A04C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A04E:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A050:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A058)
28A054:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A056:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A058:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28A05C:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A060:  B               loc_28A064
28A062:  MOV             R10, R8
28A064:  ADD.W           R0, R4, R4,LSL#5
28A068:  ADD             R6, SP, #0xB0+var_A8
28A06A:  MOVS            R2, #0x84; size_t
28A06C:  ADD.W           R0, R10, R0,LSL#2; void *
28A070:  MOV             R1, R6; void *
28A072:  BLX             memcpy_0
28A076:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A084)
28A07A:  ADDS            R5, R4, #1
28A07C:  LDR.W           R1, =(aMappingMenuAcc - 0x28A086); "MAPPING_MENU_ACCEPT"
28A080:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A082:  ADD             R1, PC; "MAPPING_MENU_ACCEPT"
28A084:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A086:  VLD1.64         {D16-D17}, [R1]
28A08A:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28A08C:  ORR.W           R0, R6, #4
28A090:  VST1.32         {D16-D17}, [R0]
28A094:  MOV             R0, #0x545045
28A09C:  STR             R0, [SP,#0xB0+var_94]
28A09E:  MOVS            R0, #0x40 ; '@'
28A0A0:  STR             R0, [SP,#0xB0+var_A8]
28A0A2:  ADDS            R0, R4, #2
28A0A4:  CMP             R9, R0
28A0A6:  BCS             loc_28A0FE
28A0A8:  MOVW            R1, #0xAAAB
28A0AC:  LSLS            R0, R0, #2
28A0AE:  MOVT            R1, #0xAAAA
28A0B2:  UMULL.W         R0, R1, R0, R1
28A0B6:  MOVS            R0, #3
28A0B8:  ADD.W           R9, R0, R1,LSR#1
28A0BC:  ADD.W           R0, R9, R9,LSL#5
28A0C0:  LSLS            R0, R0, #2; byte_count
28A0C2:  BLX             malloc
28A0C6:  MOV             R8, R0
28A0C8:  CMP.W           R10, #0
28A0CC:  BEQ             loc_28A0EC
28A0CE:  ADD.W           R0, R5, R5,LSL#5
28A0D2:  MOV             R1, R10; void *
28A0D4:  LSLS            R2, R0, #2; size_t
28A0D6:  MOV             R0, R8; void *
28A0D8:  BLX             memcpy_0
28A0DC:  MOV             R0, R10; p
28A0DE:  BLX             free
28A0E2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A0EA)
28A0E6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A0E8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A0EA:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28A0EC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A0F4)
28A0F0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A0F2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A0F4:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28A0F8:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A0FC:  B               loc_28A100
28A0FE:  MOV             R8, R10
28A100:  ADD.W           R0, R5, R5,LSL#5
28A104:  ADD             R4, SP, #0xB0+var_A8
28A106:  MOVS            R2, #0x84; size_t
28A108:  ADD.W           R0, R8, R0,LSL#2; void *
28A10C:  MOV             R1, R4; void *
28A10E:  BLX             memcpy_0
28A112:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A120)
28A116:  ADDS            R6, R5, #1
28A118:  LDR.W           R1, =(aMappingMenuBac - 0x28A122); "MAPPING_MENU_BACK"
28A11C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A11E:  ADD             R1, PC; "MAPPING_MENU_BACK"
28A120:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A122:  VLD1.64         {D16-D17}, [R1]
28A126:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A128:  ORR.W           R0, R4, #4
28A12C:  VST1.32         {D16-D17}, [R0]
28A130:  MOVS            R0, #0x4B ; 'K'
28A132:  STRH.W          R0, [SP,#0xB0+var_94]
28A136:  MOVS            R0, #0x41 ; 'A'
28A138:  STR             R0, [SP,#0xB0+var_A8]
28A13A:  ADDS            R0, R5, #2
28A13C:  CMP             R9, R0
28A13E:  BCS             loc_28A196
28A140:  MOVW            R1, #0xAAAB
28A144:  LSLS            R0, R0, #2
28A146:  MOVT            R1, #0xAAAA
28A14A:  UMULL.W         R0, R1, R0, R1
28A14E:  MOVS            R0, #3
28A150:  ADD.W           R9, R0, R1,LSR#1
28A154:  ADD.W           R0, R9, R9,LSL#5
28A158:  LSLS            R0, R0, #2; byte_count
28A15A:  BLX             malloc
28A15E:  MOV             R11, R0
28A160:  CMP.W           R8, #0
28A164:  BEQ             loc_28A184
28A166:  ADD.W           R0, R6, R6,LSL#5
28A16A:  MOV             R1, R8; void *
28A16C:  LSLS            R2, R0, #2; size_t
28A16E:  MOV             R0, R11; void *
28A170:  BLX             memcpy_0
28A174:  MOV             R0, R8; p
28A176:  BLX             free
28A17A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A182)
28A17E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A180:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A182:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A184:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A18C)
28A188:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A18A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A18C:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
28A190:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A194:  B               loc_28A198
28A196:  MOV             R11, R8
28A198:  ADD.W           R0, R6, R6,LSL#5
28A19C:  ADD             R5, SP, #0xB0+var_A8
28A19E:  MOVS            R2, #0x84; size_t
28A1A0:  ADD.W           R0, R11, R0,LSL#2; void *
28A1A4:  MOV             R1, R5; void *
28A1A6:  BLX             memcpy_0
28A1AA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A1B8)
28A1AE:  ADDS            R4, R6, #1
28A1B0:  LDR.W           R1, =(aMappingMenuMap - 0x28A1BA); "MAPPING_MENU_MAP"
28A1B4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A1B6:  ADD             R1, PC; "MAPPING_MENU_MAP"
28A1B8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A1BA:  VLD1.64         {D16-D17}, [R1]
28A1BE:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A1C0:  ORR.W           R0, R5, #4
28A1C4:  VST1.32         {D16-D17}, [R0]
28A1C8:  MOVS            R0, #0
28A1CA:  STRB.W          R0, [SP,#0xB0+var_94]
28A1CE:  MOVS            R0, #0x42 ; 'B'
28A1D0:  STR             R0, [SP,#0xB0+var_A8]
28A1D2:  ADDS            R0, R6, #2
28A1D4:  CMP             R9, R0
28A1D6:  BCS             loc_28A22E
28A1D8:  MOVW            R1, #0xAAAB
28A1DC:  LSLS            R0, R0, #2
28A1DE:  MOVT            R1, #0xAAAA
28A1E2:  UMULL.W         R0, R1, R0, R1
28A1E6:  MOVS            R0, #3
28A1E8:  ADD.W           R9, R0, R1,LSR#1
28A1EC:  ADD.W           R0, R9, R9,LSL#5
28A1F0:  LSLS            R0, R0, #2; byte_count
28A1F2:  BLX             malloc
28A1F6:  MOV             R10, R0
28A1F8:  CMP.W           R11, #0
28A1FC:  BEQ             loc_28A21C
28A1FE:  ADD.W           R0, R4, R4,LSL#5
28A202:  MOV             R1, R11; void *
28A204:  LSLS            R2, R0, #2; size_t
28A206:  MOV             R0, R10; void *
28A208:  BLX             memcpy_0
28A20C:  MOV             R0, R11; p
28A20E:  BLX             free
28A212:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A21A)
28A216:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A218:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A21A:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A21C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A224)
28A220:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A222:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A224:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28A228:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A22C:  B               loc_28A230
28A22E:  MOV             R10, R11
28A230:  ADD.W           R0, R4, R4,LSL#5
28A234:  ADD             R5, SP, #0xB0+var_A8
28A236:  MOVS            R2, #0x84; size_t
28A238:  ADD.W           R0, R10, R0,LSL#2; void *
28A23C:  MOV             R1, R5; void *
28A23E:  BLX             memcpy_0
28A242:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A250)
28A246:  ADDS            R6, R4, #1
28A248:  LDR.W           R1, =(aMappingArcadeB - 0x28A252); "MAPPING_ARCADE_BUTTON"
28A24C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A24E:  ADD             R1, PC; "MAPPING_ARCADE_BUTTON"
28A250:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A252:  VLD1.64         {D16-D17}, [R1]
28A256:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A258:  ADD.W           R0, R1, #0xE
28A25C:  VLD1.16         {D18}, [R0]
28A260:  ADD.W           R0, R5, #0x12
28A264:  VST1.16         {D18}, [R0]
28A268:  ORR.W           R0, R5, #4
28A26C:  VST1.32         {D16-D17}, [R0]
28A270:  MOVS            R0, #0x43 ; 'C'
28A272:  STR             R0, [SP,#0xB0+var_A8]
28A274:  ADDS            R0, R4, #2
28A276:  CMP             R9, R0
28A278:  BCS             loc_28A2D0
28A27A:  MOVW            R1, #0xAAAB
28A27E:  LSLS            R0, R0, #2
28A280:  MOVT            R1, #0xAAAA
28A284:  UMULL.W         R0, R1, R0, R1
28A288:  MOVS            R0, #3
28A28A:  ADD.W           R9, R0, R1,LSR#1
28A28E:  ADD.W           R0, R9, R9,LSL#5
28A292:  LSLS            R0, R0, #2; byte_count
28A294:  BLX             malloc
28A298:  MOV             R8, R0
28A29A:  CMP.W           R10, #0
28A29E:  BEQ             loc_28A2BE
28A2A0:  ADD.W           R0, R6, R6,LSL#5
28A2A4:  MOV             R1, R10; void *
28A2A6:  LSLS            R2, R0, #2; size_t
28A2A8:  MOV             R0, R8; void *
28A2AA:  BLX             memcpy_0
28A2AE:  MOV             R0, R10; p
28A2B0:  BLX             free
28A2B4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A2BC)
28A2B8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A2BA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A2BC:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A2BE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A2C6)
28A2C2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A2C4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A2C6:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28A2CA:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A2CE:  B               loc_28A2D2
28A2D0:  MOV             R8, R10
28A2D2:  ADD.W           R0, R6, R6,LSL#5
28A2D6:  ADD             R5, SP, #0xB0+var_A8
28A2D8:  MOVS            R2, #0x84; size_t
28A2DA:  ADD.W           R0, R8, R0,LSL#2; void *
28A2DE:  MOV             R1, R5; void *
28A2E0:  BLX             memcpy_0
28A2E4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A2F2)
28A2E8:  ADDS            R4, R6, #1
28A2EA:  LDR.W           R1, =(aMappingArcadeP - 0x28A2F4); "MAPPING_ARCADE_POWER_OFF"
28A2EE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A2F0:  ADD             R1, PC; "MAPPING_ARCADE_POWER_OFF"
28A2F2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A2F4:  VLD1.64         {D16-D17}, [R1]
28A2F8:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A2FA:  ADD.W           R0, R1, #9
28A2FE:  VLD1.8          {D18-D19}, [R0]
28A302:  ADD.W           R0, R5, #0xD
28A306:  VST1.8          {D18-D19}, [R0]
28A30A:  ORR.W           R0, R5, #4
28A30E:  VST1.32         {D16-D17}, [R0]
28A312:  MOVS            R0, #0x44 ; 'D'
28A314:  STR             R0, [SP,#0xB0+var_A8]
28A316:  ADDS            R0, R6, #2
28A318:  CMP             R9, R0
28A31A:  BCS             loc_28A372
28A31C:  MOVW            R1, #0xAAAB
28A320:  LSLS            R0, R0, #2
28A322:  MOVT            R1, #0xAAAA
28A326:  UMULL.W         R0, R1, R0, R1
28A32A:  MOVS            R0, #3
28A32C:  ADD.W           R9, R0, R1,LSR#1
28A330:  ADD.W           R0, R9, R9,LSL#5
28A334:  LSLS            R0, R0, #2; byte_count
28A336:  BLX             malloc
28A33A:  MOV             R10, R0
28A33C:  CMP.W           R8, #0
28A340:  BEQ             loc_28A360
28A342:  ADD.W           R0, R4, R4,LSL#5
28A346:  MOV             R1, R8; void *
28A348:  LSLS            R2, R0, #2; size_t
28A34A:  MOV             R0, R10; void *
28A34C:  BLX             memcpy_0
28A350:  MOV             R0, R8; p
28A352:  BLX             free
28A356:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A35E)
28A35A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A35C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A35E:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A360:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A368)
28A364:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A366:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A368:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28A36C:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A370:  B               loc_28A374
28A372:  MOV             R10, R8
28A374:  ADD.W           R0, R4, R4,LSL#5
28A378:  ADD             R5, SP, #0xB0+var_A8
28A37A:  MOVS            R2, #0x84; size_t
28A37C:  ADD.W           R0, R10, R0,LSL#2; void *
28A380:  MOV             R1, R5; void *
28A382:  BLX             memcpy_0
28A386:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A394)
28A38A:  ADDS            R6, R4, #1
28A38C:  LDR.W           R1, =(aMappingArcadeR - 0x28A396); "MAPPING_ARCADE_RESET"
28A390:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A392:  ADD             R1, PC; "MAPPING_ARCADE_RESET"
28A394:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A396:  VLD1.64         {D16-D17}, [R1]
28A39A:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A39C:  ADD.W           R0, R1, #0xD
28A3A0:  VLD1.8          {D18}, [R0]
28A3A4:  ADD.W           R0, R5, #0x11
28A3A8:  VST1.8          {D18}, [R0]
28A3AC:  ORR.W           R0, R5, #4
28A3B0:  VST1.32         {D16-D17}, [R0]
28A3B4:  MOVS            R0, #0x45 ; 'E'
28A3B6:  STR             R0, [SP,#0xB0+var_A8]
28A3B8:  ADDS            R0, R4, #2
28A3BA:  CMP             R9, R0
28A3BC:  BCS             loc_28A412
28A3BE:  MOVW            R1, #0xAAAB
28A3C2:  LSLS            R0, R0, #2
28A3C4:  MOVT            R1, #0xAAAA
28A3C8:  UMULL.W         R0, R1, R0, R1
28A3CC:  MOVS            R0, #3
28A3CE:  ADD.W           R9, R0, R1,LSR#1
28A3D2:  ADD.W           R0, R9, R9,LSL#5
28A3D6:  LSLS            R0, R0, #2; byte_count
28A3D8:  BLX             malloc
28A3DC:  MOV             R8, R0
28A3DE:  CMP.W           R10, #0
28A3E2:  BEQ             loc_28A402
28A3E4:  ADD.W           R0, R6, R6,LSL#5
28A3E8:  MOV             R1, R10; void *
28A3EA:  LSLS            R2, R0, #2; size_t
28A3EC:  MOV             R0, R8; void *
28A3EE:  BLX             memcpy_0
28A3F2:  MOV             R0, R10; p
28A3F4:  BLX             free
28A3F8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A400)
28A3FC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A3FE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A400:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A402:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A408)
28A404:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A406:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A408:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28A40C:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A410:  B               loc_28A414
28A412:  MOV             R8, R10
28A414:  ADD.W           R0, R6, R6,LSL#5
28A418:  ADD             R5, SP, #0xB0+var_A8
28A41A:  MOVS            R2, #0x84; size_t
28A41C:  ADD.W           R0, R8, R0,LSL#2; void *
28A420:  MOV             R1, R5; void *
28A422:  BLX             memcpy_0
28A426:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A430)
28A428:  ADDS            R4, R6, #1
28A42A:  LDR             R1, =(aMappingArcadeJ - 0x28A432); "MAPPING_ARCADE_JOYSTICK"
28A42C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A42E:  ADD             R1, PC; "MAPPING_ARCADE_JOYSTICK"
28A430:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A432:  VLD1.64         {D16-D17}, [R1]!
28A436:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A438:  ORR.W           R0, R5, #4
28A43C:  VST1.32         {D16-D17}, [R0]
28A440:  MOVS            R0, #0x46 ; 'F'
28A442:  STR             R0, [SP,#0xB0+var_A8]
28A444:  ADDS            R0, R6, #2
28A446:  VLDR            D16, [R1]
28A44A:  CMP             R9, R0
28A44C:  VSTR            D16, [SP,#0xB0+var_94]
28A450:  BCS             loc_28A4A4
28A452:  MOVW            R1, #0xAAAB
28A456:  LSLS            R0, R0, #2
28A458:  MOVT            R1, #0xAAAA
28A45C:  UMULL.W         R0, R1, R0, R1
28A460:  MOVS            R0, #3
28A462:  ADD.W           R9, R0, R1,LSR#1
28A466:  ADD.W           R0, R9, R9,LSL#5
28A46A:  LSLS            R0, R0, #2; byte_count
28A46C:  BLX             malloc
28A470:  MOV             R10, R0
28A472:  CMP.W           R8, #0
28A476:  BEQ             loc_28A494
28A478:  ADD.W           R0, R4, R4,LSL#5
28A47C:  MOV             R1, R8; void *
28A47E:  LSLS            R2, R0, #2; size_t
28A480:  MOV             R0, R10; void *
28A482:  BLX             memcpy_0
28A486:  MOV             R0, R8; p
28A488:  BLX             free
28A48C:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A492)
28A48E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A490:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A492:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A494:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A49A)
28A496:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A498:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A49A:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28A49E:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A4A2:  B               loc_28A4A6
28A4A4:  MOV             R10, R8
28A4A6:  ADD.W           R0, R4, R4,LSL#5
28A4AA:  ADD             R5, SP, #0xB0+var_A8
28A4AC:  MOVS            R2, #0x84; size_t
28A4AE:  ADD.W           R0, R10, R0,LSL#2; void *
28A4B2:  MOV             R1, R5; void *
28A4B4:  BLX             memcpy_0
28A4B8:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A4C2)
28A4BA:  ADDS            R6, R4, #1
28A4BC:  LDR             R1, =(aMappingGymActi - 0x28A4C4); "MAPPING_GYM_ACTION"
28A4BE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A4C0:  ADD             R1, PC; "MAPPING_GYM_ACTION"
28A4C2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A4C4:  VLD1.64         {D16-D17}, [R1]
28A4C8:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A4CA:  ORR.W           R0, R5, #4
28A4CE:  VST1.32         {D16-D17}, [R0]
28A4D2:  MOVS            R0, #0
28A4D4:  STRB.W          R0, [SP,#0xB0+var_94+2]
28A4D8:  MOVW            R0, #0x4E4F
28A4DC:  STRH.W          R0, [SP,#0xB0+var_94]
28A4E0:  MOVS            R0, #0x47 ; 'G'
28A4E2:  STR             R0, [SP,#0xB0+var_A8]
28A4E4:  ADDS            R0, R4, #2
28A4E6:  CMP             R9, R0
28A4E8:  BCS             loc_28A53C
28A4EA:  MOVW            R1, #0xAAAB
28A4EE:  LSLS            R0, R0, #2
28A4F0:  MOVT            R1, #0xAAAA
28A4F4:  UMULL.W         R0, R1, R0, R1
28A4F8:  MOVS            R0, #3
28A4FA:  ADD.W           R9, R0, R1,LSR#1
28A4FE:  ADD.W           R0, R9, R9,LSL#5
28A502:  LSLS            R0, R0, #2; byte_count
28A504:  BLX             malloc
28A508:  MOV             R8, R0
28A50A:  CMP.W           R10, #0
28A50E:  BEQ             loc_28A52C
28A510:  ADD.W           R0, R6, R6,LSL#5
28A514:  MOV             R1, R10; void *
28A516:  LSLS            R2, R0, #2; size_t
28A518:  MOV             R0, R8; void *
28A51A:  BLX             memcpy_0
28A51E:  MOV             R0, R10; p
28A520:  BLX             free
28A524:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A52A)
28A526:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A528:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A52A:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A52C:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A532)
28A52E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A530:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A532:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28A536:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A53A:  B               loc_28A53E
28A53C:  MOV             R8, R10
28A53E:  ADD.W           R0, R6, R6,LSL#5
28A542:  ADD             R5, SP, #0xB0+var_A8
28A544:  MOVS            R2, #0x84; size_t
28A546:  ADD.W           R0, R8, R0,LSL#2; void *
28A54A:  MOV             R1, R5; void *
28A54C:  BLX             memcpy_0
28A550:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A55A)
28A552:  ADDS            R4, R6, #1
28A554:  LDR             R1, =(aMappingGymEasi - 0x28A55C); "MAPPING_GYM_EASIER_LEVEL"
28A556:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A558:  ADD             R1, PC; "MAPPING_GYM_EASIER_LEVEL"
28A55A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A55C:  VLD1.64         {D16-D17}, [R1]
28A560:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A562:  ADD.W           R0, R1, #9
28A566:  VLD1.8          {D18-D19}, [R0]
28A56A:  ADD.W           R0, R5, #0xD
28A56E:  VST1.8          {D18-D19}, [R0]
28A572:  ORR.W           R0, R5, #4
28A576:  VST1.32         {D16-D17}, [R0]
28A57A:  MOVS            R0, #0x48 ; 'H'
28A57C:  STR             R0, [SP,#0xB0+var_A8]
28A57E:  ADDS            R0, R6, #2
28A580:  CMP             R9, R0
28A582:  BCS             loc_28A5D6
28A584:  MOVW            R1, #0xAAAB
28A588:  LSLS            R0, R0, #2
28A58A:  MOVT            R1, #0xAAAA
28A58E:  UMULL.W         R0, R1, R0, R1
28A592:  MOVS            R0, #3
28A594:  ADD.W           R9, R0, R1,LSR#1
28A598:  ADD.W           R0, R9, R9,LSL#5
28A59C:  LSLS            R0, R0, #2; byte_count
28A59E:  BLX             malloc
28A5A2:  MOV             R10, R0
28A5A4:  CMP.W           R8, #0
28A5A8:  BEQ             loc_28A5C6
28A5AA:  ADD.W           R0, R4, R4,LSL#5
28A5AE:  MOV             R1, R8; void *
28A5B0:  LSLS            R2, R0, #2; size_t
28A5B2:  MOV             R0, R10; void *
28A5B4:  BLX             memcpy_0
28A5B8:  MOV             R0, R8; p
28A5BA:  BLX             free
28A5BE:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A5C4)
28A5C0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A5C2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A5C4:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A5C6:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A5CC)
28A5C8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A5CA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A5CC:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28A5D0:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A5D4:  B               loc_28A5D8
28A5D6:  MOV             R10, R8
28A5D8:  ADD.W           R0, R4, R4,LSL#5
28A5DC:  ADD             R5, SP, #0xB0+var_A8
28A5DE:  MOVS            R2, #0x84; size_t
28A5E0:  ADD.W           R0, R10, R0,LSL#2; void *
28A5E4:  MOV             R1, R5; void *
28A5E6:  BLX             memcpy_0
28A5EA:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A5F4)
28A5EC:  ADDS            R6, R4, #1
28A5EE:  LDR             R1, =(aMappingGymHard - 0x28A5F6); "MAPPING_GYM_HARDER_LEVEL"
28A5F0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A5F2:  ADD             R1, PC; "MAPPING_GYM_HARDER_LEVEL"
28A5F4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A5F6:  VLD1.64         {D16-D17}, [R1]
28A5FA:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A5FC:  ADD.W           R0, R1, #9
28A600:  VLD1.8          {D18-D19}, [R0]
28A604:  ADD.W           R0, R5, #0xD
28A608:  VST1.8          {D18-D19}, [R0]
28A60C:  ORR.W           R0, R5, #4
28A610:  VST1.32         {D16-D17}, [R0]
28A614:  MOVS            R0, #0x49 ; 'I'
28A616:  STR             R0, [SP,#0xB0+var_A8]
28A618:  ADDS            R0, R4, #2
28A61A:  CMP             R9, R0
28A61C:  BCS.W           loc_28A8B0
28A620:  MOVW            R1, #0xAAAB
28A624:  LSLS            R0, R0, #2
28A626:  MOVT            R1, #0xAAAA
28A62A:  UMULL.W         R0, R1, R0, R1
28A62E:  MOVS            R0, #3
28A630:  ADD.W           R9, R0, R1,LSR#1
28A634:  ADD.W           R0, R9, R9,LSL#5
28A638:  LSLS            R0, R0, #2; byte_count
28A63A:  BLX             malloc
28A63E:  MOV             R8, R0
28A640:  CMP.W           R10, #0
28A644:  BEQ             loc_28A662
28A646:  ADD.W           R0, R6, R6,LSL#5
28A64A:  MOV             R1, R10; void *
28A64C:  LSLS            R2, R0, #2; size_t
28A64E:  MOV             R0, R8; void *
28A650:  BLX             memcpy_0
28A654:  MOV             R0, R10; p
28A656:  BLX             free
28A65A:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A660)
28A65C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A65E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A660:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A662:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A668)
28A664:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A666:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A668:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28A66C:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A670:  B               loc_28A8B2
28A672:  ALIGN 4
28A674:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289746
28A678:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289772
28A67C:  DCD aMappingRhythmR - 0x289774
28A680:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2897DE
28A684:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2897E8
28A688:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289814
28A68C:  DCD aMappingDropCra - 0x289816
28A690:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28987E
28A694:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289888
28A698:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2898B4
28A69C:  DCD aMappingDropIte - 0x2898B6
28A6A0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289916
28A6A4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289920
28A6A8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28994C
28A6AC:  DCD aMappingPhone - 0x28994E
28A6B0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2899B2
28A6B4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2899BC
28A6B8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x2899E8
28A6BC:  DCD aMappingNitro - 0x2899EA
28A6C0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289A4E
28A6C4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289A58
28A6C8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289A88
28A6CC:  DCD aMappingCraneUp - 0x289A8A
28A6D0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289AE8
28A6D4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289AF2
28A6D8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289B1E
28A6DC:  DCD aMappingCraneDo - 0x289B20
28A6E0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289B86
28A6E4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289B90
28A6E8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289BBC
28A6EC:  DCD aMappingAccept - 0x289BBE
28A6F0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289C22
28A6F4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289C2C
28A6F8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289C58
28A6FC:  DCD aMappingCancel - 0x289C5A
28A700:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289CBE
28A704:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289CC8
28A708:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289CF4
28A70C:  DCD aMappingGrab - 0x289CF6
28A710:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289D5A
28A714:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289D64
28A718:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289D90
28A71C:  DCD aMappingStinger - 0x289D92
28A720:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289DEC
28A724:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289DF6
28A728:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289E22
28A72C:  DCD aMappingMenuDow - 0x289E24
28A730:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289E84
28A734:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289E8E
28A738:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289EBA
28A73C:  DCD aMappingMenuUp - 0x289EBC
28A740:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289F16
28A744:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289F20
28A748:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289F4C
28A74C:  DCD aMappingMenuLef - 0x289F4E
28A750:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289FAE
28A754:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289FB8
28A758:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x289FE4
28A75C:  DCD aMappingMenuRig - 0x289FE6
28A760:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A04E
28A764:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A058
28A768:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A084
28A76C:  DCD aMappingMenuAcc - 0x28A086
28A770:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A0EA
28A774:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A0F4
28A778:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A120
28A77C:  DCD aMappingMenuBac - 0x28A122
28A780:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A182
28A784:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A18C
28A788:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A1B8
28A78C:  DCD aMappingMenuMap - 0x28A1BA
28A790:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A21A
28A794:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A224
28A798:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A250
28A79C:  DCD aMappingArcadeB - 0x28A252
28A7A0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A2BC
28A7A4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A2C6
28A7A8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A2F2
28A7AC:  DCD aMappingArcadeP - 0x28A2F4
28A7B0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A35E
28A7B4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A368
28A7B8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A394
28A7BC:  DCD aMappingArcadeR - 0x28A396
28A7C0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A400
28A7C4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A408
28A7C8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A430
28A7CC:  DCD aMappingArcadeJ - 0x28A432
28A7D0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A492
28A7D4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A49A
28A7D8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A4C2
28A7DC:  DCD aMappingGymActi - 0x28A4C4
28A7E0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A52A
28A7E4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A532
28A7E8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A55A
28A7EC:  DCD aMappingGymEasi - 0x28A55C
28A7F0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A5C4
28A7F4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A5CC
28A7F8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A5F4
28A7FC:  DCD aMappingGymHard - 0x28A5F6
28A800:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A660
28A804:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A668
28A808:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A8D2
28A80C:  DCD aMappingBlackJa - 0x28A8D4
28A810:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A93E
28A814:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A948
28A818:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A974
28A81C:  DCD aMappingBlackJa_0 - 0x28A976
28A820:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A9E0
28A824:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28A9EA
28A828:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AA16
28A82C:  DCD aMappingBlackJa_1 - 0x28AA18
28A830:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AA82
28A834:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AA8C
28A838:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AAB8
28A83C:  DCD aMappingBlackJa_2 - 0x28AABA
28A840:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AB24
28A844:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AB2E
28A848:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AB5A
28A84C:  DCD aMappingPlaceBe - 0x28AB5C
28A850:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28ABBC
28A854:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28ABC6
28A858:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28ABF2
28A85C:  DCD aMappingRemoveB - 0x28ABF4
28A860:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AC5C
28A864:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AC66
28A868:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AC96
28A86C:  DCD aMappingNextTar - 0x28AC9C
28A870:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28ACFA
28A874:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AD04
28A878:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AD30
28A87C:  DCD aMappingPrevTar - 0x28AD32
28A880:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AD90
28A884:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AD9A
28A888:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28ADC6
28A88C:  DCD aMappingWaypoin - 0x28ADC8
28A890:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AE32
28A894:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AE3C
28A898:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AE68
28A89C:  DCD aMappingHelicop - 0x28AE6A
28A8A0:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AED4
28A8A4:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AEDE
28A8A8:  DCD _ZN4CHID14m_MappingPairsE_ptr - 0x28AF0A
28A8AC:  DCD aMappingHelicop_0 - 0x28AF0C
28A8B0:  MOV             R8, R10
28A8B2:  ADD.W           R0, R6, R6,LSL#5
28A8B6:  ADD             R5, SP, #0xB0+var_A8
28A8B8:  MOVS            R2, #0x84; size_t
28A8BA:  ADD.W           R0, R8, R0,LSL#2; void *
28A8BE:  MOV             R1, R5; void *
28A8C0:  BLX             memcpy_0
28A8C4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A8D2)
28A8C8:  ADDS            R4, R6, #1
28A8CA:  LDR.W           R1, =(aMappingBlackJa - 0x28A8D4); "MAPPING_BLACK_JACK_SPLIT"
28A8CE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A8D0:  ADD             R1, PC; "MAPPING_BLACK_JACK_SPLIT"
28A8D2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A8D4:  VLD1.64         {D16-D17}, [R1]
28A8D8:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A8DA:  ADD.W           R0, R1, #9
28A8DE:  VLD1.8          {D18-D19}, [R0]
28A8E2:  ADD.W           R0, R5, #0xD
28A8E6:  VST1.8          {D18-D19}, [R0]
28A8EA:  ORR.W           R0, R5, #4
28A8EE:  VST1.32         {D16-D17}, [R0]
28A8F2:  MOVS            R0, #0x4A ; 'J'
28A8F4:  STR             R0, [SP,#0xB0+var_A8]
28A8F6:  ADDS            R0, R6, #2
28A8F8:  CMP             R9, R0
28A8FA:  BCS             loc_28A952
28A8FC:  MOVW            R1, #0xAAAB
28A900:  LSLS            R0, R0, #2
28A902:  MOVT            R1, #0xAAAA
28A906:  UMULL.W         R0, R1, R0, R1
28A90A:  MOVS            R0, #3
28A90C:  ADD.W           R9, R0, R1,LSR#1
28A910:  ADD.W           R0, R9, R9,LSL#5
28A914:  LSLS            R0, R0, #2; byte_count
28A916:  BLX             malloc
28A91A:  MOV             R10, R0
28A91C:  CMP.W           R8, #0
28A920:  BEQ             loc_28A940
28A922:  ADD.W           R0, R4, R4,LSL#5
28A926:  MOV             R1, R8; void *
28A928:  LSLS            R2, R0, #2; size_t
28A92A:  MOV             R0, R10; void *
28A92C:  BLX             memcpy_0
28A930:  MOV             R0, R8; p
28A932:  BLX             free
28A936:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A93E)
28A93A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A93C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A93E:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28A940:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A948)
28A944:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A946:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A948:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28A94C:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A950:  B               loc_28A954
28A952:  MOV             R10, R8
28A954:  ADD.W           R0, R4, R4,LSL#5
28A958:  ADD             R5, SP, #0xB0+var_A8
28A95A:  MOVS            R2, #0x84; size_t
28A95C:  ADD.W           R0, R10, R0,LSL#2; void *
28A960:  MOV             R1, R5; void *
28A962:  BLX             memcpy_0
28A966:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A974)
28A96A:  ADDS            R6, R4, #1
28A96C:  LDR.W           R1, =(aMappingBlackJa_0 - 0x28A976); "MAPPING_BLACK_JACK_DOUBLE"
28A970:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A972:  ADD             R1, PC; "MAPPING_BLACK_JACK_DOUBLE"
28A974:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A976:  VLD1.64         {D16-D17}, [R1]
28A97A:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A97C:  ADD.W           R0, R1, #0xA
28A980:  VLD1.16         {D18-D19}, [R0]
28A984:  ADD.W           R0, R5, #0xE
28A988:  VST1.16         {D18-D19}, [R0]
28A98C:  ORR.W           R0, R5, #4
28A990:  VST1.32         {D16-D17}, [R0]
28A994:  MOVS            R0, #0x4B ; 'K'
28A996:  STR             R0, [SP,#0xB0+var_A8]
28A998:  ADDS            R0, R4, #2
28A99A:  CMP             R9, R0
28A99C:  BCS             loc_28A9F4
28A99E:  MOVW            R1, #0xAAAB
28A9A2:  LSLS            R0, R0, #2
28A9A4:  MOVT            R1, #0xAAAA
28A9A8:  UMULL.W         R0, R1, R0, R1
28A9AC:  MOVS            R0, #3
28A9AE:  ADD.W           R9, R0, R1,LSR#1
28A9B2:  ADD.W           R0, R9, R9,LSL#5
28A9B6:  LSLS            R0, R0, #2; byte_count
28A9B8:  BLX             malloc
28A9BC:  MOV             R8, R0
28A9BE:  CMP.W           R10, #0
28A9C2:  BEQ             loc_28A9E2
28A9C4:  ADD.W           R0, R6, R6,LSL#5
28A9C8:  MOV             R1, R10; void *
28A9CA:  LSLS            R2, R0, #2; size_t
28A9CC:  MOV             R0, R8; void *
28A9CE:  BLX             memcpy_0
28A9D2:  MOV             R0, R10; p
28A9D4:  BLX             free
28A9D8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A9E0)
28A9DC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A9DE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A9E0:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28A9E2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28A9EA)
28A9E6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28A9E8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28A9EA:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28A9EE:  STR.W           R9, [R0]; CHID::m_MappingPairs
28A9F2:  B               loc_28A9F6
28A9F4:  MOV             R8, R10
28A9F6:  ADD.W           R0, R6, R6,LSL#5
28A9FA:  ADD             R5, SP, #0xB0+var_A8
28A9FC:  MOVS            R2, #0x84; size_t
28A9FE:  ADD.W           R0, R8, R0,LSL#2; void *
28AA02:  MOV             R1, R5; void *
28AA04:  BLX             memcpy_0
28AA08:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AA16)
28AA0C:  ADDS            R4, R6, #1
28AA0E:  LDR.W           R1, =(aMappingBlackJa_1 - 0x28AA18); "MAPPING_BLACK_JACK_HIT"
28AA12:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AA14:  ADD             R1, PC; "MAPPING_BLACK_JACK_HIT"
28AA16:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AA18:  VLD1.64         {D16-D17}, [R1]
28AA1C:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AA1E:  ADD.W           R0, R1, #0xF
28AA22:  VLD1.8          {D18}, [R0]
28AA26:  ADD.W           R0, R5, #0x13
28AA2A:  VST1.8          {D18}, [R0]
28AA2E:  ORR.W           R0, R5, #4
28AA32:  VST1.32         {D16-D17}, [R0]
28AA36:  MOVS            R0, #0x4C ; 'L'
28AA38:  STR             R0, [SP,#0xB0+var_A8]
28AA3A:  ADDS            R0, R6, #2
28AA3C:  CMP             R9, R0
28AA3E:  BCS             loc_28AA96
28AA40:  MOVW            R1, #0xAAAB
28AA44:  LSLS            R0, R0, #2
28AA46:  MOVT            R1, #0xAAAA
28AA4A:  UMULL.W         R0, R1, R0, R1
28AA4E:  MOVS            R0, #3
28AA50:  ADD.W           R9, R0, R1,LSR#1
28AA54:  ADD.W           R0, R9, R9,LSL#5
28AA58:  LSLS            R0, R0, #2; byte_count
28AA5A:  BLX             malloc
28AA5E:  MOV             R10, R0
28AA60:  CMP.W           R8, #0
28AA64:  BEQ             loc_28AA84
28AA66:  ADD.W           R0, R4, R4,LSL#5
28AA6A:  MOV             R1, R8; void *
28AA6C:  LSLS            R2, R0, #2; size_t
28AA6E:  MOV             R0, R10; void *
28AA70:  BLX             memcpy_0
28AA74:  MOV             R0, R8; p
28AA76:  BLX             free
28AA7A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AA82)
28AA7E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AA80:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AA82:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AA84:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AA8C)
28AA88:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AA8A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AA8C:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28AA90:  STR.W           R9, [R0]; CHID::m_MappingPairs
28AA94:  B               loc_28AA98
28AA96:  MOV             R10, R8
28AA98:  ADD.W           R0, R4, R4,LSL#5
28AA9C:  ADD             R5, SP, #0xB0+var_A8
28AA9E:  MOVS            R2, #0x84; size_t
28AAA0:  ADD.W           R0, R10, R0,LSL#2; void *
28AAA4:  MOV             R1, R5; void *
28AAA6:  BLX             memcpy_0
28AAAA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AAB8)
28AAAE:  ADDS            R6, R4, #1
28AAB0:  LDR.W           R1, =(aMappingBlackJa_2 - 0x28AABA); "MAPPING_BLACK_JACK_STAND"
28AAB4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AAB6:  ADD             R1, PC; "MAPPING_BLACK_JACK_STAND"
28AAB8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AABA:  VLD1.64         {D16-D17}, [R1]
28AABE:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28AAC0:  ADD.W           R0, R1, #9
28AAC4:  VLD1.8          {D18-D19}, [R0]
28AAC8:  ADD.W           R0, R5, #0xD
28AACC:  VST1.8          {D18-D19}, [R0]
28AAD0:  ORR.W           R0, R5, #4
28AAD4:  VST1.32         {D16-D17}, [R0]
28AAD8:  MOVS            R0, #0x4D ; 'M'
28AADA:  STR             R0, [SP,#0xB0+var_A8]
28AADC:  ADDS            R0, R4, #2
28AADE:  CMP             R9, R0
28AAE0:  BCS             loc_28AB38
28AAE2:  MOVW            R1, #0xAAAB
28AAE6:  LSLS            R0, R0, #2
28AAE8:  MOVT            R1, #0xAAAA
28AAEC:  UMULL.W         R0, R1, R0, R1
28AAF0:  MOVS            R0, #3
28AAF2:  ADD.W           R9, R0, R1,LSR#1
28AAF6:  ADD.W           R0, R9, R9,LSL#5
28AAFA:  LSLS            R0, R0, #2; byte_count
28AAFC:  BLX             malloc
28AB00:  MOV             R8, R0
28AB02:  CMP.W           R10, #0
28AB06:  BEQ             loc_28AB26
28AB08:  ADD.W           R0, R6, R6,LSL#5
28AB0C:  MOV             R1, R10; void *
28AB0E:  LSLS            R2, R0, #2; size_t
28AB10:  MOV             R0, R8; void *
28AB12:  BLX             memcpy_0
28AB16:  MOV             R0, R10; p
28AB18:  BLX             free
28AB1C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AB24)
28AB20:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AB22:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AB24:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28AB26:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AB2E)
28AB2A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AB2C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AB2E:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28AB32:  STR.W           R9, [R0]; CHID::m_MappingPairs
28AB36:  B               loc_28AB3A
28AB38:  MOV             R8, R10
28AB3A:  ADD.W           R0, R6, R6,LSL#5
28AB3E:  ADD             R5, SP, #0xB0+var_A8
28AB40:  MOVS            R2, #0x84; size_t
28AB42:  ADD.W           R0, R8, R0,LSL#2; void *
28AB46:  MOV             R1, R5; void *
28AB48:  BLX             memcpy_0
28AB4C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AB5A)
28AB50:  ADDS            R4, R6, #1
28AB52:  LDR.W           R1, =(aMappingPlaceBe - 0x28AB5C); "MAPPING_PLACE_BET"
28AB56:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AB58:  ADD             R1, PC; "MAPPING_PLACE_BET"
28AB5A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AB5C:  VLD1.64         {D16-D17}, [R1]
28AB60:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AB62:  ORR.W           R0, R5, #4
28AB66:  VST1.32         {D16-D17}, [R0]
28AB6A:  MOVS            R0, #0x54 ; 'T'
28AB6C:  STRH.W          R0, [SP,#0xB0+var_94]
28AB70:  MOVS            R0, #0x4E ; 'N'
28AB72:  STR             R0, [SP,#0xB0+var_A8]
28AB74:  ADDS            R0, R6, #2
28AB76:  CMP             R9, R0
28AB78:  BCS             loc_28ABD0
28AB7A:  MOVW            R1, #0xAAAB
28AB7E:  LSLS            R0, R0, #2
28AB80:  MOVT            R1, #0xAAAA
28AB84:  UMULL.W         R0, R1, R0, R1
28AB88:  MOVS            R0, #3
28AB8A:  ADD.W           R9, R0, R1,LSR#1
28AB8E:  ADD.W           R0, R9, R9,LSL#5
28AB92:  LSLS            R0, R0, #2; byte_count
28AB94:  BLX             malloc
28AB98:  MOV             R10, R0
28AB9A:  CMP.W           R8, #0
28AB9E:  BEQ             loc_28ABBE
28ABA0:  ADD.W           R0, R4, R4,LSL#5
28ABA4:  MOV             R1, R8; void *
28ABA6:  LSLS            R2, R0, #2; size_t
28ABA8:  MOV             R0, R10; void *
28ABAA:  BLX             memcpy_0
28ABAE:  MOV             R0, R8; p
28ABB0:  BLX             free
28ABB4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28ABBC)
28ABB8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28ABBA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28ABBC:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28ABBE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28ABC6)
28ABC2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28ABC4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28ABC6:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28ABCA:  STR.W           R9, [R0]; CHID::m_MappingPairs
28ABCE:  B               loc_28ABD2
28ABD0:  MOV             R10, R8
28ABD2:  ADD.W           R0, R4, R4,LSL#5
28ABD6:  ADD             R5, SP, #0xB0+var_A8
28ABD8:  MOVS            R2, #0x84; size_t
28ABDA:  ADD.W           R0, R10, R0,LSL#2; void *
28ABDE:  MOV             R1, R5; void *
28ABE0:  BLX             memcpy_0
28ABE4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28ABF2)
28ABE8:  ADDS            R6, R4, #1
28ABEA:  LDR.W           R1, =(aMappingRemoveB - 0x28ABF4); "MAPPING_REMOVE_BET"
28ABEE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28ABF0:  ADD             R1, PC; "MAPPING_REMOVE_BET"
28ABF2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28ABF4:  VLD1.64         {D16-D17}, [R1]
28ABF8:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28ABFA:  ORR.W           R0, R5, #4
28ABFE:  VST1.32         {D16-D17}, [R0]
28AC02:  MOVS            R0, #0
28AC04:  STRB.W          R0, [SP,#0xB0+var_94+2]
28AC08:  MOVW            R0, #0x5445
28AC0C:  STRH.W          R0, [SP,#0xB0+var_94]
28AC10:  MOVS            R0, #0x4F ; 'O'
28AC12:  STR             R0, [SP,#0xB0+var_A8]
28AC14:  ADDS            R0, R4, #2
28AC16:  CMP             R9, R0
28AC18:  BCS             loc_28AC70
28AC1A:  MOVW            R1, #0xAAAB
28AC1E:  LSLS            R0, R0, #2
28AC20:  MOVT            R1, #0xAAAA
28AC24:  UMULL.W         R0, R1, R0, R1
28AC28:  MOVS            R0, #3
28AC2A:  ADD.W           R9, R0, R1,LSR#1
28AC2E:  ADD.W           R0, R9, R9,LSL#5
28AC32:  LSLS            R0, R0, #2; byte_count
28AC34:  BLX             malloc
28AC38:  MOV             R8, R0
28AC3A:  CMP.W           R10, #0
28AC3E:  BEQ             loc_28AC5E
28AC40:  ADD.W           R0, R6, R6,LSL#5
28AC44:  MOV             R1, R10; void *
28AC46:  LSLS            R2, R0, #2; size_t
28AC48:  MOV             R0, R8; void *
28AC4A:  BLX             memcpy_0
28AC4E:  MOV             R0, R10; p
28AC50:  BLX             free
28AC54:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AC5C)
28AC58:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AC5A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AC5C:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28AC5E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AC66)
28AC62:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AC64:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AC66:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28AC6A:  STR.W           R9, [R0]; CHID::m_MappingPairs
28AC6E:  B               loc_28AC72
28AC70:  MOV             R8, R10
28AC72:  ADD.W           R0, R6, R6,LSL#5
28AC76:  ADD             R4, SP, #0xB0+var_A8
28AC78:  MOVS            R2, #0x84; size_t
28AC7A:  ADD.W           R0, R8, R0,LSL#2; void *
28AC7E:  MOV             R1, R4; void *
28AC80:  BLX             memcpy_0
28AC84:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AC96)
28AC88:  ADDS            R5, R6, #1
28AC8A:  LDR.W           R1, =(aMappingNextTar - 0x28AC9C); "MAPPING_NEXT_TARGET"
28AC8E:  MOVW            R10, #:lower16:(loc_544546+1)
28AC92:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AC94:  MOVT            R10, #:upper16:(loc_544546+1)
28AC98:  ADD             R1, PC; "MAPPING_NEXT_TARGET"
28AC9A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AC9C:  VLD1.64         {D16-D17}, [R1]
28ACA0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28ACA2:  ORR.W           R0, R4, #4
28ACA6:  VST1.32         {D16-D17}, [R0]
28ACAA:  MOVS            R0, #0x50 ; 'P'
28ACAC:  STR.W           R10, [SP,#0xB0+var_94]
28ACB0:  STR             R0, [SP,#0xB0+var_A8]
28ACB2:  ADDS            R0, R6, #2
28ACB4:  CMP             R9, R0
28ACB6:  BCS             loc_28AD0E
28ACB8:  MOVW            R1, #0xAAAB
28ACBC:  LSLS            R0, R0, #2
28ACBE:  MOVT            R1, #0xAAAA
28ACC2:  UMULL.W         R0, R1, R0, R1
28ACC6:  MOVS            R0, #3
28ACC8:  ADD.W           R9, R0, R1,LSR#1
28ACCC:  ADD.W           R0, R9, R9,LSL#5
28ACD0:  LSLS            R0, R0, #2; byte_count
28ACD2:  BLX             malloc
28ACD6:  MOV             R11, R0
28ACD8:  CMP.W           R8, #0
28ACDC:  BEQ             loc_28ACFC
28ACDE:  ADD.W           R0, R5, R5,LSL#5
28ACE2:  MOV             R1, R8; void *
28ACE4:  LSLS            R2, R0, #2; size_t
28ACE6:  MOV             R0, R11; void *
28ACE8:  BLX             memcpy_0
28ACEC:  MOV             R0, R8; p
28ACEE:  BLX             free
28ACF2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28ACFA)
28ACF6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28ACF8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28ACFA:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28ACFC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AD04)
28AD00:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AD02:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AD04:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
28AD08:  STR.W           R9, [R0]; CHID::m_MappingPairs
28AD0C:  B               loc_28AD10
28AD0E:  MOV             R11, R8
28AD10:  ADD.W           R0, R5, R5,LSL#5
28AD14:  ADD             R6, SP, #0xB0+var_A8
28AD16:  MOVS            R2, #0x84; size_t
28AD18:  ADD.W           R0, R11, R0,LSL#2; void *
28AD1C:  MOV             R1, R6; void *
28AD1E:  BLX             memcpy_0
28AD22:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AD30)
28AD26:  ADDS            R4, R5, #1
28AD28:  LDR.W           R1, =(aMappingPrevTar - 0x28AD32); "MAPPING_PREV_TARGET"
28AD2C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AD2E:  ADD             R1, PC; "MAPPING_PREV_TARGET"
28AD30:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AD32:  VLD1.64         {D16-D17}, [R1]
28AD36:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AD38:  ORR.W           R0, R6, #4
28AD3C:  VST1.32         {D16-D17}, [R0]
28AD40:  MOVS            R0, #0x51 ; 'Q'
28AD42:  STR.W           R10, [SP,#0xB0+var_94]
28AD46:  STR             R0, [SP,#0xB0+var_A8]
28AD48:  ADDS            R0, R5, #2
28AD4A:  CMP             R9, R0
28AD4C:  BCS             loc_28ADA4
28AD4E:  MOVW            R1, #0xAAAB
28AD52:  LSLS            R0, R0, #2
28AD54:  MOVT            R1, #0xAAAA
28AD58:  UMULL.W         R0, R1, R0, R1
28AD5C:  MOVS            R0, #3
28AD5E:  ADD.W           R9, R0, R1,LSR#1
28AD62:  ADD.W           R0, R9, R9,LSL#5
28AD66:  LSLS            R0, R0, #2; byte_count
28AD68:  BLX             malloc
28AD6C:  MOV             R10, R0
28AD6E:  CMP.W           R11, #0
28AD72:  BEQ             loc_28AD92
28AD74:  ADD.W           R0, R4, R4,LSL#5
28AD78:  MOV             R1, R11; void *
28AD7A:  LSLS            R2, R0, #2; size_t
28AD7C:  MOV             R0, R10; void *
28AD7E:  BLX             memcpy_0
28AD82:  MOV             R0, R11; p
28AD84:  BLX             free
28AD88:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AD90)
28AD8C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AD8E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AD90:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AD92:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AD9A)
28AD96:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AD98:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AD9A:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28AD9E:  STR.W           R9, [R0]; CHID::m_MappingPairs
28ADA2:  B               loc_28ADA6
28ADA4:  MOV             R10, R11
28ADA6:  ADD.W           R0, R4, R4,LSL#5
28ADAA:  ADD             R5, SP, #0xB0+var_A8
28ADAC:  MOVS            R2, #0x84; size_t
28ADAE:  ADD.W           R0, R10, R0,LSL#2; void *
28ADB2:  MOV             R1, R5; void *
28ADB4:  BLX             memcpy_0
28ADB8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28ADC6)
28ADBC:  ADDS            R6, R4, #1
28ADBE:  LDR.W           R1, =(aMappingWaypoin - 0x28ADC8); "MAPPING_WAYPOINT_BLIP"
28ADC2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28ADC4:  ADD             R1, PC; "MAPPING_WAYPOINT_BLIP"
28ADC6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28ADC8:  VLD1.64         {D16-D17}, [R1]
28ADCC:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28ADCE:  ADD.W           R0, R1, #0xE
28ADD2:  VLD1.16         {D18}, [R0]
28ADD6:  ADD.W           R0, R5, #0x12
28ADDA:  VST1.16         {D18}, [R0]
28ADDE:  ORR.W           R0, R5, #4
28ADE2:  VST1.32         {D16-D17}, [R0]
28ADE6:  MOVS            R0, #0x52 ; 'R'
28ADE8:  STR             R0, [SP,#0xB0+var_A8]
28ADEA:  ADDS            R0, R4, #2
28ADEC:  CMP             R9, R0
28ADEE:  BCS             loc_28AE46
28ADF0:  MOVW            R1, #0xAAAB
28ADF4:  LSLS            R0, R0, #2
28ADF6:  MOVT            R1, #0xAAAA
28ADFA:  UMULL.W         R0, R1, R0, R1
28ADFE:  MOVS            R0, #3
28AE00:  ADD.W           R9, R0, R1,LSR#1
28AE04:  ADD.W           R0, R9, R9,LSL#5
28AE08:  LSLS            R0, R0, #2; byte_count
28AE0A:  BLX             malloc
28AE0E:  MOV             R8, R0
28AE10:  CMP.W           R10, #0
28AE14:  BEQ             loc_28AE34
28AE16:  ADD.W           R0, R6, R6,LSL#5
28AE1A:  MOV             R1, R10; void *
28AE1C:  LSLS            R2, R0, #2; size_t
28AE1E:  MOV             R0, R8; void *
28AE20:  BLX             memcpy_0
28AE24:  MOV             R0, R10; p
28AE26:  BLX             free
28AE2A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AE32)
28AE2E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AE30:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AE32:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28AE34:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AE3C)
28AE38:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AE3A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AE3C:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28AE40:  STR.W           R9, [R0]; CHID::m_MappingPairs
28AE44:  B               loc_28AE48
28AE46:  MOV             R8, R10
28AE48:  ADD.W           R0, R6, R6,LSL#5
28AE4C:  ADD             R5, SP, #0xB0+var_A8
28AE4E:  MOVS            R2, #0x84; size_t
28AE50:  ADD.W           R0, R8, R0,LSL#2; void *
28AE54:  MOV             R1, R5; void *
28AE56:  BLX             memcpy_0
28AE5A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AE68)
28AE5E:  ADDS            R4, R6, #1
28AE60:  LDR.W           R1, =(aMappingHelicop - 0x28AE6A); "MAPPING_HELICOPTER_MAGNET_UP"
28AE64:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AE66:  ADD             R1, PC; "MAPPING_HELICOPTER_MAGNET_UP"
28AE68:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AE6A:  VLD1.64         {D16-D17}, [R1]
28AE6E:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AE70:  ADD.W           R0, R1, #0xD
28AE74:  VLD1.8          {D18-D19}, [R0]
28AE78:  ADD.W           R0, R5, #0x11
28AE7C:  VST1.8          {D18-D19}, [R0]
28AE80:  ORR.W           R0, R5, #4
28AE84:  VST1.32         {D16-D17}, [R0]
28AE88:  MOVS            R0, #0x53 ; 'S'
28AE8A:  STR             R0, [SP,#0xB0+var_A8]
28AE8C:  ADDS            R0, R6, #2
28AE8E:  CMP             R9, R0
28AE90:  BCS             loc_28AEE8
28AE92:  MOVW            R1, #0xAAAB
28AE96:  LSLS            R0, R0, #2
28AE98:  MOVT            R1, #0xAAAA
28AE9C:  UMULL.W         R0, R1, R0, R1
28AEA0:  MOVS            R0, #3
28AEA2:  ADD.W           R9, R0, R1,LSR#1
28AEA6:  ADD.W           R0, R9, R9,LSL#5
28AEAA:  LSLS            R0, R0, #2; byte_count
28AEAC:  BLX             malloc
28AEB0:  MOV             R10, R0
28AEB2:  CMP.W           R8, #0
28AEB6:  BEQ             loc_28AED6
28AEB8:  ADD.W           R0, R4, R4,LSL#5
28AEBC:  MOV             R1, R8; void *
28AEBE:  LSLS            R2, R0, #2; size_t
28AEC0:  MOV             R0, R10; void *
28AEC2:  BLX             memcpy_0
28AEC6:  MOV             R0, R8; p
28AEC8:  BLX             free
28AECC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AED4)
28AED0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AED2:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AED4:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AED6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AEDE)
28AEDA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AEDC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AEDE:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28AEE2:  STR.W           R9, [R0]; CHID::m_MappingPairs
28AEE6:  B               loc_28AEEA
28AEE8:  MOV             R10, R8
28AEEA:  ADD.W           R0, R4, R4,LSL#5
28AEEE:  ADD             R5, SP, #0xB0+var_A8
28AEF0:  MOVS            R2, #0x84; size_t
28AEF2:  ADD.W           R0, R10, R0,LSL#2; void *
28AEF6:  MOV             R1, R5; void *
28AEF8:  BLX             memcpy_0
28AEFC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AF0A)
28AF00:  ADDS            R6, R4, #1
28AF02:  LDR.W           R1, =(aMappingHelicop_0 - 0x28AF0C); "MAPPING_HELICOPTER_MAGNET_DOWN"
28AF06:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AF08:  ADD             R1, PC; "MAPPING_HELICOPTER_MAGNET_DOWN"
28AF0A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AF0C:  VLD1.64         {D16-D17}, [R1]
28AF10:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28AF12:  ADD.W           R0, R1, #0xF
28AF16:  VLD1.8          {D18-D19}, [R0]
28AF1A:  ADD.W           R0, R5, #0x13
28AF1E:  VST1.8          {D18-D19}, [R0]
28AF22:  ORR.W           R0, R5, #4
28AF26:  VST1.32         {D16-D17}, [R0]
28AF2A:  MOVS            R0, #0x54 ; 'T'
28AF2C:  STR             R0, [SP,#0xB0+var_A8]
28AF2E:  ADDS            R0, R4, #2
28AF30:  CMP             R9, R0
28AF32:  BCS             loc_28AF8A
28AF34:  MOVW            R1, #0xAAAB
28AF38:  LSLS            R0, R0, #2
28AF3A:  MOVT            R1, #0xAAAA
28AF3E:  UMULL.W         R0, R1, R0, R1
28AF42:  MOVS            R0, #3
28AF44:  ADD.W           R9, R0, R1,LSR#1
28AF48:  ADD.W           R0, R9, R9,LSL#5
28AF4C:  LSLS            R0, R0, #2; byte_count
28AF4E:  BLX             malloc
28AF52:  MOV             R8, R0
28AF54:  CMP.W           R10, #0
28AF58:  BEQ             loc_28AF78
28AF5A:  ADD.W           R0, R6, R6,LSL#5
28AF5E:  MOV             R1, R10; void *
28AF60:  LSLS            R2, R0, #2; size_t
28AF62:  MOV             R0, R8; void *
28AF64:  BLX             memcpy_0
28AF68:  MOV             R0, R10; p
28AF6A:  BLX             free
28AF6E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AF76)
28AF72:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AF74:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AF76:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28AF78:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AF80)
28AF7C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AF7E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AF80:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28AF84:  STR.W           R9, [R0]; CHID::m_MappingPairs
28AF88:  B               loc_28AF8C
28AF8A:  MOV             R8, R10
28AF8C:  ADD.W           R0, R6, R6,LSL#5
28AF90:  ADD             R5, SP, #0xB0+var_A8
28AF92:  MOVS            R2, #0x84; size_t
28AF94:  ADD.W           R0, R8, R0,LSL#2; void *
28AF98:  MOV             R1, R5; void *
28AF9A:  BLX             memcpy_0
28AF9E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28AFAC)
28AFA2:  ADDS            R4, R6, #1
28AFA4:  LDR.W           R1, =(aMappingLockHyd - 0x28AFAE); "MAPPING_LOCK_HYDRAULICS"
28AFA8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28AFAA:  ADD             R1, PC; "MAPPING_LOCK_HYDRAULICS"
28AFAC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28AFAE:  VLD1.64         {D16-D17}, [R1]!
28AFB2:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28AFB4:  ORR.W           R0, R5, #4
28AFB8:  VST1.32         {D16-D17}, [R0]
28AFBC:  MOVS            R0, #0x55 ; 'U'
28AFBE:  STR             R0, [SP,#0xB0+var_A8]
28AFC0:  ADDS            R0, R6, #2
28AFC2:  VLDR            D16, [R1]
28AFC6:  CMP             R9, R0
28AFC8:  VSTR            D16, [SP,#0xB0+var_94]
28AFCC:  BCS             loc_28B024
28AFCE:  MOVW            R1, #0xAAAB
28AFD2:  LSLS            R0, R0, #2
28AFD4:  MOVT            R1, #0xAAAA
28AFD8:  UMULL.W         R0, R1, R0, R1
28AFDC:  MOVS            R0, #3
28AFDE:  ADD.W           R9, R0, R1,LSR#1
28AFE2:  ADD.W           R0, R9, R9,LSL#5
28AFE6:  LSLS            R0, R0, #2; byte_count
28AFE8:  BLX             malloc
28AFEC:  MOV             R10, R0
28AFEE:  CMP.W           R8, #0
28AFF2:  BEQ             loc_28B012
28AFF4:  ADD.W           R0, R4, R4,LSL#5
28AFF8:  MOV             R1, R8; void *
28AFFA:  LSLS            R2, R0, #2; size_t
28AFFC:  MOV             R0, R10; void *
28AFFE:  BLX             memcpy_0
28B002:  MOV             R0, R8; p
28B004:  BLX             free
28B008:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B010)
28B00C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B00E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B010:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B012:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B01A)
28B016:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B018:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B01A:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B01E:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B022:  B               loc_28B026
28B024:  MOV             R10, R8
28B026:  ADD.W           R0, R4, R4,LSL#5
28B02A:  ADD             R5, SP, #0xB0+var_A8
28B02C:  MOVS            R2, #0x84; size_t
28B02E:  ADD.W           R0, R10, R0,LSL#2; void *
28B032:  MOV             R1, R5; void *
28B034:  BLX             memcpy_0
28B038:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B046)
28B03C:  ADDS            R6, R4, #1
28B03E:  LDR.W           R1, =(aMappingFlightA - 0x28B048); "MAPPING_FLIGHT_ASCEND"
28B042:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B044:  ADD             R1, PC; "MAPPING_FLIGHT_ASCEND"
28B046:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B048:  VLD1.64         {D16-D17}, [R1]
28B04C:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B04E:  ADD.W           R0, R1, #0xE
28B052:  VLD1.16         {D18}, [R0]
28B056:  ADD.W           R0, R5, #0x12
28B05A:  VST1.16         {D18}, [R0]
28B05E:  ORR.W           R0, R5, #4
28B062:  VST1.32         {D16-D17}, [R0]
28B066:  MOVS            R0, #0x56 ; 'V'
28B068:  STR             R0, [SP,#0xB0+var_A8]
28B06A:  ADDS            R0, R4, #2
28B06C:  CMP             R9, R0
28B06E:  BCS             loc_28B0C6
28B070:  MOVW            R1, #0xAAAB
28B074:  LSLS            R0, R0, #2
28B076:  MOVT            R1, #0xAAAA
28B07A:  UMULL.W         R0, R1, R0, R1
28B07E:  MOVS            R0, #3
28B080:  ADD.W           R9, R0, R1,LSR#1
28B084:  ADD.W           R0, R9, R9,LSL#5
28B088:  LSLS            R0, R0, #2; byte_count
28B08A:  BLX             malloc
28B08E:  MOV             R8, R0
28B090:  CMP.W           R10, #0
28B094:  BEQ             loc_28B0B4
28B096:  ADD.W           R0, R6, R6,LSL#5
28B09A:  MOV             R1, R10; void *
28B09C:  LSLS            R2, R0, #2; size_t
28B09E:  MOV             R0, R8; void *
28B0A0:  BLX             memcpy_0
28B0A4:  MOV             R0, R10; p
28B0A6:  BLX             free
28B0AA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B0B2)
28B0AE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B0B0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B0B2:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B0B4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B0BC)
28B0B8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B0BA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B0BC:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28B0C0:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B0C4:  B               loc_28B0C8
28B0C6:  MOV             R8, R10
28B0C8:  ADD.W           R0, R6, R6,LSL#5
28B0CC:  ADD             R5, SP, #0xB0+var_A8
28B0CE:  MOVS            R2, #0x84; size_t
28B0D0:  ADD.W           R0, R8, R0,LSL#2; void *
28B0D4:  MOV             R1, R5; void *
28B0D6:  BLX             memcpy_0
28B0DA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B0E8)
28B0DE:  ADDS            R4, R6, #1
28B0E0:  LDR.W           R1, =(aMappingFlightD - 0x28B0EA); "MAPPING_FLIGHT_DESCEND"
28B0E4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B0E6:  ADD             R1, PC; "MAPPING_FLIGHT_DESCEND"
28B0E8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B0EA:  VLD1.64         {D16-D17}, [R1]
28B0EE:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B0F0:  ADD.W           R0, R1, #0xF
28B0F4:  VLD1.8          {D18}, [R0]
28B0F8:  ADD.W           R0, R5, #0x13
28B0FC:  VST1.8          {D18}, [R0]
28B100:  ORR.W           R0, R5, #4
28B104:  VST1.32         {D16-D17}, [R0]
28B108:  MOVS            R0, #0x57 ; 'W'
28B10A:  STR             R0, [SP,#0xB0+var_A8]
28B10C:  ADDS            R0, R6, #2
28B10E:  CMP             R9, R0
28B110:  BCS             loc_28B168
28B112:  MOVW            R1, #0xAAAB
28B116:  LSLS            R0, R0, #2
28B118:  MOVT            R1, #0xAAAA
28B11C:  UMULL.W         R0, R1, R0, R1
28B120:  MOVS            R0, #3
28B122:  ADD.W           R9, R0, R1,LSR#1
28B126:  ADD.W           R0, R9, R9,LSL#5
28B12A:  LSLS            R0, R0, #2; byte_count
28B12C:  BLX             malloc
28B130:  MOV             R10, R0
28B132:  CMP.W           R8, #0
28B136:  BEQ             loc_28B156
28B138:  ADD.W           R0, R4, R4,LSL#5
28B13C:  MOV             R1, R8; void *
28B13E:  LSLS            R2, R0, #2; size_t
28B140:  MOV             R0, R10; void *
28B142:  BLX             memcpy_0
28B146:  MOV             R0, R8; p
28B148:  BLX             free
28B14C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B154)
28B150:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B152:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B154:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B156:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B15E)
28B15A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B15C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B15E:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B162:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B166:  B               loc_28B16A
28B168:  MOV             R10, R8
28B16A:  ADD.W           R0, R4, R4,LSL#5
28B16E:  ADD             R5, SP, #0xB0+var_A8
28B170:  MOVS            R2, #0x84; size_t
28B172:  ADD.W           R0, R10, R0,LSL#2; void *
28B176:  MOV             R1, R5; void *
28B178:  BLX             memcpy_0
28B17C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B18A)
28B180:  ADDS            R6, R4, #1
28B182:  LDR.W           R1, =(aMappingFlightP - 0x28B18C); "MAPPING_FLIGHT_PRIMARY_ATTACK"
28B186:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B188:  ADD             R1, PC; "MAPPING_FLIGHT_PRIMARY_ATTACK"
28B18A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B18C:  VLD1.64         {D16-D17}, [R1]
28B190:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B192:  ADD.W           R0, R1, #0xE
28B196:  VLD1.16         {D18-D19}, [R0]
28B19A:  ADD.W           R0, R5, #0x12
28B19E:  VST1.16         {D18-D19}, [R0]
28B1A2:  ORR.W           R0, R5, #4
28B1A6:  VST1.32         {D16-D17}, [R0]
28B1AA:  MOVS            R0, #0x58 ; 'X'
28B1AC:  STR             R0, [SP,#0xB0+var_A8]
28B1AE:  ADDS            R0, R4, #2
28B1B0:  CMP             R9, R0
28B1B2:  BCS             loc_28B20A
28B1B4:  MOVW            R1, #0xAAAB
28B1B8:  LSLS            R0, R0, #2
28B1BA:  MOVT            R1, #0xAAAA
28B1BE:  UMULL.W         R0, R1, R0, R1
28B1C2:  MOVS            R0, #3
28B1C4:  ADD.W           R9, R0, R1,LSR#1
28B1C8:  ADD.W           R0, R9, R9,LSL#5
28B1CC:  LSLS            R0, R0, #2; byte_count
28B1CE:  BLX             malloc
28B1D2:  MOV             R8, R0
28B1D4:  CMP.W           R10, #0
28B1D8:  BEQ             loc_28B1F8
28B1DA:  ADD.W           R0, R6, R6,LSL#5
28B1DE:  MOV             R1, R10; void *
28B1E0:  LSLS            R2, R0, #2; size_t
28B1E2:  MOV             R0, R8; void *
28B1E4:  BLX             memcpy_0
28B1E8:  MOV             R0, R10; p
28B1EA:  BLX             free
28B1EE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B1F6)
28B1F2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B1F4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B1F6:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B1F8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B200)
28B1FC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B1FE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B200:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28B204:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B208:  B               loc_28B20C
28B20A:  MOV             R8, R10
28B20C:  ADD.W           R0, R6, R6,LSL#5
28B210:  ADD             R4, SP, #0xB0+var_A8
28B212:  MOVS            R2, #0x84; size_t
28B214:  ADD.W           R0, R8, R0,LSL#2; void *
28B218:  MOV             R1, R4; void *
28B21A:  BLX             memcpy_0
28B21E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B22C)
28B222:  ADDS            R5, R6, #1
28B224:  LDR.W           R1, =(aMappingFlightS - 0x28B22E); "MAPPING_FLIGHT_SECONDARY_ATTACK"
28B228:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B22A:  ADD             R1, PC; "MAPPING_FLIGHT_SECONDARY_ATTACK"
28B22C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B22E:  VLD1.64         {D16-D17}, [R1]!
28B232:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B234:  ORR.W           R0, R4, #4
28B238:  VLD1.64         {D18-D19}, [R1]
28B23C:  VST1.32         {D16-D17}, [R0]
28B240:  ADD.W           R0, R4, #0x14
28B244:  VST1.32         {D18-D19}, [R0]
28B248:  MOVS            R0, #0x59 ; 'Y'
28B24A:  STR             R0, [SP,#0xB0+var_A8]
28B24C:  ADDS            R0, R6, #2
28B24E:  CMP             R9, R0
28B250:  BCS             loc_28B2A8
28B252:  MOVW            R1, #0xAAAB
28B256:  LSLS            R0, R0, #2
28B258:  MOVT            R1, #0xAAAA
28B25C:  UMULL.W         R0, R1, R0, R1
28B260:  MOVS            R0, #3
28B262:  ADD.W           R9, R0, R1,LSR#1
28B266:  ADD.W           R0, R9, R9,LSL#5
28B26A:  LSLS            R0, R0, #2; byte_count
28B26C:  BLX             malloc
28B270:  MOV             R10, R0
28B272:  CMP.W           R8, #0
28B276:  BEQ             loc_28B296
28B278:  ADD.W           R0, R5, R5,LSL#5
28B27C:  MOV             R1, R8; void *
28B27E:  LSLS            R2, R0, #2; size_t
28B280:  MOV             R0, R10; void *
28B282:  BLX             memcpy_0
28B286:  MOV             R0, R8; p
28B288:  BLX             free
28B28C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B294)
28B290:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B292:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B294:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B296:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B29E)
28B29A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B29C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B29E:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B2A2:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B2A6:  B               loc_28B2AA
28B2A8:  MOV             R10, R8
28B2AA:  ADD.W           R0, R5, R5,LSL#5
28B2AE:  ADD             R6, SP, #0xB0+var_A8
28B2B0:  MOVS            R2, #0x84; size_t
28B2B2:  ADD.W           R0, R10, R0,LSL#2; void *
28B2B6:  MOV             R1, R6; void *
28B2B8:  BLX             memcpy_0
28B2BC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B2CA)
28B2C0:  ADDS            R4, R5, #1
28B2C2:  LDR.W           R1, =(aMappingFlightA_0 - 0x28B2CC); "MAPPING_FLIGHT_ALT_LEFT"
28B2C6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B2C8:  ADD             R1, PC; "MAPPING_FLIGHT_ALT_LEFT"
28B2CA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B2CC:  VLD1.64         {D16-D17}, [R1]!
28B2D0:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B2D2:  ORR.W           R0, R6, #4
28B2D6:  VST1.32         {D16-D17}, [R0]
28B2DA:  MOVS            R0, #0x5A ; 'Z'
28B2DC:  STR             R0, [SP,#0xB0+var_A8]
28B2DE:  ADDS            R0, R5, #2
28B2E0:  VLDR            D16, [R1]
28B2E4:  CMP             R9, R0
28B2E6:  VSTR            D16, [SP,#0xB0+var_94]
28B2EA:  BCS             loc_28B342
28B2EC:  MOVW            R1, #0xAAAB
28B2F0:  LSLS            R0, R0, #2
28B2F2:  MOVT            R1, #0xAAAA
28B2F6:  UMULL.W         R0, R1, R0, R1
28B2FA:  MOVS            R0, #3
28B2FC:  ADD.W           R9, R0, R1,LSR#1
28B300:  ADD.W           R0, R9, R9,LSL#5
28B304:  LSLS            R0, R0, #2; byte_count
28B306:  BLX             malloc
28B30A:  MOV             R8, R0
28B30C:  CMP.W           R10, #0
28B310:  BEQ             loc_28B330
28B312:  ADD.W           R0, R4, R4,LSL#5
28B316:  MOV             R1, R10; void *
28B318:  LSLS            R2, R0, #2; size_t
28B31A:  MOV             R0, R8; void *
28B31C:  BLX             memcpy_0
28B320:  MOV             R0, R10; p
28B322:  BLX             free
28B326:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B32E)
28B32A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B32C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B32E:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B330:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B338)
28B334:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B336:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B338:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28B33C:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B340:  B               loc_28B344
28B342:  MOV             R8, R10
28B344:  ADD.W           R0, R4, R4,LSL#5
28B348:  ADD             R5, SP, #0xB0+var_A8
28B34A:  MOVS            R2, #0x84; size_t
28B34C:  ADD.W           R0, R8, R0,LSL#2; void *
28B350:  MOV             R1, R5; void *
28B352:  BLX             memcpy_0
28B356:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B364)
28B35A:  ADDS            R6, R4, #1
28B35C:  LDR.W           R1, =(aMappingFlightA_1 - 0x28B366); "MAPPING_FLIGHT_ALT_RIGHT"
28B360:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B362:  ADD             R1, PC; "MAPPING_FLIGHT_ALT_RIGHT"
28B364:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B366:  VLD1.64         {D16-D17}, [R1]
28B36A:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B36C:  ADD.W           R0, R1, #9
28B370:  VLD1.8          {D18-D19}, [R0]
28B374:  ADD.W           R0, R5, #0xD
28B378:  VST1.8          {D18-D19}, [R0]
28B37C:  ORR.W           R0, R5, #4
28B380:  VST1.32         {D16-D17}, [R0]
28B384:  MOVS            R0, #0x5B ; '['
28B386:  STR             R0, [SP,#0xB0+var_A8]
28B388:  ADDS            R0, R4, #2
28B38A:  CMP             R9, R0
28B38C:  BCS             loc_28B3E4
28B38E:  MOVW            R1, #0xAAAB
28B392:  LSLS            R0, R0, #2
28B394:  MOVT            R1, #0xAAAA
28B398:  UMULL.W         R0, R1, R0, R1
28B39C:  MOVS            R0, #3
28B39E:  ADD.W           R9, R0, R1,LSR#1
28B3A2:  ADD.W           R0, R9, R9,LSL#5
28B3A6:  LSLS            R0, R0, #2; byte_count
28B3A8:  BLX             malloc
28B3AC:  MOV             R10, R0
28B3AE:  CMP.W           R8, #0
28B3B2:  BEQ             loc_28B3D2
28B3B4:  ADD.W           R0, R6, R6,LSL#5
28B3B8:  MOV             R1, R8; void *
28B3BA:  LSLS            R2, R0, #2; size_t
28B3BC:  MOV             R0, R10; void *
28B3BE:  BLX             memcpy_0
28B3C2:  MOV             R0, R8; p
28B3C4:  BLX             free
28B3C8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B3D0)
28B3CC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B3CE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B3D0:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B3D2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B3DA)
28B3D6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B3D8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B3DA:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B3DE:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B3E2:  B               loc_28B3E6
28B3E4:  MOV             R10, R8
28B3E6:  ADD.W           R0, R6, R6,LSL#5
28B3EA:  ADD             R4, SP, #0xB0+var_A8
28B3EC:  MOVS            R2, #0x84; size_t
28B3EE:  ADD.W           R0, R10, R0,LSL#2; void *
28B3F2:  MOV             R1, R4; void *
28B3F4:  BLX             memcpy_0
28B3F8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B406)
28B3FC:  ADDS            R5, R6, #1
28B3FE:  LDR.W           R1, =(aMappingFlightA_2 - 0x28B408); "MAPPING_FLIGHT_ALT_UP"
28B402:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B404:  ADD             R1, PC; "MAPPING_FLIGHT_ALT_UP"
28B406:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B408:  VLD1.64         {D16-D17}, [R1]
28B40C:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B40E:  ADD.W           R0, R1, #0xE
28B412:  VLD1.16         {D18}, [R0]
28B416:  ADD.W           R0, R4, #0x12
28B41A:  VST1.16         {D18}, [R0]
28B41E:  ORR.W           R0, R4, #4
28B422:  VST1.32         {D16-D17}, [R0]
28B426:  MOVS            R0, #0x5C ; '\'
28B428:  STR             R0, [SP,#0xB0+var_A8]
28B42A:  ADDS            R0, R6, #2
28B42C:  CMP             R9, R0
28B42E:  BCS             loc_28B486
28B430:  MOVW            R1, #0xAAAB
28B434:  LSLS            R0, R0, #2
28B436:  MOVT            R1, #0xAAAA
28B43A:  UMULL.W         R0, R1, R0, R1
28B43E:  MOVS            R0, #3
28B440:  ADD.W           R9, R0, R1,LSR#1
28B444:  ADD.W           R0, R9, R9,LSL#5
28B448:  LSLS            R0, R0, #2; byte_count
28B44A:  BLX             malloc
28B44E:  MOV             R8, R0
28B450:  CMP.W           R10, #0
28B454:  BEQ             loc_28B474
28B456:  ADD.W           R0, R5, R5,LSL#5
28B45A:  MOV             R1, R10; void *
28B45C:  LSLS            R2, R0, #2; size_t
28B45E:  MOV             R0, R8; void *
28B460:  BLX             memcpy_0
28B464:  MOV             R0, R10; p
28B466:  BLX             free
28B46A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B472)
28B46E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B470:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B472:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B474:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B47C)
28B478:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B47A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B47C:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28B480:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B484:  B               loc_28B488
28B486:  MOV             R8, R10
28B488:  ADD.W           R0, R5, R5,LSL#5
28B48C:  ADD             R4, SP, #0xB0+var_A8
28B48E:  MOVS            R2, #0x84; size_t
28B490:  ADD.W           R0, R8, R0,LSL#2; void *
28B494:  MOV             R1, R4; void *
28B496:  BLX             memcpy_0
28B49A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B4A8)
28B49E:  ADDS            R6, R5, #1
28B4A0:  LDR.W           R1, =(aMappingFlightA_3 - 0x28B4AA); "MAPPING_FLIGHT_ALT_DOWN"
28B4A4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B4A6:  ADD             R1, PC; "MAPPING_FLIGHT_ALT_DOWN"
28B4A8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B4AA:  VLD1.64         {D16-D17}, [R1]!
28B4AE:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B4B0:  ORR.W           R0, R4, #4
28B4B4:  VST1.32         {D16-D17}, [R0]
28B4B8:  MOVS            R0, #0x5D ; ']'
28B4BA:  STR             R0, [SP,#0xB0+var_A8]
28B4BC:  ADDS            R0, R5, #2
28B4BE:  VLDR            D16, [R1]
28B4C2:  CMP             R9, R0
28B4C4:  VSTR            D16, [SP,#0xB0+var_94]
28B4C8:  BCS             loc_28B520
28B4CA:  MOVW            R1, #0xAAAB
28B4CE:  LSLS            R0, R0, #2
28B4D0:  MOVT            R1, #0xAAAA
28B4D4:  UMULL.W         R0, R1, R0, R1
28B4D8:  MOVS            R0, #3
28B4DA:  ADD.W           R9, R0, R1,LSR#1
28B4DE:  ADD.W           R0, R9, R9,LSL#5
28B4E2:  LSLS            R0, R0, #2; byte_count
28B4E4:  BLX             malloc
28B4E8:  MOV             R10, R0
28B4EA:  CMP.W           R8, #0
28B4EE:  BEQ             loc_28B50E
28B4F0:  ADD.W           R0, R6, R6,LSL#5
28B4F4:  MOV             R1, R8; void *
28B4F6:  LSLS            R2, R0, #2; size_t
28B4F8:  MOV             R0, R10; void *
28B4FA:  BLX             memcpy_0
28B4FE:  MOV             R0, R8; p
28B500:  BLX             free
28B504:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B50C)
28B508:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B50A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B50C:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B50E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B516)
28B512:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B514:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B516:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B51A:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B51E:  B               loc_28B522
28B520:  MOV             R10, R8
28B522:  ADD.W           R0, R6, R6,LSL#5
28B526:  ADD             R5, SP, #0xB0+var_A8
28B528:  MOVS            R2, #0x84; size_t
28B52A:  ADD.W           R0, R10, R0,LSL#2; void *
28B52E:  MOV             R1, R5; void *
28B530:  BLX             memcpy_0
28B534:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B542)
28B538:  ADDS            R4, R6, #1
28B53A:  LDR.W           R1, =(aMappingBasketb - 0x28B544); "MAPPING_BASKETBALL_SHOOT"
28B53E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B540:  ADD             R1, PC; "MAPPING_BASKETBALL_SHOOT"
28B542:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B544:  VLD1.64         {D16-D17}, [R1]
28B548:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B54A:  ADD.W           R0, R1, #9
28B54E:  VLD1.8          {D18-D19}, [R0]
28B552:  ADD.W           R0, R5, #0xD
28B556:  VST1.8          {D18-D19}, [R0]
28B55A:  ORR.W           R0, R5, #4
28B55E:  VST1.32         {D16-D17}, [R0]
28B562:  MOVS            R0, #0x5E ; '^'
28B564:  STR             R0, [SP,#0xB0+var_A8]
28B566:  ADDS            R0, R6, #2
28B568:  CMP             R9, R0
28B56A:  BCS             loc_28B5C2
28B56C:  MOVW            R1, #0xAAAB
28B570:  LSLS            R0, R0, #2
28B572:  MOVT            R1, #0xAAAA
28B576:  UMULL.W         R0, R1, R0, R1
28B57A:  MOVS            R0, #3
28B57C:  ADD.W           R9, R0, R1,LSR#1
28B580:  ADD.W           R0, R9, R9,LSL#5
28B584:  LSLS            R0, R0, #2; byte_count
28B586:  BLX             malloc
28B58A:  MOV             R8, R0
28B58C:  CMP.W           R10, #0
28B590:  BEQ             loc_28B5B0
28B592:  ADD.W           R0, R4, R4,LSL#5
28B596:  MOV             R1, R10; void *
28B598:  LSLS            R2, R0, #2; size_t
28B59A:  MOV             R0, R8; void *
28B59C:  BLX             memcpy_0
28B5A0:  MOV             R0, R10; p
28B5A2:  BLX             free
28B5A6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B5AE)
28B5AA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B5AC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B5AE:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B5B0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B5B8)
28B5B4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B5B6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B5B8:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28B5BC:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B5C0:  B               loc_28B5C4
28B5C2:  MOV             R8, R10
28B5C4:  ADD.W           R0, R4, R4,LSL#5
28B5C8:  ADD             R6, SP, #0xB0+var_A8
28B5CA:  MOVS            R2, #0x84; size_t
28B5CC:  ADD.W           R0, R8, R0,LSL#2; void *
28B5D0:  MOV             R1, R6; void *
28B5D2:  BLX             memcpy_0
28B5D6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B5E4)
28B5DA:  ADDS            R5, R4, #1
28B5DC:  LDR.W           R1, =(aMappingBunnyHo - 0x28B5E6); "MAPPING_BUNNY_HOP"
28B5E0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B5E2:  ADD             R1, PC; "MAPPING_BUNNY_HOP"
28B5E4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B5E6:  VLD1.64         {D16-D17}, [R1]
28B5EA:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B5EC:  ORR.W           R0, R6, #4
28B5F0:  VST1.32         {D16-D17}, [R0]
28B5F4:  MOVS            R0, #0x50 ; 'P'
28B5F6:  STRH.W          R0, [SP,#0xB0+var_94]
28B5FA:  MOVS            R0, #0x5F ; '_'
28B5FC:  STR             R0, [SP,#0xB0+var_A8]
28B5FE:  ADDS            R0, R4, #2
28B600:  CMP             R9, R0
28B602:  BCS             loc_28B65A
28B604:  MOVW            R1, #0xAAAB
28B608:  LSLS            R0, R0, #2
28B60A:  MOVT            R1, #0xAAAA
28B60E:  UMULL.W         R0, R1, R0, R1
28B612:  MOVS            R0, #3
28B614:  ADD.W           R9, R0, R1,LSR#1
28B618:  ADD.W           R0, R9, R9,LSL#5
28B61C:  LSLS            R0, R0, #2; byte_count
28B61E:  BLX             malloc
28B622:  MOV             R10, R0
28B624:  CMP.W           R8, #0
28B628:  BEQ             loc_28B648
28B62A:  ADD.W           R0, R5, R5,LSL#5
28B62E:  MOV             R1, R8; void *
28B630:  LSLS            R2, R0, #2; size_t
28B632:  MOV             R0, R10; void *
28B634:  BLX             memcpy_0
28B638:  MOV             R0, R8; p
28B63A:  BLX             free
28B63E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B646)
28B642:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B644:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B646:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B648:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B650)
28B64C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B64E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B650:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B654:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B658:  B               loc_28B65C
28B65A:  MOV             R10, R8
28B65C:  ADD.W           R0, R5, R5,LSL#5
28B660:  ADD             R6, SP, #0xB0+var_A8
28B662:  MOVS            R2, #0x84; size_t
28B664:  ADD.W           R0, R10, R0,LSL#2; void *
28B668:  MOV             R1, R6; void *
28B66A:  BLX             memcpy_0
28B66E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B67C)
28B672:  ADDS            R4, R5, #1
28B674:  LDR.W           R1, =(aMappingMapZoom - 0x28B67E); "MAPPING_MAP_ZOOM_IN"
28B678:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B67A:  ADD             R1, PC; "MAPPING_MAP_ZOOM_IN"
28B67C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B67E:  VLD1.64         {D16-D17}, [R1]
28B682:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B684:  ORR.W           R0, R6, #4
28B688:  VST1.32         {D16-D17}, [R0]
28B68C:  MOV             R0, #0x4E495F
28B694:  STR             R0, [SP,#0xB0+var_94]
28B696:  MOVS            R0, #0x60 ; '`'
28B698:  STR             R0, [SP,#0xB0+var_A8]
28B69A:  ADDS            R0, R5, #2
28B69C:  CMP             R9, R0
28B69E:  BCS             loc_28B6F6
28B6A0:  MOVW            R1, #0xAAAB
28B6A4:  LSLS            R0, R0, #2
28B6A6:  MOVT            R1, #0xAAAA
28B6AA:  UMULL.W         R0, R1, R0, R1
28B6AE:  MOVS            R0, #3
28B6B0:  ADD.W           R9, R0, R1,LSR#1
28B6B4:  ADD.W           R0, R9, R9,LSL#5
28B6B8:  LSLS            R0, R0, #2; byte_count
28B6BA:  BLX             malloc
28B6BE:  MOV             R8, R0
28B6C0:  CMP.W           R10, #0
28B6C4:  BEQ             loc_28B6E4
28B6C6:  ADD.W           R0, R4, R4,LSL#5
28B6CA:  MOV             R1, R10; void *
28B6CC:  LSLS            R2, R0, #2; size_t
28B6CE:  MOV             R0, R8; void *
28B6D0:  BLX             memcpy_0
28B6D4:  MOV             R0, R10; p
28B6D6:  BLX             free
28B6DA:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B6E2)
28B6DE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B6E0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B6E2:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B6E4:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B6EC)
28B6E8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B6EA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B6EC:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28B6F0:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B6F4:  B               loc_28B6F8
28B6F6:  MOV             R8, R10
28B6F8:  ADD.W           R0, R4, R4,LSL#5
28B6FC:  ADD             R5, SP, #0xB0+var_A8
28B6FE:  MOVS            R2, #0x84; size_t
28B700:  ADD.W           R0, R8, R0,LSL#2; void *
28B704:  MOV             R1, R5; void *
28B706:  BLX             memcpy_0
28B70A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B718)
28B70E:  ADDS            R6, R4, #1
28B710:  LDR.W           R1, =(aMappingMapZoom_0 - 0x28B71A); "MAPPING_MAP_ZOOM_OUT"
28B714:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B716:  ADD             R1, PC; "MAPPING_MAP_ZOOM_OUT"
28B718:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B71A:  VLD1.64         {D16-D17}, [R1]
28B71E:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B720:  ADD.W           R0, R1, #0xD
28B724:  VLD1.8          {D18}, [R0]
28B728:  ADD.W           R0, R5, #0x11
28B72C:  VST1.8          {D18}, [R0]
28B730:  ORR.W           R0, R5, #4
28B734:  VST1.32         {D16-D17}, [R0]
28B738:  MOVS            R0, #0x61 ; 'a'
28B73A:  STR             R0, [SP,#0xB0+var_A8]
28B73C:  ADDS            R0, R4, #2
28B73E:  CMP             R9, R0
28B740:  BCS             loc_28B798
28B742:  MOVW            R1, #0xAAAB
28B746:  LSLS            R0, R0, #2
28B748:  MOVT            R1, #0xAAAA
28B74C:  UMULL.W         R0, R1, R0, R1
28B750:  MOVS            R0, #3
28B752:  ADD.W           R9, R0, R1,LSR#1
28B756:  ADD.W           R0, R9, R9,LSL#5
28B75A:  LSLS            R0, R0, #2; byte_count
28B75C:  BLX             malloc
28B760:  MOV             R10, R0
28B762:  CMP.W           R8, #0
28B766:  BEQ             loc_28B786
28B768:  ADD.W           R0, R6, R6,LSL#5
28B76C:  MOV             R1, R8; void *
28B76E:  LSLS            R2, R0, #2; size_t
28B770:  MOV             R0, R10; void *
28B772:  BLX             memcpy_0
28B776:  MOV             R0, R8; p
28B778:  BLX             free
28B77C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B784)
28B780:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B782:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B784:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B786:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B78E)
28B78A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B78C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B78E:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B792:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B796:  B               loc_28B79A
28B798:  MOV             R10, R8
28B79A:  ADD.W           R0, R6, R6,LSL#5
28B79E:  ADD             R4, SP, #0xB0+var_A8
28B7A0:  MOVS            R2, #0x84; size_t
28B7A2:  ADD.W           R0, R10, R0,LSL#2; void *
28B7A6:  MOV             R1, R4; void *
28B7A8:  BLX             memcpy_0
28B7AC:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B7BA)
28B7B0:  ADDS            R5, R6, #1
28B7B2:  LDR.W           R1, =(aHidMappingAltA - 0x28B7BC); "HID_MAPPING_ALT_ATTACK"
28B7B6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B7B8:  ADD             R1, PC; "HID_MAPPING_ALT_ATTACK"
28B7BA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B7BC:  VLD1.64         {D16-D17}, [R1]
28B7C0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B7C2:  ADD.W           R0, R1, #0xF
28B7C6:  VLD1.8          {D18}, [R0]
28B7CA:  ADD.W           R0, R4, #0x13
28B7CE:  VST1.8          {D18}, [R0]
28B7D2:  ORR.W           R0, R4, #4
28B7D6:  VST1.32         {D16-D17}, [R0]
28B7DA:  MOVS            R0, #0x62 ; 'b'
28B7DC:  STR             R0, [SP,#0xB0+var_A8]
28B7DE:  ADDS            R0, R6, #2
28B7E0:  CMP             R9, R0
28B7E2:  BCS             loc_28B83A
28B7E4:  MOVW            R1, #0xAAAB
28B7E8:  LSLS            R0, R0, #2
28B7EA:  MOVT            R1, #0xAAAA
28B7EE:  UMULL.W         R0, R1, R0, R1
28B7F2:  MOVS            R0, #3
28B7F4:  ADD.W           R9, R0, R1,LSR#1
28B7F8:  ADD.W           R0, R9, R9,LSL#5
28B7FC:  LSLS            R0, R0, #2; byte_count
28B7FE:  BLX             malloc
28B802:  MOV             R8, R0
28B804:  CMP.W           R10, #0
28B808:  BEQ             loc_28B828
28B80A:  ADD.W           R0, R5, R5,LSL#5
28B80E:  MOV             R1, R10; void *
28B810:  LSLS            R2, R0, #2; size_t
28B812:  MOV             R0, R8; void *
28B814:  BLX             memcpy_0
28B818:  MOV             R0, R10; p
28B81A:  BLX             free
28B81E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B826)
28B822:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B824:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B826:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28B828:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B830)
28B82C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B82E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B830:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28B834:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B838:  B               loc_28B83C
28B83A:  MOV             R8, R10
28B83C:  ADD.W           R0, R5, R5,LSL#5
28B840:  ADD             R6, SP, #0xB0+var_A8
28B842:  MOVS            R2, #0x84; size_t
28B844:  ADD.W           R0, R8, R0,LSL#2; void *
28B848:  MOV             R1, R6; void *
28B84A:  BLX             memcpy_0
28B84E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B85C)
28B852:  ADDS            R4, R5, #1
28B854:  LDR.W           R1, =(aHidMappingBloc - 0x28B85E); "HID_MAPPING_BLOCK"
28B858:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B85A:  ADD             R1, PC; "HID_MAPPING_BLOCK"
28B85C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B85E:  VLD1.64         {D16-D17}, [R1]
28B862:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B864:  ORR.W           R0, R6, #4
28B868:  VST1.32         {D16-D17}, [R0]
28B86C:  MOVS            R0, #0x4B ; 'K'
28B86E:  STRH.W          R0, [SP,#0xB0+var_94]
28B872:  MOVS            R0, #0x63 ; 'c'
28B874:  STR             R0, [SP,#0xB0+var_A8]
28B876:  ADDS            R0, R5, #2
28B878:  CMP             R9, R0
28B87A:  BCS             loc_28B8CE
28B87C:  MOVW            R1, #0xAAAB
28B880:  LSLS            R0, R0, #2
28B882:  MOVT            R1, #0xAAAA
28B886:  UMULL.W         R0, R1, R0, R1
28B88A:  MOVS            R0, #3
28B88C:  ADD.W           R6, R0, R1,LSR#1
28B890:  ADD.W           R0, R6, R6,LSL#5
28B894:  LSLS            R0, R0, #2; byte_count
28B896:  BLX             malloc
28B89A:  MOV             R5, R0
28B89C:  CMP.W           R8, #0
28B8A0:  BEQ             loc_28B8C0
28B8A2:  ADD.W           R0, R4, R4,LSL#5
28B8A6:  MOV             R1, R8; void *
28B8A8:  LSLS            R2, R0, #2; size_t
28B8AA:  MOV             R0, R5; void *
28B8AC:  BLX             memcpy_0
28B8B0:  MOV             R0, R8; p
28B8B2:  BLX             free
28B8B6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B8BE)
28B8BA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B8BC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B8BE:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B8C0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B8C8)
28B8C4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B8C6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B8C8:  STR             R5, [R0,#(dword_6E0020 - 0x6E0018)]
28B8CA:  STR             R6, [R0]; CHID::m_MappingPairs
28B8CC:  B               loc_28B8D0
28B8CE:  MOV             R5, R8
28B8D0:  ADD.W           R0, R4, R4,LSL#5
28B8D4:  MOVS            R2, #0x84; size_t
28B8D6:  ADD.W           R0, R5, R0,LSL#2; void *
28B8DA:  ADD             R5, SP, #0xB0+var_A8
28B8DC:  MOV             R1, R5; void *
28B8DE:  BLX             memcpy_0
28B8E2:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B8F0)
28B8E6:  ADDS            R6, R4, #1
28B8E8:  LDR.W           R1, =(aHidMappingTake - 0x28B8F2); "HID_MAPPING_TAKE_COVER_LEFT"
28B8EC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B8EE:  ADD             R1, PC; "HID_MAPPING_TAKE_COVER_LEFT"
28B8F0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B8F2:  VLD1.64         {D16-D17}, [R1]
28B8F6:  ADDS            R1, #0xC
28B8F8:  VLD1.32         {D18-D19}, [R1]
28B8FC:  ADD.W           R1, R5, #0x10
28B900:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B902:  VST1.32         {D18-D19}, [R1]
28B906:  ORR.W           R1, R5, #4
28B90A:  LDR.W           R9, [R0]; CHID::m_MappingPairs
28B90E:  ADDS            R0, R4, #2
28B910:  VST1.32         {D16-D17}, [R1]
28B914:  MOVS            R1, #0x64 ; 'd'
28B916:  CMP             R9, R0
28B918:  STR             R1, [SP,#0xB0+var_A8]
28B91A:  BCS             loc_28B978
28B91C:  MOVW            R1, #0xAAAB
28B920:  LSLS            R0, R0, #2
28B922:  MOVT            R1, #0xAAAA
28B926:  UMULL.W         R0, R1, R0, R1
28B92A:  MOVS            R0, #3
28B92C:  ADD.W           R9, R0, R1,LSR#1
28B930:  ADD.W           R0, R9, R9,LSL#5
28B934:  LSLS            R0, R0, #2; byte_count
28B936:  BLX             malloc
28B93A:  MOV             R10, R0
28B93C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B944)
28B940:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B942:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B944:  LDR             R4, [R0,#(dword_6E0020 - 0x6E0018)]
28B946:  CBZ             R4, loc_28B966
28B948:  ADD.W           R0, R6, R6,LSL#5
28B94C:  MOV             R1, R4; void *
28B94E:  LSLS            R2, R0, #2; size_t
28B950:  MOV             R0, R10; void *
28B952:  BLX             memcpy_0
28B956:  MOV             R0, R4; p
28B958:  BLX             free
28B95C:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B964)
28B960:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B962:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B964:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28B966:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B96E)
28B96A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B96C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B96E:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B972:  STR.W           R9, [R0]; CHID::m_MappingPairs
28B976:  B               loc_28B984
28B978:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B980)
28B97C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B97E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B980:  LDR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28B984:  ADD.W           R0, R6, R6,LSL#5
28B988:  ADD             R5, SP, #0xB0+var_A8
28B98A:  MOVS            R2, #0x84; size_t
28B98C:  ADD.W           R0, R10, R0,LSL#2; void *
28B990:  MOV             R1, R5; void *
28B992:  BLX             memcpy_0
28B996:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28B9A4)
28B99A:  ADDS            R4, R6, #1
28B99C:  LDR.W           R1, =(aHidMappingTake_0 - 0x28B9A6); "HID_MAPPING_TAKE_COVER_RIGHT"
28B9A0:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28B9A2:  ADD             R1, PC; "HID_MAPPING_TAKE_COVER_RIGHT"
28B9A4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28B9A6:  VLD1.64         {D16-D17}, [R1]
28B9AA:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28B9AC:  ADD.W           R0, R1, #0xD
28B9B0:  VLD1.8          {D18-D19}, [R0]
28B9B4:  ADD.W           R0, R5, #0x11
28B9B8:  VST1.8          {D18-D19}, [R0]
28B9BC:  ORR.W           R0, R5, #4
28B9C0:  VST1.32         {D16-D17}, [R0]
28B9C4:  MOVS            R0, #0x65 ; 'e'
28B9C6:  STR             R0, [SP,#0xB0+var_A8]
28B9C8:  ADDS            R0, R6, #2
28B9CA:  CMP             R9, R0
28B9CC:  BCS             loc_28BA24
28B9CE:  MOVW            R1, #0xAAAB
28B9D2:  LSLS            R0, R0, #2
28B9D4:  MOVT            R1, #0xAAAA
28B9D8:  UMULL.W         R0, R1, R0, R1
28B9DC:  MOVS            R0, #3
28B9DE:  ADD.W           R9, R0, R1,LSR#1
28B9E2:  ADD.W           R0, R9, R9,LSL#5
28B9E6:  LSLS            R0, R0, #2; byte_count
28B9E8:  BLX             malloc
28B9EC:  MOV             R8, R0
28B9EE:  CMP.W           R10, #0
28B9F2:  BEQ             loc_28BA12
28B9F4:  ADD.W           R0, R4, R4,LSL#5
28B9F8:  MOV             R1, R10; void *
28B9FA:  LSLS            R2, R0, #2; size_t
28B9FC:  MOV             R0, R8; void *
28B9FE:  BLX             memcpy_0
28BA02:  MOV             R0, R10; p
28BA04:  BLX             free
28BA08:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BA10)
28BA0C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BA0E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BA10:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28BA12:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BA1A)
28BA16:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BA18:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BA1A:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28BA1E:  STR.W           R9, [R0]; CHID::m_MappingPairs
28BA22:  B               loc_28BA26
28BA24:  MOV             R8, R10
28BA26:  ADD.W           R0, R4, R4,LSL#5
28BA2A:  ADD             R5, SP, #0xB0+var_A8
28BA2C:  MOVS            R2, #0x84; size_t
28BA2E:  ADD.W           R0, R8, R0,LSL#2; void *
28BA32:  MOV             R1, R5; void *
28BA34:  BLX             memcpy_0
28BA38:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BA46)
28BA3C:  ADDS            R6, R4, #1
28BA3E:  LDR.W           R1, =(aHidMappingTogg - 0x28BA48); "HID_MAPPING_TOGGLE_LANDING_GEAR"
28BA42:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BA44:  ADD             R1, PC; "HID_MAPPING_TOGGLE_LANDING_GEAR"
28BA46:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BA48:  VLD1.64         {D16-D17}, [R1]!
28BA4C:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28BA4E:  ORR.W           R0, R5, #4
28BA52:  VLD1.64         {D18-D19}, [R1]
28BA56:  VST1.32         {D16-D17}, [R0]
28BA5A:  ADD.W           R0, R5, #0x14
28BA5E:  VST1.32         {D18-D19}, [R0]
28BA62:  MOVS            R0, #0x66 ; 'f'
28BA64:  STR             R0, [SP,#0xB0+var_A8]
28BA66:  ADDS            R0, R4, #2
28BA68:  CMP             R9, R0
28BA6A:  BCS             loc_28BAC2
28BA6C:  MOVW            R1, #0xAAAB
28BA70:  LSLS            R0, R0, #2
28BA72:  MOVT            R1, #0xAAAA
28BA76:  UMULL.W         R0, R1, R0, R1
28BA7A:  MOVS            R0, #3
28BA7C:  ADD.W           R9, R0, R1,LSR#1
28BA80:  ADD.W           R0, R9, R9,LSL#5
28BA84:  LSLS            R0, R0, #2; byte_count
28BA86:  BLX             malloc
28BA8A:  MOV             R11, R0
28BA8C:  CMP.W           R8, #0
28BA90:  BEQ             loc_28BAB0
28BA92:  ADD.W           R0, R6, R6,LSL#5
28BA96:  MOV             R1, R8; void *
28BA98:  LSLS            R2, R0, #2; size_t
28BA9A:  MOV             R0, R11; void *
28BA9C:  BLX             memcpy_0
28BAA0:  MOV             R0, R8; p
28BAA2:  BLX             free
28BAA6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BAAE)
28BAAA:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BAAC:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BAAE:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28BAB0:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BAB8)
28BAB4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BAB6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BAB8:  STR.W           R11, [R0,#(dword_6E0020 - 0x6E0018)]
28BABC:  STR.W           R9, [R0]; CHID::m_MappingPairs
28BAC0:  B               loc_28BAC4
28BAC2:  MOV             R11, R8
28BAC4:  ADD.W           R0, R6, R6,LSL#5
28BAC8:  ADD             R4, SP, #0xB0+var_A8
28BACA:  MOVS            R2, #0x84; size_t
28BACC:  ADD.W           R0, R11, R0,LSL#2; void *
28BAD0:  MOV             R1, R4; void *
28BAD2:  BLX             memcpy_0
28BAD6:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BAE8)
28BADA:  ADDS            R5, R6, #1
28BADC:  LDR.W           R1, =(aHidMappingKiss - 0x28BAEA); "HID_MAPPING_KISS"
28BAE0:  MOV.W           R10, #0
28BAE4:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BAE6:  ADD             R1, PC; "HID_MAPPING_KISS"
28BAE8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BAEA:  VLD1.64         {D16-D17}, [R1]
28BAEE:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28BAF0:  ORR.W           R0, R4, #4
28BAF4:  VST1.32         {D16-D17}, [R0]
28BAF8:  MOVS            R0, #0x67 ; 'g'
28BAFA:  STRB.W          R10, [SP,#0xB0+var_94]
28BAFE:  STR             R0, [SP,#0xB0+var_A8]
28BB00:  ADDS            R0, R6, #2
28BB02:  CMP             R9, R0
28BB04:  BCS             loc_28BB5C
28BB06:  MOVW            R1, #0xAAAB
28BB0A:  LSLS            R0, R0, #2
28BB0C:  MOVT            R1, #0xAAAA
28BB10:  UMULL.W         R0, R1, R0, R1
28BB14:  MOVS            R0, #3
28BB16:  ADD.W           R9, R0, R1,LSR#1
28BB1A:  ADD.W           R0, R9, R9,LSL#5
28BB1E:  LSLS            R0, R0, #2; byte_count
28BB20:  BLX             malloc
28BB24:  MOV             R8, R0
28BB26:  CMP.W           R11, #0
28BB2A:  BEQ             loc_28BB4A
28BB2C:  ADD.W           R0, R5, R5,LSL#5
28BB30:  MOV             R1, R11; void *
28BB32:  LSLS            R2, R0, #2; size_t
28BB34:  MOV             R0, R8; void *
28BB36:  BLX             memcpy_0
28BB3A:  MOV             R0, R11; p
28BB3C:  BLX             free
28BB40:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BB48)
28BB44:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BB46:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BB48:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28BB4A:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BB52)
28BB4E:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BB50:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BB52:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28BB56:  STR.W           R9, [R0]; CHID::m_MappingPairs
28BB5A:  B               loc_28BB5E
28BB5C:  MOV             R8, R11
28BB5E:  ADD.W           R0, R5, R5,LSL#5
28BB62:  ADD             R6, SP, #0xB0+var_A8
28BB64:  MOVS            R2, #0x84; size_t
28BB66:  ADD.W           R0, R8, R0,LSL#2; void *
28BB6A:  MOV             R1, R6; void *
28BB6C:  BLX             memcpy_0
28BB70:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BB7E)
28BB74:  ADDS            R4, R5, #1
28BB76:  LDR.W           R1, =(aMappingDancing - 0x28BB80); "MAPPING_DANCING_UP"
28BB7A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BB7C:  ADD             R1, PC; "MAPPING_DANCING_UP"
28BB7E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BB80:  VLD1.64         {D16-D17}, [R1]
28BB84:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28BB86:  ORR.W           R0, R6, #4
28BB8A:  VST1.32         {D16-D17}, [R0]
28BB8E:  MOVW            R0, #0x5055
28BB92:  STRB.W          R10, [SP,#0xB0+var_94+2]
28BB96:  STRH.W          R0, [SP,#0xB0+var_94]
28BB9A:  MOVS            R0, #0x68 ; 'h'
28BB9C:  STR             R0, [SP,#0xB0+var_A8]
28BB9E:  ADDS            R0, R5, #2
28BBA0:  CMP             R9, R0
28BBA2:  BCS             loc_28BBFA
28BBA4:  MOVW            R1, #0xAAAB
28BBA8:  LSLS            R0, R0, #2
28BBAA:  MOVT            R1, #0xAAAA
28BBAE:  UMULL.W         R0, R1, R0, R1
28BBB2:  MOVS            R0, #3
28BBB4:  ADD.W           R9, R0, R1,LSR#1
28BBB8:  ADD.W           R0, R9, R9,LSL#5
28BBBC:  LSLS            R0, R0, #2; byte_count
28BBBE:  BLX             malloc
28BBC2:  MOV             R10, R0
28BBC4:  CMP.W           R8, #0
28BBC8:  BEQ             loc_28BBE8
28BBCA:  ADD.W           R0, R4, R4,LSL#5
28BBCE:  MOV             R1, R8; void *
28BBD0:  LSLS            R2, R0, #2; size_t
28BBD2:  MOV             R0, R10; void *
28BBD4:  BLX             memcpy_0
28BBD8:  MOV             R0, R8; p
28BBDA:  BLX             free
28BBDE:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BBE6)
28BBE2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BBE4:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BBE6:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28BBE8:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BBF0)
28BBEC:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BBEE:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BBF0:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28BBF4:  STR.W           R9, [R0]; CHID::m_MappingPairs
28BBF8:  B               loc_28BBFC
28BBFA:  MOV             R10, R8
28BBFC:  ADD.W           R0, R4, R4,LSL#5
28BC00:  ADD             R5, SP, #0xB0+var_A8
28BC02:  MOVS            R2, #0x84; size_t
28BC04:  ADD.W           R0, R10, R0,LSL#2; void *
28BC08:  MOV             R1, R5; void *
28BC0A:  BLX             memcpy_0
28BC0E:  LDR.W           R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BC1C)
28BC12:  ADDS            R6, R4, #1
28BC14:  LDR.W           R1, =(aMappingDancing_0 - 0x28BC1E); "MAPPING_DANCING_DOWN"
28BC18:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BC1A:  ADD             R1, PC; "MAPPING_DANCING_DOWN"
28BC1C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BC1E:  VLD1.64         {D16-D17}, [R1]
28BC22:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28BC24:  ADD.W           R0, R1, #0xD
28BC28:  VLD1.8          {D18}, [R0]
28BC2C:  ADD.W           R0, R5, #0x11
28BC30:  VST1.8          {D18}, [R0]
28BC34:  ORR.W           R0, R5, #4
28BC38:  VST1.32         {D16-D17}, [R0]
28BC3C:  MOVS            R0, #0x69 ; 'i'
28BC3E:  STR             R0, [SP,#0xB0+var_A8]
28BC40:  ADDS            R0, R4, #2
28BC42:  CMP             R9, R0
28BC44:  BCS             loc_28BC98
28BC46:  MOVW            R1, #0xAAAB
28BC4A:  LSLS            R0, R0, #2
28BC4C:  MOVT            R1, #0xAAAA
28BC50:  UMULL.W         R0, R1, R0, R1
28BC54:  MOVS            R0, #3
28BC56:  ADD.W           R9, R0, R1,LSR#1
28BC5A:  ADD.W           R0, R9, R9,LSL#5
28BC5E:  LSLS            R0, R0, #2; byte_count
28BC60:  BLX             malloc
28BC64:  MOV             R8, R0
28BC66:  CMP.W           R10, #0
28BC6A:  BEQ             loc_28BC88
28BC6C:  ADD.W           R0, R6, R6,LSL#5
28BC70:  MOV             R1, R10; void *
28BC72:  LSLS            R2, R0, #2; size_t
28BC74:  MOV             R0, R8; void *
28BC76:  BLX             memcpy_0
28BC7A:  MOV             R0, R10; p
28BC7C:  BLX             free
28BC80:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BC86)
28BC82:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BC84:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BC86:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28BC88:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BC8E)
28BC8A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BC8C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BC8E:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28BC92:  STR.W           R9, [R0]; CHID::m_MappingPairs
28BC96:  B               loc_28BC9A
28BC98:  MOV             R8, R10
28BC9A:  ADD.W           R0, R6, R6,LSL#5
28BC9E:  ADD             R5, SP, #0xB0+var_A8
28BCA0:  MOVS            R2, #0x84; size_t
28BCA2:  ADD.W           R0, R8, R0,LSL#2; void *
28BCA6:  MOV             R1, R5; void *
28BCA8:  BLX             memcpy_0
28BCAC:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BCB6)
28BCAE:  ADDS            R4, R6, #1
28BCB0:  LDR             R1, =(aMappingDancing_1 - 0x28BCB8); "MAPPING_DANCING_LEFT"
28BCB2:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BCB4:  ADD             R1, PC; "MAPPING_DANCING_LEFT"
28BCB6:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BCB8:  VLD1.64         {D16-D17}, [R1]
28BCBC:  STR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28BCBE:  ADD.W           R0, R1, #0xD
28BCC2:  VLD1.8          {D18}, [R0]
28BCC6:  ADD.W           R0, R5, #0x11
28BCCA:  VST1.8          {D18}, [R0]
28BCCE:  ORR.W           R0, R5, #4
28BCD2:  VST1.32         {D16-D17}, [R0]
28BCD6:  MOVS            R0, #0x6A ; 'j'
28BCD8:  STR             R0, [SP,#0xB0+var_A8]
28BCDA:  ADDS            R0, R6, #2
28BCDC:  CMP             R9, R0
28BCDE:  BCS             loc_28BD32
28BCE0:  MOVW            R1, #0xAAAB
28BCE4:  LSLS            R0, R0, #2
28BCE6:  MOVT            R1, #0xAAAA
28BCEA:  UMULL.W         R0, R1, R0, R1
28BCEE:  MOVS            R0, #3
28BCF0:  ADD.W           R9, R0, R1,LSR#1
28BCF4:  ADD.W           R0, R9, R9,LSL#5
28BCF8:  LSLS            R0, R0, #2; byte_count
28BCFA:  BLX             malloc
28BCFE:  MOV             R10, R0
28BD00:  CMP.W           R8, #0
28BD04:  BEQ             loc_28BD22
28BD06:  ADD.W           R0, R4, R4,LSL#5
28BD0A:  MOV             R1, R8; void *
28BD0C:  LSLS            R2, R0, #2; size_t
28BD0E:  MOV             R0, R10; void *
28BD10:  BLX             memcpy_0
28BD14:  MOV             R0, R8; p
28BD16:  BLX             free
28BD1A:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BD20)
28BD1C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BD1E:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BD20:  LDR             R4, [R0,#(dword_6E001C - 0x6E0018)]
28BD22:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BD28)
28BD24:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BD26:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BD28:  STR.W           R10, [R0,#(dword_6E0020 - 0x6E0018)]
28BD2C:  STR.W           R9, [R0]; CHID::m_MappingPairs
28BD30:  B               loc_28BD34
28BD32:  MOV             R10, R8
28BD34:  ADD.W           R0, R4, R4,LSL#5
28BD38:  ADD             R5, SP, #0xB0+var_A8
28BD3A:  MOVS            R2, #0x84; size_t
28BD3C:  ADD.W           R0, R10, R0,LSL#2; void *
28BD40:  MOV             R1, R5; void *
28BD42:  BLX             memcpy_0
28BD46:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BD50)
28BD48:  ADDS            R6, R4, #1
28BD4A:  LDR             R1, =(aMappingDancing_2 - 0x28BD52); "MAPPING_DANCING_RIGHT"
28BD4C:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BD4E:  ADD             R1, PC; "MAPPING_DANCING_RIGHT"
28BD50:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BD52:  VLD1.64         {D16-D17}, [R1]
28BD56:  STR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28BD58:  ADD.W           R0, R1, #0xE
28BD5C:  VLD1.16         {D18}, [R0]
28BD60:  ADD.W           R0, R5, #0x12
28BD64:  VST1.16         {D18}, [R0]
28BD68:  ORR.W           R0, R5, #4
28BD6C:  VST1.32         {D16-D17}, [R0]
28BD70:  MOVS            R0, #0x6B ; 'k'
28BD72:  STR             R0, [SP,#0xB0+var_A8]
28BD74:  ADDS            R0, R4, #2
28BD76:  CMP             R9, R0
28BD78:  BCS             loc_28BDCC
28BD7A:  MOVW            R1, #0xAAAB
28BD7E:  LSLS            R0, R0, #2
28BD80:  MOVT            R1, #0xAAAA
28BD84:  UMULL.W         R0, R1, R0, R1
28BD88:  MOVS            R0, #3
28BD8A:  ADD.W           R9, R0, R1,LSR#1
28BD8E:  ADD.W           R0, R9, R9,LSL#5
28BD92:  LSLS            R0, R0, #2; byte_count
28BD94:  BLX             malloc
28BD98:  MOV             R8, R0
28BD9A:  CMP.W           R10, #0
28BD9E:  BEQ             loc_28BDBC
28BDA0:  ADD.W           R0, R6, R6,LSL#5
28BDA4:  MOV             R1, R10; void *
28BDA6:  LSLS            R2, R0, #2; size_t
28BDA8:  MOV             R0, R8; void *
28BDAA:  BLX             memcpy_0
28BDAE:  MOV             R0, R10; p
28BDB0:  BLX             free
28BDB4:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BDBA)
28BDB6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BDB8:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BDBA:  LDR             R6, [R0,#(dword_6E001C - 0x6E0018)]
28BDBC:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BDC2)
28BDBE:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BDC0:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BDC2:  STR.W           R8, [R0,#(dword_6E0020 - 0x6E0018)]
28BDC6:  STR.W           R9, [R0]; CHID::m_MappingPairs
28BDCA:  B               loc_28BDCE
28BDCC:  MOV             R8, R10
28BDCE:  ADD.W           R0, R6, R6,LSL#5
28BDD2:  ADD             R4, SP, #0xB0+var_A8
28BDD4:  MOVS            R2, #0x84; size_t
28BDD6:  ADD.W           R0, R8, R0,LSL#2; void *
28BDDA:  MOV             R1, R4; void *
28BDDC:  BLX             memcpy_0
28BDE0:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BDEA)
28BDE2:  ADDS            R5, R6, #1
28BDE4:  LDR             R1, =(aMappingReplay - 0x28BDEC); "MAPPING_REPLAY"
28BDE6:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BDE8:  ADD             R1, PC; "MAPPING_REPLAY"
28BDEA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BDEC:  VLDR            D17, [R1]
28BDF0:  STR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28BDF2:  ADDS            R0, R1, #7
28BDF4:  VLD1.8          {D16}, [R0]
28BDF8:  ADD.W           R0, R4, #0xB
28BDFC:  VST1.8          {D16}, [R0]
28BE00:  MOVS            R0, #0x6C ; 'l'
28BE02:  STR             R0, [SP,#0xB0+var_A8]
28BE04:  ADDS            R0, R6, #2
28BE06:  CMP             R9, R0
28BE08:  VSTR            D17, [SP,#0xB0+var_A4]
28BE0C:  BCS             loc_28BE5C
28BE0E:  MOVW            R1, #0xAAAB
28BE12:  LSLS            R0, R0, #2
28BE14:  MOVT            R1, #0xAAAA
28BE18:  UMULL.W         R0, R1, R0, R1
28BE1C:  MOVS            R0, #3
28BE1E:  ADD.W           R6, R0, R1,LSR#1
28BE22:  ADD.W           R0, R6, R6,LSL#5
28BE26:  LSLS            R0, R0, #2; byte_count
28BE28:  BLX             malloc
28BE2C:  MOV             R4, R0
28BE2E:  CMP.W           R8, #0
28BE32:  BEQ             loc_28BE50
28BE34:  ADD.W           R0, R5, R5,LSL#5
28BE38:  MOV             R1, R8; void *
28BE3A:  LSLS            R2, R0, #2; size_t
28BE3C:  MOV             R0, R4; void *
28BE3E:  BLX             memcpy_0
28BE42:  MOV             R0, R8; p
28BE44:  BLX             free
28BE48:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BE4E)
28BE4A:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BE4C:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BE4E:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28BE50:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BE56)
28BE52:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BE54:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BE56:  STR             R4, [R0,#(dword_6E0020 - 0x6E0018)]
28BE58:  STR             R6, [R0]; CHID::m_MappingPairs
28BE5A:  B               loc_28BE5E
28BE5C:  MOV             R4, R8
28BE5E:  ADD.W           R0, R5, R5,LSL#5
28BE62:  ADD             R1, SP, #0xB0+var_A8; void *
28BE64:  MOVS            R2, #0x84; size_t
28BE66:  ADD.W           R0, R4, R0,LSL#2; void *
28BE6A:  BLX             memcpy_0
28BE6E:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28BE76)
28BE70:  ADDS            R1, R5, #1
28BE72:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28BE74:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28BE76:  STR             R1, [R0,#(dword_6E001C - 0x6E0018)]
28BE78:  LDR             R0, =(__stack_chk_guard_ptr - 0x28BE80)
28BE7A:  LDR             R1, [SP,#0xB0+var_20]
28BE7C:  ADD             R0, PC; __stack_chk_guard_ptr
28BE7E:  LDR             R0, [R0]; __stack_chk_guard
28BE80:  LDR             R0, [R0]
28BE82:  SUBS            R0, R0, R1
28BE84:  ITTTT EQ
28BE86:  LDREQ           R0, [SP,#0xB0+var_AC]
28BE88:  ADDEQ           SP, SP, #0x94
28BE8A:  POPEQ.W         {R8-R11}
28BE8E:  POPEQ           {R4-R7,PC}
28BE90:  BLX             __stack_chk_fail
