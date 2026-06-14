; =========================================================
; Game Engine Function: _Z19RwV3dTransformPointP5RwV3dPKS_PK11RwMatrixTag
; Address            : 0x1E698C - 0x1E69AC
; =========================================================

1E698C:  PUSH            {R4,R6,R7,LR}
1E698E:  ADD             R7, SP, #8
1E6990:  MOV             R4, R0
1E6992:  LDR             R0, =(RwEngineInstance_ptr - 0x1E699A)
1E6994:  LDR             R3, =(dword_6BD0E4 - 0x1E699C)
1E6996:  ADD             R0, PC; RwEngineInstance_ptr
1E6998:  ADD             R3, PC; dword_6BD0E4
1E699A:  LDR             R0, [R0]; RwEngineInstance
1E699C:  LDR             R3, [R3]
1E699E:  LDR             R0, [R0]
1E69A0:  ADD             R0, R3
1E69A2:  LDR             R3, [R0,#8]
1E69A4:  MOV             R0, R4
1E69A6:  BLX             R3
1E69A8:  MOV             R0, R4
1E69AA:  POP             {R4,R6,R7,PC}
