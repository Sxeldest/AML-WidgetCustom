; =========================================================
; Game Engine Function: _Z9RenderEndv
; Address            : 0x3669E0 - 0x366A4C
; =========================================================

3669E0:  LDR             R0, =(g_numTris_ptr - 0x3669E6)
3669E2:  ADD             R0, PC; g_numTris_ptr
3669E4:  LDR             R0, [R0]; g_numTris
3669E6:  LDR             R1, [R0]
3669E8:  CMP             R1, #0
3669EA:  IT EQ
3669EC:  BXEQ            LR
3669EE:  PUSH            {R7,LR}
3669F0:  MOV             R7, SP
3669F2:  LDR             R0, =(g_rwFlags_ptr - 0x3669FE)
3669F4:  ADD.W           R1, R1, R1,LSL#1
3669F8:  LDR             R2, =(g_pMatrix_ptr - 0x366A04)
3669FA:  ADD             R0, PC; g_rwFlags_ptr
3669FC:  LDR.W           R12, =(TempVertexBuffer_ptr - 0x366A08)
366A00:  ADD             R2, PC; g_pMatrix_ptr
366A02:  LDR             R0, [R0]; g_rwFlags
366A04:  ADD             R12, PC; TempVertexBuffer_ptr
366A06:  LDR             R2, [R2]; g_pMatrix
366A08:  LDR             R3, [R0]
366A0A:  LDR             R2, [R2]
366A0C:  LDR.W           R0, [R12]; TempVertexBuffer
366A10:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
366A14:  CBZ             R0, loc_366A20
366A16:  MOVS            R0, #3
366A18:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
366A1C:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
366A20:  LDR             R0, =(g_numVertices_ptr - 0x366A2E)
366A22:  MOV.W           R12, #0
366A26:  LDR             R1, =(g_pVertex3d_ptr - 0x366A30)
366A28:  LDR             R2, =(g_numTris_ptr - 0x366A34)
366A2A:  ADD             R0, PC; g_numVertices_ptr
366A2C:  ADD             R1, PC; g_pVertex3d_ptr
366A2E:  LDR             R3, =(TempVertexBuffer_ptr - 0x366A38)
366A30:  ADD             R2, PC; g_numTris_ptr
366A32:  LDR             R0, [R0]; g_numVertices
366A34:  ADD             R3, PC; TempVertexBuffer_ptr
366A36:  LDR             R1, [R1]; g_pVertex3d
366A38:  LDR             R2, [R2]; g_numTris
366A3A:  LDR             R3, [R3]; TempVertexBuffer
366A3C:  STR.W           R12, [R0]
366A40:  STR.W           R12, [R2]
366A44:  STR             R3, [R1]
366A46:  POP.W           {R7,LR}
366A4A:  BX              LR
