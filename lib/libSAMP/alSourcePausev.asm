; =========================================================
; Game Engine Function: alSourcePausev
; Address            : 0x1CD8D4 - 0x1CD9E8
; =========================================================

1CD8D4:  PUSH            {R4-R11,LR}
1CD8D8:  ADD             R11, SP, #0x1C
1CD8DC:  SUB             SP, SP, #4
1CD8E0:  MOV             R5, R1
1CD8E4:  MOV             R6, R0
1CD8E8:  BL              j_GetContextRef
1CD8EC:  MOV             R10, R0
1CD8F0:  CMP             R10, #0
1CD8F4:  BEQ             loc_1CD91C
1CD8F8:  CMP             R6, #0
1CD8FC:  BLT             loc_1CD90C
1CD900:  BEQ             loc_1CD924
1CD904:  CMP             R5, #0
1CD908:  BNE             loc_1CD924
1CD90C:  MOV             R0, R10
1CD910:  MOVW            R1, #0xA003
1CD914:  BL              j_alSetError
1CD918:  B               loc_1CD9CC
1CD91C:  SUB             SP, R11, #0x1C
1CD920:  POP             {R4-R11,PC}
1CD924:  CMP             R6, #1
1CD928:  BLT             loc_1CD954
1CD92C:  ADD             R7, R10, #0x7C ; '|'
1CD930:  MOV             R4, #0
1CD934:  LDR             R1, [R5,R4,LSL#2]
1CD938:  MOV             R0, R7
1CD93C:  BL              j_LookupUIntMapKey
1CD940:  CMP             R0, #0
1CD944:  BEQ             loc_1CD9DC
1CD948:  ADD             R4, R4, #1
1CD94C:  CMP             R4, R6
1CD950:  BLT             loc_1CD934
1CD954:  LDR             R0, [R10,#0xFC]
1CD958:  ADD             R0, R0, #8; mutex
1CD95C:  BL              j_EnterCriticalSection
1CD960:  CMP             R6, #1
1CD964:  BLT             loc_1CD9C0
1CD968:  ADD             R7, R10, #0x7C ; '|'
1CD96C:  MOVW            R8, #0x1012
1CD970:  MOVW            R9, #0x1013
1CD974:  LDR             R1, [R5]
1CD978:  MOV             R0, R7
1CD97C:  BL              j_LookupUIntMapKey
1CD980:  LDR             R2, [R10,#0xE0]
1CD984:  MOV             R1, #0x60 ; '`'
1CD988:  CMP             R2, #0
1CD98C:  MOVW            R2, #0x1013
1CD990:  BNE             loc_1CD9B0
1CD994:  LDR             R1, [R0,#0x5C]
1CD998:  CMP             R1, R8
1CD99C:  BNE             loc_1CD9B4
1CD9A0:  MOV             R2, #0
1CD9A4:  MOV             R1, #0xDC
1CD9A8:  STRB            R2, [R0,#0xD8]
1CD9AC:  STR             R9, [R0,#0x5C]
1CD9B0:  STR             R2, [R0,R1]
1CD9B4:  SUBS            R6, R6, #1
1CD9B8:  ADD             R5, R5, #4
1CD9BC:  BNE             loc_1CD974
1CD9C0:  LDR             R0, [R10,#0xFC]
1CD9C4:  ADD             R0, R0, #8; mutex
1CD9C8:  BL              j_LeaveCriticalSection
1CD9CC:  MOV             R0, R10
1CD9D0:  SUB             SP, R11, #0x1C
1CD9D4:  POP             {R4-R11,LR}
1CD9D8:  B               j_ALCcontext_DecRef
1CD9DC:  MOV             R0, R10
1CD9E0:  MOVW            R1, #0xA001
1CD9E4:  B               loc_1CD914
