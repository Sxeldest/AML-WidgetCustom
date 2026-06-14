; =========================================================
; Game Engine Function: _ZN12CAnimManager30ReadAnimAssociationDefinitionsEv
; Address            : 0x47452C - 0x47460C
; =========================================================

47452C:  PUSH            {R4-R7,LR}
47452E:  ADD             R7, SP, #0xC
474530:  PUSH.W          {R8-R11}
474534:  SUB             SP, SP, #0x74
474536:  LDR             R0, =(__stack_chk_guard_ptr - 0x47453C)
474538:  ADD             R0, PC; __stack_chk_guard_ptr
47453A:  LDR             R0, [R0]; __stack_chk_guard
47453C:  LDR             R1, [R0]; char *
47453E:  LDR             R0, =(byte_61CD7E - 0x474546)
474540:  STR             R1, [SP,#0x90+var_20]
474542:  ADD             R0, PC; byte_61CD7E ; this
474544:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
474548:  ADR             R0, aDataAnimgrpDat; "DATA\\ANIMGRP.DAT"
47454A:  ADR             R1, aRb_17; "rb"
47454C:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
474550:  MOV             R4, R0
474552:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
474556:  CMP             R0, #0
474558:  BEQ             loc_4745EC
47455A:  LDR             R1, =(aStdAnimDescs_ptr - 0x47456A)
47455C:  ADR.W           R11, dword_47463C
474560:  ADD             R6, SP, #0x90+var_40
474562:  ADR.W           R8, off_474640
474566:  ADD             R1, PC; aStdAnimDescs_ptr
474568:  MOV.W           R10, #0
47456C:  MOVS            R5, #0
47456E:  LDR.W           R9, [R1]; aStdAnimDescs
474572:  LDRB            R1, [R0]; unsigned int
474574:  CMP             R1, #0x23 ; '#'
474576:  IT NE
474578:  CMPNE           R1, #0
47457A:  BNE             loc_474588
47457C:  MOV             R0, R4; this
47457E:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
474582:  CMP             R0, #0
474584:  BNE             loc_474572
474586:  B               loc_4745EC
474588:  MOVS.W          R1, R10,LSL#31
47458C:  BEQ             loc_4745B8
47458E:  MOV             R1, R11; format
474590:  MOV             R2, R6
474592:  BLX             sscanf
474596:  CMP             R0, #1
474598:  BNE             loc_4745AC
47459A:  MOV             R0, R6; char *
47459C:  MOV             R1, R8; char *
47459E:  BLX             strcmp
4745A2:  CBZ             R0, loc_4745B2
4745A4:  MOV             R0, R5
4745A6:  MOV             R1, R6
4745A8:  BLX             j__ZN12CAnimManager24AddAnimToAssocDefinitionEPNS_19AnimAssocDefinitionEPKc; CAnimManager::AddAnimToAssocDefinition(CAnimManager::AnimAssocDefinition *,char const*)
4745AC:  MOV.W           R10, #1
4745B0:  B               loc_47457C
4745B2:  MOV.W           R10, #0
4745B6:  B               loc_47457C
4745B8:  ADD             R1, SP, #0x90+var_80
4745BA:  STR             R1, [SP,#0x90+var_90]
4745BC:  ADD             R1, SP, #0x90+var_84
4745BE:  ADD             R5, SP, #0x90+var_60
4745C0:  STR             R1, [SP,#0x90+var_8C]
4745C2:  ADR             R1, aSSSD; "%s %s %s %d"
4745C4:  MOV             R2, R6
4745C6:  MOV             R3, R5
4745C8:  BLX             sscanf
4745CC:  LDR             R3, [SP,#0x90+var_84]; int
4745CE:  MOV             R0, R6; char *
4745D0:  MOV             R1, R5; int
4745D2:  MOVS            R2, #7; int
4745D4:  STR.W           R9, [SP,#0x90+var_90]; int
4745D8:  BLX             j__ZN12CAnimManager22AddAnimAssocDefinitionEPKcS1_jjPNS_14AnimDescriptorE; CAnimManager::AddAnimAssocDefinition(char const*,char const*,uint,uint,CAnimManager::AnimDescriptor *)
4745DC:  MOV             R5, R0
4745DE:  MOV             R0, R4; this
4745E0:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4745E4:  MOV.W           R10, #1
4745E8:  CMP             R0, #0
4745EA:  BNE             loc_474572
4745EC:  MOV             R0, R4; this
4745EE:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4745F2:  LDR             R0, =(__stack_chk_guard_ptr - 0x4745FA)
4745F4:  LDR             R1, [SP,#0x90+var_20]
4745F6:  ADD             R0, PC; __stack_chk_guard_ptr
4745F8:  LDR             R0, [R0]; __stack_chk_guard
4745FA:  LDR             R0, [R0]
4745FC:  SUBS            R0, R0, R1
4745FE:  ITTT EQ
474600:  ADDEQ           SP, SP, #0x74 ; 't'
474602:  POPEQ.W         {R8-R11}
474606:  POPEQ           {R4-R7,PC}
474608:  BLX             __stack_chk_fail
