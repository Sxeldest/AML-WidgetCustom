; =========================================================
; Game Engine Function: _ZN11CWaterLevel26RenderAndEmptyRenderBufferEv
; Address            : 0x597C80 - 0x597CD6
; =========================================================

597C80:  PUSH            {R7,LR}
597C82:  MOV             R7, SP
597C84:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x597C8A)
597C86:  ADD             R0, PC; TempBufferVerticesStored_ptr
597C88:  LDR             R0, [R0]; TempBufferVerticesStored
597C8A:  LDR             R0, [R0]
597C8C:  CBZ             R0, loc_597CC2
597C8E:  BLX.W           j__Z10LittleTestv; LittleTest(void)
597C92:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x597C9C)
597C94:  MOVS            R3, #1
597C96:  LDR             R1, =(TempVertexBuffer_ptr - 0x597C9E)
597C98:  ADD             R0, PC; TempBufferVerticesStored_ptr
597C9A:  ADD             R1, PC; TempVertexBuffer_ptr
597C9C:  LDR             R2, [R0]; TempBufferVerticesStored
597C9E:  LDR             R0, [R1]; TempVertexBuffer
597CA0:  LDR             R1, [R2]
597CA2:  MOVS            R2, #0
597CA4:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
597CA8:  CBZ             R0, loc_597CC2
597CAA:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x597CB2)
597CAC:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x597CB4)
597CAE:  ADD             R0, PC; TempBufferIndicesStored_ptr
597CB0:  ADD             R1, PC; TempBufferRenderIndexList_ptr
597CB2:  LDR             R0, [R0]; TempBufferIndicesStored
597CB4:  LDR             R1, [R1]; TempBufferRenderIndexList
597CB6:  LDR             R2, [R0]
597CB8:  MOVS            R0, #3
597CBA:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
597CBE:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
597CC2:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x597CCC)
597CC4:  MOVS            R2, #0
597CC6:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x597CCE)
597CC8:  ADD             R0, PC; TempBufferIndicesStored_ptr
597CCA:  ADD             R1, PC; TempBufferVerticesStored_ptr
597CCC:  LDR             R0, [R0]; TempBufferIndicesStored
597CCE:  LDR             R1, [R1]; TempBufferVerticesStored
597CD0:  STR             R2, [R0]
597CD2:  STR             R2, [R1]
597CD4:  POP             {R7,PC}
