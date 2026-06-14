; =========================================================
; Game Engine Function: _ZN11CShinyTexts23RenderOutGeometryBufferEv
; Address            : 0x5C2DB0 - 0x5C2E0E
; =========================================================

5C2DB0:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2DB6)
5C2DB2:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2DB4:  LDR             R0, [R0]; TempBufferIndicesStored
5C2DB6:  LDR             R0, [R0]
5C2DB8:  CMP             R0, #0
5C2DBA:  IT EQ
5C2DBC:  BXEQ            LR
5C2DBE:  PUSH            {R4,R6,R7,LR}
5C2DC0:  ADD             R7, SP, #0x10+var_8
5C2DC2:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5C2DC6:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C2DD2)
5C2DC8:  MOVS            R3, #1
5C2DCA:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C2DD4)
5C2DCC:  MOVS            R4, #0
5C2DCE:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C2DD0:  ADD             R1, PC; TempVertexBuffer_ptr
5C2DD2:  LDR             R2, [R0]; TempBufferVerticesStored
5C2DD4:  LDR             R0, [R1]; TempVertexBuffer
5C2DD6:  LDR             R1, [R2]
5C2DD8:  MOVS            R2, #0
5C2DDA:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C2DDE:  CBZ             R0, loc_5C2DF8
5C2DE0:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2DE8)
5C2DE2:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C2DEA)
5C2DE4:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2DE6:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C2DE8:  LDR             R0, [R0]; TempBufferIndicesStored
5C2DEA:  LDR             R1, [R1]; TempBufferRenderIndexList
5C2DEC:  LDR             R2, [R0]
5C2DEE:  MOVS            R0, #3
5C2DF0:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C2DF4:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C2DF8:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2E00)
5C2DFA:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5C2E02)
5C2DFC:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2DFE:  ADD             R1, PC; TempBufferVerticesStored_ptr
5C2E00:  LDR             R0, [R0]; TempBufferIndicesStored
5C2E02:  LDR             R1, [R1]; TempBufferVerticesStored
5C2E04:  STR             R4, [R0]
5C2E06:  STR             R4, [R1]
5C2E08:  POP.W           {R4,R6,R7,LR}
5C2E0C:  BX              LR
