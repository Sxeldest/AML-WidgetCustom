; =========================================================
; Game Engine Function: _Z11RenderBeginP8RwRasterP11RwMatrixTagj
; Address            : 0x3667B4 - 0x366830
; =========================================================

3667B4:  PUSH            {R4-R7,LR}
3667B6:  ADD             R7, SP, #0xC
3667B8:  PUSH.W          {R8-R11}
3667BC:  SUB             SP, SP, #4
3667BE:  MOV             R4, R0
3667C0:  LDR             R0, =(g_pMatrix_ptr - 0x3667CE)
3667C2:  LDR.W           R12, =(g_numTris_ptr - 0x3667D2)
3667C6:  LDR.W           LR, =(g_numVertices_ptr - 0x3667D8)
3667CA:  ADD             R0, PC; g_pMatrix_ptr
3667CC:  LDR             R3, =(g_pRaster_ptr - 0x3667DE)
3667CE:  ADD             R12, PC; g_numTris_ptr
3667D0:  LDR.W           R9, =(g_pVertex3d_ptr - 0x3667E4)
3667D4:  ADD             LR, PC; g_numVertices_ptr
3667D6:  LDR.W           R8, =(g_rwFlags_ptr - 0x3667E6)
3667DA:  ADD             R3, PC; g_pRaster_ptr
3667DC:  LDR.W           R10, =(TempVertexBuffer_ptr - 0x3667EE)
3667E0:  ADD             R9, PC; g_pVertex3d_ptr
3667E2:  ADD             R8, PC; g_rwFlags_ptr
3667E4:  LDR             R0, [R0]; g_pMatrix
3667E6:  LDR.W           R11, [R12]; g_numTris
3667EA:  ADD             R10, PC; TempVertexBuffer_ptr
3667EC:  LDR.W           LR, [LR]; g_numVertices
3667F0:  LDR             R3, [R3]; g_pRaster
3667F2:  LDR.W           R6, [R8]; g_rwFlags
3667F6:  LDR.W           R12, [R9]; g_pVertex3d
3667FA:  STR             R1, [R0]
3667FC:  MOVS            R0, #0
3667FE:  LDR.W           R5, [R10]; TempVertexBuffer
366802:  MOV             R1, SP
366804:  STR.W           R0, [R11]
366808:  STR.W           R0, [LR]
36680C:  MOVS            R0, #1
36680E:  STR             R4, [R3]
366810:  STR             R2, [R6]
366812:  STR.W           R5, [R12]
366816:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
36681A:  LDR             R0, [SP,#0x20+var_20]
36681C:  CMP             R0, R4
36681E:  ITTT NE
366820:  MOVNE           R0, #1
366822:  MOVNE           R1, R4
366824:  BLXNE           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
366828:  ADD             SP, SP, #4
36682A:  POP.W           {R8-R11}
36682E:  POP             {R4-R7,PC}
