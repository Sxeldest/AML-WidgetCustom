; =========================================================
; Game Engine Function: _ZN15CWidgetListShop12LoadFromFileEv
; Address            : 0x2BB6D0 - 0x2BB966
; =========================================================

2BB6D0:  PUSH            {R4-R7,LR}
2BB6D2:  ADD             R7, SP, #0xC
2BB6D4:  PUSH.W          {R8-R11}
2BB6D8:  SUB             SP, SP, #4
2BB6DA:  VPUSH           {D8-D9}
2BB6DE:  SUB.W           SP, SP, #0x3D8
2BB6E2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BB6F2)
2BB6E4:  MOV.W           R5, #0x320
2BB6E8:  LDR             R1, =(_ZN15CWidgetListShop11m_FileEntryE_ptr - 0x2BB6F8)
2BB6EA:  MOV.W           R9, #0
2BB6EE:  ADD             R0, PC; __stack_chk_guard_ptr
2BB6F0:  MOV.W           R8, #0xFF
2BB6F4:  ADD             R1, PC; _ZN15CWidgetListShop11m_FileEntryE_ptr
2BB6F6:  LDR             R0, [R0]; __stack_chk_guard
2BB6F8:  LDR             R1, [R1]; CWidgetListShop::m_FileEntry ...
2BB6FA:  LDR             R0, [R0]
2BB6FC:  ADD.W           R4, R1, #0x40 ; '@'
2BB700:  STR             R0, [SP,#0x408+var_34]
2BB702:  ADR             R0, loc_2BB970
2BB704:  VLD1.64         {D8-D9}, [R0@128]
2BB708:  ADD             R0, SP, #0x408+var_138; this
2BB70A:  MOV             R6, R4
2BB70C:  MOVS            R1, #0xFF; unsigned __int8
2BB70E:  MOVS            R2, #0xFF; unsigned __int8
2BB710:  MOVS            R3, #0xFF; unsigned __int8
2BB712:  STRB.W          R9, [R4,#-0x20]
2BB716:  STRB.W          R9, [R4,#-0x40]; CWidgetListShop::m_FileEntry
2BB71A:  VST1.32         {D8-D9}, [R6]!
2BB71E:  STR.W           R8, [SP,#0x408+var_408]; unsigned __int8
2BB722:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB726:  LDRB.W          R1, [SP,#0x408+var_138]
2BB72A:  SUBS            R5, #1
2BB72C:  STRB            R1, [R6]
2BB72E:  LDRB.W          R1, [SP,#0x408+var_137]
2BB732:  STRB            R1, [R4,#0x11]
2BB734:  LDRB.W          R1, [SP,#0x408+var_136]
2BB738:  STRB            R1, [R4,#0x12]
2BB73A:  LDRB.W          R1, [SP,#0x408+var_135]; char *
2BB73E:  STRB            R1, [R4,#0x13]
2BB740:  STRB.W          R9, [R4,#0x14]
2BB744:  ADD.W           R4, R4, #0x58 ; 'X'
2BB748:  BNE             loc_2BB70A
2BB74A:  ADR             R0, aData_1; "data"
2BB74C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
2BB750:  ADR             R0, aShopuvsDat; "ShopUVs.dat"
2BB752:  ADR             R1, aR_1; "r"
2BB754:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
2BB758:  MOV             R4, R0
2BB75A:  LDR             R0, =(byte_61CD7E - 0x2BB760)
2BB75C:  ADD             R0, PC; byte_61CD7E ; this
2BB75E:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
2BB762:  ADD             R0, SP, #0x408+var_390
2BB764:  ADD             R5, SP, #0x408+var_3B0
2BB766:  ADD.W           R1, R0, #0x20 ; ' '
2BB76A:  ADDS            R0, #0x40 ; '@'
2BB76C:  STR             R0, [SP,#0x408+var_3D0]
2BB76E:  ADD.W           R0, R5, #8
2BB772:  STR             R0, [SP,#0x408+var_3B8]
2BB774:  ORR.W           R0, R5, #4
2BB778:  STR             R0, [SP,#0x408+var_3BC]
2BB77A:  ADD             R0, SP, #0x408+var_3A0
2BB77C:  STR             R1, [SP,#0x408+var_3CC]
2BB77E:  ADD.W           R1, R0, #0xC
2BB782:  STR             R1, [SP,#0x408+var_3C0]
2BB784:  ADD.W           R1, R0, #8; unsigned int
2BB788:  ORR.W           R0, R0, #4
2BB78C:  STR             R0, [SP,#0x408+var_3C8]
2BB78E:  LDR             R0, =(_ZN15CWidgetListShop11m_FileEntryE_ptr - 0x2BB79E)
2BB790:  ADD.W           R8, R5, #0xC
2BB794:  LDR.W           R9, =(unk_60F038 - 0x2BB7A4)
2BB798:  ADD             R6, SP, #0x408+var_138
2BB79A:  ADD             R0, PC; _ZN15CWidgetListShop11m_FileEntryE_ptr
2BB79C:  MOV.W           R10, #0
2BB7A0:  ADD             R9, PC; unk_60F038
2BB7A2:  STR             R1, [SP,#0x408+var_3C4]
2BB7A4:  LDR             R0, [R0]; CWidgetListShop::m_FileEntry ...
2BB7A6:  STR             R0, [SP,#0x408+var_3D8]
2BB7A8:  ADR             R0, loc_2BB980
2BB7AA:  VLD1.64         {D8-D9}, [R0@128]
2BB7AE:  LDR             R0, =(_ZN15CWidgetListShop11m_FileEntryE_ptr - 0x2BB7B4)
2BB7B0:  ADD             R0, PC; _ZN15CWidgetListShop11m_FileEntryE_ptr
2BB7B2:  LDR             R0, [R0]; CWidgetListShop::m_FileEntry ...
2BB7B4:  STR             R0, [SP,#0x408+var_3D4]
2BB7B6:  MOV             R0, R4; this
2BB7B8:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
2BB7BC:  MOV             R11, R0
2BB7BE:  CMP.W           R11, #0
2BB7C2:  BEQ.W           loc_2BB93C
2BB7C6:  LDRB.W          R0, [R11]
2BB7CA:  CMP             R0, #0
2BB7CC:  BEQ             loc_2BB7B6
2BB7CE:  MOV             R0, R11; s
2BB7D0:  MOVS            R1, #0x3B ; ';'; c
2BB7D2:  BLX             strchr
2BB7D6:  CMP             R0, #0
2BB7D8:  BNE             loc_2BB7B6
2BB7DA:  MOV             R0, R6
2BB7DC:  MOV.W           R1, #0x100
2BB7E0:  BLX             j___aeabi_memclr8
2BB7E4:  ADD             R6, SP, #0x408+var_238
2BB7E6:  MOV.W           R1, #0x100
2BB7EA:  MOV             R0, R6
2BB7EC:  BLX             j___aeabi_memclr8
2BB7F0:  LDR             R0, =(unk_60F048 - 0x2BB800)
2BB7F2:  ADD             R6, SP, #0x408+var_338
2BB7F4:  VLD1.64         {D16-D17}, [R9]
2BB7F8:  ADD.W           R9, SP, #0x408+var_3A0
2BB7FC:  ADD             R0, PC; unk_60F048
2BB7FE:  MOV.W           R1, #0x100
2BB802:  VST1.64         {D16-D17}, [R9]
2BB806:  VLD1.64         {D16-D17}, [R0]
2BB80A:  MOV             R0, R6
2BB80C:  VST1.64         {D16-D17}, [R5]
2BB810:  BLX             j___aeabi_memclr8
2BB814:  LDR             R0, [SP,#0x408+var_3C8]
2BB816:  ADR             R1, aSSFFFFDDDDS; "%s %s %f %f %f %f %d %d %d %d %s"
2BB818:  STR             R6, [SP,#0x408+var_3E8]
2BB81A:  ADD             R3, SP, #0x408+var_238
2BB81C:  STR.W           R9, [SP,#0x408+var_408]
2BB820:  ADD.W           R9, SP, #0x408+var_138
2BB824:  STR             R0, [SP,#0x408+var_404]
2BB826:  LDR             R0, [SP,#0x408+var_3C4]
2BB828:  MOV             R2, R9
2BB82A:  STR             R0, [SP,#0x408+var_400]
2BB82C:  LDR             R0, [SP,#0x408+var_3C0]
2BB82E:  STRD.W          R0, R5, [SP,#0x408+var_3FC]
2BB832:  LDR             R0, [SP,#0x408+var_3BC]
2BB834:  STR             R0, [SP,#0x408+var_3F4]
2BB836:  LDR             R0, [SP,#0x408+var_3B8]
2BB838:  STR.W           R8, [SP,#0x408+var_3DC]
2BB83C:  STRD.W          R0, R8, [SP,#0x408+var_3F0]
2BB840:  MOV             R0, R11; s
2BB842:  BLX             sscanf
2BB846:  CMP.W           R10, #1
2BB84A:  BLT             loc_2BB864
2BB84C:  MOVS            R6, #0
2BB84E:  LDR             R5, [SP,#0x408+var_3D8]
2BB850:  MOV             R0, R5; char *
2BB852:  MOV             R1, R9; char *
2BB854:  BLX             strcasecmp
2BB858:  CMP             R0, #0
2BB85A:  BEQ             loc_2BB926
2BB85C:  ADDS            R6, #1
2BB85E:  ADDS            R5, #0x58 ; 'X'
2BB860:  CMP             R6, R10
2BB862:  BLT             loc_2BB850
2BB864:  LDRD.W          R8, R0, [SP,#0x408+var_3A0]
2BB868:  LDRB.W          R1, [SP,#0x408+var_3B0]; unsigned __int8
2BB86C:  STR             R0, [SP,#0x408+var_3E0]
2BB86E:  LDR             R0, [SP,#0x408+var_398]
2BB870:  STR             R0, [SP,#0x408+var_3E4]
2BB872:  LDRB.W          R0, [SP,#0x408+var_3A4]
2BB876:  LDRB.W          R2, [SP,#0x408+var_3AC]; unsigned __int8
2BB87A:  LDRB.W          R3, [SP,#0x408+var_3A8]; unsigned __int8
2BB87E:  STR             R0, [SP,#0x408+var_408]; unsigned __int8
2BB880:  ADD             R0, SP, #0x408+var_3B4; this
2BB882:  LDR             R5, [SP,#0x408+var_394]
2BB884:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB888:  ADD             R0, SP, #0x408+var_338; char *
2BB88A:  ADR             R1, aTrue; "TRUE"
2BB88C:  BLX             strcasecmp
2BB890:  MOV             R11, R0
2BB892:  LDR             R0, [SP,#0x408+var_3D0]
2BB894:  MOV             R1, R9; char *
2BB896:  VST1.32         {D8-D9}, [R0]
2BB89A:  ADD             R0, SP, #0x408+var_390; char *
2BB89C:  BLX             strcpy
2BB8A0:  LDR             R0, [SP,#0x408+var_3CC]; char *
2BB8A2:  ADD             R1, SP, #0x408+var_238; char *
2BB8A4:  BLX             strcpy
2BB8A8:  MOVS            R1, #0x58 ; 'X'
2BB8AA:  LDR             R0, [SP,#0x408+var_3D4]
2BB8AC:  MLA.W           R6, R10, R1, R0
2BB8B0:  STRD.W          R8, R5, [SP,#0x408+var_350]
2BB8B4:  LDR             R0, [SP,#0x408+var_3E4]
2BB8B6:  STR             R0, [SP,#0x408+var_348]
2BB8B8:  CMP.W           R11, #0
2BB8BC:  LDR             R0, [SP,#0x408+var_3E0]
2BB8BE:  MOV.W           R5, #0
2BB8C2:  STR             R0, [SP,#0x408+var_344]
2BB8C4:  IT EQ
2BB8C6:  MOVEQ           R5, #1
2BB8C8:  LDRB.W          R0, [SP,#0x408+var_3B4]
2BB8CC:  ADD             R1, SP, #0x408+var_390; void *
2BB8CE:  STRB.W          R5, [SP,#0x408+var_33C]
2BB8D2:  MOVS            R2, #0x50 ; 'P'; size_t
2BB8D4:  STR             R0, [SP,#0x408+var_3E0]
2BB8D6:  STRB.W          R0, [SP,#0x408+var_340]
2BB8DA:  MOV             R0, R6; void *
2BB8DC:  LDRB.W          R9, [SP,#0x408+var_3B3]
2BB8E0:  LDRB.W          R8, [SP,#0x408+var_3B2]
2BB8E4:  LDRB.W          R11, [SP,#0x408+var_3B1]
2BB8E8:  STRB.W          R9, [SP,#0x408+var_33F]
2BB8EC:  STRB.W          R8, [SP,#0x408+var_33E]
2BB8F0:  STRB.W          R11, [SP,#0x408+var_33D]
2BB8F4:  BLX             memcpy_0
2BB8F8:  ADD.W           R10, R10, #1
2BB8FC:  LDR             R0, [SP,#0x408+var_3E0]
2BB8FE:  CMP.W           R10, #0x320
2BB902:  STRB.W          R8, [R6,#0x52]
2BB906:  STRB.W          R9, [R6,#0x51]
2BB90A:  STRB.W          R11, [R6,#0x53]
2BB90E:  STRB.W          R0, [R6,#0x50]
2BB912:  STRB.W          R5, [R6,#0x54]
2BB916:  BNE             loc_2BB926
2BB918:  LDR.W           R9, =(unk_60F038 - 0x2BB926)
2BB91C:  MOV.W           R10, #0x320
2BB920:  MOVS            R0, #0
2BB922:  ADD             R9, PC; unk_60F038
2BB924:  B               loc_2BB92E
2BB926:  LDR.W           R9, =(unk_60F038 - 0x2BB930)
2BB92A:  MOVS            R0, #1
2BB92C:  ADD             R9, PC; unk_60F038
2BB92E:  LDR.W           R8, [SP,#0x408+var_3DC]
2BB932:  ADD             R5, SP, #0x408+var_3B0
2BB934:  ADD             R6, SP, #0x408+var_138
2BB936:  CMP             R0, #0
2BB938:  BNE.W           loc_2BB7B6
2BB93C:  MOV             R0, R4; this
2BB93E:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
2BB942:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BB94A)
2BB944:  LDR             R1, [SP,#0x408+var_34]
2BB946:  ADD             R0, PC; __stack_chk_guard_ptr
2BB948:  LDR             R0, [R0]; __stack_chk_guard
2BB94A:  LDR             R0, [R0]
2BB94C:  SUBS            R0, R0, R1
2BB94E:  ITTTT EQ
2BB950:  ADDEQ.W         SP, SP, #0x3D8
2BB954:  VPOPEQ          {D8-D9}
2BB958:  ADDEQ           SP, SP, #4
2BB95A:  POPEQ.W         {R8-R11}
2BB95E:  IT EQ
2BB960:  POPEQ           {R4-R7,PC}
2BB962:  BLX             __stack_chk_fail
