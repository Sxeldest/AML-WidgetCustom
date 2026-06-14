; =========================================================
; Game Engine Function: _ZN10CPlaceable14AllocateMatrixEv
; Address            : 0x4088B4 - 0x40898E
; =========================================================

4088B4:  PUSH            {R4-R7,LR}
4088B6:  ADD             R7, SP, #0xC
4088B8:  PUSH.W          {R8-R11}
4088BC:  SUB             SP, SP, #4
4088BE:  MOV             R8, R0
4088C0:  LDR.W           R0, [R8,#0x14]
4088C4:  CMP             R0, #0
4088C6:  BNE             loc_408980
4088C8:  LDR             R0, =(gMatrixList_ptr - 0x4088CE)
4088CA:  ADD             R0, PC; gMatrixList_ptr
4088CC:  LDR             R1, [R0]; gMatrixList
4088CE:  LDR.W           R0, [R1,#(dword_95AB28 - 0x95A988)]
4088D2:  ADD.W           R1, R1, #0x1A4
4088D6:  CMP             R0, R1
4088D8:  BEQ             loc_4088FC
4088DA:  LDR             R3, =(gMatrixList_ptr - 0x4088E8)
4088DC:  CMP             R0, #0
4088DE:  LDRD.W          R1, R2, [R0,#0x4C]
4088E2:  STR             R1, [R2,#0x4C]
4088E4:  ADD             R3, PC; gMatrixList_ptr
4088E6:  LDRD.W          R1, R2, [R0,#0x4C]
4088EA:  LDR             R3, [R3]; gMatrixList
4088EC:  STR             R2, [R1,#0x50]
4088EE:  LDR             R1, [R3,#(dword_95A9D8 - 0x95A988)]
4088F0:  STR             R1, [R0,#0x50]
4088F2:  LDR             R1, [R3,#(dword_95A9D8 - 0x95A988)]
4088F4:  STR             R0, [R1,#0x4C]
4088F6:  STR             R3, [R0,#0x4C]
4088F8:  STR             R0, [R3,#(dword_95A9D8 - 0x95A988)]
4088FA:  BNE             loc_408978
4088FC:  LDR             R0, =(gMatrixList_ptr - 0x408902)
4088FE:  ADD             R0, PC; gMatrixList_ptr
408900:  LDR             R6, [R0]; gMatrixList
408902:  LDR.W           R0, [R6,#(dword_95AA28 - 0x95A988)]
408906:  LDR             R4, [R0,#0x48]
408908:  LDR             R5, [R4,#0x14]
40890A:  LDRD.W          R0, R1, [R5,#0x10]; x
40890E:  ADD.W           R11, R5, #0x30 ; '0'
408912:  EOR.W           R0, R0, #0x80000000; y
408916:  LDM.W           R11, {R9-R11}
40891A:  BLX             atan2f
40891E:  MOV             R1, R0
408920:  ADDS            R2, R4, #4
408922:  MOVS            R0, #0
408924:  STM.W           R2, {R9-R11}
408928:  STRD.W          R1, R0, [R4,#0x10]
40892C:  LDRD.W          R1, R2, [R5,#0x4C]
408930:  STR             R0, [R5,#0x48]
408932:  STR             R1, [R2,#0x4C]
408934:  LDRD.W          R1, R2, [R5,#0x4C]
408938:  STR             R2, [R1,#0x50]
40893A:  LDR.W           R1, [R6,#(dword_95AB28 - 0x95A988)]
40893E:  STR             R1, [R5,#0x50]
408940:  LDR.W           R1, [R6,#(dword_95AB28 - 0x95A988)]
408944:  STR             R5, [R1,#0x4C]
408946:  ADD.W           R1, R6, #0x150
40894A:  STR             R1, [R5,#0x4C]
40894C:  ADD.W           R1, R6, #0x1A4
408950:  CMP             R5, R1
408952:  STR.W           R5, [R6,#(dword_95AB28 - 0x95A988)]
408956:  BEQ             loc_408978
408958:  LDR             R2, =(gMatrixList_ptr - 0x408964)
40895A:  LDRD.W          R0, R1, [R5,#0x4C]
40895E:  STR             R0, [R1,#0x4C]
408960:  ADD             R2, PC; gMatrixList_ptr
408962:  LDRD.W          R0, R1, [R5,#0x4C]
408966:  LDR             R2, [R2]; gMatrixList
408968:  STR             R1, [R0,#0x50]
40896A:  LDR             R0, [R2,#(dword_95A9D8 - 0x95A988)]
40896C:  STR             R0, [R5,#0x50]
40896E:  LDR             R0, [R2,#(dword_95A9D8 - 0x95A988)]
408970:  STR             R5, [R0,#0x4C]
408972:  MOV             R0, R5; this
408974:  STR             R2, [R5,#0x4C]
408976:  STR             R5, [R2,#(dword_95A9D8 - 0x95A988)]
408978:  STR.W           R8, [R0,#0x48]
40897C:  STR.W           R0, [R8,#0x14]
408980:  ADD             SP, SP, #4
408982:  POP.W           {R8-R11}
408986:  POP.W           {R4-R7,LR}
40898A:  B.W             j_j__ZN7CMatrix8SetUnityEv; j_CMatrix::SetUnity(void)
