; =========================================================
; Game Engine Function: _Z16PrintNumMatricesPc
; Address            : 0x4081A8 - 0x408242
; =========================================================

4081A8:  LDR             R1, =(gMatrixList_ptr - 0x4081AE)
4081AA:  ADD             R1, PC; gMatrixList_ptr
4081AC:  LDR             R1, [R1]; gMatrixList
4081AE:  ADD.W           R2, R1, #0x1A4
4081B2:  LDR.W           R1, [R1,#(dword_95AB28 - 0x95A988)]
4081B6:  CMP             R1, R2
4081B8:  BEQ             loc_4081D0
4081BA:  LDR             R3, =(gMatrixList_ptr - 0x4081C2)
4081BC:  MOVS            R2, #0
4081BE:  ADD             R3, PC; gMatrixList_ptr
4081C0:  LDR             R3, [R3]; gMatrixList
4081C2:  ADD.W           R3, R3, #0x1A4
4081C6:  LDR             R1, [R1,#0x50]
4081C8:  ADDS            R2, #1
4081CA:  CMP             R1, R3
4081CC:  BNE             loc_4081C6
4081CE:  B               loc_4081D2
4081D0:  MOVS            R2, #0
4081D2:  PUSH            {R4,R6,R7,LR}
4081D4:  ADD             R7, SP, #0x10+var_8
4081D6:  SUB             SP, SP, #8
4081D8:  LDR             R1, =(gMatrixList_ptr - 0x4081DE)
4081DA:  ADD             R1, PC; gMatrixList_ptr
4081DC:  LDR             R1, [R1]; gMatrixList
4081DE:  ADD.W           R3, R1, #0x54 ; 'T'
4081E2:  LDR.W           LR, [R1,#(dword_95A9D8 - 0x95A988)]
4081E6:  CMP             LR, R3
4081E8:  BEQ             loc_408202
4081EA:  LDR             R1, =(gMatrixList_ptr - 0x4081F2)
4081EC:  MOVS            R3, #0
4081EE:  ADD             R1, PC; gMatrixList_ptr
4081F0:  LDR             R1, [R1]; gMatrixList
4081F2:  ADD.W           R12, R1, #0x54 ; 'T'
4081F6:  LDR.W           LR, [LR,#0x50]
4081FA:  ADDS            R3, #1
4081FC:  CMP             LR, R12
4081FE:  BNE             loc_4081F6
408200:  B               loc_408204
408202:  MOVS            R3, #0
408204:  LDR             R1, =(gMatrixList_ptr - 0x40820A)
408206:  ADD             R1, PC; gMatrixList_ptr
408208:  LDR             R1, [R1]; gMatrixList
40820A:  ADD.W           R12, R1, #0xFC
40820E:  LDR.W           R4, [R1,#(dword_95AA80 - 0x95A988)]
408212:  CMP             R4, R12
408214:  BEQ             loc_408230
408216:  LDR             R1, =(gMatrixList_ptr - 0x408220)
408218:  MOV.W           R12, #0
40821C:  ADD             R1, PC; gMatrixList_ptr
40821E:  LDR             R1, [R1]; gMatrixList
408220:  ADD.W           LR, R1, #0xFC
408224:  LDR             R4, [R4,#0x50]
408226:  ADD.W           R12, R12, #1
40822A:  CMP             R4, LR
40822C:  BNE             loc_408224
40822E:  B               loc_408234
408230:  MOV.W           R12, #0
408234:  ADR             R1, aFreeDUsedDUsed; "Free %d, Used %d, Used2 %d"
408236:  STR.W           R12, [SP,#0x18+var_18]
40823A:  BL              sub_5E6BC0
40823E:  ADD             SP, SP, #8
408240:  POP             {R4,R6,R7,PC}
