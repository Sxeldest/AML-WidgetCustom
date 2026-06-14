; =========================================================
; Game Engine Function: _ZN13CBrightLights23RenderOutGeometryBufferEv
; Address            : 0x5C2C28 - 0x5C2C86
; =========================================================

5C2C28:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2C2E)
5C2C2A:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2C2C:  LDR             R0, [R0]; TempBufferIndicesStored
5C2C2E:  LDR             R0, [R0]
5C2C30:  CMP             R0, #0
5C2C32:  IT EQ
5C2C34:  BXEQ            LR
5C2C36:  PUSH            {R4,R6,R7,LR}
5C2C38:  ADD             R7, SP, #0x10+var_8
5C2C3A:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5C2C3E:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C2C4A)
5C2C40:  MOVS            R3, #1
5C2C42:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C2C4C)
5C2C44:  MOVS            R4, #0
5C2C46:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C2C48:  ADD             R1, PC; TempVertexBuffer_ptr
5C2C4A:  LDR             R2, [R0]; TempBufferVerticesStored
5C2C4C:  LDR             R0, [R1]; TempVertexBuffer
5C2C4E:  LDR             R1, [R2]
5C2C50:  MOVS            R2, #0
5C2C52:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C2C56:  CBZ             R0, loc_5C2C70
5C2C58:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2C60)
5C2C5A:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C2C62)
5C2C5C:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2C5E:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C2C60:  LDR             R0, [R0]; TempBufferIndicesStored
5C2C62:  LDR             R1, [R1]; TempBufferRenderIndexList
5C2C64:  LDR             R2, [R0]
5C2C66:  MOVS            R0, #3
5C2C68:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C2C6C:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C2C70:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2C78)
5C2C72:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5C2C7A)
5C2C74:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2C76:  ADD             R1, PC; TempBufferVerticesStored_ptr
5C2C78:  LDR             R0, [R0]; TempBufferIndicesStored
5C2C7A:  LDR             R1, [R1]; TempBufferVerticesStored
5C2C7C:  STR             R4, [R0]
5C2C7E:  STR             R4, [R1]
5C2C80:  POP.W           {R4,R6,R7,LR}
5C2C84:  BX              LR
