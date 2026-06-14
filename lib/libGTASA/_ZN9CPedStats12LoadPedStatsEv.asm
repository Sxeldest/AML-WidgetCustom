; =========================================================
; Game Engine Function: _ZN9CPedStats12LoadPedStatsEv
; Address            : 0x473F40 - 0x47403A
; =========================================================

473F40:  PUSH            {R4-R7,LR}
473F42:  ADD             R7, SP, #0xC
473F44:  PUSH.W          {R8-R11}
473F48:  SUB             SP, SP, #0x74
473F4A:  LDR             R0, =(__stack_chk_guard_ptr - 0x473F52)
473F4C:  ADR             R1, aR_19; "r"
473F4E:  ADD             R0, PC; __stack_chk_guard_ptr
473F50:  LDR             R0, [R0]; __stack_chk_guard
473F52:  LDR             R0, [R0]
473F54:  STR             R0, [SP,#0x90+var_20]
473F56:  ADR             R0, aDataPedstatsDa; "DATA\\PEDSTATS.DAT"
473F58:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
473F5C:  MOV             R4, R0
473F5E:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
473F62:  CMP             R0, #0
473F64:  BEQ             loc_47401A
473F66:  LDR             R1, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x473F76)
473F68:  ADR.W           R8, aSFFDDDDFFDD; "%s %f %f %d %d %d %d %f %f %d %d"
473F6C:  ADD             R6, SP, #0x90+var_40
473F6E:  ADD.W           R9, SP, #0x90+var_5C
473F72:  ADD             R1, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
473F74:  MOVS            R5, #0
473F76:  MOV.W           R11, #0x34 ; '4'
473F7A:  LDR.W           R10, [R1]; CPedStats::ms_apPedStats ...
473F7E:  B               loc_474006
473F80:  ADD             R1, SP, #0x90+var_58
473F82:  STR             R1, [SP,#0x90+var_70]
473F84:  ADD             R1, SP, #0x90+var_60
473F86:  STR             R1, [SP,#0x90+var_90]
473F88:  ADD             R1, SP, #0x90+var_44
473F8A:  STR             R1, [SP,#0x90+var_8C]
473F8C:  ADD             R1, SP, #0x90+var_48
473F8E:  STR             R1, [SP,#0x90+var_88]
473F90:  ADD             R1, SP, #0x90+var_4C
473F92:  STR             R1, [SP,#0x90+var_84]
473F94:  ADD             R1, SP, #0x90+var_50
473F96:  STR             R1, [SP,#0x90+var_80]
473F98:  ADD             R1, SP, #0x90+var_64
473F9A:  STR             R1, [SP,#0x90+var_7C]
473F9C:  ADD             R1, SP, #0x90+var_68
473F9E:  STR             R1, [SP,#0x90+var_78]
473FA0:  ADD             R1, SP, #0x90+var_54
473FA2:  STR             R1, [SP,#0x90+var_74]
473FA4:  MOV             R1, R8; format
473FA6:  MOV             R2, R6
473FA8:  MOV             R3, R9
473FAA:  BLX             sscanf
473FAE:  MUL.W           R0, R5, R11
473FB2:  LDR.W           R1, [R10]; CPedStats::ms_apPedStats
473FB6:  STR             R5, [R1,R0]
473FB8:  MOV             R1, R6; char *
473FBA:  LDR.W           R0, [R10]; CPedStats::ms_apPedStats
473FBE:  MLA.W           R0, R5, R11, R0
473FC2:  ADDS            R0, #4; char *
473FC4:  BLX             strcpy
473FC8:  LDR.W           R0, [R10]; CPedStats::ms_apPedStats
473FCC:  MLA.W           R0, R5, R11, R0
473FD0:  LDRD.W          R2, R1, [SP,#0x90+var_60]
473FD4:  ADDS            R5, #1
473FD6:  STRD.W          R1, R2, [R0,#0x1C]
473FDA:  LDR             R1, [SP,#0x90+var_44]
473FDC:  STRB.W          R1, [R0,#0x24]
473FE0:  LDR             R1, [SP,#0x90+var_48]
473FE2:  STRB.W          R1, [R0,#0x25]
473FE6:  LDR             R1, [SP,#0x90+var_4C]
473FE8:  STRB.W          R1, [R0,#0x26]
473FEC:  LDR             R1, [SP,#0x90+var_50]
473FEE:  STRB.W          R1, [R0,#0x27]
473FF2:  LDRD.W          R2, R1, [SP,#0x90+var_68]
473FF6:  STRD.W          R1, R2, [R0,#0x28]
473FFA:  LDR             R1, [SP,#0x90+var_54]
473FFC:  STRH            R1, [R0,#0x30]
473FFE:  LDR             R1, [SP,#0x90+var_58]
474000:  STRB.W          R1, [R0,#0x32]
474004:  B               loc_474010
474006:  LDRB            R1, [R0]; unsigned int
474008:  CMP             R1, #0x23 ; '#'
47400A:  IT NE
47400C:  CMPNE           R1, #0
47400E:  BNE             loc_473F80
474010:  MOV             R0, R4; this
474012:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
474016:  CMP             R0, #0
474018:  BNE             loc_474006
47401A:  MOV             R0, R4; this
47401C:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
474020:  LDR             R0, =(__stack_chk_guard_ptr - 0x474028)
474022:  LDR             R1, [SP,#0x90+var_20]
474024:  ADD             R0, PC; __stack_chk_guard_ptr
474026:  LDR             R0, [R0]; __stack_chk_guard
474028:  LDR             R0, [R0]
47402A:  SUBS            R0, R0, R1
47402C:  ITTT EQ
47402E:  ADDEQ           SP, SP, #0x74 ; 't'
474030:  POPEQ.W         {R8-R11}
474034:  POPEQ           {R4-R7,PC}
474036:  BLX             __stack_chk_fail
