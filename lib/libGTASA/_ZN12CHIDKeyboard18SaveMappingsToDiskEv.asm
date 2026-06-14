; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard18SaveMappingsToDiskEv
; Address            : 0x2956E0 - 0x2958F2
; =========================================================

2956E0:  PUSH            {R4-R7,LR}
2956E2:  ADD             R7, SP, #0xC
2956E4:  PUSH.W          {R8-R11}
2956E8:  SUB.W           SP, SP, #0x31C
2956EC:  MOV             R10, R0
2956EE:  LDR             R0, =(__stack_chk_guard_ptr - 0x2956F4)
2956F0:  ADD             R0, PC; __stack_chk_guard_ptr
2956F2:  LDR             R0, [R0]; __stack_chk_guard
2956F4:  LDR             R0, [R0]; this
2956F6:  STR             R0, [SP,#0x338+var_20]
2956F8:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
2956FC:  LDR             R0, =(aKeyboardmappin - 0x295702); "KeyboardMappings.cfg"
2956FE:  ADD             R0, PC; "KeyboardMappings.cfg"
295700:  BLX             j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
295704:  MOV             R4, R0
295706:  LDR             R0, =(aKeyMappingNega - 0x29570E); "; Key, Mapping, Negate (used internally"...
295708:  ADD             R6, SP, #0x338+var_220
29570A:  ADD             R0, PC; "; Key, Mapping, Negate (used internally"...
29570C:  MOV             R5, R6
29570E:  MOV             R1, R0
295710:  ADDS            R0, #0x1A
295712:  VLD1.64         {D16-D17}, [R1]!
295716:  VLD1.16         {D18-D19}, [R0]
29571A:  ADD.W           R0, R6, #0x1A
29571E:  VST1.16         {D18-D19}, [R0]
295722:  MOV             R0, R6; char *
295724:  VLD1.64         {D20-D21}, [R1]
295728:  VST1.64         {D16-D17}, [R5]!
29572C:  VST1.64         {D20-D21}, [R5]
295730:  BLX             strlen
295734:  MOV             R2, R0; char *
295736:  MOV             R0, R4; this
295738:  MOV             R1, R6; unsigned int
29573A:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
29573E:  LDR             R0, =(asc_60CA08 - 0x295744); ";-----------------------------------\n"
295740:  ADD             R0, PC; ";-----------------------------------\n"
295742:  MOV             R1, R0
295744:  ADDS            R0, #0x1E
295746:  VLD1.64         {D16-D17}, [R1]!
29574A:  VLD1.16         {D18}, [R0]
29574E:  ADD.W           R0, R6, #0x1E
295752:  VLD1.64         {D20-D21}, [R1]
295756:  VST1.16         {D18}, [R0]
29575A:  MOV             R0, R6; char *
29575C:  VST1.64         {D16-D17}, [R6]
295760:  VST1.64         {D20-D21}, [R5]
295764:  BLX             strlen
295768:  MOV             R2, R0; char *
29576A:  MOV             R0, R4; this
29576C:  MOV             R1, R6; unsigned int
29576E:  MOV             R9, R4
295770:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
295774:  LDR.W           R0, [R10,#8]
295778:  CMP             R0, #0
29577A:  BEQ.W           loc_2958C8
29577E:  MOVW            R0, #:lower16:(elf_hash_chain+0xF7A3)
295782:  MOVW            R1, #:lower16:loc_424D4C
295786:  MOVT            R0, #:upper16:(elf_hash_chain+0xF7A3)
29578A:  MOVT            R1, #:upper16:loc_424D4C
29578E:  ADD             R0, R1
295790:  STR             R0, [SP,#0x338+var_330]
295792:  MOVW            R0, #:lower16:(elf_hash_chain+0xF3A3)
295796:  ADR             R6, dword_295910
295798:  MOVT            R0, #:upper16:(elf_hash_chain+0xF3A3)
29579C:  ADD.W           R11, SP, #0x338+var_320
2957A0:  ADD             R0, R1
2957A2:  STR             R0, [SP,#0x338+var_334]
2957A4:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x2957AC)
2957A6:  MOVS            R5, #0
2957A8:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
2957AA:  LDR             R0, [R0]; CHID::m_MappingPairs ...
2957AC:  STR             R0, [SP,#0x338+var_324]
2957AE:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2957B4)
2957B0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2957B2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2957B4:  STR             R0, [SP,#0x338+var_328]
2957B6:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2957BC)
2957B8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2957BA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2957BC:  STR             R0, [SP,#0x338+var_32C]
2957BE:  LDR.W           R0, [R10,#0xC]
2957C2:  ADD.W           R8, R5, R5,LSL#2
2957C6:  LDR.W           R2, [R0,R8,LSL#2]
2957CA:  CMP             R2, #0x64 ; 'd'
2957CC:  BNE             loc_295848
2957CE:  ADD.W           R1, R0, R8,LSL#2
2957D2:  LDR             R1, [R1,#0xC]
2957D4:  CMP             R1, #4; switch 5 cases
2957D6:  BHI             def_2957D8; jumptable 002957D8 default case
2957D8:  TBB.W           [PC,R1]; switch jump
2957DC:  DCB 0x2B; jump table for switch statement
2957DD:  DCB 0x1F
2957DE:  DCB 0x13
2957DF:  DCB 0xB
2957E0:  DCB 3
2957E1:  ALIGN 2
2957E2:  MOV             R1, #0x5F59454B; jumptable 002957D8 case 4
2957EA:  STR             R1, [SP,#0x338+var_320]
2957EC:  LDR             R1, [SP,#0x338+var_334]
2957EE:  STR             R1, [SP,#0x338+var_31C]
2957F0:  B               def_2957D8; jumptable 002957D8 default case
2957F2:  MOV             R1, #0x5F59454B; jumptable 002957D8 case 3
2957FA:  STR             R1, [SP,#0x338+var_320]
2957FC:  LDR             R1, [SP,#0x338+var_330]
2957FE:  STR             R1, [SP,#0x338+var_31C]
295800:  B               def_2957D8; jumptable 002957D8 default case
295802:  MOV             R1, #0x5F59454B; jumptable 002957D8 case 2
29580A:  STR             R1, [SP,#0x338+var_320]
29580C:  MOV             R1, #0x424D4D
295816:  STR             R1, [SP,#0x338+var_31C]
295818:  B               def_2957D8; jumptable 002957D8 default case
29581A:  MOV             R1, #0x5F59454B; jumptable 002957D8 case 1
295822:  STR             R1, [SP,#0x338+var_320]
295824:  MOV             R1, #0x424D52
29582E:  STR             R1, [SP,#0x338+var_31C]
295830:  B               def_2957D8; jumptable 002957D8 default case
295832:  MOV             R1, #0x5F59454B; jumptable 002957D8 case 0
29583A:  STR             R1, [SP,#0x338+var_320]
29583C:  MOV             R1, #0x424D4C
295844:  STR             R1, [SP,#0x338+var_31C]
295846:  B               def_2957D8; jumptable 002957D8 default case
295848:  LDR             R0, [SP,#0x338+var_328]
29584A:  LDR             R0, [R0,#4]
29584C:  CBZ             R0, loc_295870
29584E:  LDR             R1, [SP,#0x338+var_32C]
295850:  MOV             LR, R6
295852:  MOVS            R3, #0
295854:  LDR             R1, [R1,#8]
295856:  ADDS            R1, #4
295858:  LDR.W           R6, [R1,#-4]
29585C:  CMP             R6, R2
29585E:  BEQ             loc_29586C
295860:  ADDS            R3, #1
295862:  ADDS            R1, #0xC
295864:  CMP             R3, R0
295866:  BCC             loc_295858
295868:  LDR             R1, =(aKeyUnk - 0x29586E); "KEY_UNK"
29586A:  ADD             R1, PC; "KEY_UNK"
29586C:  MOV             R6, LR
29586E:  B               loc_295874
295870:  LDR             R1, =(aKeyUnk - 0x295876); "KEY_UNK"
295872:  ADD             R1, PC; "KEY_UNK"
295874:  MOV             R0, R11; char *
295876:  BLX             strcpy
29587A:  LDR.W           R0, [R10,#0xC]
29587E:  ADD.W           R0, R0, R8,LSL#2; jumptable 002957D8 default case
295882:  LDR             R2, [SP,#0x338+var_324]
295884:  ADR             R3, dword_295914
295886:  ADD             R4, SP, #0x338+var_220
295888:  LDR             R1, [R0,#4]
29588A:  LDRB            R0, [R0,#8]
29588C:  LDR             R2, [R2,#8]
29588E:  CMP             R0, #0
295890:  MOV             R0, R6
295892:  IT NE
295894:  MOVNE           R0, R3
295896:  STR             R0, [SP,#0x338+var_338]
295898:  ADD.W           R0, R1, R1,LSL#5
29589C:  ADR             R1, aSSS_0; "%s %s %s\n"
29589E:  ADD.W           R0, R2, R0,LSL#2
2958A2:  MOV             R2, R11
2958A4:  ADDS            R3, R0, #4
2958A6:  MOV             R0, R4
2958A8:  BL              sub_5E6BC0
2958AC:  MOV             R0, R4; char *
2958AE:  BLX             strlen
2958B2:  MOV             R2, R0; char *
2958B4:  MOV             R0, R9; this
2958B6:  MOV             R1, R4; unsigned int
2958B8:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2958BC:  LDR.W           R0, [R10,#8]
2958C0:  ADDS            R5, #1
2958C2:  CMP             R5, R0
2958C4:  BCC.W           loc_2957BE
2958C8:  MOV             R0, R9; this
2958CA:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
2958CE:  LDR             R0, =(byte_61CD7E - 0x2958D4)
2958D0:  ADD             R0, PC; byte_61CD7E ; this
2958D2:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
2958D6:  LDR             R0, =(__stack_chk_guard_ptr - 0x2958DE)
2958D8:  LDR             R1, [SP,#0x338+var_20]
2958DA:  ADD             R0, PC; __stack_chk_guard_ptr
2958DC:  LDR             R0, [R0]; __stack_chk_guard
2958DE:  LDR             R0, [R0]
2958E0:  SUBS            R0, R0, R1
2958E2:  ITTT EQ
2958E4:  ADDEQ.W         SP, SP, #0x31C
2958E8:  POPEQ.W         {R8-R11}
2958EC:  POPEQ           {R4-R7,PC}
2958EE:  BLX             __stack_chk_fail
