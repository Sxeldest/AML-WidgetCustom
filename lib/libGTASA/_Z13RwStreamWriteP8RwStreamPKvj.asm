; =========================================================
; Game Engine Function: _Z13RwStreamWriteP8RwStreamPKvj
; Address            : 0x1E5834 - 0x1E5940
; =========================================================

1E5834:  PUSH            {R4-R7,LR}
1E5836:  ADD             R7, SP, #0xC
1E5838:  PUSH.W          {R8-R11}
1E583C:  SUB             SP, SP, #0xC
1E583E:  MOV             R4, R0
1E5840:  MOVW            R8, #0x13
1E5844:  LDR             R0, [R4]
1E5846:  MOV             R11, R1
1E5848:  MOV             R5, R2
1E584A:  MOVT            R8, #0x8000
1E584E:  SUBS            R1, R0, #1
1E5850:  CMP             R1, #2
1E5852:  BCC             loc_1E586E
1E5854:  CMP             R0, #3
1E5856:  BEQ             loc_1E5890
1E5858:  CMP             R0, #4
1E585A:  BNE             loc_1E589C
1E585C:  LDR             R3, [R4,#0x14]
1E585E:  MOV             R1, R11
1E5860:  LDR             R0, [R4,#0x1C]
1E5862:  MOV             R2, R5
1E5864:  BLX             R3
1E5866:  CMP             R0, #0
1E5868:  IT EQ
1E586A:  MOVEQ           R4, R0
1E586C:  B               loc_1E5912
1E586E:  LDR             R0, =(RwEngineInstance_ptr - 0x1E587A)
1E5870:  MOVS            R1, #1
1E5872:  LDR             R3, [R4,#0xC]
1E5874:  MOV             R2, R5
1E5876:  ADD             R0, PC; RwEngineInstance_ptr
1E5878:  LDR             R0, [R0]; RwEngineInstance
1E587A:  LDR             R0, [R0]
1E587C:  LDR.W           R6, [R0,#0xD4]
1E5880:  MOV             R0, R11
1E5882:  BLX             R6
1E5884:  CMP             R0, R5
1E5886:  BEQ             loc_1E5912
1E5888:  MOVS            R4, #0
1E588A:  ADD.W           R0, R8, #9
1E588E:  B               loc_1E58A0
1E5890:  LDR             R0, [R4,#0x14]
1E5892:  CBZ             R0, loc_1E58B0
1E5894:  MOV             R10, R4
1E5896:  LDR.W           R9, [R10,#0x10]!
1E589A:  B               loc_1E58D2
1E589C:  MOVS            R4, #0
1E589E:  MOVS            R0, #0xE; int
1E58A0:  STR             R4, [SP,#0x28+var_24]
1E58A2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E58A6:  STR             R0, [SP,#0x28+var_20]
1E58A8:  ADD             R0, SP, #0x28+var_24
1E58AA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E58AE:  B               loc_1E5912
1E58B0:  LDR             R0, =(RwEngineInstance_ptr - 0x1E58BA)
1E58B2:  MOV.W           R9, #0x200
1E58B6:  ADD             R0, PC; RwEngineInstance_ptr
1E58B8:  LDR             R0, [R0]; RwEngineInstance
1E58BA:  LDR             R0, [R0]
1E58BC:  LDR.W           R1, [R0,#0x12C]
1E58C0:  MOV.W           R0, #0x200
1E58C4:  BLX             R1
1E58C6:  CMP             R0, #0
1E58C8:  STR             R0, [R4,#0x14]
1E58CA:  BEQ             loc_1E5930
1E58CC:  MOV             R10, R4
1E58CE:  STR.W           R9, [R10,#0x10]!
1E58D2:  LDR             R1, [R4,#0xC]
1E58D4:  SUB.W           R2, R9, R1
1E58D8:  CMP             R2, R5
1E58DA:  BCS             loc_1E5902
1E58DC:  LDR             R1, =(RwEngineInstance_ptr - 0x1E58E8)
1E58DE:  CMP.W           R5, #0x200
1E58E2:  MOV             R2, R5
1E58E4:  ADD             R1, PC; RwEngineInstance_ptr
1E58E6:  LDR             R1, [R1]; RwEngineInstance
1E58E8:  LDR             R1, [R1]
1E58EA:  IT LS
1E58EC:  MOVLS.W         R2, #0x200
1E58F0:  ADD             R9, R2
1E58F2:  LDR.W           R3, [R1,#0x134]
1E58F6:  MOV             R1, R9
1E58F8:  BLX             R3
1E58FA:  CBZ             R0, loc_1E591C
1E58FC:  LDR             R1, [R4,#0xC]
1E58FE:  STRD.W          R9, R0, [R4,#0x10]
1E5902:  ADD             R0, R1; void *
1E5904:  MOV             R1, R11; void *
1E5906:  MOV             R2, R5; size_t
1E5908:  BLX             memcpy_1
1E590C:  LDR             R0, [R4,#0xC]
1E590E:  ADD             R0, R5
1E5910:  STR             R0, [R4,#0xC]
1E5912:  MOV             R0, R4
1E5914:  ADD             SP, SP, #0xC
1E5916:  POP.W           {R8-R11}
1E591A:  POP             {R4-R7,PC}
1E591C:  MOVS            R4, #0
1E591E:  STR             R4, [SP,#0x28+var_24]
1E5920:  LDR.W           R0, [R10]
1E5924:  SUB.W           R1, R9, R0
1E5928:  MOV             R0, R8; int
1E592A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E592E:  B               loc_1E58A6
1E5930:  MOVS            R4, #0
1E5932:  MOV             R0, R8; int
1E5934:  MOV.W           R1, #0x200
1E5938:  STR             R4, [SP,#0x28+var_24]
1E593A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E593E:  B               loc_1E58A6
