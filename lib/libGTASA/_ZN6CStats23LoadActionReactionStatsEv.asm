; =========================================================
; Game Engine Function: _ZN6CStats23LoadActionReactionStatsEv
; Address            : 0x415624 - 0x4156B8
; =========================================================

415624:  PUSH            {R4-R7,LR}
415626:  ADD             R7, SP, #0xC
415628:  PUSH.W          {R8-R10}
41562C:  SUB             SP, SP, #0x60
41562E:  LDR             R0, =(__stack_chk_guard_ptr - 0x415634)
415630:  ADD             R0, PC; __stack_chk_guard_ptr
415632:  LDR             R0, [R0]; __stack_chk_guard
415634:  LDR             R1, [R0]
415636:  LDR             R0, =(byte_61CD7E - 0x415640)
415638:  STR             R1, [SP,#0x78+var_1C]
41563A:  MOVS            R1, #0; char *
41563C:  ADD             R0, PC; byte_61CD7E ; this
41563E:  STRD.W          R1, R1, [SP,#0x78+var_74]
415642:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
415646:  ADR             R0, aDataArStatsDat; "DATA\\AR_STATS.DAT"
415648:  ADR             R1, aRb_8; "rb"
41564A:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
41564E:  MOV             R4, R0
415650:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
415654:  CBZ             R0, loc_415698
415656:  LDR             R1, =(_ZN6CStats17StatReactionValueE_ptr - 0x415668)
415658:  ADD.W           R9, SP, #0x78+var_70
41565C:  ADR.W           R8, aDSF; "%d %s %f"
415660:  ADD.W           R10, SP, #0x78+var_74
415664:  ADD             R1, PC; _ZN6CStats17StatReactionValueE_ptr
415666:  ADD             R5, SP, #0x78+var_6C
415668:  LDR             R6, [R1]; CStats::StatReactionValue ...
41566A:  B               loc_415684
41566C:  MOV             R1, R8; format
41566E:  MOV             R2, R10
415670:  MOV             R3, R5
415672:  STR.W           R9, [SP,#0x78+var_78]
415676:  BLX             sscanf
41567A:  LDRD.W          R0, R1, [SP,#0x78+var_74]
41567E:  STR.W           R1, [R6,R0,LSL#2]
415682:  B               loc_41568E
415684:  LDRB            R1, [R0]; unsigned int
415686:  CMP             R1, #0x23 ; '#'
415688:  IT NE
41568A:  CMPNE           R1, #0
41568C:  BNE             loc_41566C
41568E:  MOV             R0, R4; this
415690:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
415694:  CMP             R0, #0
415696:  BNE             loc_415684
415698:  MOV             R0, R4; this
41569A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
41569E:  LDR             R0, =(__stack_chk_guard_ptr - 0x4156A6)
4156A0:  LDR             R1, [SP,#0x78+var_1C]
4156A2:  ADD             R0, PC; __stack_chk_guard_ptr
4156A4:  LDR             R0, [R0]; __stack_chk_guard
4156A6:  LDR             R0, [R0]
4156A8:  SUBS            R0, R0, R1
4156AA:  ITTT EQ
4156AC:  ADDEQ           SP, SP, #0x60 ; '`'
4156AE:  POPEQ.W         {R8-R10}
4156B2:  POPEQ           {R4-R7,PC}
4156B4:  BLX             __stack_chk_fail
