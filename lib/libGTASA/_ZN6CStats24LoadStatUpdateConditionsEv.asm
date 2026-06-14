; =========================================================
; Game Engine Function: _ZN6CStats24LoadStatUpdateConditionsEv
; Address            : 0x4156EC - 0x4157EC
; =========================================================

4156EC:  PUSH            {R4-R7,LR}
4156EE:  ADD             R7, SP, #0xC
4156F0:  PUSH.W          {R8-R11}
4156F4:  SUB             SP, SP, #0x7C
4156F6:  LDR             R0, =(__stack_chk_guard_ptr - 0x415700)
4156F8:  MOV.W           R8, #0
4156FC:  ADD             R0, PC; __stack_chk_guard_ptr
4156FE:  LDR             R0, [R0]; __stack_chk_guard
415700:  LDR             R1, [R0]; char *
415702:  LDR             R0, =(byte_61CD7E - 0x41570A)
415704:  STR             R1, [SP,#0x98+var_20]
415706:  ADD             R0, PC; byte_61CD7E ; this
415708:  STRD.W          R8, R8, [SP,#0x98+var_8C]
41570C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
415710:  ADR             R0, aDataStatdispDa; "DATA\\STATDISP.DAT"
415712:  ADR             R1, aRb_9; "rb"
415714:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
415718:  MOV             R4, R0
41571A:  LDR             R0, =(_ZN6CStats20TotalNumStatMessagesE_ptr - 0x415720)
41571C:  ADD             R0, PC; _ZN6CStats20TotalNumStatMessagesE_ptr
41571E:  LDR             R0, [R0]; CStats::TotalNumStatMessages ...
415720:  STR.W           R8, [R0]; CStats::TotalNumStatMessages
415724:  MOV             R0, R4; this
415726:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
41572A:  CMP             R0, #0
41572C:  BEQ             loc_4157C2
41572E:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x415740)
415730:  SUB.W           R5, R7, #-var_81
415734:  SUB.W           R6, R7, #-var_79
415738:  MOV.W           R8, #0
41573C:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
41573E:  LDR.W           R9, [R1]; CStats::StatMessage ...
415742:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x415748)
415744:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
415746:  LDR.W           R10, [R1]; CStats::StatMessage ...
41574A:  LDR             R1, =(_ZN6CStats11StatMessageE_ptr - 0x415750)
41574C:  ADD             R1, PC; _ZN6CStats11StatMessageE_ptr
41574E:  LDR.W           R11, [R1]; CStats::StatMessage ...
415752:  B               loc_4157AE
415754:  ADD             R1, SP, #0x98+var_88
415756:  STR             R6, [SP,#0x98+var_98]
415758:  STRD.W          R1, R5, [SP,#0x98+var_94]
41575C:  ADR             R1, aDSSFS; "%d %s %s %f %s"
41575E:  ADD             R2, SP, #0x98+var_8C
415760:  ADD             R3, SP, #0x98+var_70
415762:  BLX             sscanf
415766:  LDR             R0, [SP,#0x98+var_8C]
415768:  MOV.W           R1, R8,LSL#4
41576C:  STRH.W          R0, [R9,R1]
415770:  ADR             R1, aLessthan; "lessthan"
415772:  MOV             R0, R6; char *
415774:  BLX             strcmp
415778:  CBZ             R0, loc_41578A
41577A:  ADR             R1, aMorethan; "morethan"
41577C:  MOV             R0, R6; char *
41577E:  BLX             strcmp
415782:  CBNZ            R0, loc_415796
415784:  MOVS            R0, #0
415786:  MOVS            R1, #1
415788:  B               loc_41578E
41578A:  MOVS            R0, #1
41578C:  MOVS            R1, #0
41578E:  ADD.W           R2, R10, R8,LSL#4
415792:  STRB            R0, [R2,#2]
415794:  STRB            R1, [R2,#3]
415796:  ADD.W           R1, R11, R8,LSL#4
41579A:  LDR             R0, [SP,#0x98+var_88]
41579C:  STR             R0, [R1,#4]
41579E:  ADD.W           R0, R1, #8; char *
4157A2:  MOV             R1, R5; char *
4157A4:  BLX             strcpy
4157A8:  ADD.W           R8, R8, #1
4157AC:  B               loc_4157B8
4157AE:  LDRB            R1, [R0]; unsigned int
4157B0:  CMP             R1, #0x23 ; '#'
4157B2:  IT NE
4157B4:  CMPNE           R1, #0
4157B6:  BNE             loc_415754
4157B8:  MOV             R0, R4; this
4157BA:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4157BE:  CMP             R0, #0
4157C0:  BNE             loc_4157AE
4157C2:  LDR             R0, =(_ZN6CStats20TotalNumStatMessagesE_ptr - 0x4157C8)
4157C4:  ADD             R0, PC; _ZN6CStats20TotalNumStatMessagesE_ptr
4157C6:  LDR             R0, [R0]; CStats::TotalNumStatMessages ...
4157C8:  STR.W           R8, [R0]; CStats::TotalNumStatMessages
4157CC:  MOV             R0, R4; this
4157CE:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4157D2:  LDR             R0, =(__stack_chk_guard_ptr - 0x4157DA)
4157D4:  LDR             R1, [SP,#0x98+var_20]
4157D6:  ADD             R0, PC; __stack_chk_guard_ptr
4157D8:  LDR             R0, [R0]; __stack_chk_guard
4157DA:  LDR             R0, [R0]
4157DC:  SUBS            R0, R0, R1
4157DE:  ITTT EQ
4157E0:  ADDEQ           SP, SP, #0x7C ; '|'
4157E2:  POPEQ.W         {R8-R11}
4157E6:  POPEQ           {R4-R7,PC}
4157E8:  BLX             __stack_chk_fail
