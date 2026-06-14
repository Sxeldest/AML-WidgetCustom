; =========================================================
; Game Engine Function: _ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb
; Address            : 0x428580 - 0x428A1A
; =========================================================

428580:  PUSH            {R4-R7,LR}
428582:  ADD             R7, SP, #0xC
428584:  PUSH.W          {R8-R11}
428588:  SUB             SP, SP, #4
42858A:  VPUSH           {D8-D12}
42858E:  SUB             SP, SP, #0x40
428590:  MOV             R6, R0
428592:  VMOV            S16, R1
428596:  VLDR            S18, [R6]
42859A:  MOV             R11, R3
42859C:  VLDR            S22, =50.0
4285A0:  MOV             R5, R2
4285A2:  VSUB.F32        S0, S18, S16
4285A6:  VLDR            S24, =60.0
4285AA:  VLDR            S20, [R6,#4]
4285AE:  VDIV.F32        S0, S0, S22
4285B2:  VADD.F32        S0, S0, S24
4285B6:  VMOV            R0, S0; x
4285BA:  BLX             floorf
4285BE:  VSUB.F32        S0, S20, S16
4285C2:  MOV             R8, R0
4285C4:  VDIV.F32        S0, S0, S22
4285C8:  VADD.F32        S0, S0, S24
4285CC:  VMOV            R0, S0; x
4285D0:  BLX             floorf
4285D4:  VADD.F32        S0, S18, S16
4285D8:  MOV             R9, R0
4285DA:  VDIV.F32        S0, S0, S22
4285DE:  VADD.F32        S0, S0, S24
4285E2:  VMOV            R0, S0; x
4285E6:  BLX             floorf
4285EA:  VADD.F32        S0, S20, S16
4285EE:  MOV             R10, R0
4285F0:  VDIV.F32        S0, S0, S22
4285F4:  VADD.F32        S0, S0, S24
4285F8:  VMOV            R0, S0; x
4285FC:  BLX             floorf
428600:  VMOV            S4, R0
428604:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428614)
428608:  VMOV            S2, R9
42860C:  VCVT.S32.F32    S4, S4
428610:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428612:  VMOV            S6, R10
428616:  LDR             R0, [R1]; CWorld::ms_nCurrentScanCode ...
428618:  VMOV            S0, R8
42861C:  VCVT.S32.F32    S18, S6
428620:  VCVT.S32.F32    S2, S2
428624:  VCVT.S32.F32    S20, S0
428628:  LDRH            R0, [R0]; this
42862A:  VMOV            R1, S4
42862E:  STR             R1, [SP,#0x88+var_88]
428630:  VMOV            R1, S2
428634:  STR             R1, [SP,#0x88+var_80]
428636:  MOVW            R1, #0xFFFF
42863A:  CMP             R0, R1
42863C:  BEQ             loc_428642
42863E:  ADDS            R0, #1
428640:  B               loc_428648
428642:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
428646:  MOVS            R0, #1
428648:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428650)
42864C:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42864E:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
428650:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
428652:  MOVS            R0, #0
428654:  STRH.W          R0, [R11]
428658:  LDR             R0, [SP,#0x88+var_88]
42865A:  LDR             R1, [SP,#0x88+var_80]
42865C:  CMP             R1, R0
42865E:  BGT.W           loc_428A0C
428662:  VMOV            R0, S20
428666:  LDR.W           R8, [R7,#arg_4]
42866A:  VMUL.F32        S0, S16, S16
42866E:  STR             R0, [SP,#0x88+var_84]
428670:  VMOV            R0, S18
428674:  STR             R0, [SP,#0x88+var_60]
428676:  LDR.W           R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42867E)
42867A:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42867C:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42867E:  STR             R0, [SP,#0x88+var_6C]
428680:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x428688)
428684:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428686:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
428688:  STR             R0, [SP,#0x88+var_4C]
42868A:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x428692)
42868E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
428690:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
428692:  STR             R0, [SP,#0x88+var_70]
428694:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42869A)
428696:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
428698:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
42869A:  STR             R0, [SP,#0x88+var_50]
42869C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4286A2)
42869E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4286A0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4286A2:  STR             R0, [SP,#0x88+var_74]
4286A4:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4286AA)
4286A6:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4286A8:  LDR.W           LR, [R0]; CWorld::ms_nCurrentScanCode ...
4286AC:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4286B2)
4286AE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4286B0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4286B2:  STR             R0, [SP,#0x88+var_78]
4286B4:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4286BA)
4286B6:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4286B8:  LDR.W           R10, [R0]; CWorld::ms_nCurrentScanCode ...
4286BC:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4286C2)
4286BE:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4286C0:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4286C2:  STR             R0, [SP,#0x88+var_7C]
4286C4:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4286CA)
4286C6:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4286C8:  LDR.W           R12, [R0]; CWorld::ms_nCurrentScanCode ...
4286CC:  LDR             R0, [SP,#0x88+var_84]
4286CE:  LDR             R1, [SP,#0x88+var_60]
4286D0:  CMP             R0, R1
4286D2:  BGT.W           loc_4289FE
4286D6:  LDR             R1, [SP,#0x88+var_80]
4286D8:  MOVS            R0, #0
4286DA:  MOVS            R2, #0x77 ; 'w'
4286DC:  CMP             R1, #0
4286DE:  IT GT
4286E0:  MOVGT           R0, R1
4286E2:  CMP             R0, #0x77 ; 'w'
4286E4:  IT GE
4286E6:  MOVGE           R0, R2
4286E8:  RSB.W           R0, R0, R0,LSL#4
4286EC:  LSLS            R0, R0, #3
4286EE:  STR             R0, [SP,#0x88+var_64]
4286F0:  LSLS            R0, R1, #4
4286F2:  UXTB            R0, R0
4286F4:  STR             R0, [SP,#0x88+var_68]
4286F6:  LDR             R0, [SP,#0x88+var_84]
4286F8:  CMP             R0, #0
4286FA:  MOV.W           R2, #0
4286FE:  AND.W           R1, R0, #0xF
428702:  STR             R1, [SP,#0x88+var_58]
428704:  STR             R0, [SP,#0x88+var_54]
428706:  IT GT
428708:  MOVGT           R2, R0
42870A:  CMP             R2, #0x77 ; 'w'
42870C:  MOV.W           R0, #0x77 ; 'w'
428710:  IT GE
428712:  MOVGE           R2, R0
428714:  LDR             R0, [SP,#0x88+var_64]
428716:  MOV             R4, R8
428718:  ADD             R0, R2
42871A:  STR             R0, [SP,#0x88+var_5C]
42871C:  LDR             R0, [R7,#arg_8]
42871E:  CMP             R0, #1
428720:  BNE             loc_4287AC
428722:  LDR             R0, [SP,#0x88+var_6C]
428724:  LDR             R1, [SP,#0x88+var_5C]
428726:  LDR.W           R9, [R0,R1,LSL#3]
42872A:  B               loc_428740
42872C:  MOV             R0, R4
42872E:  CMP             R0, #0
428730:  ITT NE
428732:  STRNE.W         R2, [R0,R3,LSL#2]
428736:  LDRHNE.W        R3, [R11]
42873A:  ADDS            R0, R3, #1
42873C:  STRH.W          R0, [R11]
428740:  CMP.W           R9, #0
428744:  BEQ             loc_4287AC
428746:  LDRD.W          R2, R9, [R9]
42874A:  LDR             R0, [SP,#0x88+var_4C]
42874C:  LDRH.W          R8, [R2,#0x30]
428750:  LDRH            R3, [R0]
428752:  CMP             R8, R3
428754:  BEQ             loc_428740
428756:  LDR             R0, [R2,#0x14]
428758:  STRH            R3, [R2,#0x30]
42875A:  MOV             R3, R6
42875C:  ADD.W           R1, R0, #0x30 ; '0'
428760:  CMP             R0, #0
428762:  VLD1.32         {D16}, [R3]!
428766:  IT EQ
428768:  ADDEQ           R1, R2, #4
42876A:  CMP             R5, #0
42876C:  VLD1.32         {D17}, [R1]!
428770:  VSUB.F32        D16, D16, D17
428774:  VLDR            S2, [R3]
428778:  VLDR            S4, [R1]
42877C:  VSUB.F32        S2, S2, S4
428780:  VMUL.F32        D2, D16, D16
428784:  VADD.F32        S4, S4, S5
428788:  VMUL.F32        S2, S2, S2
42878C:  VADD.F32        S2, S4, S2
428790:  IT NE
428792:  VMOVNE.F32      S2, S4
428796:  VCMPE.F32       S2, S0
42879A:  VMRS            APSR_nzcv, FPSCR
42879E:  BGE             loc_428740
4287A0:  LDRSH.W         R3, [R11]
4287A4:  LDR             R0, [R7,#arg_0]
4287A6:  CMP             R3, R0
4287A8:  BGE             loc_428740
4287AA:  B               loc_42872C
4287AC:  LDR             R0, [SP,#0x88+var_68]
4287AE:  MOV             R8, R4
4287B0:  LDR             R1, [SP,#0x88+var_58]
4287B2:  ORR.W           R9, R1, R0
4287B6:  LDR             R0, [R7,#arg_C]
4287B8:  CMP             R0, #1
4287BA:  BNE             loc_428842
4287BC:  LDR             R1, [SP,#0x88+var_70]
4287BE:  ADD.W           R0, R9, R9,LSL#1
4287C2:  LDR.W           R2, [R1,R0,LSL#2]
4287C6:  B               loc_4287DC
4287C8:  CMP.W           R8, #0
4287CC:  ITT NE
4287CE:  STRNE.W         R3, [R8,R0,LSL#2]
4287D2:  LDRHNE.W        R0, [R11]
4287D6:  ADDS            R0, #1
4287D8:  STRH.W          R0, [R11]
4287DC:  CBZ             R2, loc_428842
4287DE:  LDRD.W          R3, R2, [R2]
4287E2:  LDR             R0, [SP,#0x88+var_50]
4287E4:  LDRH            R1, [R3,#0x30]
4287E6:  LDRH            R0, [R0]
4287E8:  CMP             R1, R0
4287EA:  BEQ             loc_4287DC
4287EC:  LDR             R1, [R3,#0x14]
4287EE:  STRH            R0, [R3,#0x30]
4287F0:  MOV             R0, R6
4287F2:  ADD.W           R4, R1, #0x30 ; '0'
4287F6:  CMP             R1, #0
4287F8:  VLD1.32         {D16}, [R0]!
4287FC:  IT EQ
4287FE:  ADDEQ           R4, R3, #4
428800:  CMP             R5, #0
428802:  VLD1.32         {D17}, [R4]!
428806:  VSUB.F32        D16, D16, D17
42880A:  VLDR            S2, [R0]
42880E:  VLDR            S4, [R4]
428812:  VSUB.F32        S2, S2, S4
428816:  VMUL.F32        D2, D16, D16
42881A:  VADD.F32        S4, S4, S5
42881E:  VMUL.F32        S2, S2, S2
428822:  VADD.F32        S2, S4, S2
428826:  IT NE
428828:  VMOVNE.F32      S2, S4
42882C:  VCMPE.F32       S2, S0
428830:  VMRS            APSR_nzcv, FPSCR
428834:  BGE             loc_4287DC
428836:  LDRSH.W         R0, [R11]
42883A:  LDR             R1, [R7,#arg_0]
42883C:  CMP             R0, R1
42883E:  BGE             loc_4287DC
428840:  B               loc_4287C8
428842:  LDR             R0, [R7,#arg_10]
428844:  CMP             R0, #1
428846:  BNE             loc_4288D0
428848:  ADD.W           R0, R9, R9,LSL#1
42884C:  LDR             R1, [SP,#0x88+var_74]
42884E:  ADD.W           R0, R1, R0,LSL#2
428852:  LDR             R2, [R0,#4]
428854:  B               loc_42886A
428856:  CMP.W           R8, #0
42885A:  ITT NE
42885C:  STRNE.W         R3, [R8,R0,LSL#2]
428860:  LDRHNE.W        R0, [R11]
428864:  ADDS            R0, #1
428866:  STRH.W          R0, [R11]
42886A:  CBZ             R2, loc_4288D0
42886C:  LDRD.W          R3, R2, [R2]
428870:  LDRH.W          R0, [LR]; CWorld::ms_nCurrentScanCode
428874:  LDRH            R1, [R3,#0x30]
428876:  CMP             R1, R0
428878:  BEQ             loc_42886A
42887A:  LDR             R1, [R3,#0x14]
42887C:  STRH            R0, [R3,#0x30]
42887E:  MOV             R0, R6
428880:  ADD.W           R4, R1, #0x30 ; '0'
428884:  CMP             R1, #0
428886:  VLD1.32         {D16}, [R0]!
42888A:  IT EQ
42888C:  ADDEQ           R4, R3, #4
42888E:  CMP             R5, #0
428890:  VLD1.32         {D17}, [R4]!
428894:  VSUB.F32        D16, D16, D17
428898:  VLDR            S2, [R0]
42889C:  VLDR            S4, [R4]
4288A0:  VSUB.F32        S2, S2, S4
4288A4:  VMUL.F32        D2, D16, D16
4288A8:  VADD.F32        S4, S4, S5
4288AC:  VMUL.F32        S2, S2, S2
4288B0:  VADD.F32        S2, S4, S2
4288B4:  IT NE
4288B6:  VMOVNE.F32      S2, S4
4288BA:  VCMPE.F32       S2, S0
4288BE:  VMRS            APSR_nzcv, FPSCR
4288C2:  BGE             loc_42886A
4288C4:  LDRSH.W         R0, [R11]
4288C8:  LDR             R1, [R7,#arg_0]
4288CA:  CMP             R0, R1
4288CC:  BGE             loc_42886A
4288CE:  B               loc_428856
4288D0:  LDR             R0, [R7,#arg_14]
4288D2:  CMP             R0, #1
4288D4:  BNE             loc_428966
4288D6:  ADD.W           R0, R9, R9,LSL#1
4288DA:  LDR             R1, [SP,#0x88+var_78]
4288DC:  ADD.W           R0, R1, R0,LSL#2
4288E0:  LDR             R0, [R0,#8]
4288E2:  B               loc_428900
4288E4:  DCFS 50.0
4288E8:  DCFS 60.0
4288EC:  CMP.W           R8, #0
4288F0:  ITT NE
4288F2:  STRNE.W         R2, [R8,R3,LSL#2]
4288F6:  LDRHNE.W        R3, [R11]
4288FA:  ADDS            R1, R3, #1
4288FC:  STRH.W          R1, [R11]
428900:  CBZ             R0, loc_428966
428902:  LDRD.W          R2, R0, [R0]
428906:  LDRH.W          R3, [R10]; CWorld::ms_nCurrentScanCode
42890A:  LDRH            R1, [R2,#0x30]
42890C:  CMP             R1, R3
42890E:  BEQ             loc_428900
428910:  LDR             R1, [R2,#0x14]
428912:  STRH            R3, [R2,#0x30]
428914:  MOV             R3, R6
428916:  ADD.W           R4, R1, #0x30 ; '0'
42891A:  CMP             R1, #0
42891C:  VLD1.32         {D16}, [R3]!
428920:  IT EQ
428922:  ADDEQ           R4, R2, #4
428924:  CMP             R5, #0
428926:  VLD1.32         {D17}, [R4]!
42892A:  VSUB.F32        D16, D16, D17
42892E:  VLDR            S2, [R3]
428932:  VLDR            S4, [R4]
428936:  VSUB.F32        S2, S2, S4
42893A:  VMUL.F32        D2, D16, D16
42893E:  VADD.F32        S4, S4, S5
428942:  VMUL.F32        S2, S2, S2
428946:  VADD.F32        S2, S4, S2
42894A:  IT NE
42894C:  VMOVNE.F32      S2, S4
428950:  VCMPE.F32       S2, S0
428954:  VMRS            APSR_nzcv, FPSCR
428958:  BGE             loc_428900
42895A:  LDRSH.W         R3, [R11]
42895E:  LDR             R1, [R7,#arg_0]
428960:  CMP             R3, R1
428962:  BGE             loc_428900
428964:  B               loc_4288EC
428966:  LDR             R0, [R7,#arg_18]
428968:  CMP             R0, #1
42896A:  BNE             loc_4289F2
42896C:  LDR             R1, [SP,#0x88+var_5C]
42896E:  LDR             R0, [SP,#0x88+var_7C]
428970:  ADD.W           R0, R0, R1,LSL#3
428974:  LDR             R0, [R0,#4]
428976:  B               loc_42898C
428978:  CMP.W           R8, #0
42897C:  ITT NE
42897E:  STRNE.W         R2, [R8,R3,LSL#2]
428982:  LDRHNE.W        R3, [R11]
428986:  ADDS            R1, R3, #1
428988:  STRH.W          R1, [R11]
42898C:  CBZ             R0, loc_4289F2
42898E:  LDRD.W          R2, R0, [R0]
428992:  LDRH.W          R3, [R12]; CWorld::ms_nCurrentScanCode
428996:  LDRH            R1, [R2,#0x30]
428998:  CMP             R1, R3
42899A:  BEQ             loc_42898C
42899C:  LDR             R1, [R2,#0x14]
42899E:  STRH            R3, [R2,#0x30]
4289A0:  MOV             R3, R6
4289A2:  ADD.W           R4, R1, #0x30 ; '0'
4289A6:  CMP             R1, #0
4289A8:  VLD1.32         {D16}, [R3]!
4289AC:  IT EQ
4289AE:  ADDEQ           R4, R2, #4
4289B0:  CMP             R5, #0
4289B2:  VLD1.32         {D17}, [R4]!
4289B6:  VSUB.F32        D16, D16, D17
4289BA:  VLDR            S2, [R3]
4289BE:  VLDR            S4, [R4]
4289C2:  VSUB.F32        S2, S2, S4
4289C6:  VMUL.F32        D2, D16, D16
4289CA:  VADD.F32        S4, S4, S5
4289CE:  VMUL.F32        S2, S2, S2
4289D2:  VADD.F32        S2, S4, S2
4289D6:  IT NE
4289D8:  VMOVNE.F32      S2, S4
4289DC:  VCMPE.F32       S2, S0
4289E0:  VMRS            APSR_nzcv, FPSCR
4289E4:  BGE             loc_42898C
4289E6:  LDRSH.W         R3, [R11]
4289EA:  LDR             R1, [R7,#arg_0]
4289EC:  CMP             R3, R1
4289EE:  BGE             loc_42898C
4289F0:  B               loc_428978
4289F2:  LDR             R2, [SP,#0x88+var_54]
4289F4:  LDR             R1, [SP,#0x88+var_60]
4289F6:  ADDS            R0, R2, #1
4289F8:  CMP             R2, R1
4289FA:  BLT.W           loc_4286F8
4289FE:  LDR             R2, [SP,#0x88+var_80]
428A00:  LDR             R1, [SP,#0x88+var_88]
428A02:  ADDS            R0, R2, #1
428A04:  STR             R0, [SP,#0x88+var_80]
428A06:  CMP             R2, R1
428A08:  BLT.W           loc_4286CC
428A0C:  ADD             SP, SP, #0x40 ; '@'
428A0E:  VPOP            {D8-D12}
428A12:  ADD             SP, SP, #4
428A14:  POP.W           {R8-R11}
428A18:  POP             {R4-R7,PC}
