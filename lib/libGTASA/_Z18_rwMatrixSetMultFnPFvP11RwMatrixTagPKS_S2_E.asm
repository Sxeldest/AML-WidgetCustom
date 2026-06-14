; =========================================================
; Game Engine Function: _Z18_rwMatrixSetMultFnPFvP11RwMatrixTagPKS_S2_E
; Address            : 0x1E2C90 - 0x1E2CB0
; =========================================================

1E2C90:  LDR             R1, =(RwEngineInstance_ptr - 0x1E2C9A)
1E2C92:  CMP             R0, #0
1E2C94:  LDR             R2, =(dword_6BD044 - 0x1E2C9E)
1E2C96:  ADD             R1, PC; RwEngineInstance_ptr
1E2C98:  LDR             R3, =(loc_1E2CBC+1 - 0x1E2CA2)
1E2C9A:  ADD             R2, PC; dword_6BD044
1E2C9C:  LDR             R1, [R1]; RwEngineInstance
1E2C9E:  ADD             R3, PC; loc_1E2CBC
1E2CA0:  LDR             R2, [R2]
1E2CA2:  LDR             R1, [R1]
1E2CA4:  IT NE
1E2CA6:  MOVNE           R3, R0
1E2CA8:  MOVS            R0, #1
1E2CAA:  ADD             R1, R2
1E2CAC:  STR             R3, [R1,#8]
1E2CAE:  BX              LR
