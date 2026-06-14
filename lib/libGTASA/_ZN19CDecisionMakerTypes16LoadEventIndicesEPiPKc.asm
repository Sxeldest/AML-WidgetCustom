; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes16LoadEventIndicesEPiPKc
; Address            : 0x47443C - 0x474504
; =========================================================

47443C:  PUSH            {R4-R7,LR}
47443E:  ADD             R7, SP, #0xC
474440:  PUSH.W          {R8-R11}
474444:  SUB.W           SP, SP, #0x20C
474448:  LDR             R0, =(__stack_chk_guard_ptr - 0x474456)
47444A:  MOV             R11, R1
47444C:  MOV.W           R1, #0x180
474450:  MOV             R5, R2
474452:  ADD             R0, PC; __stack_chk_guard_ptr
474454:  LDR             R0, [R0]; __stack_chk_guard
474456:  LDR             R0, [R0]
474458:  STR             R0, [SP,#0x228+var_20]
47445A:  MOV             R0, R11
47445C:  BLX             j___aeabi_memclr8_0
474460:  LDR             R6, =(byte_61CD7E - 0x474466)
474462:  ADD             R6, PC; byte_61CD7E
474464:  MOV             R0, R6; this
474466:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
47446A:  ADR             R0, aDataDecision; "data\\decision\\"
47446C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
474470:  ADR             R1, aR_8; "r"
474472:  MOV             R0, R5; this
474474:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
474478:  MOV             R5, R0
47447A:  MOV             R0, R6; this
47447C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
474480:  ADD             R1, SP, #0x228+s; unsigned int
474482:  MOV             R0, R5; this
474484:  MOV.W           R2, #(elf_hash_bucket+4); char *
474488:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
47448C:  CMP             R0, #1
47448E:  BNE             loc_4744E2
474490:  ADD             R6, SP, #0x228+s
474492:  ADR.W           R8, aSD; "%s %d"
474496:  ADD.W           R9, SP, #0x228+var_220
47449A:  ADD.W           R10, SP, #0x228+var_224
47449E:  MOVS            R4, #0
4744A0:  LDRB.W          R0, [SP,#0x228+s]
4744A4:  CMP             R0, #0xA
4744A6:  IT NE
4744A8:  CMPNE           R0, #0
4744AA:  BNE             loc_4744BE
4744AC:  MOV             R0, R5; this
4744AE:  MOV             R1, R6; unsigned int
4744B0:  MOV.W           R2, #(elf_hash_bucket+4); char *
4744B4:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
4744B8:  CMP             R0, #0
4744BA:  BNE             loc_4744A0
4744BC:  B               loc_4744E2
4744BE:  MOV             R0, R6; s
4744C0:  MOV             R1, R8; format
4744C2:  MOV             R2, R9
4744C4:  MOV             R3, R10
4744C6:  BLX             sscanf
4744CA:  LDR             R0, [SP,#0x228+var_224]
4744CC:  MOV             R1, R6; unsigned int
4744CE:  MOV.W           R2, #(elf_hash_bucket+4); char *
4744D2:  STR.W           R4, [R11,R0,LSL#2]
4744D6:  MOV             R0, R5; this
4744D8:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
4744DC:  ADDS            R4, #1
4744DE:  CMP             R0, #0
4744E0:  BNE             loc_4744A0
4744E2:  MOV             R0, R5; this
4744E4:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4744E8:  LDR             R0, =(__stack_chk_guard_ptr - 0x4744F0)
4744EA:  LDR             R1, [SP,#0x228+var_20]
4744EC:  ADD             R0, PC; __stack_chk_guard_ptr
4744EE:  LDR             R0, [R0]; __stack_chk_guard
4744F0:  LDR             R0, [R0]
4744F2:  SUBS            R0, R0, R1
4744F4:  ITTT EQ
4744F6:  ADDEQ.W         SP, SP, #0x20C
4744FA:  POPEQ.W         {R8-R11}
4744FE:  POPEQ           {R4-R7,PC}
474500:  BLX             __stack_chk_fail
