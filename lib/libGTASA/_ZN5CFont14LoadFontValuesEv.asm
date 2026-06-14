; =========================================================
; Game Engine Function: _ZN5CFont14LoadFontValuesEv
; Address            : 0x5A871C - 0x5A88FA
; =========================================================

5A871C:  PUSH            {R4-R7,LR}
5A871E:  ADD             R7, SP, #0xC
5A8720:  PUSH.W          {R8-R11}
5A8724:  SUB             SP, SP, #0x94
5A8726:  LDR             R0, =(__stack_chk_guard_ptr - 0x5A872C)
5A8728:  ADD             R0, PC; __stack_chk_guard_ptr
5A872A:  LDR             R0, [R0]; __stack_chk_guard
5A872C:  LDR             R1, [R0]; char *
5A872E:  LDR             R0, =(byte_61CD7E - 0x5A8736)
5A8730:  STR             R1, [SP,#0xB0+var_20]
5A8732:  ADD             R0, PC; byte_61CD7E ; this
5A8734:  BLX.W           j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
5A8738:  ADR             R0, aDataFontsDat; "DATA\\FONTS.DAT"
5A873A:  ADR             R1, aRb_19; "rb"
5A873C:  BLX.W           j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
5A8740:  MOV             R8, R0
5A8742:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5A8746:  CMP             R0, #0
5A8748:  BEQ.W           loc_5A88DA
5A874C:  ADD.W           R9, SP, #0xB0+var_60
5A8750:  ADR             R5, aS_1; "%s"
5A8752:  ADD.W           R1, R9, #0x1C
5A8756:  STR             R1, [SP,#0xB0+var_88]
5A8758:  ADD.W           R1, R9, #0x18
5A875C:  STR             R1, [SP,#0xB0+var_8C]
5A875E:  ADD.W           R1, R9, #0x14
5A8762:  STR             R1, [SP,#0xB0+var_90]
5A8764:  ADD.W           R1, R9, #0x10
5A8768:  STR             R1, [SP,#0xB0+var_6C]
5A876A:  ADD.W           R1, R9, #0xC
5A876E:  STR             R1, [SP,#0xB0+var_70]
5A8770:  ADD.W           R1, R9, #8
5A8774:  STR             R1, [SP,#0xB0+var_74]
5A8776:  MOVS            R1, #0
5A8778:  ADD.W           R6, R9, #4
5A877C:  STR             R1, [SP,#0xB0+var_7C]
5A877E:  ADD             R2, SP, #0xB0+var_40
5A8780:  LDR             R1, =(_ZN5CFont4SizeE_ptr - 0x5A878A)
5A8782:  ADR.W           R11, aDDDDDDDD; "%d  %d  %d  %d  %d  %d  %d  %d"
5A8786:  ADD             R1, PC; _ZN5CFont4SizeE_ptr
5A8788:  LDR             R1, [R1]; CFont::Size ...
5A878A:  STR             R1, [SP,#0xB0+var_80]
5A878C:  LDR             R1, =(_ZN5CFont4SizeE_ptr - 0x5A8792)
5A878E:  ADD             R1, PC; _ZN5CFont4SizeE_ptr
5A8790:  LDR             R4, [R1]; CFont::Size ...
5A8792:  LDR             R1, =(_ZN5CFont4SizeE_ptr - 0x5A879A)
5A8794:  STR             R4, [SP,#0xB0+var_84]
5A8796:  ADD             R1, PC; _ZN5CFont4SizeE_ptr
5A8798:  LDR             R4, [SP,#0xB0+var_84]
5A879A:  LDR             R1, [R1]; CFont::Size ...
5A879C:  STR             R1, [SP,#0xB0+var_94]
5A879E:  LDRB            R1, [R0]
5A87A0:  CMP             R1, #0
5A87A2:  IT NE
5A87A4:  CMPNE           R1, #0x23 ; '#'
5A87A6:  BEQ.W           loc_5A88CC
5A87AA:  MOV             R1, R5; format
5A87AC:  MOV             R10, R2
5A87AE:  BLX.W           sscanf
5A87B2:  ADR             R1, aTotalFonts; "[TOTAL_FONTS]"
5A87B4:  MOV             R0, R10; char *
5A87B6:  BLX.W           strcmp
5A87BA:  CBZ             R0, loc_5A8808
5A87BC:  ADR             R1, aFontId; "[FONT_ID]"
5A87BE:  MOV             R0, R10; char *
5A87C0:  BLX.W           strcmp
5A87C4:  CBZ             R0, loc_5A8818
5A87C6:  ADR             R1, aReplacementSpa; "[REPLACEMENT_SPACE_CHAR]"
5A87C8:  MOV             R0, R10; char *
5A87CA:  BLX.W           strcmp
5A87CE:  CBZ             R0, loc_5A882C
5A87D0:  ADR             R1, aProp; "[PROP]"
5A87D2:  MOV             R0, R10; char *
5A87D4:  BLX.W           strcmp
5A87D8:  CBZ             R0, loc_5A884E
5A87DA:  ADR             R1, aUnprop; "[UNPROP]"
5A87DC:  MOV             R0, R10; char *
5A87DE:  BLX.W           strcmp
5A87E2:  CMP             R0, #0
5A87E4:  BNE             loc_5A88CC
5A87E6:  MOV             R0, R8; this
5A87E8:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5A87EC:  ADR             R1, aD_5; "%d"
5A87EE:  MOV             R2, R9
5A87F0:  BLX.W           sscanf
5A87F4:  LDR             R0, [SP,#0xB0+var_7C]
5A87F6:  MOVS            R1, #0xD2
5A87F8:  LDR             R2, [SP,#0xB0+var_94]
5A87FA:  UXTB            R0, R0
5A87FC:  SMLABB.W        R0, R0, R1, R2
5A8800:  LDR             R1, [SP,#0xB0+var_60]
5A8802:  STRB.W          R1, [R0,#0xD1]
5A8806:  B               loc_5A88CC
5A8808:  MOV             R0, R8; this
5A880A:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5A880E:  ADR             R1, aD_5; "%d"
5A8810:  MOV             R2, R9
5A8812:  BLX.W           sscanf
5A8816:  B               loc_5A88CC
5A8818:  MOV             R0, R8; this
5A881A:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5A881E:  ADR             R1, aD_5; "%d"
5A8820:  MOV             R2, R9
5A8822:  BLX.W           sscanf
5A8826:  LDR             R0, [SP,#0xB0+var_60]
5A8828:  STR             R0, [SP,#0xB0+var_7C]
5A882A:  B               loc_5A88CC
5A882C:  MOV             R0, R8; this
5A882E:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5A8832:  ADR             R1, aD_5; "%d"
5A8834:  MOV             R2, R9
5A8836:  BLX.W           sscanf
5A883A:  LDR             R0, [SP,#0xB0+var_7C]
5A883C:  MOVS            R2, #0xD2
5A883E:  LDR             R1, [SP,#0xB0+var_80]
5A8840:  UXTB            R0, R0
5A8842:  SMLABB.W        R0, R0, R2, R1
5A8846:  LDR             R1, [SP,#0xB0+var_60]
5A8848:  STRB.W          R1, [R0,#0xD0]
5A884C:  B               loc_5A88CC
5A884E:  LDR             R0, [SP,#0xB0+var_7C]
5A8850:  MOV             R5, R9
5A8852:  STR             R6, [SP,#0xB0+var_64]
5A8854:  MOV.W           R9, #0
5A8858:  STR.W           R8, [SP,#0xB0+var_68]
5A885C:  UXTB            R0, R0
5A885E:  STR             R0, [SP,#0xB0+var_78]
5A8860:  LDRD.W          R10, R6, [SP,#0xB0+var_90]
5A8864:  LDR.W           R8, [SP,#0xB0+var_88]
5A8868:  LDR             R0, [SP,#0xB0+var_68]; this
5A886A:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5A886E:  LDR             R1, [SP,#0xB0+var_74]
5A8870:  MOV             R2, R5
5A8872:  STR             R1, [SP,#0xB0+var_B0]
5A8874:  LDR             R1, [SP,#0xB0+var_70]
5A8876:  STR             R1, [SP,#0xB0+var_AC]
5A8878:  LDR             R1, [SP,#0xB0+var_6C]
5A887A:  STRD.W          R1, R10, [SP,#0xB0+var_A8]
5A887E:  MOV             R1, R11; format
5A8880:  STRD.W          R6, R8, [SP,#0xB0+var_A0]
5A8884:  LDR             R3, [SP,#0xB0+var_64]
5A8886:  BLX.W           sscanf
5A888A:  LDR             R0, [SP,#0xB0+var_78]
5A888C:  MOVS            R1, #0xD2
5A888E:  SMLABB.W        R0, R0, R1, R4
5A8892:  LDR             R1, [SP,#0xB0+var_60]
5A8894:  STRB.W          R1, [R0,R9]
5A8898:  ADD             R0, R9
5A889A:  LDR             R1, [SP,#0xB0+var_5C]
5A889C:  STRB            R1, [R0,#1]
5A889E:  LDR             R1, [SP,#0xB0+var_58]
5A88A0:  STRB            R1, [R0,#2]
5A88A2:  LDR             R1, [SP,#0xB0+var_54]
5A88A4:  STRB            R1, [R0,#3]
5A88A6:  LDR             R1, [SP,#0xB0+var_50]
5A88A8:  STRB            R1, [R0,#4]
5A88AA:  LDR             R1, [SP,#0xB0+var_4C]
5A88AC:  STRB            R1, [R0,#5]
5A88AE:  LDR             R1, [SP,#0xB0+var_48]
5A88B0:  STRB            R1, [R0,#6]
5A88B2:  LDR             R1, [SP,#0xB0+var_44]; unsigned int
5A88B4:  STRB            R1, [R0,#7]
5A88B6:  ADD.W           R0, R9, #8
5A88BA:  UXTH.W          R9, R0
5A88BE:  CMP.W           R9, #0xD0
5A88C2:  BCC             loc_5A8868
5A88C4:  MOV             R9, R5
5A88C6:  LDRD.W          R8, R6, [SP,#0xB0+var_68]
5A88CA:  ADR             R5, aS_1; "%s"
5A88CC:  MOV             R0, R8; this
5A88CE:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5A88D2:  ADD             R2, SP, #0xB0+var_40
5A88D4:  CMP             R0, #0
5A88D6:  BNE.W           loc_5A879E
5A88DA:  MOV             R0, R8; this
5A88DC:  BLX.W           j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
5A88E0:  LDR             R0, =(__stack_chk_guard_ptr - 0x5A88E8)
5A88E2:  LDR             R1, [SP,#0xB0+var_20]
5A88E4:  ADD             R0, PC; __stack_chk_guard_ptr
5A88E6:  LDR             R0, [R0]; __stack_chk_guard
5A88E8:  LDR             R0, [R0]
5A88EA:  SUBS            R0, R0, R1
5A88EC:  ITTT EQ
5A88EE:  ADDEQ           SP, SP, #0x94
5A88F0:  POPEQ.W         {R8-R11}
5A88F4:  POPEQ           {R4-R7,PC}
5A88F6:  BLX.W           __stack_chk_fail
