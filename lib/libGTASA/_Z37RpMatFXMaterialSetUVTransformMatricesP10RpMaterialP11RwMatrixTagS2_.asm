; =========================================================
; Game Engine Function: _Z37RpMatFXMaterialSetUVTransformMatricesP10RpMaterialP11RwMatrixTagS2_
; Address            : 0x1C7814 - 0x1C7842
; =========================================================

1C7814:  PUSH            {R7,LR}
1C7816:  MOV             R7, SP
1C7818:  LDR             R3, =(MatFXMaterialDataOffset_ptr - 0x1C781E)
1C781A:  ADD             R3, PC; MatFXMaterialDataOffset_ptr
1C781C:  LDR             R3, [R3]; MatFXMaterialDataOffset
1C781E:  LDR             R3, [R3]
1C7820:  LDR.W           LR, [R0,R3]
1C7824:  MOVS            R3, #0
1C7826:  LDR.W           R12, [LR,#0x14]
1C782A:  CMP.W           R12, #5
1C782E:  IT NE
1C7830:  MOVNE           R3, #1
1C7832:  ORR.W           R3, R3, R3,LSL#1
1C7836:  STR.W           R1, [LR,R3,LSL#3]
1C783A:  ADD.W           R1, LR, R3,LSL#3
1C783E:  STR             R2, [R1,#4]
1C7840:  POP             {R7,PC}
