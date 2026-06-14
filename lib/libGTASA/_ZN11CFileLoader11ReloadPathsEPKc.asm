; =========================================================
; Game Engine Function: _ZN11CFileLoader11ReloadPathsEPKc
; Address            : 0x46AB78 - 0x46AC68
; =========================================================

46AB78:  PUSH            {R4-R7,LR}
46AB7A:  ADD             R7, SP, #0xC
46AB7C:  PUSH.W          {R8-R11}
46AB80:  SUB             SP, SP, #0x64; bool
46AB82:  ADR             R1, dword_46AC68; char *
46AB84:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
46AB88:  MOV             R4, R0
46AB8A:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
46AB8E:  CMP             R0, #0
46AB90:  BEQ             loc_46AC5A
46AB92:  LDR             R1, =(ThePaths_ptr - 0x46ABA4)
46AB94:  ADD.W           R10, SP, #0x80+var_74
46AB98:  MOV.W           R8, #0
46AB9C:  MOV.W           R5, #0xFFFFFFFF
46ABA0:  ADD             R1, PC; ThePaths_ptr
46ABA2:  LDR.W           R11, [R1]; ThePaths
46ABA6:  B               loc_46ABE2
46ABA8:  ADD             R1, SP, #0x80+var_70
46ABAA:  STR             R1, [SP,#0x80+var_80]
46ABAC:  LDR             R1, =(aSSFFSSDDDDDDDD+0x63 - 0x46ABB6); "%d %d %s"
46ABAE:  ADD             R2, SP, #0x80+var_78
46ABB0:  MOV             R3, R10
46ABB2:  ADD             R1, PC; "%d %d %s" ; format
46ABB4:  BLX             sscanf
46ABB8:  LDR             R6, [SP,#0x80+var_74]
46ABBA:  MOVS            R5, #0
46ABBC:  MOV.W           R8, #1
46ABC0:  B               loc_46AC50
46ABC2:  MOV             R1, R6
46ABC4:  MOV             R2, R9
46ABC6:  MOVS            R3, #1
46ABC8:  B               loc_46ABD0
46ABCA:  MOV             R1, R6; char *
46ABCC:  MOV             R2, R9; int
46ABCE:  MOVS            R3, #0; int
46ABD0:  BLX             j__ZN11CFileLoader15LoadCarPathNodeEPKciib; CFileLoader::LoadCarPathNode(char const*,int,int,bool)
46ABD4:  CMP             R5, #0xC
46ABD6:  MOV.W           R8, #1
46ABDA:  IT EQ
46ABDC:  MOVEQ.W         R5, #0xFFFFFFFF
46ABE0:  B               loc_46AC50
46ABE2:  LDRB            R1, [R0]
46ABE4:  MOV             R9, R5
46ABE6:  CMP             R1, #0
46ABE8:  IT NE
46ABEA:  CMPNE           R1, #0x23 ; '#'
46ABEC:  BEQ             loc_46AC4E
46ABEE:  CMP.W           R8, #0
46ABF2:  BEQ             loc_46AC22
46ABF4:  CMP             R1, #0x65 ; 'e'
46ABF6:  ITT EQ
46ABF8:  LDRBEQ          R1, [R0,#1]
46ABFA:  CMPEQ           R1, #0x6E ; 'n'
46ABFC:  BEQ             loc_46AC44
46ABFE:  CMP.W           R8, #1
46AC02:  BNE             loc_46AC4E
46AC04:  ADDS.W          R5, R9, #1
46AC08:  BEQ             loc_46ABA8
46AC0A:  LDR             R1, [SP,#0x80+var_78]
46AC0C:  CMP             R1, #2
46AC0E:  BEQ             loc_46ABC2
46AC10:  CMP             R1, #1
46AC12:  BEQ             loc_46ABCA
46AC14:  CMP             R1, #0
46AC16:  BNE             loc_46ABD4
46AC18:  MOV             R1, R6; char *
46AC1A:  MOV             R2, R9; int
46AC1C:  BLX             j__ZN11CFileLoader15LoadPedPathNodeEPKcii; CFileLoader::LoadPedPathNode(char const*,int,int)
46AC20:  B               loc_46ABD4
46AC22:  CMP             R1, #0x70 ; 'p'
46AC24:  ITT EQ
46AC26:  LDRBEQ          R1, [R0,#1]
46AC28:  CMPEQ           R1, #0x61 ; 'a'
46AC2A:  BNE             loc_46AC4A
46AC2C:  LDRB            R1, [R0,#2]
46AC2E:  CMP             R1, #0x74 ; 't'
46AC30:  ITT EQ
46AC32:  LDRBEQ          R0, [R0,#3]
46AC34:  CMPEQ           R0, #0x68 ; 'h'
46AC36:  BNE             loc_46AC4A
46AC38:  MOV             R0, R11; this
46AC3A:  BLX             j__ZN9CPathFind23AllocatePathFindInfoMemEv; CPathFind::AllocatePathFindInfoMem(void)
46AC3E:  MOV.W           R8, #1
46AC42:  B               loc_46AC4E
46AC44:  LDRB            R1, [R0,#2]; unsigned int
46AC46:  CMP             R1, #0x64 ; 'd'
46AC48:  BNE             loc_46ABFE
46AC4A:  MOV.W           R8, #0
46AC4E:  MOV             R5, R9
46AC50:  MOV             R0, R4; this
46AC52:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
46AC56:  CMP             R0, #0
46AC58:  BNE             loc_46ABE2
46AC5A:  MOV             R0, R4; this
46AC5C:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
46AC60:  ADD             SP, SP, #0x64 ; 'd'
46AC62:  POP.W           {R8-R11}
46AC66:  POP             {R4-R7,PC}
