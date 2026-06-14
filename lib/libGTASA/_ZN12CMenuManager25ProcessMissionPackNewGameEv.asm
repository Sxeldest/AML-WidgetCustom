; =========================================================
; Game Engine Function: _ZN12CMenuManager25ProcessMissionPackNewGameEv
; Address            : 0x436690 - 0x43687A
; =========================================================

436690:  PUSH            {R4-R7,LR}
436692:  ADD             R7, SP, #0xC
436694:  PUSH.W          {R8-R11}
436698:  SUB             SP, SP, #0x114
43669A:  MOV             R1, R0
43669C:  LDR             R0, =(__stack_chk_guard_ptr - 0x4366A6)
43669E:  MOVS            R3, #0
4366A0:  MOV             R2, R1
4366A2:  ADD             R0, PC; __stack_chk_guard_ptr
4366A4:  MOVS            R4, #0
4366A6:  MOVS            R6, #0
4366A8:  LDR             R0, [R0]; __stack_chk_guard
4366AA:  LDR             R0, [R0]
4366AC:  STR             R0, [SP,#0x130+var_20]
4366AE:  MOVW            R0, #0x106F
4366B2:  STRB            R3, [R1,R0]
4366B4:  MOVW            R0, #0x1174
4366B8:  STRB            R3, [R1,R0]
4366BA:  MOVW            R0, #0x1279
4366BE:  STRB            R3, [R1,R0]
4366C0:  MOVW            R0, #0x137E
4366C4:  STRB            R3, [R1,R0]
4366C6:  MOVW            R0, #0x1483
4366CA:  STRB            R3, [R1,R0]
4366CC:  MOVW            R0, #0x168D
4366D0:  STRB.W          R3, [R1,#0x32E]
4366D4:  STRB.W          R3, [R1,#0x229]
4366D8:  STRB.W          R3, [R1,#0x433]
4366DC:  STRB.W          R3, [R1,#0x538]
4366E0:  STRB.W          R3, [R1,#0x63D]
4366E4:  STRB.W          R3, [R1,#0x742]
4366E8:  STRB.W          R3, [R1,#0x847]
4366EC:  STRB.W          R3, [R1,#0x94C]
4366F0:  STRB.W          R3, [R1,#0xA51]
4366F4:  STRB.W          R3, [R1,#0xB56]
4366F8:  STRB.W          R3, [R1,#0xC5B]
4366FC:  STRB.W          R3, [R1,#0xD60]
436700:  STRB.W          R3, [R1,#0xE65]
436704:  STRB.W          R3, [R1,#0xF6A]
436708:  STRB.W          R3, [R1,#0x124]
43670C:  STRB            R3, [R1,R0]
43670E:  MOVW            R0, #0x1588
436712:  STRB            R3, [R1,R0]
436714:  MOVW            R0, #0x1792
436718:  STRB            R3, [R1,R0]
43671A:  MOVW            R0, #0x1897
43671E:  STRB            R3, [R1,R0]
436720:  MOVW            R0, #0x199C
436724:  STR             R2, [SP,#0x130+var_12C]
436726:  STRB            R3, [R1,R0]
436728:  LDR             R0, =(gString_ptr - 0x43672E)
43672A:  ADD             R0, PC; gString_ptr
43672C:  LDR             R0, [R0]; gString
43672E:  STR             R0, [SP,#0x130+var_130]
436730:  MOVS            R0, #0; this
436732:  STR             R0, [SP,#0x130+var_128]
436734:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
436738:  LDR             R5, [SP,#0x130+var_130]
43673A:  ADR             R1, aMpackMpackDMpa; "MPACK//MPACK%d//MPACK.DAT"
43673C:  MOV             R2, R4
43673E:  MOV             R0, R5
436740:  BL              sub_5E6BC0
436744:  ADR             R1, aRb_12; "rb"
436746:  MOV             R0, R5; this
436748:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
43674C:  MOV             R8, R0
43674E:  CMP.W           R8, #0
436752:  BEQ             loc_43680A
436754:  MOV             R0, R8; this
436756:  BLX             j__ZN8CFileMgr12GetTotalSizeEj; CFileMgr::GetTotalSize(uint)
43675A:  MOV             R9, R0
43675C:  CMP.W           R9, #1
436760:  BLT             loc_436802
436762:  ADD.W           R5, SP, #0x130+var_121
436766:  MOV.W           R10, #1
43676A:  MOV.W           R11, #0
43676E:  MOVS            R6, #0
436770:  MOV             R0, R8; this
436772:  MOV             R1, R5; unsigned int
436774:  MOVS            R2, #(stderr+1); char *
436776:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
43677A:  LDRB.W          R0, [SP,#0x130+var_121]
43677E:  CMP             R0, #0xA
436780:  IT NE
436782:  CMPNE           R0, #0xD
436784:  BEQ             loc_4367F6
436786:  CMP             R0, #0x23 ; '#'
436788:  BNE             loc_4367B8
43678A:  LSLS            R0, R6, #0x18
43678C:  BEQ             loc_4367C2
43678E:  ADD             R2, SP, #0x130+var_120
436790:  MOVS.W          R5, R10,LSL#24
436794:  UXTB            R0, R6
436796:  MOV.W           R1, #0
43679A:  STRB            R1, [R2,R0]
43679C:  BEQ             loc_4367C6
43679E:  LDR             R0, [SP,#0x130+var_128]
4367A0:  LDR             R1, [SP,#0x130+var_12C]
4367A2:  UXTB            R3, R0
4367A4:  MOV             R0, R2; char *
4367A6:  MOVW            R2, #0x105
4367AA:  SMLABB.W        R6, R3, R2, R1
4367AE:  BLX             atoi
4367B2:  STRB.W          R0, [R6,#0x124]
4367B6:  B               loc_4367E2
4367B8:  UXTB            R1, R6
4367BA:  ADD             R2, SP, #0x130+var_120
4367BC:  ADDS            R6, #1
4367BE:  STRB            R0, [R2,R1]
4367C0:  B               loc_4367F6
4367C2:  MOVS            R6, #0
4367C4:  B               loc_4367F6
4367C6:  LDR             R6, [SP,#0x130+var_128]
4367C8:  MOVW            R3, #0x105
4367CC:  LDR             R1, [SP,#0x130+var_12C]
4367CE:  UXTB            R0, R6
4367D0:  SMLABB.W        R0, R0, R3, R1
4367D4:  MOV             R1, R2; char *
4367D6:  ADDW            R0, R0, #0x125; char *
4367DA:  BLX             strcpy
4367DE:  ADDS            R6, #1
4367E0:  STR             R6, [SP,#0x130+var_128]
4367E2:  CMP             R5, #0
4367E4:  MOV.W           R10, #0
4367E8:  MOV.W           R6, #0
4367EC:  IT EQ
4367EE:  MOVEQ.W         R10, #1
4367F2:  ADD.W           R5, SP, #0x130+var_121
4367F6:  ADD.W           R11, R11, #1
4367FA:  UXTB.W          R0, R11
4367FE:  CMP             R9, R0
436800:  BGT             loc_436770
436802:  MOV             R0, R8; this
436804:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
436808:  MOVS            R6, #1
43680A:  ADDS            R4, #1
43680C:  CMP             R4, #0x19
43680E:  BNE             loc_436734
436810:  LSLS            R0, R6, #0x18
436812:  BEQ             loc_43681E
436814:  LDR             R0, [SP,#0x130+var_12C]; this
436816:  MOVS            R1, #7; signed __int8
436818:  BLX             j__ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
43681C:  B               loc_436860
43681E:  LDR             R4, [SP,#0x130+var_12C]
436820:  MOVS            R1, #6; signed __int8
436822:  MOV             R0, R4; this
436824:  BLX             j__ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
436828:  LDR             R0, =(aScreens_ptr - 0x436832)
43682A:  MOVS            R3, #0xE2
43682C:  LDR             R1, =(_ZN5CGame16bMissionPackGameE_ptr - 0x436838)
43682E:  ADD             R0, PC; aScreens_ptr
436830:  LDRSB.W         R2, [R4,#0x121]
436834:  ADD             R1, PC; _ZN5CGame16bMissionPackGameE_ptr
436836:  LDR             R0, [R0]; "FEP_STA" ...
436838:  LDR             R1, [R1]; CGame::bMissionPackGame ...
43683A:  SMLABB.W        R2, R2, R3, R0
43683E:  MOV             R0, #0x524D5F
436846:  LDRB            R3, [R1]; CGame::bMissionPackGame
436848:  ADD.W           R1, R2, #0xB
43684C:  MOV             R2, #0x5A534546
436854:  CMP             R3, #0
436856:  STR             R2, [R1]
436858:  IT EQ
43685A:  ADDEQ.W         R0, R0, #0x400
43685E:  STR             R0, [R1,#4]
436860:  LDR             R0, =(__stack_chk_guard_ptr - 0x436868)
436862:  LDR             R1, [SP,#0x130+var_20]
436864:  ADD             R0, PC; __stack_chk_guard_ptr
436866:  LDR             R0, [R0]; __stack_chk_guard
436868:  LDR             R0, [R0]
43686A:  SUBS            R0, R0, R1
43686C:  ITTT EQ
43686E:  ADDEQ           SP, SP, #0x114
436870:  POPEQ.W         {R8-R11}
436874:  POPEQ           {R4-R7,PC}
436876:  BLX             __stack_chk_fail
