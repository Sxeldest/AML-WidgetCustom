; =========================================================
; Game Engine Function: _ZN9CPhysical22ProcessEntityCollisionEP7CEntityP9CColPoint
; Address            : 0x40691C - 0x406A98
; =========================================================

40691C:  PUSH            {R4-R7,LR}
40691E:  ADD             R7, SP, #0xC
406920:  PUSH.W          {R8-R10}
406924:  SUB             SP, SP, #0x10
406926:  MOV             R4, R0
406928:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x406934)
40692A:  MOV             R5, R1
40692C:  LDRSH.W         R1, [R4,#0x26]
406930:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
406932:  LDR             R6, [R5,#0x14]
406934:  LDR.W           R10, [R4,#0x14]
406938:  MOV             R8, R2
40693A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
40693C:  CMP             R6, #0
40693E:  LDR.W           R0, [R0,R1,LSL#2]
406942:  LDR.W           R9, [R0,#0x2C]
406946:  BNE             loc_406958
406948:  MOV             R0, R5; this
40694A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
40694E:  LDR             R1, [R5,#0x14]; CMatrix *
406950:  ADDS            R0, R5, #4; this
406952:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
406956:  LDR             R6, [R5,#0x14]
406958:  MOV             R0, R5; this
40695A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
40695E:  MOV             R3, R0; int
406960:  MOVS            R0, #0
406962:  STRD.W          R8, R0, [SP,#0x28+var_28]; int
406966:  MOV             R1, R9; int
406968:  STRD.W          R0, R0, [SP,#0x28+var_20]; int
40696C:  MOV             R0, R10; int
40696E:  MOV             R2, R6; CMatrix *
406970:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
406974:  CMP             R0, #1
406976:  BLT.W           loc_406A90
40697A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x406986)
40697C:  MOVW            R12, #0xFFFF
406980:  LDR             R2, [R4,#0x44]
406982:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
406984:  LDRB.W          R6, [R4,#0x3A]
406988:  ORR.W           R3, R2, #0x200
40698C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
40698E:  LDR.W           LR, [R1]; CTimer::m_snTimeInMilliseconds
406992:  AND.W           R1, R6, #7
406996:  CMP             R1, #2
406998:  STRD.W          LR, R3, [R4,#0x40]
40699C:  BNE             loc_4069CC
40699E:  LDRB.W          R1, [R5,#0x3A]
4069A2:  AND.W           R1, R1, #7
4069A6:  CMP             R1, #2
4069A8:  BNE             loc_4069CC
4069AA:  LDRH.W          R1, [R4,#0x460]
4069AE:  CMP             R1, R12
4069B0:  ITT EQ
4069B2:  MOVWEQ          R1, #0x3A98
4069B6:  STRHEQ.W        R1, [R4,#0x460]
4069BA:  LDRH.W          R1, [R5,#0x460]
4069BE:  CMP             R1, R12
4069C0:  ITTT EQ
4069C2:  MOVWEQ          R1, #0x3A98
4069C6:  STRHEQ.W        R1, [R5,#0x460]
4069CA:  LDREQ           R3, [R4,#0x44]
4069CC:  LSLS            R1, R3, #3
4069CE:  BPL             loc_4069FC
4069D0:  LDRB.W          R3, [R4,#0xBD]
4069D4:  CBZ             R3, loc_4069EE
4069D6:  ADD.W           R6, R4, #0xC0
4069DA:  MOVS            R1, #0
4069DC:  LDR.W           R2, [R6,R1,LSL#2]
4069E0:  CMP             R2, R5
4069E2:  BEQ             loc_4069FC
4069E4:  ADDS            R1, #1
4069E6:  CMP             R1, R3
4069E8:  BLT             loc_4069DC
4069EA:  CMP             R3, #5
4069EC:  BHI             loc_4069FC
4069EE:  ADD.W           R1, R4, R3,LSL#2
4069F2:  STR.W           R5, [R1,#0xC0]
4069F6:  ADDS            R1, R3, #1
4069F8:  STRB.W          R1, [R4,#0xBD]
4069FC:  LDRB.W          R1, [R5,#0x3A]
406A00:  AND.W           R1, R1, #7
406A04:  CMP             R1, #1
406A06:  BEQ             loc_406A74
406A08:  LDR             R2, [R5,#0x44]
406A0A:  CMP             R1, #2
406A0C:  ORR.W           R3, R2, #0x200
406A10:  STRD.W          LR, R3, [R5,#0x40]
406A14:  BNE             loc_406A44
406A16:  LDRB.W          R1, [R4,#0x3A]
406A1A:  AND.W           R1, R1, #7
406A1E:  CMP             R1, #2
406A20:  BNE             loc_406A44
406A22:  LDRH.W          R1, [R5,#0x460]
406A26:  CMP             R1, R12
406A28:  ITT EQ
406A2A:  MOVWEQ          R1, #0x3A98
406A2E:  STRHEQ.W        R1, [R5,#0x460]
406A32:  LDRH.W          R1, [R4,#0x460]
406A36:  CMP             R1, R12
406A38:  ITTT EQ
406A3A:  MOVWEQ          R1, #0x3A98
406A3E:  STRHEQ.W        R1, [R4,#0x460]
406A42:  LDREQ           R3, [R5,#0x44]
406A44:  LSLS            R1, R3, #3
406A46:  BPL             loc_406A74
406A48:  LDRB.W          R1, [R5,#0xBD]
406A4C:  CBZ             R1, loc_406A66
406A4E:  ADD.W           R2, R5, #0xC0
406A52:  MOVS            R3, #0
406A54:  LDR.W           R6, [R2,R3,LSL#2]
406A58:  CMP             R6, R4
406A5A:  BEQ             loc_406A74
406A5C:  ADDS            R3, #1
406A5E:  CMP             R3, R1
406A60:  BLT             loc_406A54
406A62:  CMP             R1, #5
406A64:  BHI             loc_406A74
406A66:  ADD.W           R2, R5, R1,LSL#2
406A6A:  ADDS            R1, #1
406A6C:  STR.W           R4, [R2,#0xC0]
406A70:  STRB.W          R1, [R5,#0xBD]
406A74:  LDRB.W          R1, [R5,#0x3A]
406A78:  AND.W           R1, R1, #7
406A7C:  CMP             R1, #1
406A7E:  BEQ             loc_406A88
406A80:  LDR             R1, [R5,#0x1C]
406A82:  TST.W           R1, #0x40004
406A86:  BEQ             loc_406A90
406A88:  LDR             R1, [R4,#0x1C]
406A8A:  ORR.W           R1, R1, #0x1000
406A8E:  STR             R1, [R4,#0x1C]
406A90:  ADD             SP, SP, #0x10
406A92:  POP.W           {R8-R10}
406A96:  POP             {R4-R7,PC}
