; =========================================================
; Game Engine Function: _Z12RwFrameScaleP7RwFramePK5RwV3d15RwOpCombineType
; Address            : 0x1D86F0 - 0x1D8746
; =========================================================

1D86F0:  PUSH            {R4,R6,R7,LR}
1D86F2:  ADD             R7, SP, #8
1D86F4:  MOV             R4, R0
1D86F6:  ADD.W           R0, R4, #0x10
1D86FA:  BLX             j__Z13RwMatrixScaleP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixScale(RwMatrixTag *,RwV3d const*,RwOpCombineType)
1D86FE:  LDR.W           R1, [R4,#0xA0]
1D8702:  LDRB            R0, [R1,#3]
1D8704:  TST.W           R0, #3
1D8708:  BNE             loc_1D8734
1D870A:  LDR             R2, =(RwEngineInstance_ptr - 0x1D8710)
1D870C:  ADD             R2, PC; RwEngineInstance_ptr
1D870E:  LDR             R2, [R2]; RwEngineInstance
1D8710:  LDR             R2, [R2]
1D8712:  LDR.W           R3, [R2,#0xBC]!
1D8716:  STR             R3, [R1,#8]
1D8718:  LDR.W           R1, [R4,#0xA0]
1D871C:  STR             R2, [R1,#0xC]
1D871E:  LDR             R1, [R2]
1D8720:  LDR.W           R3, [R4,#0xA0]
1D8724:  ADDS            R3, #8
1D8726:  STR             R3, [R1,#4]
1D8728:  LDR.W           R1, [R4,#0xA0]
1D872C:  ADDS            R1, #8
1D872E:  STR             R1, [R2]
1D8730:  LDR.W           R1, [R4,#0xA0]
1D8734:  ORR.W           R0, R0, #3
1D8738:  STRB            R0, [R1,#3]
1D873A:  LDRB            R0, [R4,#3]
1D873C:  ORR.W           R0, R0, #0xC
1D8740:  STRB            R0, [R4,#3]
1D8742:  MOV             R0, R4
1D8744:  POP             {R4,R6,R7,PC}
