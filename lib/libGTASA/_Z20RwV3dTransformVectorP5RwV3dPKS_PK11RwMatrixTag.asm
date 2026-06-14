; =========================================================
; Game Engine Function: _Z20RwV3dTransformVectorP5RwV3dPKS_PK11RwMatrixTag
; Address            : 0x1E69E4 - 0x1E6A04
; =========================================================

1E69E4:  PUSH            {R4,R6,R7,LR}
1E69E6:  ADD             R7, SP, #8
1E69E8:  MOV             R4, R0
1E69EA:  LDR             R0, =(RwEngineInstance_ptr - 0x1E69F2)
1E69EC:  LDR             R3, =(dword_6BD0E4 - 0x1E69F4)
1E69EE:  ADD             R0, PC; RwEngineInstance_ptr
1E69F0:  ADD             R3, PC; dword_6BD0E4
1E69F2:  LDR             R0, [R0]; RwEngineInstance
1E69F4:  LDR             R3, [R3]
1E69F6:  LDR             R0, [R0]
1E69F8:  ADD             R0, R3
1E69FA:  LDR             R3, [R0,#0x10]
1E69FC:  MOV             R0, R4
1E69FE:  BLX             R3
1E6A00:  MOV             R0, R4
1E6A02:  POP             {R4,R6,R7,PC}
