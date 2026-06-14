; =========================================================
; Game Engine Function: sub_77524
; Address            : 0x77524 - 0x779D6
; =========================================================

77524:  PUSH            {R4-R7,LR}
77526:  ADD             R7, SP, #0xC
77528:  PUSH.W          {R8-R11}
7752C:  SUB             SP, SP, #0x54
7752E:  MOV             R10, R0
77530:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x7753C)
77534:  MOV             R8, R3
77536:  MOV             R11, R2
77538:  ADD             R0, PC; __stack_chk_guard_ptr
7753A:  MOV             R9, R1
7753C:  LDR             R0, [R0]; __stack_chk_guard
7753E:  LDR             R0, [R0]
77540:  STR             R0, [SP,#0x70+var_20]
77542:  MOV             R0, R1; s
77544:  BLX             strlen
77548:  CMN.W           R0, #0x10
7754C:  BCS.W           loc_779A6
77550:  MOV             R4, R0
77552:  CMP             R0, #0xB
77554:  BCS             loc_77566
77556:  LSLS            R0, R4, #1
77558:  STRB.W          R0, [SP,#0x70+var_4C]
7755C:  ADD             R0, SP, #0x70+var_4C
7755E:  ADD.W           R5, R0, #1
77562:  CBNZ            R4, loc_7757E
77564:  B               loc_77588
77566:  ADD.W           R0, R4, #0x10
7756A:  BIC.W           R6, R0, #0xF
7756E:  MOV             R0, R6; unsigned int
77570:  BLX             j__Znwj; operator new(uint)
77574:  MOV             R5, R0
77576:  STRD.W          R4, R0, [SP,#0x70+var_48]
7757A:  ADDS            R0, R6, #1
7757C:  STR             R0, [SP,#0x70+var_4C]
7757E:  MOV             R0, R5; dest
77580:  MOV             R1, R9; src
77582:  MOV             R2, R4; n
77584:  BLX             j_memcpy
77588:  MOVS            R0, #0
7758A:  STRB            R0, [R5,R4]
7758C:  MOV             R0, R11; s
7758E:  BLX             strlen
77592:  CMN.W           R0, #0x10
77596:  BCS.W           loc_779AC
7759A:  MOV             R4, R0
7759C:  CMP             R0, #0xB
7759E:  BCS             loc_775B0
775A0:  LSLS            R0, R4, #1
775A2:  STRB.W          R0, [SP,#0x70+var_58]
775A6:  ADD             R0, SP, #0x70+var_58
775A8:  ADD.W           R5, R0, #1
775AC:  CBNZ            R4, loc_775CA
775AE:  B               loc_775D4
775B0:  ADD.W           R0, R4, #0x10
775B4:  BIC.W           R6, R0, #0xF
775B8:  MOV             R0, R6; unsigned int
775BA:  BLX             j__Znwj; operator new(uint)
775BE:  MOV             R5, R0
775C0:  ORR.W           R0, R6, #1
775C4:  STR             R4, [SP,#0x70+var_54]
775C6:  STR             R0, [SP,#0x70+var_58]
775C8:  STR             R5, [SP,#0x70+var_50]
775CA:  MOV             R0, R5; dest
775CC:  MOV             R1, R11; src
775CE:  MOV             R2, R4; n
775D0:  BLX             j_memcpy
775D4:  MOVS            R0, #0
775D6:  STRB            R0, [R5,R4]
775D8:  ADD             R4, SP, #0x70+var_40
775DA:  ADD             R1, SP, #0x70+var_4C
775DC:  ADD             R2, SP, #0x70+var_58
775DE:  MOV             R0, R4
775E0:  BL              sub_77A44
775E4:  LDRB.W          R0, [SP,#0x70+var_58]
775E8:  LSLS            R0, R0, #0x1F
775EA:  ITT NE
775EC:  LDRNE           R0, [SP,#0x70+var_50]; void *
775EE:  BLXNE           j__ZdlPv; operator delete(void *)
775F2:  LDRB.W          R0, [SP,#0x70+var_4C]
775F6:  STR.W           R11, [SP,#0x70+var_68]
775FA:  LSLS            R0, R0, #0x1F
775FC:  ITT NE
775FE:  LDRNE           R0, [SP,#0x70+var_44]; void *
77600:  BLXNE           j__ZdlPv; operator delete(void *)
77604:  LDR             R3, =(unk_51F90 - 0x77610)
77606:  ADD.W           R5, R10, #4
7760A:  STR             R4, [SP,#0x70+var_64]
7760C:  ADD             R3, PC; unk_51F90
7760E:  ADD.W           R11, SP, #0x70+var_34
77612:  ADD             R0, SP, #0x70+var_30
77614:  MOV             R1, R5
77616:  MOV             R2, R4
77618:  ADD             R6, SP, #0x70+var_64
7761A:  STRD.W          R6, R11, [SP,#0x70+var_70]
7761E:  BL              sub_77C28
77622:  LDR             R0, [SP,#0x70+var_30]
77624:  LDRB            R1, [R0,#0x1C]
77626:  LDR             R0, [R0,#0x20]
77628:  LSLS            R2, R1, #0x1F
7762A:  IT EQ
7762C:  LSREQ           R0, R1, #1
7762E:  CBZ             R0, loc_77650
77630:  LDR             R3, =(unk_51F90 - 0x77638)
77632:  STR             R4, [SP,#0x70+var_64]
77634:  ADD             R3, PC; unk_51F90
77636:  ADD             R0, SP, #0x70+var_30
77638:  MOV             R1, R5
7763A:  MOV             R2, R4
7763C:  STRD.W          R6, R11, [SP,#0x70+var_70]
77640:  BL              sub_77C28
77644:  LDR             R0, [SP,#0x70+var_30]
77646:  LDR             R1, =(asc_4F02C - 0x7764C); "\n" ...
77648:  ADD             R1, PC; "\n"
7764A:  ADDS            R0, #0x1C; int
7764C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
77650:  LDR             R3, =(unk_51F90 - 0x77658)
77652:  STR             R4, [SP,#0x70+var_64]
77654:  ADD             R3, PC; unk_51F90
77656:  STRD.W          R6, R11, [SP,#0x70+var_70]
7765A:  ADD             R6, SP, #0x70+var_30
7765C:  MOV             R1, R5
7765E:  MOV             R2, R4
77660:  MOV             R0, R6
77662:  BL              sub_77C28
77666:  LDR             R0, [SP,#0x70+var_30]
77668:  ADDS            R0, #0x1C; int
7766A:  MOV             R1, R8; s
7766C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
77670:  MOV             R0, R9; s
77672:  BLX             strlen
77676:  CMN.W           R0, #0x10
7767A:  BCS.W           loc_779B2
7767E:  MOV             R4, R0
77680:  CMP             R0, #0xB
77682:  BCS             loc_77690
77684:  ADDS            R5, R6, #1
77686:  LSLS            R0, R4, #1
77688:  STRB.W          R0, [SP,#0x70+var_30]
7768C:  CBNZ            R4, loc_776AA
7768E:  B               loc_776B4
77690:  ADD.W           R0, R4, #0x10
77694:  BIC.W           R6, R0, #0xF
77698:  MOV             R0, R6; unsigned int
7769A:  BLX             j__Znwj; operator new(uint)
7769E:  MOV             R5, R0
776A0:  ORR.W           R0, R6, #1
776A4:  STR             R4, [SP,#0x70+var_30+4]
776A6:  STR             R0, [SP,#0x70+var_30]
776A8:  STR             R5, [SP,#0x70+var_28]
776AA:  MOV             R0, R5; dest
776AC:  MOV             R1, R9; src
776AE:  MOV             R2, R4; n
776B0:  BLX             j_memcpy
776B4:  MOVS            R0, #0
776B6:  ADD.W           R11, SP, #0x70+var_64
776BA:  STRB            R0, [R5,R4]
776BC:  ADD.W           R5, R10, #0x10
776C0:  ADD.W           R8, SP, #0x70+var_30
776C4:  MOV             R0, R5
776C6:  MOV             R1, R11
776C8:  MOV             R2, R8
776CA:  BL              sub_77ED2
776CE:  MOV             R4, R0
776D0:  LDR             R0, [R0]
776D2:  CBNZ            R0, loc_77718
776D4:  MOVS            R0, #0x1C; unsigned int
776D6:  BLX             j__Znwj; operator new(uint)
776DA:  MOV             R1, R0
776DC:  VLDR            D16, [SP,#0x70+var_30]
776E0:  LDR             R2, [SP,#0x70+var_28]
776E2:  LDR             R0, [SP,#0x70+var_64]
776E4:  STR             R2, [R1,#0x18]
776E6:  MOVS            R2, #0
776E8:  STRD.W          R2, R2, [R1]
776EC:  STR             R0, [R1,#8]
776EE:  VSTR            D16, [R1,#0x10]
776F2:  STRD.W          R2, R2, [SP,#0x70+var_30]
776F6:  STR             R2, [SP,#0x70+var_28]
776F8:  STR             R1, [R4]
776FA:  LDR             R0, [R5]
776FC:  LDR             R0, [R0]
776FE:  CMP             R0, #0
77700:  ITT NE
77702:  STRNE           R0, [R5]
77704:  LDRNE           R1, [R4]
77706:  LDR.W           R0, [R10,#0x14]
7770A:  BL              sub_77D8A
7770E:  LDR.W           R0, [R10,#0x18]
77712:  ADDS            R0, #1
77714:  STR.W           R0, [R10,#0x18]
77718:  LDRB.W          R0, [SP,#0x70+var_30]
7771C:  LSLS            R0, R0, #0x1F
7771E:  ITT NE
77720:  LDRNE           R0, [SP,#0x70+var_28]; void *
77722:  BLXNE           j__ZdlPv; operator delete(void *)
77726:  MOV             R0, R9; s
77728:  BLX             strlen
7772C:  CMN.W           R0, #0x10
77730:  BCS.W           loc_779B8
77734:  MOV             R5, R0
77736:  CMP             R0, #0xB
77738:  BCS             loc_77748
7773A:  ADD.W           R4, R11, #1
7773E:  LSLS            R0, R5, #1
77740:  STRB.W          R0, [SP,#0x70+var_64]
77744:  CBNZ            R5, loc_77762
77746:  B               loc_7776C
77748:  ADD.W           R0, R5, #0x10
7774C:  BIC.W           R6, R0, #0xF
77750:  MOV             R0, R6; unsigned int
77752:  BLX             j__Znwj; operator new(uint)
77756:  MOV             R4, R0
77758:  ORR.W           R0, R6, #1
7775C:  STR             R5, [SP,#0x70+var_60]
7775E:  STR             R0, [SP,#0x70+var_64]
77760:  STR             R4, [SP,#0x70+var_5C]
77762:  MOV             R0, R4; dest
77764:  MOV             R1, R9; src
77766:  MOV             R2, R5; n
77768:  BLX             j_memcpy
7776C:  MOVS            R0, #0
7776E:  STRB            R0, [R4,R5]
77770:  LDRB.W          R1, [SP,#0x70+var_64]
77774:  LDR             R0, [SP,#0x70+var_60]
77776:  LDR             R5, [SP,#0x70+var_5C]
77778:  ANDS.W          R2, R1, #1
7777C:  ITT EQ
7777E:  LSREQ           R0, R1, #1
77780:  ADDEQ.W         R5, R11, #1
77784:  LDR.W           R11, [SP,#0x70+var_68]
77788:  CMP             R0, #0
7778A:  BEQ             loc_7781A
7778C:  CMP             R0, #0x10
7778E:  BCS             loc_77794
77790:  MOV             R2, R5
77792:  B               loc_77802
77794:  BIC.W           R6, R0, #0xF
77798:  VMVN.I32        Q8, #0x40 ; '@'
7779C:  VMOV.I32        Q9, #0x1A
777A0:  ADDS            R2, R5, R6
777A2:  VMOV.I8         Q10, #0x20 ; ' '
777A6:  MOV             R3, R6
777A8:  MOV             R1, R5
777AA:  VLD1.8          {D22-D23}, [R1]
777AE:  SUBS            R3, #0x10
777B0:  VMOVL.U8        Q12, D23
777B4:  VMOVL.U8        Q13, D22
777B8:  VADDW.U16       Q14, Q8, D25
777BC:  VADDW.U16       Q15, Q8, D27
777C0:  VADDW.U16       Q12, Q8, D24
777C4:  VADDW.U16       Q13, Q8, D26
777C8:  VCGT.U32        Q14, Q9, Q14
777CC:  VCGT.U32        Q12, Q9, Q12
777D0:  VCGT.U32        Q15, Q9, Q15
777D4:  VCGT.U32        Q13, Q9, Q13
777D8:  VMOVN.I32       D29, Q14
777DC:  VMOVN.I32       D28, Q12
777E0:  VMOVN.I32       D25, Q15
777E4:  VMOVN.I32       D24, Q13
777E8:  VMOVN.I16       D29, Q14
777EC:  VORR            Q13, Q11, Q10
777F0:  VMOVN.I16       D28, Q12
777F4:  VBIT            Q11, Q13, Q14
777F8:  VST1.8          {D22-D23}, [R1]!
777FC:  BNE             loc_777AA
777FE:  CMP             R0, R6
77800:  BEQ             loc_7781A
77802:  ADD             R0, R5
77804:  LDRB            R1, [R2]
77806:  SUB.W           R3, R1, #0x41 ; 'A'
7780A:  CMP             R3, #0x1A
7780C:  IT CC
7780E:  ORRCC.W         R1, R1, #0x20 ; ' '
77812:  STRB.W          R1, [R2],#1
77816:  CMP             R2, R0
77818:  BNE             loc_77804
7781A:  ADD.W           R6, R10, #0x1C
7781E:  ADD             R1, SP, #0x70+var_64
77820:  MOV             R0, R6
77822:  BL              sub_77F90
77826:  ADD.W           R1, R10, #0x20 ; ' '
7782A:  CMP             R0, R1
7782C:  BEQ             loc_77834
7782E:  LDR.W           R9, [R0,#0x1C]
77832:  B               loc_778BE
77834:  MOVS            R0, #0xC; unsigned int
77836:  BLX             j__Znwj; operator new(uint)
7783A:  MOV             R9, R0
7783C:  MOVS            R0, #0
7783E:  MOV             R1, R9
77840:  STR.W           R0, [R9,#8]
77844:  STR.W           R0, [R1,#4]!
77848:  STR.W           R1, [R9]
7784C:  ADD             R0, SP, #0x70+var_30
7784E:  ADD             R1, SP, #0x70+var_64
77850:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
77854:  STR.W           R9, [SP,#0x70+var_24]
77858:  ADD             R1, SP, #0x70+var_34
7785A:  ADD             R2, SP, #0x70+var_30
7785C:  MOV             R0, R6
7785E:  BL              sub_78052
77862:  MOV             R5, R0
77864:  LDR             R0, [R0]
77866:  CBNZ            R0, loc_778B0
77868:  MOVS            R0, #0x20 ; ' '; unsigned int
7786A:  BLX             j__Znwj; operator new(uint)
7786E:  MOV             R1, R0
77870:  LDR             R0, [SP,#0x70+var_24]
77872:  VLDR            D16, [SP,#0x70+var_30]
77876:  LDR             R3, [SP,#0x70+var_28]
77878:  LDR             R2, [SP,#0x70+var_34]
7787A:  STRD.W          R3, R0, [R1,#0x18]
7787E:  MOVS            R0, #0
77880:  STRD.W          R0, R0, [R1]
77884:  STR             R2, [R1,#8]
77886:  VSTR            D16, [R1,#0x10]
7788A:  STRD.W          R0, R0, [SP,#0x70+var_30]
7788E:  STR             R0, [SP,#0x70+var_28]
77890:  STR             R1, [R5]
77892:  LDR             R0, [R6]
77894:  LDR             R0, [R0]
77896:  CMP             R0, #0
77898:  ITT NE
7789A:  STRNE           R0, [R6]
7789C:  LDRNE           R1, [R5]
7789E:  LDR.W           R0, [R10,#0x20]
778A2:  BL              sub_77D8A
778A6:  LDR.W           R0, [R10,#0x24]
778AA:  ADDS            R0, #1
778AC:  STR.W           R0, [R10,#0x24]
778B0:  LDRB.W          R0, [SP,#0x70+var_30]
778B4:  LSLS            R0, R0, #0x1F
778B6:  BEQ             loc_778BE
778B8:  LDR             R0, [SP,#0x70+var_28]; void *
778BA:  BLX             j__ZdlPv; operator delete(void *)
778BE:  MOV             R0, R11; s
778C0:  BLX             strlen
778C4:  CMN.W           R0, #0x10
778C8:  BCS.W           loc_779D0
778CC:  MOV             R5, R0
778CE:  CMP             R0, #0xB
778D0:  BCS             loc_778E0
778D2:  ADD.W           R6, R8, #1
778D6:  LSLS            R0, R5, #1
778D8:  STRB.W          R0, [SP,#0x70+var_30]
778DC:  CBNZ            R5, loc_778FA
778DE:  B               loc_77904
778E0:  ADD.W           R0, R5, #0x10
778E4:  BIC.W           R4, R0, #0xF
778E8:  MOV             R0, R4; unsigned int
778EA:  BLX             j__Znwj; operator new(uint)
778EE:  MOV             R6, R0
778F0:  ORR.W           R0, R4, #1
778F4:  STR             R5, [SP,#0x70+var_30+4]
778F6:  STR             R0, [SP,#0x70+var_30]
778F8:  STR             R6, [SP,#0x70+var_28]
778FA:  MOV             R0, R6; dest
778FC:  MOV             R1, R11; src
778FE:  MOV             R2, R5; n
77900:  BLX             j_memcpy
77904:  MOVS            R0, #0
77906:  ADD             R1, SP, #0x70+var_34
77908:  ADD             R2, SP, #0x70+var_30
7790A:  STRB            R0, [R6,R5]
7790C:  MOV             R0, R9
7790E:  BL              sub_77ED2
77912:  MOV             R5, R0
77914:  LDR             R0, [R0]
77916:  CBNZ            R0, loc_77960
77918:  MOVS            R0, #0x1C; unsigned int
7791A:  BLX             j__Znwj; operator new(uint)
7791E:  MOV             R1, R0
77920:  VLDR            D16, [SP,#0x70+var_30]
77924:  LDR             R2, [SP,#0x70+var_28]
77926:  LDR             R0, [SP,#0x70+var_34]
77928:  STR             R2, [R1,#0x18]
7792A:  MOVS            R2, #0
7792C:  STRD.W          R2, R2, [R1]
77930:  STR             R0, [R1,#8]
77932:  VSTR            D16, [R1,#0x10]
77936:  STRD.W          R2, R2, [SP,#0x70+var_30]
7793A:  STR             R2, [SP,#0x70+var_28]
7793C:  STR             R1, [R5]
7793E:  LDR.W           R0, [R9]
77942:  LDR             R0, [R0]
77944:  CMP             R0, #0
77946:  ITT NE
77948:  STRNE.W         R0, [R9]
7794C:  LDRNE           R1, [R5]
7794E:  LDR.W           R0, [R9,#4]
77952:  BL              sub_77D8A
77956:  LDR.W           R0, [R9,#8]
7795A:  ADDS            R0, #1
7795C:  STR.W           R0, [R9,#8]
77960:  LDRB.W          R0, [SP,#0x70+var_30]
77964:  LSLS            R0, R0, #0x1F
77966:  ITT NE
77968:  LDRNE           R0, [SP,#0x70+var_28]; void *
7796A:  BLXNE           j__ZdlPv; operator delete(void *)
7796E:  LDRB.W          R0, [SP,#0x70+var_64]
77972:  LSLS            R0, R0, #0x1F
77974:  ITT NE
77976:  LDRNE           R0, [SP,#0x70+var_5C]; void *
77978:  BLXNE           j__ZdlPv; operator delete(void *)
7797C:  LDRB.W          R0, [SP,#0x70+var_40]
77980:  LSLS            R0, R0, #0x1F
77982:  ITT NE
77984:  LDRNE           R0, [SP,#0x70+var_38]; void *
77986:  BLXNE           j__ZdlPv; operator delete(void *)
7798A:  LDR             R0, [SP,#0x70+var_20]
7798C:  LDR             R1, =(__stack_chk_guard_ptr - 0x77992)
7798E:  ADD             R1, PC; __stack_chk_guard_ptr
77990:  LDR             R1, [R1]; __stack_chk_guard
77992:  LDR             R1, [R1]
77994:  CMP             R1, R0
77996:  ITTTT EQ
77998:  MOVEQ           R0, #1
7799A:  ADDEQ           SP, SP, #0x54 ; 'T'
7799C:  POPEQ.W         {R8-R11}
779A0:  POPEQ           {R4-R7,PC}
779A2:  BLX             __stack_chk_fail
779A6:  ADD             R0, SP, #0x70+var_4C
779A8:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
779AC:  ADD             R0, SP, #0x70+var_58
779AE:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
779B2:  ADD             R0, SP, #0x70+var_30
779B4:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
779B8:  ADD             R0, SP, #0x70+var_64
779BA:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
779BE:  ALIGN 0x10
779C0:  DCD unk_51F90 - 0x77610
779C4:  DCD unk_51F90 - 0x77638
779C8:  DCD asc_4F02C - 0x7764C
779CC:  DCD unk_51F90 - 0x77658
779D0:  ADD             R0, SP, #0x70+var_30
779D2:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
