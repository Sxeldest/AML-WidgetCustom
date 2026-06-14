; =========================================================
; Game Engine Function: _ZN8CCoronas37RenderOutGeometryBufferForReflectionsEv
; Address            : 0x5A2FE8 - 0x5A3046
; =========================================================

5A2FE8:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A2FEE)
5A2FEA:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A2FEC:  LDR             R0, [R0]; TempBufferIndicesStored
5A2FEE:  LDR             R0, [R0]
5A2FF0:  CMP             R0, #0
5A2FF2:  IT EQ
5A2FF4:  BXEQ            LR
5A2FF6:  PUSH            {R4,R6,R7,LR}
5A2FF8:  ADD             R7, SP, #0x10+var_8
5A2FFA:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5A2FFE:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5A300A)
5A3000:  MOVS            R3, #1
5A3002:  LDR             R1, =(TempVertexBuffer_ptr - 0x5A300C)
5A3004:  MOVS            R4, #0
5A3006:  ADD             R0, PC; TempBufferVerticesStored_ptr
5A3008:  ADD             R1, PC; TempVertexBuffer_ptr
5A300A:  LDR             R2, [R0]; TempBufferVerticesStored
5A300C:  LDR             R0, [R1]; TempVertexBuffer
5A300E:  LDR             R1, [R2]
5A3010:  MOVS            R2, #0
5A3012:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5A3016:  CBZ             R0, loc_5A3030
5A3018:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A3020)
5A301A:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5A3022)
5A301C:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A301E:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5A3020:  LDR             R0, [R0]; TempBufferIndicesStored
5A3022:  LDR             R1, [R1]; TempBufferRenderIndexList
5A3024:  LDR             R2, [R0]
5A3026:  MOVS            R0, #3
5A3028:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5A302C:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5A3030:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A3038)
5A3032:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5A303A)
5A3034:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A3036:  ADD             R1, PC; TempBufferVerticesStored_ptr
5A3038:  LDR             R0, [R0]; TempBufferIndicesStored
5A303A:  LDR             R1, [R1]; TempBufferVerticesStored
5A303C:  STR             R4, [R0]
5A303E:  STR             R4, [R1]
5A3040:  POP.W           {R4,R6,R7,LR}
5A3044:  BX              LR
