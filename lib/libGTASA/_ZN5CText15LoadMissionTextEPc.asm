; =========================================================
; Game Engine Function: _ZN5CText15LoadMissionTextEPc
; Address            : 0x54DEA8 - 0x54E17C
; =========================================================

54DEA8:  PUSH            {R4-R7,LR}
54DEAA:  ADD             R7, SP, #0xC
54DEAC:  PUSH.W          {R8-R11}
54DEB0:  SUB             SP, SP, #0x4C
54DEB2:  MOV             R11, R0
54DEB4:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x54DEBE)
54DEB6:  MOV             R10, R1
54DEB8:  LDR             R1, =(__stack_chk_guard_ptr - 0x54DEC0)
54DEBA:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
54DEBC:  ADD             R1, PC; __stack_chk_guard_ptr
54DEBE:  LDR             R0, [R0]; CGame::bMissionPackGame ...
54DEC0:  LDR             R1, [R1]; __stack_chk_guard
54DEC2:  LDRB            R0, [R0]; CGame::bMissionPackGame
54DEC4:  LDR             R1, [R1]; unsigned __int8
54DEC6:  CMP             R0, #0
54DEC8:  STR             R1, [SP,#0x68+var_20]
54DECA:  BNE.W           loc_54E162
54DECE:  MOVS            R0, #(stderr+1); this
54DED0:  BLX             j__ZN9CMessages31ClearAllMessagesDisplayedByGameEh; CMessages::ClearAllMessagesDisplayedByGame(uchar)
54DED4:  LDR.W           R0, [R11,#0x10]; void *
54DED8:  CBZ             R0, loc_54DEE4
54DEDA:  BLX             _ZdaPv; operator delete[](void *)
54DEDE:  MOVS            R0, #0
54DEE0:  STR.W           R0, [R11,#0x10]
54DEE4:  LDR.W           R0, [R11,#0x18]; void *
54DEE8:  MOV.W           R8, #0
54DEEC:  STR.W           R8, [R11,#0x14]
54DEF0:  CBZ             R0, loc_54DEFA
54DEF2:  BLX             _ZdaPv; operator delete[](void *)
54DEF6:  STR.W           R8, [R11,#0x18]
54DEFA:  MOV             R4, R11
54DEFC:  STR.W           R8, [R4,#0x23]!
54DF00:  ADDS            R0, R4, #1
54DF02:  STR.W           R8, [R4,#4]
54DF06:  STR.W           R8, [R4,#-7]
54DF0A:  STRB.W          R8, [R4,#8]
54DF0E:  STR             R0, [SP,#0x68+var_64]
54DF10:  MOV             R0, R10; char *
54DF12:  BLX             strlen
54DF16:  STR             R4, [SP,#0x68+var_60]
54DF18:  LDRH.W          R9, [R4,#0xA69]
54DF1C:  UXTH            R4, R0
54DF1E:  B               loc_54DF24
54DF20:  ADD.W           R8, R8, #1
54DF24:  UXTH.W          R6, R8
54DF28:  MOVS            R1, #(stderr+1); char *
54DF2A:  LSLS            R0, R6, #1
54DF2C:  UXTAH.W         R0, R0, R8
54DF30:  ADD.W           R0, R11, R0,LSL#2
54DF34:  ADD.W           R5, R0, #0x12C
54DF38:  LSLS            R0, R1, #0x1F
54DF3A:  BEQ             loc_54DF5E
54DF3C:  CMP             R6, R9
54DF3E:  BCS             loc_54DF5E
54DF40:  MOV             R0, R5; char *
54DF42:  BLX             strlen
54DF46:  UXTH            R0, R0
54DF48:  CMP             R4, R0
54DF4A:  BNE             loc_54DF20
54DF4C:  MOV             R0, R5; char *
54DF4E:  MOV             R1, R10; char *
54DF50:  MOV             R2, R4; size_t
54DF52:  BLX             strncmp
54DF56:  MOVS            R1, #0
54DF58:  CMP             R0, #0
54DF5A:  BEQ             loc_54DF38
54DF5C:  B               loc_54DF20
54DF5E:  CMP             R0, #0
54DF60:  BNE.W           loc_54E162
54DF64:  LDR             R0, =(aAlcInvalidCont+0xF - 0x54DF6E); "TEXT"
54DF66:  STR.W           R10, [SP,#0x68+var_68]
54DF6A:  ADD             R0, PC; this
54DF6C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
54DF70:  LDR             R0, =(FrontEndMenuManager_ptr - 0x54DF76)
54DF72:  ADD             R0, PC; FrontEndMenuManager_ptr
54DF74:  LDR             R0, [R0]; FrontEndMenuManager
54DF76:  LDRSB.W         R0, [R0,#(byte_98F140 - 0x98F0F8)]
54DF7A:  CMP             R0, #6; switch 7 cases
54DF7C:  BHI             def_54DF7E; jumptable 0054DF7E default case
54DF7E:  TBB.W           [PC,R0]; switch jump
54DF82:  DCB 4; jump table for switch statement
54DF83:  DCB 7
54DF84:  DCB 0xA
54DF85:  DCB 0x16
54DF86:  DCB 0x19
54DF87:  DCB 0x1C
54DF88:  DCB 0x26
54DF89:  ALIGN 2
54DF8A:  LDR             R0, =(aAmericanGxt - 0x54DF90); jumptable 0054DF7E case 0
54DF8C:  ADD             R0, PC; "AMERICAN.GXT"
54DF8E:  B               loc_54DFD2
54DF90:  LDR             R0, =(aFrenchGxt - 0x54DF96); jumptable 0054DF7E case 1
54DF92:  ADD             R0, PC; "FRENCH.GXT"
54DF94:  B               loc_54DF9A
54DF96:  LDR             R0, =(aGermanGxt - 0x54DF9C); jumptable 0054DF7E case 2
54DF98:  ADD             R0, PC; "GERMAN.GXT"
54DF9A:  MOVS            R1, #0
54DF9C:  VLDR            D16, [R0]
54DFA0:  MOVW            R0, #0x5458
54DFA4:  STRB.W          R1, [SP,#0x68+var_30+2]
54DFA8:  STRH.W          R0, [SP,#0x68+var_30]
54DFAC:  B               loc_54DFE6
54DFAE:  LDR             R0, =(aItalianGxt - 0x54DFB4); jumptable 0054DF7E case 3
54DFB0:  ADD             R0, PC; "ITALIAN.GXT"
54DFB2:  B               loc_54DFBE
54DFB4:  LDR             R0, =(aSpanishGxt - 0x54DFBA); jumptable 0054DF7E case 4
54DFB6:  ADD             R0, PC; "SPANISH.GXT"
54DFB8:  B               loc_54DFBE
54DFBA:  LDR             R0, =(aRussianGxt - 0x54DFC0); jumptable 0054DF7E case 5
54DFBC:  ADD             R0, PC; "RUSSIAN.GXT"
54DFBE:  VLDR            D16, [R0]
54DFC2:  MOV             R0, #0x545847
54DFCA:  STR             R0, [SP,#0x68+var_30]
54DFCC:  B               loc_54DFE6
54DFCE:  LDR             R0, =(aJapaneseGxt - 0x54DFD4); jumptable 0054DF7E case 6
54DFD0:  ADD             R0, PC; "JAPANESE.GXT"
54DFD2:  ADDS            R1, R0, #5
54DFD4:  ADD             R2, SP, #0x68+var_38
54DFD6:  VLDR            D16, [R0]
54DFDA:  ORR.W           R0, R2, #5
54DFDE:  VLD1.8          {D17}, [R1]
54DFE2:  VST1.8          {D17}, [R0]
54DFE6:  VSTR            D16, [SP,#0x68+var_38]
54DFEA:  SXTH.W          R0, R8; jumptable 0054DF7E default case
54DFEE:  STR.W           R11, [SP,#0x68+var_58]
54DFF2:  ADD.W           R0, R0, R0,LSL#1; this
54DFF6:  ADD.W           R4, R11, R0,LSL#2
54DFFA:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
54DFFE:  ADD             R0, SP, #0x68+var_38; this
54E000:  ADR             R1, dword_54E1A8; char *
54E002:  LDR.W           R4, [R4,#0x134]
54E006:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
54E00A:  MOV             R1, R4; unsigned int
54E00C:  MOVS            R2, #0; int
54E00E:  MOV             R6, R0
54E010:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
54E014:  SUB.W           R4, R7, #-var_42
54E018:  MOVS            R0, #1
54E01A:  STR             R0, [SP,#0x68+var_5C]
54E01C:  MOV             R0, R6; this
54E01E:  MOV             R1, R4; unsigned int
54E020:  MOVS            R2, #(stderr+1); char *
54E022:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E026:  ADDS            R1, R4, #1; unsigned int
54E028:  MOV             R0, R6; this
54E02A:  MOVS            R2, #(stderr+1); char *
54E02C:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E030:  ADDS            R1, R4, #2; unsigned int
54E032:  MOV             R0, R6; this
54E034:  MOVS            R2, #(stderr+1); char *
54E036:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E03A:  ADDS            R1, R4, #3; unsigned int
54E03C:  MOV             R0, R6; this
54E03E:  MOVS            R2, #(stderr+1); char *
54E040:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E044:  ADDS            R1, R4, #4; unsigned int
54E046:  MOV             R0, R6; this
54E048:  MOVS            R2, #(stderr+1); char *
54E04A:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E04E:  ADDS            R1, R4, #5; unsigned int
54E050:  MOV             R0, R6; this
54E052:  MOVS            R2, #(stderr+1); char *
54E054:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E058:  ADDS            R1, R4, #6; unsigned int
54E05A:  MOV             R0, R6; this
54E05C:  MOVS            R2, #(stderr+1); char *
54E05E:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E062:  ADDS            R1, R4, #7; unsigned int
54E064:  MOV             R0, R6; this
54E066:  MOVS            R2, #(stderr+1); char *
54E068:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E06C:  LDR.W           R10, =(aTkey - 0x54E07E); "TKEY"
54E070:  ADD             R4, SP, #0x68+var_4C
54E072:  LDR.W           R11, =(aTdat - 0x54E080); "TDAT"
54E076:  SUB.W           R8, R7, #-var_4D
54E07A:  ADD             R10, PC; "TKEY"
54E07C:  ADD             R11, PC; "TDAT"
54E07E:  MOVS            R0, #0
54E080:  STR             R0, [SP,#0x68+var_54]
54E082:  B               loc_54E086
54E084:  STR             R0, [SP,#0x68+var_54]
54E086:  MOV             R0, R6; this
54E088:  MOV             R1, R4; unsigned int
54E08A:  MOVS            R2, #byte_8; char *
54E08C:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E090:  LDR.W           R9, [SP,#0x68+var_48]
54E094:  CMP.W           R9, #0
54E098:  BEQ             loc_54E086
54E09A:  MOV             R0, R4; char *
54E09C:  MOV             R1, R10; char *
54E09E:  MOVS            R2, #4; size_t
54E0A0:  BLX             strncmp
54E0A4:  CBZ             R0, loc_54E0CA
54E0A6:  MOV             R0, R4; char *
54E0A8:  MOV             R1, R11; char *
54E0AA:  MOVS            R2, #4; size_t
54E0AC:  BLX             strncmp
54E0B0:  CBZ             R0, loc_54E0F2
54E0B2:  MOVS            R5, #0
54E0B4:  MOV             R0, R6; this
54E0B6:  MOV             R1, R8; unsigned int
54E0B8:  MOVS            R2, #(stderr+1); char *
54E0BA:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54E0BE:  ADDS            R5, #1
54E0C0:  LDR             R0, [SP,#0x68+var_48]
54E0C2:  UXTH            R1, R5
54E0C4:  CMP             R0, R1
54E0C6:  BHI             loc_54E0B4
54E0C8:  B               loc_54E086
54E0CA:  LDR             R5, [SP,#0x68+var_58]
54E0CC:  MOV.W           R0, R9,LSR#3
54E0D0:  STR             R0, [R5,#0x14]
54E0D2:  BIC.W           R0, R9, #7; unsigned int
54E0D6:  BLX             _Znaj; operator new[](uint)
54E0DA:  MOV             R1, R0; unsigned int
54E0DC:  MOV             R0, R6; this
54E0DE:  MOV             R2, R9; char *
54E0E0:  STR             R1, [R5,#0x10]
54E0E2:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54E0E6:  LDR             R0, [SP,#0x68+var_5C]
54E0E8:  LSLS            R0, R0, #0x1F
54E0EA:  MOV.W           R0, #1
54E0EE:  BNE             loc_54E084
54E0F0:  B               loc_54E11A
54E0F2:  LDR             R5, [SP,#0x68+var_58]
54E0F4:  MOV.W           R0, R9,LSR#1
54E0F8:  STR             R0, [R5,#0x1C]
54E0FA:  BIC.W           R0, R9, #1; unsigned int
54E0FE:  BLX             _Znaj; operator new[](uint)
54E102:  MOV             R1, R0; unsigned int
54E104:  MOV             R0, R6; this
54E106:  MOV             R2, R9; char *
54E108:  STR             R1, [R5,#0x18]
54E10A:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54E10E:  LDR             R0, [SP,#0x68+var_54]
54E110:  LSLS            R0, R0, #0x18
54E112:  MOV.W           R0, #0
54E116:  STR             R0, [SP,#0x68+var_5C]
54E118:  BEQ             loc_54E07E
54E11A:  LDR             R5, [SP,#0x68+var_58]
54E11C:  LDR             R0, [R5,#0x14]
54E11E:  CBZ             R0, loc_54E138
54E120:  LDR             R0, [R5,#0x10]
54E122:  MOVS            R2, #0
54E124:  LDR             R1, [R5,#0x18]; unsigned int
54E126:  LDR.W           R3, [R0,R2,LSL#3]
54E12A:  ADD             R3, R1
54E12C:  STR.W           R3, [R0,R2,LSL#3]
54E130:  ADDS            R2, #1
54E132:  LDR             R3, [R5,#0x14]
54E134:  CMP             R2, R3
54E136:  BCC             loc_54E126
54E138:  MOV             R0, R6; this
54E13A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
54E13E:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
54E142:  LDR             R0, =(byte_61CD7E - 0x54E148)
54E144:  ADD             R0, PC; byte_61CD7E ; this
54E146:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
54E14A:  LDRD.W          R1, R0, [SP,#0x68+var_68]; char *
54E14E:  BLX             strcpy
54E152:  LDR             R0, =(anytimeMissionScript_ptr - 0x54E15A)
54E154:  MOVS            R1, #0
54E156:  ADD             R0, PC; anytimeMissionScript_ptr
54E158:  LDR             R0, [R0]; anytimeMissionScript
54E15A:  STRB            R1, [R0]
54E15C:  MOVS            R0, #1
54E15E:  LDR             R1, [SP,#0x68+var_60]
54E160:  STRB            R0, [R1]
54E162:  LDR             R0, =(__stack_chk_guard_ptr - 0x54E16A)
54E164:  LDR             R1, [SP,#0x68+var_20]
54E166:  ADD             R0, PC; __stack_chk_guard_ptr
54E168:  LDR             R0, [R0]; __stack_chk_guard
54E16A:  LDR             R0, [R0]
54E16C:  SUBS            R0, R0, R1
54E16E:  ITTT EQ
54E170:  ADDEQ           SP, SP, #0x4C ; 'L'
54E172:  POPEQ.W         {R8-R11}
54E176:  POPEQ           {R4-R7,PC}
54E178:  BLX             __stack_chk_fail
