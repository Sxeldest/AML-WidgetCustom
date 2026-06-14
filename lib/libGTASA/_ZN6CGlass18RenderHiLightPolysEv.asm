; =========================================================
; Game Engine Function: _ZN6CGlass18RenderHiLightPolysEv
; Address            : 0x5ABDB0 - 0x5ABE2A
; =========================================================

5ABDB0:  LDR             R0, =(TempBufferVerticesStoredHiLight_ptr - 0x5ABDB6)
5ABDB2:  ADD             R0, PC; TempBufferVerticesStoredHiLight_ptr
5ABDB4:  LDR             R0, [R0]; TempBufferVerticesStoredHiLight
5ABDB6:  LDR             R0, [R0]
5ABDB8:  CMP             R0, #0
5ABDBA:  IT EQ
5ABDBC:  BXEQ            LR
5ABDBE:  PUSH            {R4,R6,R7,LR}
5ABDC0:  ADD             R7, SP, #0x10+var_8
5ABDC2:  MOVS            R0, #0xA
5ABDC4:  MOVS            R1, #2
5ABDC6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABDCA:  MOVS            R0, #0xB
5ABDCC:  MOVS            R1, #2
5ABDCE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABDD2:  LDR             R0, =(gpShadowExplosionTex_ptr - 0x5ABDD8)
5ABDD4:  ADD             R0, PC; gpShadowExplosionTex_ptr
5ABDD6:  LDR             R0, [R0]; gpShadowExplosionTex
5ABDD8:  LDR             R0, [R0]
5ABDDA:  LDR             R1, [R0]
5ABDDC:  MOVS            R0, #1
5ABDDE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABDE2:  LDR             R0, =(TempBufferVerticesStoredHiLight_ptr - 0x5ABDEE)
5ABDE4:  MOVS            R3, #1
5ABDE6:  LDR             R2, =(TempVertexBuffer_ptr - 0x5ABDF0)
5ABDE8:  MOVS            R4, #0
5ABDEA:  ADD             R0, PC; TempBufferVerticesStoredHiLight_ptr
5ABDEC:  ADD             R2, PC; TempVertexBuffer_ptr
5ABDEE:  LDR             R0, [R0]; TempBufferVerticesStoredHiLight
5ABDF0:  LDR             R1, [R0]
5ABDF2:  LDR             R0, [R2]; TempVertexBuffer
5ABDF4:  MOVS            R2, #0
5ABDF6:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5ABDFA:  CBZ             R0, loc_5ABE14
5ABDFC:  LDR             R0, =(TempBufferIndicesStoredHiLight_ptr - 0x5ABE04)
5ABDFE:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5ABE06)
5ABE00:  ADD             R0, PC; TempBufferIndicesStoredHiLight_ptr
5ABE02:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5ABE04:  LDR             R0, [R0]; TempBufferIndicesStoredHiLight
5ABE06:  LDR             R1, [R1]; TempBufferRenderIndexList
5ABE08:  LDR             R2, [R0]
5ABE0A:  MOVS            R0, #3
5ABE0C:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5ABE10:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5ABE14:  LDR             R0, =(TempBufferVerticesStoredHiLight_ptr - 0x5ABE1C)
5ABE16:  LDR             R1, =(TempBufferIndicesStoredHiLight_ptr - 0x5ABE1E)
5ABE18:  ADD             R0, PC; TempBufferVerticesStoredHiLight_ptr
5ABE1A:  ADD             R1, PC; TempBufferIndicesStoredHiLight_ptr
5ABE1C:  LDR             R0, [R0]; TempBufferVerticesStoredHiLight
5ABE1E:  LDR             R1, [R1]; TempBufferIndicesStoredHiLight
5ABE20:  STR             R4, [R0]
5ABE22:  STR             R4, [R1]
5ABE24:  POP.W           {R4,R6,R7,LR}
5ABE28:  BX              LR
