; =========================================================
; Game Engine Function: _ZN15CTouchInterface12LoadFromFileEPKcb
; Address            : 0x2AD574 - 0x2AD9D2
; =========================================================

2AD574:  PUSH            {R4-R7,LR}
2AD576:  ADD             R7, SP, #0xC
2AD578:  PUSH.W          {R8-R11}
2AD57C:  SUB             SP, SP, #4
2AD57E:  VPUSH           {D8-D15}
2AD582:  SUB.W           SP, SP, #0x440
2AD586:  MOV             R5, R0
2AD588:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2AD594)
2AD58C:  MOV             R4, R1
2AD58E:  CMP             R4, #1
2AD590:  ADD             R0, PC; __stack_chk_guard_ptr
2AD592:  LDR             R0, [R0]; __stack_chk_guard
2AD594:  LDR             R0, [R0]; this
2AD596:  STR.W           R0, [R7,#var_68]
2AD59A:  BNE             loc_2AD5A6
2AD59C:  ADR.W           R0, aData_0; "data"
2AD5A0:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
2AD5A4:  B               loc_2AD5AA
2AD5A6:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
2AD5AA:  ADR.W           R1, aRb_4; "rb"
2AD5AE:  MOV             R0, R5; this
2AD5B0:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
2AD5B4:  MOV             R8, R0
2AD5B6:  CMP.W           R8, #0
2AD5BA:  IT EQ
2AD5BC:  CMPEQ           R4, #0
2AD5BE:  BEQ             loc_2AD636
2AD5C0:  MOV             R0, R8; this
2AD5C2:  STR             R4, [SP,#0x4A0+var_47C]
2AD5C4:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
2AD5C8:  MOV             R9, R0
2AD5CA:  CMP.W           R9, #0
2AD5CE:  BEQ.W           loc_2AD99E
2AD5D2:  ADD             R4, SP, #0x4A0+var_478
2AD5D4:  VMOV.F32        S22, #17.0
2AD5D8:  ADD.W           R0, R4, #0xC
2AD5DC:  STR             R0, [SP,#0x4A0+var_488]
2AD5DE:  ADD.W           R0, R4, #8
2AD5E2:  STR             R0, [SP,#0x4A0+var_48C]
2AD5E4:  LDR.W           R0, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AD5F6)
2AD5E8:  VMOV.F32        S28, #24.0
2AD5EC:  VMOV.F32        S17, #14.0
2AD5F0:  ADDS            R6, R4, #4
2AD5F2:  ADD             R0, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AD5F4:  VMOV.F32        S21, #11.5
2AD5F8:  VMOV.F32        S25, #29.0
2AD5FC:  ADR.W           R11, aPositionandsca_0; "PositionAndScale"
2AD600:  LDR             R0, [R0]; CTouchInterface::m_WidgetPosition ...
2AD602:  ADD             R5, SP, #0x4A0+var_268
2AD604:  STR             R0, [SP,#0x4A0+var_480]
2AD606:  LDR.W           R0, =(_ZN15CTouchInterface24m_pszWidgetPositionNamesE_ptr - 0x2AD612)
2AD60A:  VLDR            S16, =160.0
2AD60E:  ADD             R0, PC; _ZN15CTouchInterface24m_pszWidgetPositionNamesE_ptr
2AD610:  VLDR            S18, =0.0
2AD614:  VLDR            S20, =480.0
2AD618:  LDR.W           R10, [R0]; CTouchInterface::m_pszWidgetPositionNames ...
2AD61C:  VLDR            S24, =1.9
2AD620:  VLDR            S26, =14.45
2AD624:  VLDR            S30, =20.4
2AD628:  VLDR            S19, =11.9
2AD62C:  VLDR            S23, =9.775
2AD630:  VLDR            S27, =24.65
2AD634:  B               loc_2AD97C
2AD636:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2AD642)
2AD63A:  LDR.W           R1, [R7,#var_68]; char *
2AD63E:  ADD             R0, PC; __stack_chk_guard_ptr
2AD640:  LDR             R0, [R0]; __stack_chk_guard
2AD642:  LDR             R0, [R0]
2AD644:  SUBS            R0, R0, R1
2AD646:  BNE.W           loc_2AD9CE
2AD64A:  LDR.W           R0, =(byte_61CD7E - 0x2AD652)
2AD64E:  ADD             R0, PC; byte_61CD7E ; this
2AD650:  ADD.W           SP, SP, #0x440
2AD654:  VPOP            {D8-D15}
2AD658:  ADD             SP, SP, #4
2AD65A:  POP.W           {R8-R11}
2AD65E:  POP.W           {R4-R7,LR}
2AD662:  B.W             sub_18A368
2AD666:  ADR.W           R1, aScaleSmallest; "SCALE_SMALLEST"
2AD66A:  MOV             R0, R9; haystack
2AD66C:  BLX             strstr
2AD670:  CMP             R0, #0
2AD672:  STR             R6, [SP,#0x4A0+var_484]
2AD674:  BNE             loc_2AD6CE
2AD676:  ADR.W           R1, aScaleSmaller; "SCALE_SMALLER"
2AD67A:  MOV             R0, R9; haystack
2AD67C:  BLX             strstr
2AD680:  CBNZ            R0, loc_2AD6CE
2AD682:  ADR.W           R1, aScaleSmall; "SCALE_SMALL"
2AD686:  MOV             R0, R9; haystack
2AD688:  BLX             strstr
2AD68C:  CBNZ            R0, loc_2AD6CE
2AD68E:  ADR.W           R1, aScaleMedium; "SCALE_MEDIUM"
2AD692:  MOV             R0, R9; haystack
2AD694:  BLX             strstr
2AD698:  CBNZ            R0, loc_2AD6CE
2AD69A:  ADR.W           R1, aScaleLarge; "SCALE_LARGE"
2AD69E:  MOV             R0, R9; haystack
2AD6A0:  BLX             strstr
2AD6A4:  CBNZ            R0, loc_2AD6CE
2AD6A6:  ADR.W           R1, aScaleLarger; "SCALE_LARGER"
2AD6AA:  MOV             R0, R9; haystack
2AD6AC:  BLX             strstr
2AD6B0:  CBNZ            R0, loc_2AD6CE
2AD6B2:  ADR.W           R1, aScaleLargest; "SCALE_LARGEST"
2AD6B6:  MOV             R0, R9; haystack
2AD6B8:  BLX             strstr
2AD6BC:  CBNZ            R0, loc_2AD6CE
2AD6BE:  ADR.W           R1, aScaleLargestPh; "SCALE_LARGEST_PHONE"
2AD6C2:  MOV             R0, R9; haystack
2AD6C4:  BLX             strstr
2AD6C8:  CMP             R0, #0
2AD6CA:  BEQ.W           loc_2AD938
2AD6CE:  LDR.W           R1, =(aSFFSSS - 0x2AD6E2); "%s %f %f %s %s %s"
2AD6D2:  ADD             R0, SP, #0x4A0+var_468
2AD6D4:  STR             R6, [SP,#0x4A0+var_4A0]
2AD6D6:  ADD             R2, SP, #0x4A0+var_168
2AD6D8:  STRD.W          R0, R5, [SP,#0x4A0+var_49C]
2AD6DC:  ADD             R0, SP, #0x4A0+var_368
2AD6DE:  ADD             R1, PC; "%s %f %f %s %s %s"
2AD6E0:  STR             R0, [SP,#0x4A0+var_494]
2AD6E2:  MOV             R0, R9; s
2AD6E4:  MOV             R3, R4
2AD6E6:  BLX             sscanf
2AD6EA:  ADR             R1, aScaleLargestPh; "SCALE_LARGEST_PHONE"
2AD6EC:  MOV             R0, R9; haystack
2AD6EE:  BLX             strstr
2AD6F2:  CBZ             R0, loc_2AD70C
2AD6F4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD6F8:  VMOV            S0, R0
2AD6FC:  VCVT.F32.U32    S29, S0
2AD700:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD704:  VMOV            S0, R0
2AD708:  ADR             R0, dword_2ADA74
2AD70A:  B               loc_2AD750
2AD70C:  ADR             R1, aScaleLargest; "SCALE_LARGEST"
2AD70E:  MOV             R0, R9; haystack
2AD710:  BLX             strstr
2AD714:  CBZ             R0, loc_2AD72E
2AD716:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD71A:  VMOV            S0, R0
2AD71E:  VCVT.F32.U32    S29, S0
2AD722:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD726:  VMOV            S0, R0
2AD72A:  ADR             R0, dword_2ADA7C
2AD72C:  B               loc_2AD750
2AD72E:  ADR             R1, aScaleLarger; "SCALE_LARGER"
2AD730:  MOV             R0, R9; haystack
2AD732:  BLX             strstr
2AD736:  CMP             R0, #0
2AD738:  BEQ             loc_2AD80E
2AD73A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD73E:  VMOV            S0, R0
2AD742:  VCVT.F32.U32    S29, S0
2AD746:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD74A:  VMOV            S0, R0
2AD74E:  ADR             R0, dword_2ADA84
2AD750:  VCVT.F32.U32    S0, S0
2AD754:  VDIV.F32        S0, S29, S0
2AD758:  VCMPE.F32       S0, S24
2AD75C:  VMRS            APSR_nzcv, FPSCR
2AD760:  IT GT
2AD762:  ADDGT           R0, #4
2AD764:  VLDR            S0, [R0]
2AD768:  VSTR            S0, [SP,#0x4A0+var_46C]
2AD76C:  ADD             R5, SP, #0x4A0+var_368
2AD76E:  VSTR            S0, [SP,#0x4A0+var_470]
2AD772:  LDR             R0, [SP,#0x4A0+var_480]
2AD774:  MOVS            R6, #0
2AD776:  ADD.W           R4, R0, #8
2AD77A:  LDR.W           R1, [R10,R6,LSL#2]; char *
2AD77E:  MOV             R0, R5; char *
2AD780:  BLX             strcasecmp
2AD784:  CBZ             R0, loc_2AD792
2AD786:  ADDS            R0, R6, #1
2AD788:  ADDS            R4, #0x10
2AD78A:  CMP             R6, #0x89
2AD78C:  MOV             R6, R0
2AD78E:  BLT             loc_2AD77A
2AD790:  B               loc_2AD7F6
2AD792:  LDR             R0, [SP,#0x4A0+var_47C]
2AD794:  CBZ             R0, loc_2AD7AE
2AD796:  VLDR            S29, [SP,#0x4A0+var_478]
2AD79A:  VCMPE.F32       S29, S16
2AD79E:  VMRS            APSR_nzcv, FPSCR
2AD7A2:  BGE             loc_2AD7B2
2AD7A4:  VADD.F32        S29, S29, S18
2AD7A8:  VSTR            S29, [SP,#0x4A0+var_478]
2AD7AC:  B               loc_2AD7C0
2AD7AE:  LDR             R0, [SP,#0x4A0+var_478]
2AD7B0:  B               loc_2AD7EA
2AD7B2:  VCMPE.F32       S29, S20
2AD7B6:  VMRS            APSR_nzcv, FPSCR
2AD7BA:  IT GT
2AD7BC:  VSTRGT          S29, [SP,#0x4A0+var_478]
2AD7C0:  LDR             R1, =(aWidgetPosition - 0x2AD7C8); "WIDGET_POSITION_RADAR"
2AD7C2:  MOV             R0, R5; char *
2AD7C4:  ADD             R1, PC; "WIDGET_POSITION_RADAR"
2AD7C6:  BLX             strcasecmp
2AD7CA:  CBZ             R0, loc_2AD7D2
2AD7CC:  VMOV            R0, S29
2AD7D0:  B               loc_2AD7EA
2AD7D2:  VADD.F32        S0, S29, S18
2AD7D6:  VLDR            S2, [SP,#0x4A0+var_474]
2AD7DA:  VADD.F32        S2, S2, S18
2AD7DE:  VMOV            R0, S0
2AD7E2:  VSTR            S0, [SP,#0x4A0+var_478]
2AD7E6:  VSTR            S2, [SP,#0x4A0+var_474]
2AD7EA:  ADD             R3, SP, #0x4A0+var_474
2AD7EC:  LDM             R3, {R1-R3}; unsigned int
2AD7EE:  STRD.W          R0, R1, [R4,#-8]
2AD7F2:  STRD.W          R2, R3, [R4]
2AD7F6:  MOV             R0, R8; this
2AD7F8:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
2AD7FC:  LDR             R6, [SP,#0x4A0+var_484]
2AD7FE:  ADD             R4, SP, #0x4A0+var_478
2AD800:  ADD             R5, SP, #0x4A0+var_268
2AD802:  MOV             R9, R0
2AD804:  CMP.W           R9, #0
2AD808:  BNE.W           loc_2AD97C
2AD80C:  B               loc_2AD99E
2AD80E:  ADR             R1, aScaleLarge; "SCALE_LARGE"
2AD810:  MOV             R0, R9; haystack
2AD812:  BLX             strstr
2AD816:  CBZ             R0, loc_2AD848
2AD818:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD81C:  VMOV            S0, R0
2AD820:  VCVT.F32.U32    S29, S0
2AD824:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD828:  VMOV            S0, R0
2AD82C:  VCVT.F32.U32    S0, S0
2AD830:  VDIV.F32        S0, S29, S0
2AD834:  VCMPE.F32       S0, S24
2AD838:  VMRS            APSR_nzcv, FPSCR
2AD83C:  VMOV.F32        S0, S25
2AD840:  IT GT
2AD842:  VMOVGT.F32      S0, S27
2AD846:  B               loc_2AD768
2AD848:  ADR             R1, aScaleSmallest; "SCALE_SMALLEST"
2AD84A:  MOV             R0, R9; haystack
2AD84C:  BLX             strstr
2AD850:  CBZ             R0, loc_2AD882
2AD852:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD856:  VMOV            S0, R0
2AD85A:  VCVT.F32.U32    S29, S0
2AD85E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD862:  VMOV            S0, R0
2AD866:  VCVT.F32.U32    S0, S0
2AD86A:  VDIV.F32        S0, S29, S0
2AD86E:  VCMPE.F32       S0, S24
2AD872:  VMRS            APSR_nzcv, FPSCR
2AD876:  VMOV.F32        S0, S21
2AD87A:  IT GT
2AD87C:  VMOVGT.F32      S0, S23
2AD880:  B               loc_2AD768
2AD882:  ADR             R1, aScaleSmaller; "SCALE_SMALLER"
2AD884:  MOV             R0, R9; haystack
2AD886:  BLX             strstr
2AD88A:  CBZ             R0, loc_2AD8BC
2AD88C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD890:  VMOV            S0, R0
2AD894:  VCVT.F32.U32    S29, S0
2AD898:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD89C:  VMOV            S0, R0
2AD8A0:  VCVT.F32.U32    S0, S0
2AD8A4:  VDIV.F32        S0, S29, S0
2AD8A8:  VCMPE.F32       S0, S24
2AD8AC:  VMRS            APSR_nzcv, FPSCR
2AD8B0:  VMOV.F32        S0, S17
2AD8B4:  IT GT
2AD8B6:  VMOVGT.F32      S0, S19
2AD8BA:  B               loc_2AD768
2AD8BC:  ADR             R1, aScaleMedium; "SCALE_MEDIUM"
2AD8BE:  MOV             R0, R9; haystack
2AD8C0:  BLX             strstr
2AD8C4:  CBZ             R0, loc_2AD8F6
2AD8C6:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD8CA:  VMOV            S0, R0
2AD8CE:  VCVT.F32.U32    S29, S0
2AD8D2:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD8D6:  VMOV            S0, R0
2AD8DA:  VCVT.F32.U32    S0, S0
2AD8DE:  VDIV.F32        S0, S29, S0
2AD8E2:  VCMPE.F32       S0, S24
2AD8E6:  VMRS            APSR_nzcv, FPSCR
2AD8EA:  VMOV.F32        S0, S28
2AD8EE:  IT GT
2AD8F0:  VMOVGT.F32      S0, S30
2AD8F4:  B               loc_2AD768
2AD8F6:  ADR             R1, aScaleSmall; "SCALE_SMALL"
2AD8F8:  MOV             R0, R9; haystack
2AD8FA:  BLX             strstr
2AD8FE:  VMOV.F32        S0, S18
2AD902:  CMP             R0, #0
2AD904:  BEQ.W           loc_2AD768
2AD908:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AD90C:  VMOV            S0, R0
2AD910:  VCVT.F32.U32    S29, S0
2AD914:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2AD918:  VMOV            S0, R0
2AD91C:  VCVT.F32.U32    S0, S0
2AD920:  VDIV.F32        S0, S29, S0
2AD924:  VCMPE.F32       S0, S24
2AD928:  VMRS            APSR_nzcv, FPSCR
2AD92C:  VMOV.F32        S0, S22
2AD930:  IT GT
2AD932:  VMOVGT.F32      S0, S26
2AD936:  B               loc_2AD768
2AD938:  STR             R6, [SP,#0x4A0+var_4A0]
2AD93A:  ADD             R2, SP, #0x4A0+var_168
2AD93C:  LDR             R0, [SP,#0x4A0+var_48C]
2AD93E:  MOV             R3, R4
2AD940:  LDR             R1, =(aSFFFFSS - 0x2AD94A); "%s %f %f %f %f %s %s"
2AD942:  STR             R0, [SP,#0x4A0+var_49C]
2AD944:  LDR             R0, [SP,#0x4A0+var_488]
2AD946:  ADD             R1, PC; "%s %f %f %f %f %s %s"
2AD948:  STRD.W          R0, R5, [SP,#0x4A0+var_498]
2AD94C:  MOV             R0, R9; s
2AD94E:  ADD             R5, SP, #0x4A0+var_368
2AD950:  STR             R5, [SP,#0x4A0+var_490]
2AD952:  BLX             sscanf
2AD956:  B               loc_2AD772
2AD958:  DCFS 160.0
2AD95C:  DCFS 0.0
2AD960:  DCFS 480.0
2AD964:  DCFS 1.9
2AD968:  DCFS 14.45
2AD96C:  DCFS 20.4
2AD970:  DCFS 11.9
2AD974:  DCFS 9.775
2AD978:  DCFS 24.65
2AD97C:  LDRB.W          R0, [R9]
2AD980:  CBZ             R0, loc_2AD990
2AD982:  MOV             R0, R9; haystack
2AD984:  MOV             R1, R11; needle
2AD986:  BLX             strstr
2AD98A:  CMP             R0, #0
2AD98C:  BNE.W           loc_2AD666
2AD990:  MOV             R0, R8; this
2AD992:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
2AD996:  MOV             R9, R0
2AD998:  CMP.W           R9, #0
2AD99C:  BNE             loc_2AD97C
2AD99E:  LDR             R0, =(byte_61CD7E - 0x2AD9A4)
2AD9A0:  ADD             R0, PC; byte_61CD7E ; this
2AD9A2:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
2AD9A6:  MOV             R0, R8; this
2AD9A8:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
2AD9AC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2AD9B6)
2AD9AE:  LDR.W           R1, [R7,#var_68]
2AD9B2:  ADD             R0, PC; __stack_chk_guard_ptr
2AD9B4:  LDR             R0, [R0]; __stack_chk_guard
2AD9B6:  LDR             R0, [R0]
2AD9B8:  SUBS            R0, R0, R1
2AD9BA:  ITTTT EQ
2AD9BC:  ADDEQ.W         SP, SP, #0x440
2AD9C0:  VPOPEQ          {D8-D15}
2AD9C4:  ADDEQ           SP, SP, #4
2AD9C6:  POPEQ.W         {R8-R11}
2AD9CA:  IT EQ
2AD9CC:  POPEQ           {R4-R7,PC}
2AD9CE:  BLX             __stack_chk_fail
