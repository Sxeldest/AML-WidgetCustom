; =========================================================
; Game Engine Function: _ZN6CGlass20RenderShatteredPolysEv
; Address            : 0x5ABE4C - 0x5ABEDE
; =========================================================

5ABE4C:  LDR             R0, =(TempBufferVerticesStoredShattered_ptr - 0x5ABE52)
5ABE4E:  ADD             R0, PC; TempBufferVerticesStoredShattered_ptr
5ABE50:  LDR             R0, [R0]; TempBufferVerticesStoredShattered
5ABE52:  LDR             R0, [R0]
5ABE54:  CMP.W           R0, #0x400
5ABE58:  IT EQ
5ABE5A:  BXEQ            LR
5ABE5C:  PUSH            {R7,LR}
5ABE5E:  MOV             R7, SP
5ABE60:  LDR             R0, =(gpCrackedGlassTex_ptr - 0x5ABE66)
5ABE62:  ADD             R0, PC; gpCrackedGlassTex_ptr
5ABE64:  LDR             R0, [R0]; gpCrackedGlassTex
5ABE66:  LDR             R0, [R0]
5ABE68:  LDR             R1, [R0]
5ABE6A:  MOVS            R0, #1
5ABE6C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABE70:  MOVS            R0, #0xA
5ABE72:  MOVS            R1, #5
5ABE74:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABE78:  MOVS            R0, #0xB
5ABE7A:  MOVS            R1, #6
5ABE7C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABE80:  LDR             R0, =(TempBufferVerticesStoredShattered_ptr - 0x5ABE8A)
5ABE82:  MOVS            R3, #1
5ABE84:  LDR             R1, =(TempVertexBuffer_ptr - 0x5ABE8C)
5ABE86:  ADD             R0, PC; TempBufferVerticesStoredShattered_ptr
5ABE88:  ADD             R1, PC; TempVertexBuffer_ptr
5ABE8A:  LDR             R0, [R0]; TempBufferVerticesStoredShattered
5ABE8C:  LDR             R1, [R1]; TempVertexBuffer
5ABE8E:  LDR             R2, [R0]
5ABE90:  ADD.W           R0, R1, #0x9000
5ABE94:  SUB.W           R1, R2, #0x400
5ABE98:  MOVS            R2, #0
5ABE9A:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5ABE9E:  CBZ             R0, loc_5ABEC0
5ABEA0:  LDR             R0, =(TempBufferIndicesStoredShattered_ptr - 0x5ABEA8)
5ABEA2:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5ABEAA)
5ABEA4:  ADD             R0, PC; TempBufferIndicesStoredShattered_ptr
5ABEA6:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5ABEA8:  LDR             R0, [R0]; TempBufferIndicesStoredShattered
5ABEAA:  LDR             R1, [R1]; TempBufferRenderIndexList
5ABEAC:  LDR             R0, [R0]
5ABEAE:  ADD.W           R1, R1, #0x1000
5ABEB2:  SUB.W           R2, R0, #0x800
5ABEB6:  MOVS            R0, #3
5ABEB8:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5ABEBC:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5ABEC0:  LDR             R0, =(TempBufferIndicesStoredShattered_ptr - 0x5ABECC)
5ABEC2:  MOV.W           R2, #0x800
5ABEC6:  LDR             R1, =(TempBufferVerticesStoredShattered_ptr - 0x5ABECE)
5ABEC8:  ADD             R0, PC; TempBufferIndicesStoredShattered_ptr
5ABECA:  ADD             R1, PC; TempBufferVerticesStoredShattered_ptr
5ABECC:  LDR             R0, [R0]; TempBufferIndicesStoredShattered
5ABECE:  LDR             R1, [R1]; TempBufferVerticesStoredShattered
5ABED0:  STR             R2, [R0]
5ABED2:  MOV.W           R0, #0x400
5ABED6:  STR             R0, [R1]
5ABED8:  POP.W           {R7,LR}
5ABEDC:  BX              LR
