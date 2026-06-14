; =========================================================
; Game Engine Function: _ZN11CPopulation13LoadPedGroupsEv
; Address            : 0x474DE0 - 0x474F7C
; =========================================================

474DE0:  PUSH            {R4-R7,LR}
474DE2:  ADD             R7, SP, #0xC
474DE4:  PUSH.W          {R8-R11}
474DE8:  SUB             SP, SP, #4
474DEA:  VPUSH           {D8-D9}
474DEE:  SUB.W           SP, SP, #0x520
474DF2:  LDR             R0, =(__stack_chk_guard_ptr - 0x474DF8)
474DF4:  ADD             R0, PC; __stack_chk_guard_ptr
474DF6:  LDR             R0, [R0]; __stack_chk_guard
474DF8:  LDR             R1, [R0]; char *
474DFA:  LDR             R0, =(aData_4 - 0x474E04); "\\DATA\\"
474DFC:  STR.W           R1, [R7,#var_34]
474E00:  ADD             R0, PC; "\\DATA\\"
474E02:  BLX             j__ZN8CFileMgr9ChangeDirEPKc; CFileMgr::ChangeDir(char const*)
474E06:  ADR             R0, aPedgrpDat; "PEDGRP.DAT"
474E08:  ADR             R1, aR_9; "r"
474E0A:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
474E0E:  STR             R0, [SP,#0x550+var_544]
474E10:  ADR             R0, asc_474F94; "\\"
474E12:  BLX             j__ZN8CFileMgr9ChangeDirEPKc; CFileMgr::ChangeDir(char const*)
474E16:  LDR             R0, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x474E24)
474E18:  ADD             R1, SP, #0x550+var_534
474E1A:  ADD.W           R8, R1, #1
474E1E:  ADD             R6, SP, #0x550+var_434
474E20:  ADD             R0, PC; _ZN11CPopulation11m_PedGroupsE_ptr
474E22:  LDR             R0, [R0]; CPopulation::m_PedGroups ...
474E24:  STR             R0, [SP,#0x550+var_548]
474E26:  LDR             R0, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x474E2C)
474E28:  ADD             R0, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
474E2A:  LDR             R0, [R0]; CPopulation::m_nNumPedsInGroup ...
474E2C:  STR             R0, [SP,#0x550+var_54C]
474E2E:  MOV.W           R0, #0x7D0
474E32:  VDUP.16         Q4, R0
474E36:  LDR             R0, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x474E3C)
474E38:  ADD             R0, PC; _ZN11CPopulation11m_PedGroupsE_ptr
474E3A:  LDR             R0, [R0]; CPopulation::m_PedGroups ...
474E3C:  STR             R0, [SP,#0x550+var_540]
474E3E:  MOVS            R0, #0
474E40:  B               loc_474E4A
474E42:  LDR             R0, [SP,#0x550+var_53C]
474E44:  ADDS            R4, #0x2A ; '*'
474E46:  STR             R4, [SP,#0x550+var_548]
474E48:  ADDS            R0, #1
474E4A:  STR             R0, [SP,#0x550+var_53C]
474E4C:  LDR             R0, [SP,#0x550+var_544]; this
474E4E:  MOV             R1, R6; unsigned int
474E50:  MOV.W           R2, #(elf_hash_bucket+0x304); char *
474E54:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
474E58:  CMP             R0, #1
474E5A:  BNE             loc_474F50
474E5C:  ADD             R1, SP, #0x550+var_434
474E5E:  MOVS            R2, #0x20 ; ' '
474E60:  B               loc_474E64
474E62:  ADDS            R1, #1
474E64:  LDRB            R0, [R1]
474E66:  CMP             R0, #0xD
474E68:  IT NE
474E6A:  CMPNE           R0, #0x2C ; ','
474E6C:  BEQ             loc_474E74
474E6E:  CMP             R0, #0xA
474E70:  BNE             loc_474E62
474E72:  B               loc_474E78
474E74:  STRB            R2, [R1]
474E76:  B               loc_474E62
474E78:  MOVS            R0, #0
474E7A:  MOVS            R5, #0
474E7C:  STRB            R0, [R1]
474E7E:  MOV.W           R9, #0
474E82:  MOVS            R1, #0
474E84:  SUB.W           R10, R8, R5
474E88:  ADDS            R3, R5, #1
474E8A:  SUBS            R2, R5, #1
474E8C:  MOV             R11, R1
474E8E:  MOV             R1, R3
474E90:  ADDS            R3, R6, R2
474E92:  SUB.W           R10, R10, #1
474E96:  ADDS            R2, #1
474E98:  LDRB            R5, [R3,#1]
474E9A:  SUBS            R3, R5, #1
474E9C:  UXTB            R4, R3
474E9E:  ADDS            R3, R1, #1; int
474EA0:  CMP             R4, #0x20 ; ' '
474EA2:  BCC             loc_474E8E
474EA4:  CMP             R5, #0x23 ; '#'
474EA6:  BEQ             loc_474EFA
474EA8:  CMP             R5, #0x21 ; '!'
474EAA:  MOV             R5, R2
474EAC:  BCC             loc_474EB8
474EAE:  LDRB            R3, [R6,R1]
474EB0:  ADDS            R1, #1
474EB2:  CMP             R3, #0x20 ; ' '
474EB4:  BHI             loc_474EAE
474EB6:  SUBS            R5, R1, #1
474EB8:  CMP             R5, R2
474EBA:  BEQ             loc_474EFA
474EBC:  ADD             R4, SP, #0x550+var_534
474EBE:  ADDS            R1, R6, R2; char *
474EC0:  SUBS            R2, R5, R2; size_t
474EC2:  MOV             R0, R4; char *
474EC4:  BLX             strncpy
474EC8:  MOVS            R0, #0
474ECA:  ADD             R1, SP, #0x550+var_538; char *
474ECC:  STRB.W          R0, [R5,R10]
474ED0:  MOV             R0, R4; this
474ED2:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
474ED6:  CBZ             R0, loc_474EEC
474ED8:  MOVS            R0, #0x2A ; '*'
474EDA:  LDRD.W          R1, R2, [SP,#0x550+var_540]
474EDE:  MLA.W           R0, R2, R0, R1
474EE2:  LDR             R1, [SP,#0x550+var_538]
474EE4:  STRH.W          R1, [R0,R9,LSL#1]
474EE8:  ADD.W           R9, R9, #1
474EEC:  ADD.W           R1, R11, #1
474EF0:  MOVS            R0, #1
474EF2:  CMP.W           R11, #0x14
474EF6:  BLT             loc_474E84
474EF8:  B               loc_474EFE
474EFA:  LSLS            R0, R0, #0x1F
474EFC:  BEQ             loc_474E4C
474EFE:  LDR             R0, [SP,#0x550+var_54C]
474F00:  CMP.W           R9, #0x14
474F04:  LDR             R1, [SP,#0x550+var_53C]
474F06:  MOV.W           R5, #0x7D0
474F0A:  LDR             R4, [SP,#0x550+var_548]
474F0C:  STRH.W          R9, [R0,R1,LSL#1]
474F10:  BGT             loc_474E42
474F12:  RSB.W           R1, R9, #0x15
474F16:  CMP             R1, #8
474F18:  BCS             loc_474F1E
474F1A:  MOV             R0, R9
474F1C:  B               loc_474F42
474F1E:  BIC.W           R12, R1, #7
474F22:  CMP.W           R12, #0
474F26:  BEQ             loc_474F40
474F28:  ADD.W           R0, R9, R12
474F2C:  ADD.W           R3, R4, R9,LSL#1
474F30:  MOV             R2, R12
474F32:  VST1.16         {D8-D9}, [R3]!
474F36:  SUBS            R2, #8
474F38:  BNE             loc_474F32
474F3A:  CMP             R1, R12
474F3C:  BNE             loc_474F42
474F3E:  B               loc_474E42
474F40:  MOV             R0, R9
474F42:  ADDS            R1, R0, #1
474F44:  STRH.W          R5, [R4,R0,LSL#1]
474F48:  CMP             R0, #0x14
474F4A:  MOV             R0, R1
474F4C:  BLT             loc_474F42
474F4E:  B               loc_474E42
474F50:  LDR             R0, [SP,#0x550+var_544]; this
474F52:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
474F56:  LDR             R0, =(__stack_chk_guard_ptr - 0x474F60)
474F58:  LDR.W           R1, [R7,#var_34]
474F5C:  ADD             R0, PC; __stack_chk_guard_ptr
474F5E:  LDR             R0, [R0]; __stack_chk_guard
474F60:  LDR             R0, [R0]
474F62:  SUBS            R0, R0, R1
474F64:  ITTTT EQ
474F66:  ADDEQ.W         SP, SP, #0x520
474F6A:  VPOPEQ          {D8-D9}
474F6E:  ADDEQ           SP, SP, #4
474F70:  POPEQ.W         {R8-R11}
474F74:  IT EQ
474F76:  POPEQ           {R4-R7,PC}
474F78:  BLX             __stack_chk_fail
