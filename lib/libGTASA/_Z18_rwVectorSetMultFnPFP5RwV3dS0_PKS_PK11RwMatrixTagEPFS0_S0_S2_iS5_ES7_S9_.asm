; =========================================================
; Game Engine Function: _Z18_rwVectorSetMultFnPFP5RwV3dS0_PKS_PK11RwMatrixTagEPFS0_S0_S2_iS5_ES7_S9_
; Address            : 0x1E6294 - 0x1E62F8
; =========================================================

1E6294:  PUSH            {R4,R5,R7,LR}
1E6296:  ADD             R7, SP, #8
1E6298:  LDR.W           R12, =(RwEngineInstance_ptr - 0x1E62A6)
1E629C:  CMP             R0, #0
1E629E:  LDR.W           LR, =(dword_6BD0E4 - 0x1E62AA)
1E62A2:  ADD             R12, PC; RwEngineInstance_ptr
1E62A4:  LDR             R5, =(loc_1E6310+1 - 0x1E62B0)
1E62A6:  ADD             LR, PC; dword_6BD0E4
1E62A8:  LDR.W           R12, [R12]; RwEngineInstance
1E62AC:  ADD             R5, PC; loc_1E6310
1E62AE:  LDR.W           LR, [LR]
1E62B2:  LDR.W           R4, [R12]
1E62B6:  IT NE
1E62B8:  MOVNE           R5, R0
1E62BA:  CMP             R1, #0
1E62BC:  ADD             R4, LR
1E62BE:  STR             R5, [R4,#8]
1E62C0:  LDR.W           R0, [R12]
1E62C4:  LDR             R4, =(sub_1E63A2+1 - 0x1E62CC)
1E62C6:  ADD             R0, LR
1E62C8:  ADD             R4, PC; sub_1E63A2
1E62CA:  IT NE
1E62CC:  MOVNE           R4, R1
1E62CE:  LDR             R1, =(sub_1E6452+1 - 0x1E62DC)
1E62D0:  STR             R4, [R0,#0xC]
1E62D2:  CMP             R2, #0
1E62D4:  LDR.W           R0, [R12]
1E62D8:  ADD             R1, PC; sub_1E6452
1E62DA:  IT NE
1E62DC:  MOVNE           R1, R2
1E62DE:  CMP             R3, #0
1E62E0:  ADD             R0, LR
1E62E2:  STR             R1, [R0,#0x10]
1E62E4:  LDR.W           R0, [R12]
1E62E8:  LDR             R1, =(sub_1E64CC+1 - 0x1E62F0)
1E62EA:  ADD             R0, LR
1E62EC:  ADD             R1, PC; sub_1E64CC
1E62EE:  IT NE
1E62F0:  MOVNE           R1, R3
1E62F2:  STR             R1, [R0,#0x14]
1E62F4:  MOVS            R0, #1
1E62F6:  POP             {R4,R5,R7,PC}
