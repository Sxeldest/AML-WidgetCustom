; =========================================================
; Game Engine Function: _Z36RwTexDictionaryForAllTexDictionariesPFP15RwTexDictionaryS0_PvES1_
; Address            : 0x1DB7FC - 0x1DB834
; =========================================================

1DB7FC:  PUSH            {R4-R7,LR}
1DB7FE:  ADD             R7, SP, #0xC
1DB800:  PUSH.W          {R8}
1DB804:  MOV             R5, R0
1DB806:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB810)
1DB808:  MOV             R8, R1
1DB80A:  LDR             R1, =(dword_6BCF84 - 0x1DB812)
1DB80C:  ADD             R0, PC; RwEngineInstance_ptr
1DB80E:  ADD             R1, PC; dword_6BCF84
1DB810:  LDR             R0, [R0]; RwEngineInstance
1DB812:  LDR             R1, [R1]
1DB814:  LDR             R2, [R0]
1DB816:  ADDS            R6, R2, R1
1DB818:  LDR             R0, [R2,R1]
1DB81A:  CMP             R0, R6
1DB81C:  BEQ             loc_1DB82C
1DB81E:  LDR.W           R4, [R0],#-0x10
1DB822:  MOV             R1, R8
1DB824:  BLX             R5
1DB826:  CMP             R0, #0
1DB828:  MOV             R0, R4
1DB82A:  BNE             loc_1DB81A
1DB82C:  MOVS            R0, #1
1DB82E:  POP.W           {R8}
1DB832:  POP             {R4-R7,PC}
