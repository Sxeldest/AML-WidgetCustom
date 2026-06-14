; =========================================================
; Game Engine Function: _ZNK11CMemoryHeap9ParseHeapEv
; Address            : 0x5D27D8 - 0x5D28DC
; =========================================================

5D27D8:  PUSH            {R4-R7,LR}
5D27DA:  ADD             R7, SP, #0xC
5D27DC:  PUSH.W          {R8-R11}
5D27E0:  SUB             SP, SP, #0x24
5D27E2:  MOV             R4, R0
5D27E4:  LDR             R0, =(__stack_chk_guard_ptr - 0x5D27EA)
5D27E6:  ADD             R0, PC; __stack_chk_guard_ptr
5D27E8:  LDR             R0, [R0]; __stack_chk_guard
5D27EA:  LDR             R0, [R0]
5D27EC:  STR             R0, [SP,#0x40+var_20]
5D27EE:  ADR             R0, aHeapTxt; "heap.txt"
5D27F0:  BLX.W           j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
5D27F4:  MOV             R5, R0
5D27F6:  BLX.W           j__ZN6CTimer4StopEv; CTimer::Stop(void)
5D27FA:  LDR.W           R11, [R4]
5D27FE:  STR             R4, [SP,#0x40+var_3C]
5D2800:  LDR             R0, [R4,#4]
5D2802:  CMP             R11, R0
5D2804:  BCS             loc_5D28B8
5D2806:  ADD             R6, SP, #0x40+var_30
5D2808:  SUB.W           R4, R7, #-var_31
5D280C:  MOV.W           R8, #0
5D2810:  LDRH.W          R0, [R11,#6]
5D2814:  LDR.W           R1, [R11]
5D2818:  ADD.W           R2, R0, #0x40 ; '@'
5D281C:  TST.W           R0, #0xFF
5D2820:  IT EQ
5D2822:  MOVEQ           R2, #0x2A ; '*'
5D2824:  MOVS.W          R0, R8,LSL#26
5D2828:  MOV.W           R9, R1,LSR#4
5D282C:  STRB.W          R2, [R7,#var_31]
5D2830:  BNE             loc_5D284E
5D2832:  MOV.W           R0, R8,ASR#31
5D2836:  ADR             R1, a5dk; "\n%5dK:"
5D2838:  ADD.W           R0, R8, R0,LSR#26
5D283C:  ASRS            R2, R0, #6
5D283E:  MOV             R0, R6
5D2840:  BL              sub_5E6BC0
5D2844:  MOV             R0, R5; this
5D2846:  MOV             R1, R6; unsigned int
5D2848:  MOVS            R2, #byte_8; char *
5D284A:  BLX.W           j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
5D284E:  ADR             R1, asc_5D28F4; "#"
5D2850:  MOV             R0, R5; this
5D2852:  MOVS            R2, #(stderr+1); char *
5D2854:  BLX.W           j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
5D2858:  ADD.W           R8, R8, #1
5D285C:  CMP.W           R9, #0
5D2860:  BEQ             loc_5D28A6
5D2862:  RSB.W           R10, R9, #0
5D2866:  STR.W           R9, [SP,#0x40+var_38]
5D286A:  MOV             R9, R8
5D286C:  MOVS.W          R0, R9,LSL#26
5D2870:  BNE             loc_5D288E
5D2872:  MOV.W           R0, R9,ASR#31
5D2876:  ADR             R1, a5dk; "\n%5dK:"
5D2878:  ADD.W           R0, R9, R0,LSR#26
5D287C:  ASRS            R2, R0, #6
5D287E:  MOV             R0, R6
5D2880:  BL              sub_5E6BC0
5D2884:  MOV             R0, R5; this
5D2886:  MOV             R1, R6; unsigned int
5D2888:  MOVS            R2, #byte_8; char *
5D288A:  BLX.W           j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
5D288E:  MOV             R0, R5; this
5D2890:  MOV             R1, R4; unsigned int
5D2892:  MOVS            R2, #(stderr+1); char *
5D2894:  BLX.W           j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
5D2898:  ADDS.W          R10, R10, #1
5D289C:  ADD.W           R9, R9, #1
5D28A0:  BNE             loc_5D286C
5D28A2:  LDR             R0, [SP,#0x40+var_38]
5D28A4:  ADD             R8, R0
5D28A6:  LDR             R1, [SP,#0x40+var_3C]
5D28A8:  LDR.W           R0, [R11]
5D28AC:  ADD             R0, R11; this
5D28AE:  LDR             R1, [R1,#4]
5D28B0:  ADD.W           R11, R0, #0x10
5D28B4:  CMP             R1, R11
5D28B6:  BHI             loc_5D2810
5D28B8:  BLX.W           j__ZN6CTimer6UpdateEv; CTimer::Update(void)
5D28BC:  MOV             R0, R5; this
5D28BE:  BLX.W           j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
5D28C2:  LDR             R0, =(__stack_chk_guard_ptr - 0x5D28CA)
5D28C4:  LDR             R1, [SP,#0x40+var_20]
5D28C6:  ADD             R0, PC; __stack_chk_guard_ptr
5D28C8:  LDR             R0, [R0]; __stack_chk_guard
5D28CA:  LDR             R0, [R0]
5D28CC:  SUBS            R0, R0, R1
5D28CE:  ITTT EQ
5D28D0:  ADDEQ           SP, SP, #0x24 ; '$'
5D28D2:  POPEQ.W         {R8-R11}
5D28D6:  POPEQ           {R4-R7,PC}
5D28D8:  BLX.W           __stack_chk_fail
