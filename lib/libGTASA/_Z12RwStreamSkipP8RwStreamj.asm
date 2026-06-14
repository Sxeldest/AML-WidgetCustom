; =========================================================
; Game Engine Function: _Z12RwStreamSkipP8RwStreamj
; Address            : 0x1E594C - 0x1E59D0
; =========================================================

1E594C:  PUSH            {R4,R5,R7,LR}
1E594E:  ADD             R7, SP, #8
1E5950:  SUB             SP, SP, #8
1E5952:  MOV             R4, R0
1E5954:  CBZ             R1, loc_1E59C6
1E5956:  LDR             R0, [R4]
1E5958:  SUBS            R2, R0, #1
1E595A:  CMP             R2, #2
1E595C:  BCC             loc_1E5974
1E595E:  CMP             R0, #3
1E5960:  BEQ             loc_1E59A0
1E5962:  CMP             R0, #4
1E5964:  BNE             loc_1E59B4
1E5966:  LDRD.W          R2, R0, [R4,#0x18]
1E596A:  BLX             R2
1E596C:  CMP             R0, #0
1E596E:  IT EQ
1E5970:  MOVEQ           R4, R0
1E5972:  B               loc_1E59C6
1E5974:  LDR             R0, =(RwEngineInstance_ptr - 0x1E597E)
1E5976:  MOVS            R2, #1
1E5978:  LDR             R5, [R4,#0xC]
1E597A:  ADD             R0, PC; RwEngineInstance_ptr
1E597C:  LDR             R0, [R0]; RwEngineInstance
1E597E:  LDR             R0, [R0]
1E5980:  LDR.W           R3, [R0,#0xE4]
1E5984:  MOV             R0, R5
1E5986:  BLX             R3
1E5988:  CBZ             R0, loc_1E59C6
1E598A:  LDR             R0, =(RwEngineInstance_ptr - 0x1E5990)
1E598C:  ADD             R0, PC; RwEngineInstance_ptr
1E598E:  LDR             R0, [R0]; RwEngineInstance
1E5990:  LDR             R0, [R0]
1E5992:  LDR.W           R1, [R0,#0xE0]
1E5996:  MOV             R0, R5
1E5998:  BLX             R1
1E599A:  MOVS            R4, #0
1E599C:  CBNZ            R0, loc_1E59AE
1E599E:  B               loc_1E59C6
1E59A0:  LDRD.W          R2, R0, [R4,#0xC]
1E59A4:  ADD             R1, R2
1E59A6:  CMP             R1, R0
1E59A8:  BLS             loc_1E59CC
1E59AA:  STR             R0, [R4,#0xC]
1E59AC:  MOVS            R4, #0
1E59AE:  STR             R4, [SP,#0x10+var_10]
1E59B0:  MOVS            R0, #5
1E59B2:  B               loc_1E59BA
1E59B4:  MOVS            R4, #0
1E59B6:  MOVS            R0, #0xE; int
1E59B8:  STR             R4, [SP,#0x10+var_10]
1E59BA:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E59BE:  STR             R0, [SP,#0x10+var_C]
1E59C0:  MOV             R0, SP
1E59C2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E59C6:  MOV             R0, R4
1E59C8:  ADD             SP, SP, #8
1E59CA:  POP             {R4,R5,R7,PC}
1E59CC:  STR             R1, [R4,#0xC]
1E59CE:  B               loc_1E59C6
