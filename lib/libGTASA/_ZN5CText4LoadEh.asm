; =========================================================
; Game Engine Function: _ZN5CText4LoadEh
; Address            : 0x54D7C4 - 0x54DAB6
; =========================================================

54D7C4:  PUSH            {R4-R7,LR}
54D7C6:  ADD             R7, SP, #0xC
54D7C8:  PUSH.W          {R8-R11}
54D7CC:  SUB             SP, SP, #0x3C
54D7CE:  MOV             R5, R0
54D7D0:  LDR             R0, =(__stack_chk_guard_ptr - 0x54D7D8)
54D7D2:  MOV             R2, R1
54D7D4:  ADD             R0, PC; __stack_chk_guard_ptr
54D7D6:  LDR             R0, [R0]; __stack_chk_guard
54D7D8:  LDR             R0, [R0]
54D7DA:  STR             R0, [SP,#0x58+var_20]
54D7DC:  MOVS            R0, #0
54D7DE:  STRB.W          R0, [R5,#0x21]
54D7E2:  MOV             R0, R5; this
54D7E4:  STR             R2, [SP,#0x58+var_54]
54D7E6:  BLX             j__ZN5CText6UnloadEh; CText::Unload(uchar)
54D7EA:  LDR             R0, =(aAlcInvalidCont+0xF - 0x54D7F0); "TEXT"
54D7EC:  ADD             R0, PC; this
54D7EE:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
54D7F2:  LDR             R0, =(FrontEndMenuManager_ptr - 0x54D7F8)
54D7F4:  ADD             R0, PC; FrontEndMenuManager_ptr
54D7F6:  LDR             R0, [R0]; FrontEndMenuManager
54D7F8:  LDRSB.W         R0, [R0,#(byte_98F140 - 0x98F0F8)]
54D7FC:  CMP             R0, #6; switch 7 cases
54D7FE:  BHI             def_54D800; jumptable 0054D800 default case
54D800:  TBB.W           [PC,R0]; switch jump
54D804:  DCB 4; jump table for switch statement
54D805:  DCB 7
54D806:  DCB 0xA
54D807:  DCB 0x16
54D808:  DCB 0x19
54D809:  DCB 0x1C
54D80A:  DCB 0x26
54D80B:  ALIGN 2
54D80C:  LDR             R0, =(aAmericanGxt - 0x54D812); jumptable 0054D800 case 0
54D80E:  ADD             R0, PC; "AMERICAN.GXT"
54D810:  B               loc_54D854
54D812:  LDR             R0, =(aFrenchGxt - 0x54D818); jumptable 0054D800 case 1
54D814:  ADD             R0, PC; "FRENCH.GXT"
54D816:  B               loc_54D81C
54D818:  LDR             R0, =(aGermanGxt - 0x54D81E); jumptable 0054D800 case 2
54D81A:  ADD             R0, PC; "GERMAN.GXT"
54D81C:  MOVS            R1, #0
54D81E:  VLDR            D16, [R0]
54D822:  MOVW            R0, #0x5458
54D826:  STRB.W          R1, [SP,#0x58+var_30+2]
54D82A:  STRH.W          R0, [SP,#0x58+var_30]
54D82E:  B               loc_54D868
54D830:  LDR             R0, =(aItalianGxt - 0x54D836); jumptable 0054D800 case 3
54D832:  ADD             R0, PC; "ITALIAN.GXT"
54D834:  B               loc_54D840
54D836:  LDR             R0, =(aSpanishGxt - 0x54D83C); jumptable 0054D800 case 4
54D838:  ADD             R0, PC; "SPANISH.GXT"
54D83A:  B               loc_54D840
54D83C:  LDR             R0, =(aRussianGxt - 0x54D842); jumptable 0054D800 case 5
54D83E:  ADD             R0, PC; "RUSSIAN.GXT"
54D840:  VLDR            D16, [R0]
54D844:  MOV             R0, #0x545847
54D84C:  STR             R0, [SP,#0x58+var_30]
54D84E:  B               loc_54D868
54D850:  LDR             R0, =(aJapaneseGxt - 0x54D856); jumptable 0054D800 case 6
54D852:  ADD             R0, PC; "JAPANESE.GXT"
54D854:  ADDS            R1, R0, #5
54D856:  ADD             R2, SP, #0x58+var_38; char *
54D858:  VLDR            D16, [R0]
54D85C:  ORR.W           R0, R2, #5
54D860:  VLD1.8          {D17}, [R1]
54D864:  VST1.8          {D17}, [R0]
54D868:  VSTR            D16, [SP,#0x58+var_38]
54D86C:  ADD             R0, SP, #0x58+var_38; jumptable 0054D800 default case
54D86E:  ADR             R1, dword_54DAE0; char *
54D870:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
54D874:  ADD             R4, SP, #0x58+ptr
54D876:  MOVS            R2, #2; n
54D878:  MOV             R6, R0
54D87A:  MOV             R1, R4; ptr
54D87C:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
54D880:  MOV             R0, R6; this
54D882:  MOV             R1, R4; ptr
54D884:  MOVS            R2, #2; n
54D886:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
54D88A:  ADD.W           R0, R5, #0x12C
54D88E:  ADD             R4, SP, #0x58+var_40
54D890:  ADR.W           R11, aTabl; "TABL"
54D894:  SUB.W           R9, R7, #-var_41
54D898:  MOV             R10, R5
54D89A:  STR             R0, [SP,#0x58+var_48]
54D89C:  MOVS            R0, #1
54D89E:  STR             R0, [SP,#0x58+var_50]
54D8A0:  MOVS            R0, #0
54D8A2:  STR             R0, [SP,#0x58+var_4C]
54D8A4:  B               loc_54D8B2
54D8A6:  MOV             R0, R10
54D8A8:  MOVS            R1, #1
54D8AA:  STRB.W          R1, [R0,#0x21]
54D8AE:  STRH.W          R5, [R0,#0xA8C]
54D8B2:  MOV             R0, R6; this
54D8B4:  MOV             R1, R4; unsigned int
54D8B6:  MOVS            R2, #byte_8; char *
54D8B8:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54D8BC:  LDR.W           R8, [SP,#0x58+var_3C]
54D8C0:  CMP.W           R8, #0
54D8C4:  BEQ             loc_54D8B2
54D8C6:  MOV             R0, R4; char *
54D8C8:  MOV             R1, R11; char *
54D8CA:  MOVS            R2, #4; size_t
54D8CC:  BLX             strncmp
54D8D0:  CBZ             R0, loc_54D906
54D8D2:  LDR             R1, =(aTkey - 0x54D8DC); "TKEY"
54D8D4:  MOV             R0, R4; char *
54D8D6:  MOVS            R2, #4; size_t
54D8D8:  ADD             R1, PC; "TKEY"
54D8DA:  BLX             strncmp
54D8DE:  CBZ             R0, loc_54D930
54D8E0:  LDR             R1, =(aTdat - 0x54D8EA); "TDAT"
54D8E2:  MOV             R0, R4; char *
54D8E4:  MOVS            R2, #4; size_t
54D8E6:  ADD             R1, PC; "TDAT"
54D8E8:  BLX             strncmp
54D8EC:  CBZ             R0, loc_54D958
54D8EE:  MOVS            R5, #0
54D8F0:  MOV             R0, R6; this
54D8F2:  MOV             R1, R9; unsigned int
54D8F4:  MOVS            R2, #(stderr+1); char *
54D8F6:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54D8FA:  ADDS            R5, #1
54D8FC:  LDR             R0, [SP,#0x58+var_3C]
54D8FE:  UXTH            R1, R5
54D900:  CMP             R0, R1
54D902:  BHI             loc_54D8F0
54D904:  B               loc_54D8B2
54D906:  MOV             R0, #0xAAAAAAAB
54D90E:  UMULL.W         R0, R1, R8, R0
54D912:  LSRS            R5, R1, #3
54D914:  LDR             R1, [SP,#0x58+var_48]; unsigned int
54D916:  ADD.W           R0, R5, R5,LSL#1
54D91A:  LSLS            R2, R0, #2; char *
54D91C:  MOV             R0, R6; this
54D91E:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54D922:  MOVS            R0, #0
54D924:  ADDS            R1, R0, #1
54D926:  UXTH            R0, R0
54D928:  CMP             R5, R0
54D92A:  MOV             R0, R1
54D92C:  BHI             loc_54D924
54D92E:  B               loc_54D8A6
54D930:  MOV.W           R0, R8,LSR#3
54D934:  MOV             R5, R10
54D936:  STR             R0, [R5,#4]
54D938:  BIC.W           R0, R8, #7; unsigned int
54D93C:  BLX             _Znaj; operator new[](uint)
54D940:  MOV             R1, R0; unsigned int
54D942:  MOV             R0, R6; this
54D944:  MOV             R2, R8; char *
54D946:  STR             R1, [R5]
54D948:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54D94C:  LDR             R0, [SP,#0x58+var_50]
54D94E:  LSLS            R0, R0, #0x1F
54D950:  MOV.W           R0, #1
54D954:  BNE             loc_54D8A2
54D956:  B               loc_54D980
54D958:  MOV.W           R0, R8,LSR#1
54D95C:  MOV             R5, R10
54D95E:  STR             R0, [R5,#0xC]
54D960:  BIC.W           R0, R8, #1; unsigned int
54D964:  BLX             _Znaj; operator new[](uint)
54D968:  MOV             R1, R0; unsigned int
54D96A:  MOV             R0, R6; this
54D96C:  MOV             R2, R8; char *
54D96E:  STR             R1, [R5,#8]
54D970:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54D974:  LDR             R0, [SP,#0x58+var_4C]
54D976:  LSLS            R0, R0, #0x18
54D978:  MOV.W           R0, #0
54D97C:  STR             R0, [SP,#0x58+var_50]
54D97E:  BEQ             loc_54D8A0
54D980:  LDR.W           R0, [R10,#4]
54D984:  CBZ             R0, loc_54D9A4
54D986:  LDR.W           R0, [R10]
54D98A:  MOVS            R2, #0
54D98C:  LDR.W           R1, [R10,#8]; unsigned int
54D990:  LDR.W           R3, [R0,R2,LSL#3]
54D994:  ADD             R3, R1
54D996:  STR.W           R3, [R0,R2,LSL#3]
54D99A:  ADDS            R2, #1
54D99C:  LDR.W           R3, [R10,#4]
54D9A0:  CMP             R2, R3
54D9A2:  BCC             loc_54D990
54D9A4:  MOV             R0, R6; this
54D9A6:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
54D9AA:  LDR             R0, =(TheText_ptr - 0x54D9B2)
54D9AC:  ADR             R1, aCderror_0; "CDERROR"
54D9AE:  ADD             R0, PC; TheText_ptr
54D9B0:  LDR             R0, [R0]; TheText ; this
54D9B2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
54D9B6:  MOV             R1, R0
54D9B8:  ADD.W           R0, R10, #0x2C ; ','; char *
54D9BC:  MOVS            R2, #0
54D9BE:  MOVS            R5, #0
54D9C0:  CBZ             R1, loc_54DA38
54D9C2:  LDR             R6, =(unk_A01AC2 - 0x54D9D0)
54D9C4:  MOV             R12, #0xBFF1D1
54D9CC:  ADD             R6, PC; unk_A01AC2
54D9CE:  MOV             R3, R5
54D9D0:  LDRH.W          R4, [R1,R3,LSL#1]
54D9D4:  CBZ             R4, loc_54DA36
54D9D6:  CMP             R4, #0x80
54D9D8:  BCC             loc_54DA2C
54D9DA:  CMP             R4, #0x83
54D9DC:  BHI             loc_54D9E2
54D9DE:  ADDS            R4, #0x40 ; '@'
54D9E0:  B               loc_54DA2C
54D9E2:  CMP             R4, #0x8D
54D9E4:  BHI             loc_54D9EA
54D9E6:  ADDS            R4, #0x42 ; 'B'
54D9E8:  B               loc_54DA2C
54D9EA:  CMP             R4, #0x91
54D9EC:  BHI             loc_54D9F2
54D9EE:  ADDS            R4, #0x44 ; 'D'
54D9F0:  B               loc_54DA2C
54D9F2:  CMP             R4, #0x95
54D9F4:  BHI             loc_54D9FA
54D9F6:  ADDS            R4, #0x47 ; 'G'
54D9F8:  B               loc_54DA2C
54D9FA:  CMP             R4, #0x9A
54D9FC:  BHI             loc_54DA02
54D9FE:  ADDS            R4, #0x49 ; 'I'
54DA00:  B               loc_54DA2C
54DA02:  CMP             R4, #0xA4
54DA04:  BHI             loc_54DA0A
54DA06:  ADDS            R4, #0x4B ; 'K'
54DA08:  B               loc_54DA2C
54DA0A:  CMP             R4, #0xA8
54DA0C:  BHI             loc_54DA12
54DA0E:  ADDS            R4, #0x4D ; 'M'
54DA10:  B               loc_54DA2C
54DA12:  CMP             R4, #0xCC
54DA14:  BHI             loc_54DA1A
54DA16:  ADDS            R4, #0x50 ; 'P'
54DA18:  B               loc_54DA2C
54DA1A:  SUB.W           R5, R4, #0xCD
54DA1E:  UXTH            R5, R5
54DA20:  CMP             R5, #3
54DA22:  ITTE CC
54DA24:  LSLCC           R5, R5, #3
54DA26:  LSRCC.W         R4, R12, R5
54DA2A:  MOVCS           R4, #0x23 ; '#'
54DA2C:  ADDS            R5, R3, #1
54DA2E:  CMP             R3, #0xFE
54DA30:  STRB            R4, [R6,R3]
54DA32:  BLT             loc_54D9CE
54DA34:  B               loc_54DA38
54DA36:  MOV             R5, R3
54DA38:  LDR             R1, =(unk_A01AC2 - 0x54DA3E)
54DA3A:  ADD             R1, PC; unk_A01AC2 ; char *
54DA3C:  STRB            R2, [R1,R5]
54DA3E:  BLX             strcpy
54DA42:  LDR             R0, =(byte_61CD7E - 0x54DA4E)
54DA44:  MOVS            R1, #(stderr+1); char *
54DA46:  STRB.W          R1, [R10,#0x22]
54DA4A:  ADD             R0, PC; byte_61CD7E ; this
54DA4C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
54DA50:  LDR             R0, [SP,#0x58+var_54]
54DA52:  CBNZ            R0, loc_54DA9C
54DA54:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x54DA5A)
54DA56:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
54DA58:  LDR             R0, [R0]; CGame::bMissionPackGame ...
54DA5A:  LDRB            R0, [R0]; CGame::bMissionPackGame
54DA5C:  CBZ             R0, loc_54DA9C
54DA5E:  LDRB.W          R0, [R10,#0x23]
54DA62:  CBNZ            R0, loc_54DA9C
54DA64:  LDR             R0, =(FrontEndMenuManager_ptr - 0x54DA6C)
54DA66:  LDR             R5, =(byte_61CD7E - 0x54DA6E)
54DA68:  ADD             R0, PC; FrontEndMenuManager_ptr
54DA6A:  ADD             R5, PC; byte_61CD7E
54DA6C:  LDR             R4, [R0]; FrontEndMenuManager
54DA6E:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x54DA74)
54DA70:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
54DA72:  LDR             R6, [R0]; CGame::bMissionPackGame ...
54DA74:  MOV             R0, R4; this
54DA76:  BLX             j__ZN12CMenuManager25CheckMissionPackValidMenuEv; CMenuManager::CheckMissionPackValidMenu(void)
54DA7A:  CBZ             R0, loc_54DA90
54DA7C:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
54DA80:  MOV             R0, R10; this
54DA82:  BLX             j__ZN5CText19LoadMissionPackTextEv; CText::LoadMissionPackText(void)
54DA86:  MOV             R0, R5; this
54DA88:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
54DA8C:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
54DA90:  LDRB.W          R0, [R10,#0x23]
54DA94:  CBNZ            R0, loc_54DA9C
54DA96:  LDRB            R0, [R6]; CGame::bMissionPackGame
54DA98:  CMP             R0, #0
54DA9A:  BNE             loc_54DA74
54DA9C:  LDR             R0, =(__stack_chk_guard_ptr - 0x54DAA4)
54DA9E:  LDR             R1, [SP,#0x58+var_20]
54DAA0:  ADD             R0, PC; __stack_chk_guard_ptr
54DAA2:  LDR             R0, [R0]; __stack_chk_guard
54DAA4:  LDR             R0, [R0]
54DAA6:  SUBS            R0, R0, R1
54DAA8:  ITTT EQ
54DAAA:  ADDEQ           SP, SP, #0x3C ; '<'
54DAAC:  POPEQ.W         {R8-R11}
54DAB0:  POPEQ           {R4-R7,PC}
54DAB2:  BLX             __stack_chk_fail
