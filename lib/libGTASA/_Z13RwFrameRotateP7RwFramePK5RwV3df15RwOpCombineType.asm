; =========================================================
; Game Engine Function: _Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType
; Address            : 0x1D87A8 - 0x1D87FE
; =========================================================

1D87A8:  PUSH            {R4,R6,R7,LR}
1D87AA:  ADD             R7, SP, #8
1D87AC:  MOV             R4, R0
1D87AE:  ADD.W           R0, R4, #0x10
1D87B2:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
1D87B6:  LDR.W           R1, [R4,#0xA0]
1D87BA:  LDRB            R0, [R1,#3]
1D87BC:  TST.W           R0, #3
1D87C0:  BNE             loc_1D87EC
1D87C2:  LDR             R2, =(RwEngineInstance_ptr - 0x1D87C8)
1D87C4:  ADD             R2, PC; RwEngineInstance_ptr
1D87C6:  LDR             R2, [R2]; RwEngineInstance
1D87C8:  LDR             R2, [R2]
1D87CA:  LDR.W           R3, [R2,#0xBC]!
1D87CE:  STR             R3, [R1,#8]
1D87D0:  LDR.W           R1, [R4,#0xA0]
1D87D4:  STR             R2, [R1,#0xC]
1D87D6:  LDR             R1, [R2]
1D87D8:  LDR.W           R3, [R4,#0xA0]
1D87DC:  ADDS            R3, #8
1D87DE:  STR             R3, [R1,#4]
1D87E0:  LDR.W           R1, [R4,#0xA0]
1D87E4:  ADDS            R1, #8
1D87E6:  STR             R1, [R2]
1D87E8:  LDR.W           R1, [R4,#0xA0]
1D87EC:  ORR.W           R0, R0, #3
1D87F0:  STRB            R0, [R1,#3]
1D87F2:  LDRB            R0, [R4,#3]
1D87F4:  ORR.W           R0, R0, #0xC
1D87F8:  STRB            R0, [R4,#3]
1D87FA:  MOV             R0, R4
1D87FC:  POP             {R4,R6,R7,PC}
