; =========================================================
; Game Engine Function: _Z20_rwFreeListAllocRealP10RwFreeList
; Address            : 0x1E4784 - 0x1E4888
; =========================================================

1E4784:  PUSH            {R4-R7,LR}
1E4786:  ADD             R7, SP, #0xC
1E4788:  PUSH.W          {R8-R11}
1E478C:  SUB             SP, SP, #4
1E478E:  MOV             R10, R0
1E4790:  LDR.W           LR, [R0,#0x10]!
1E4794:  LDR.W           R11, [R0,#-8]
1E4798:  CMP             LR, R0
1E479A:  STR             R0, [SP,#0x20+var_20]
1E479C:  BEQ             loc_1E4822
1E479E:  MOVS            R1, #0x80
1E47A0:  CMP.W           R11, #0
1E47A4:  BEQ             loc_1E4818
1E47A6:  ADD.W           R8, LR, #8
1E47AA:  LDR.W           R3, [R10,#4]
1E47AE:  ADD.W           R12, R8, R11
1E47B2:  MOVS            R6, #0
1E47B4:  MOVS            R4, #0
1E47B6:  LDRB.W          R0, [R8,R4]
1E47BA:  CMP             R0, #0xFF
1E47BC:  BEQ             loc_1E47E0
1E47BE:  CBZ             R3, loc_1E47E4
1E47C0:  SUBS            R2, R3, #1
1E47C2:  MOV.W           R9, #0
1E47C6:  LSR.W           R5, R1, R9
1E47CA:  TST             R5, R0
1E47CC:  BEQ             loc_1E47E8
1E47CE:  ADD.W           R5, R9, #1
1E47D2:  CMP             R2, R9
1E47D4:  BEQ             loc_1E47DC
1E47D6:  CMP             R5, #8
1E47D8:  MOV             R9, R5
1E47DA:  BCC             loc_1E47C6
1E47DC:  SUBS            R3, R3, R5
1E47DE:  B               loc_1E4810
1E47E0:  SUBS            R3, #8
1E47E2:  B               loc_1E4810
1E47E4:  MOVS            R3, #0
1E47E6:  B               loc_1E4810
1E47E8:  ORRS            R0, R5
1E47EA:  STRB.W          R0, [R8,R4]
1E47EE:  LDR.W           R0, [R10]
1E47F2:  LDR.W           R2, [R10,#0xC]
1E47F6:  MUL.W           R5, R0, R6
1E47FA:  MLS.W           R0, R9, R0, R5
1E47FE:  ADD.W           R5, R12, R2
1E4802:  SUBS            R5, #1
1E4804:  NEGS            R2, R2
1E4806:  ANDS            R2, R5
1E4808:  CMP             R2, R0
1E480A:  BNE             loc_1E487A
1E480C:  SUB.W           R3, R3, R9
1E4810:  ADDS            R4, #1
1E4812:  SUBS            R6, #8
1E4814:  CMP             R4, R11
1E4816:  BCC             loc_1E47B6
1E4818:  LDR.W           LR, [LR]
1E481C:  LDR             R0, [SP,#0x20+var_20]
1E481E:  CMP             LR, R0
1E4820:  BNE             loc_1E47A0
1E4822:  LDR             R0, =(RwEngineInstance_ptr - 0x1E482C)
1E4824:  LDRD.W          R1, R2, [R10]
1E4828:  ADD             R0, PC; RwEngineInstance_ptr
1E482A:  LDR.W           R3, [R10,#0xC]
1E482E:  LDR             R0, [R0]; RwEngineInstance
1E4830:  MLA.W           R1, R1, R2, R11
1E4834:  LDR             R0, [R0]
1E4836:  ADD             R1, R3
1E4838:  LDR.W           R2, [R0,#0x12C]
1E483C:  ADDS            R0, R1, #7
1E483E:  BLX             R2
1E4840:  MOV             R6, R0
1E4842:  CBZ             R6, loc_1E487E
1E4844:  ADD.W           R8, R6, #8
1E4848:  MOV             R1, R11
1E484A:  MOV             R0, R8
1E484C:  BLX             j___aeabi_memclr8_1
1E4850:  LDR.W           R0, [R10,#0x10]
1E4854:  ADD.W           R1, R8, R11
1E4858:  STR             R0, [R6]
1E485A:  LDR             R0, [SP,#0x20+var_20]
1E485C:  STR             R0, [R6,#4]
1E485E:  LDR.W           R0, [R10,#0x10]
1E4862:  STR             R6, [R0,#4]
1E4864:  MOVS            R0, #0x80
1E4866:  STR.W           R6, [R10,#0x10]
1E486A:  STRB            R0, [R6,#8]
1E486C:  LDR.W           R0, [R10,#0xC]
1E4870:  ADD             R1, R0
1E4872:  NEGS            R0, R0
1E4874:  SUBS            R1, #1
1E4876:  ANDS            R0, R1
1E4878:  B               loc_1E4880
1E487A:  SUBS            R0, R2, R0
1E487C:  B               loc_1E4880
1E487E:  MOVS            R0, #0
1E4880:  ADD             SP, SP, #4
1E4882:  POP.W           {R8-R11}
1E4886:  POP             {R4-R7,PC}
