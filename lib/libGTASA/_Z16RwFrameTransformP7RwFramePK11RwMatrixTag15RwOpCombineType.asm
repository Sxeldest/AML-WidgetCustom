; =========================================================
; Game Engine Function: _Z16RwFrameTransformP7RwFramePK11RwMatrixTag15RwOpCombineType
; Address            : 0x1D874C - 0x1D87A2
; =========================================================

1D874C:  PUSH            {R4,R6,R7,LR}
1D874E:  ADD             R7, SP, #8
1D8750:  MOV             R4, R0
1D8752:  ADD.W           R0, R4, #0x10
1D8756:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
1D875A:  LDR.W           R1, [R4,#0xA0]
1D875E:  LDRB            R0, [R1,#3]
1D8760:  TST.W           R0, #3
1D8764:  BNE             loc_1D8790
1D8766:  LDR             R2, =(RwEngineInstance_ptr - 0x1D876C)
1D8768:  ADD             R2, PC; RwEngineInstance_ptr
1D876A:  LDR             R2, [R2]; RwEngineInstance
1D876C:  LDR             R2, [R2]
1D876E:  LDR.W           R3, [R2,#0xBC]!
1D8772:  STR             R3, [R1,#8]
1D8774:  LDR.W           R1, [R4,#0xA0]
1D8778:  STR             R2, [R1,#0xC]
1D877A:  LDR             R1, [R2]
1D877C:  LDR.W           R3, [R4,#0xA0]
1D8780:  ADDS            R3, #8
1D8782:  STR             R3, [R1,#4]
1D8784:  LDR.W           R1, [R4,#0xA0]
1D8788:  ADDS            R1, #8
1D878A:  STR             R1, [R2]
1D878C:  LDR.W           R1, [R4,#0xA0]
1D8790:  ORR.W           R0, R0, #3
1D8794:  STRB            R0, [R1,#3]
1D8796:  LDRB            R0, [R4,#3]
1D8798:  ORR.W           R0, R0, #0xC
1D879C:  STRB            R0, [R4,#3]
1D879E:  MOV             R0, R4
1D87A0:  POP             {R4,R6,R7,PC}
