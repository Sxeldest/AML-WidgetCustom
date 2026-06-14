; =========================================================
; Game Engine Function: _ZN11CPopulation13LoadCarGroupsEv
; Address            : 0x474FA8 - 0x475158
; =========================================================

474FA8:  PUSH            {R4-R7,LR}
474FAA:  ADD             R7, SP, #0xC
474FAC:  PUSH.W          {R8-R11}
474FB0:  SUB             SP, SP, #4
474FB2:  VPUSH           {D8-D9}
474FB6:  SUB.W           SP, SP, #0x520
474FBA:  LDR             R0, =(__stack_chk_guard_ptr - 0x474FC0)
474FBC:  ADD             R0, PC; __stack_chk_guard_ptr
474FBE:  LDR             R0, [R0]; __stack_chk_guard
474FC0:  LDR             R1, [R0]; char *
474FC2:  LDR             R0, =(aData_4 - 0x474FCC); "\\DATA\\"
474FC4:  STR.W           R1, [R7,#var_34]
474FC8:  ADD             R0, PC; "\\DATA\\"
474FCA:  BLX             j__ZN8CFileMgr9ChangeDirEPKc; CFileMgr::ChangeDir(char const*)
474FCE:  ADR             R0, aCargrpDat; "CARGRP.DAT"
474FD0:  ADR             R1, aR_10; "r"
474FD2:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
474FD6:  STR             R0, [SP,#0x550+var_548]
474FD8:  ADR             R0, asc_475170; "\\"
474FDA:  BLX             j__ZN8CFileMgr9ChangeDirEPKc; CFileMgr::ChangeDir(char const*)
474FDE:  LDR             R0, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x474FEE)
474FE0:  MOV.W           R4, #0x7D0
474FE4:  ADD             R6, SP, #0x550+var_434
474FE6:  VDUP.16         Q4, R4
474FEA:  ADD             R0, PC; _ZN11CPopulation11m_CarGroupsE_ptr
474FEC:  ADD             R1, SP, #0x550+var_534
474FEE:  MOVS            R5, #0x20 ; ' '
474FF0:  ADDS            R1, #1
474FF2:  LDR.W           R8, [R0]; CPopulation::m_CarGroups ...
474FF6:  LDR             R0, =(_ZN11CPopulation17m_nNumCarsInGroupE_ptr - 0x474FFE)
474FF8:  STR             R1, [SP,#0x550+var_53C]
474FFA:  ADD             R0, PC; _ZN11CPopulation17m_nNumCarsInGroupE_ptr
474FFC:  LDR             R0, [R0]; CPopulation::m_nNumCarsInGroup ...
474FFE:  STR             R0, [SP,#0x550+var_550]
475000:  LDR             R0, =(_ZN11CPopulation11m_CarGroupsE_ptr - 0x475006)
475002:  ADD             R0, PC; _ZN11CPopulation11m_CarGroupsE_ptr
475004:  LDR             R0, [R0]; CPopulation::m_CarGroups ...
475006:  STR             R0, [SP,#0x550+var_544]
475008:  MOVS            R0, #0
47500A:  B               loc_475014
47500C:  LDR             R0, [SP,#0x550+var_540]
47500E:  ADD.W           R8, R8, #0x2E ; '.'
475012:  ADDS            R0, #1
475014:  STR             R0, [SP,#0x550+var_540]
475016:  STR.W           R8, [SP,#0x550+var_54C]
47501A:  LDR             R0, [SP,#0x550+var_548]; this
47501C:  MOV             R1, R6; unsigned int
47501E:  MOV.W           R2, #(elf_hash_bucket+0x304); char *
475022:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
475026:  CMP             R0, #1
475028:  BNE.W           loc_47512C
47502C:  ADD             R0, SP, #0x550+var_434
47502E:  B               loc_475032
475030:  ADDS            R0, #1
475032:  LDRB            R1, [R0]
475034:  CMP             R1, #0xD
475036:  IT NE
475038:  CMPNE           R1, #0x2C ; ','
47503A:  BEQ             loc_475042
47503C:  CMP             R1, #0xA
47503E:  BNE             loc_475030
475040:  B               loc_475046
475042:  STRB            R5, [R0]
475044:  B               loc_475030
475046:  MOVS            R5, #0
475048:  MOV.W           R9, #0
47504C:  STRB            R5, [R0]
47504E:  MOVS            R0, #0
475050:  MOV             R8, R0
475052:  LDR             R0, [SP,#0x550+var_53C]
475054:  ADDS            R2, R5, #1
475056:  SUB.W           R11, R0, R5
47505A:  SUBS            R0, R5, #1
47505C:  MOV             R1, R2
47505E:  ADDS            R2, R6, R0
475060:  SUB.W           R11, R11, #1
475064:  ADDS            R0, #1
475066:  LDRB            R3, [R2,#1]; int
475068:  SUBS            R2, R3, #1
47506A:  UXTB            R5, R2
47506C:  ADDS            R2, R1, #1
47506E:  CMP             R5, #0x20 ; ' '
475070:  BCC             loc_47505C
475072:  CMP             R3, #0x23 ; '#'
475074:  BEQ             loc_4750D0
475076:  CMP             R3, #0x21 ; '!'
475078:  MOV             R5, R0
47507A:  BCC             loc_475086
47507C:  LDRB            R2, [R6,R1]
47507E:  ADDS            R1, #1
475080:  CMP             R2, #0x20 ; ' '
475082:  BHI             loc_47507C
475084:  SUBS            R5, R1, #1
475086:  CMP             R5, R0
475088:  BEQ             loc_4750CC
47508A:  ADD.W           R10, SP, #0x550+var_534
47508E:  ADDS            R1, R6, R0; char *
475090:  SUBS            R2, R5, R0; size_t
475092:  MOV             R0, R10; char *
475094:  BLX             strncpy
475098:  MOVS            R0, #0
47509A:  ADD             R1, SP, #0x550+var_538; char *
47509C:  STRB.W          R0, [R5,R11]
4750A0:  MOV             R0, R10; this
4750A2:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
4750A6:  CBZ             R0, loc_4750BC
4750A8:  MOVS            R0, #0x2E ; '.'
4750AA:  LDRD.W          R1, R2, [SP,#0x550+var_544]
4750AE:  MLA.W           R0, R2, R0, R1
4750B2:  LDR             R1, [SP,#0x550+var_538]
4750B4:  STRH.W          R1, [R0,R9,LSL#1]
4750B8:  ADD.W           R9, R9, #1
4750BC:  ADD.W           R0, R8, #1
4750C0:  MOV.W           R4, #0x7D0
4750C4:  CMP.W           R8, #0x16
4750C8:  BLT             loc_475050
4750CA:  B               loc_4750D0
4750CC:  MOV.W           R4, #0x7D0
4750D0:  LDR.W           R8, [SP,#0x550+var_54C]
4750D4:  CMP.W           R9, #1
4750D8:  MOV.W           R5, #0x20 ; ' '
4750DC:  BLT             loc_47501A
4750DE:  LDR             R0, [SP,#0x550+var_550]
4750E0:  CMP.W           R9, #0x16
4750E4:  LDR             R1, [SP,#0x550+var_540]
4750E6:  STRH.W          R9, [R0,R1,LSL#1]
4750EA:  BGT.W           loc_47500C
4750EE:  RSB.W           R1, R9, #0x17
4750F2:  CMP             R1, #8
4750F4:  BCS             loc_4750FA
4750F6:  MOV             R0, R9
4750F8:  B               loc_47511E
4750FA:  BIC.W           R12, R1, #7
4750FE:  CMP.W           R12, #0
475102:  BEQ             loc_47511C
475104:  ADD.W           R0, R9, R12
475108:  ADD.W           R3, R8, R9,LSL#1
47510C:  MOV             R2, R12
47510E:  VST1.16         {D8-D9}, [R3]!
475112:  SUBS            R2, #8
475114:  BNE             loc_47510E
475116:  CMP             R1, R12
475118:  BNE             loc_47511E
47511A:  B               loc_47500C
47511C:  MOV             R0, R9
47511E:  ADDS            R1, R0, #1
475120:  STRH.W          R4, [R8,R0,LSL#1]
475124:  CMP             R0, #0x16
475126:  MOV             R0, R1
475128:  BLT             loc_47511E
47512A:  B               loc_47500C
47512C:  LDR             R0, [SP,#0x550+var_548]; this
47512E:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
475132:  LDR             R0, =(__stack_chk_guard_ptr - 0x47513C)
475134:  LDR.W           R1, [R7,#var_34]
475138:  ADD             R0, PC; __stack_chk_guard_ptr
47513A:  LDR             R0, [R0]; __stack_chk_guard
47513C:  LDR             R0, [R0]
47513E:  SUBS            R0, R0, R1
475140:  ITTTT EQ
475142:  ADDEQ.W         SP, SP, #0x520
475146:  VPOPEQ          {D8-D9}
47514A:  ADDEQ           SP, SP, #4
47514C:  POPEQ.W         {R8-R11}
475150:  IT EQ
475152:  POPEQ           {R4-R7,PC}
475154:  BLX             __stack_chk_fail
