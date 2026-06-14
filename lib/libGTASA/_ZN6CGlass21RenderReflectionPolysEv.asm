; =========================================================
; Game Engine Function: _ZN6CGlass21RenderReflectionPolysEv
; Address            : 0x5ABF00 - 0x5ABF92
; =========================================================

5ABF00:  LDR             R0, =(TempBufferVerticesStoredReflection_ptr - 0x5ABF06)
5ABF02:  ADD             R0, PC; TempBufferVerticesStoredReflection_ptr
5ABF04:  LDR             R0, [R0]; TempBufferVerticesStoredReflection
5ABF06:  LDR             R0, [R0]
5ABF08:  CMP.W           R0, #0x600
5ABF0C:  IT EQ
5ABF0E:  BXEQ            LR
5ABF10:  PUSH            {R7,LR}
5ABF12:  MOV             R7, SP
5ABF14:  LDR             R0, =(gpShadowHeadLightsTex_ptr - 0x5ABF1A)
5ABF16:  ADD             R0, PC; gpShadowHeadLightsTex_ptr
5ABF18:  LDR             R0, [R0]; gpShadowHeadLightsTex
5ABF1A:  LDR             R0, [R0]
5ABF1C:  LDR             R1, [R0]
5ABF1E:  MOVS            R0, #1
5ABF20:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABF24:  MOVS            R0, #0xA
5ABF26:  MOVS            R1, #5
5ABF28:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABF2C:  MOVS            R0, #0xB
5ABF2E:  MOVS            R1, #6
5ABF30:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ABF34:  LDR             R0, =(TempBufferVerticesStoredReflection_ptr - 0x5ABF3E)
5ABF36:  MOVS            R3, #1
5ABF38:  LDR             R1, =(TempVertexBuffer_ptr - 0x5ABF40)
5ABF3A:  ADD             R0, PC; TempBufferVerticesStoredReflection_ptr
5ABF3C:  ADD             R1, PC; TempVertexBuffer_ptr
5ABF3E:  LDR             R0, [R0]; TempBufferVerticesStoredReflection
5ABF40:  LDR             R1, [R1]; TempVertexBuffer
5ABF42:  LDR             R2, [R0]
5ABF44:  ADD.W           R0, R1, #0xD800
5ABF48:  SUB.W           R1, R2, #0x600
5ABF4C:  MOVS            R2, #0
5ABF4E:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5ABF52:  CBZ             R0, loc_5ABF74
5ABF54:  LDR             R0, =(TempBufferIndicesStoredReflection_ptr - 0x5ABF5C)
5ABF56:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5ABF5E)
5ABF58:  ADD             R0, PC; TempBufferIndicesStoredReflection_ptr
5ABF5A:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5ABF5C:  LDR             R0, [R0]; TempBufferIndicesStoredReflection
5ABF5E:  LDR             R1, [R1]; TempBufferRenderIndexList
5ABF60:  LDR             R0, [R0]
5ABF62:  ADD.W           R1, R1, #0x1800
5ABF66:  SUB.W           R2, R0, #0xC00
5ABF6A:  MOVS            R0, #3
5ABF6C:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5ABF70:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5ABF74:  LDR             R0, =(TempBufferIndicesStoredReflection_ptr - 0x5ABF80)
5ABF76:  MOV.W           R2, #0xC00
5ABF7A:  LDR             R1, =(TempBufferVerticesStoredReflection_ptr - 0x5ABF82)
5ABF7C:  ADD             R0, PC; TempBufferIndicesStoredReflection_ptr
5ABF7E:  ADD             R1, PC; TempBufferVerticesStoredReflection_ptr
5ABF80:  LDR             R0, [R0]; TempBufferIndicesStoredReflection
5ABF82:  LDR             R1, [R1]; TempBufferVerticesStoredReflection
5ABF84:  STR             R2, [R0]
5ABF86:  MOV.W           R0, #0x600
5ABF8A:  STR             R0, [R1]
5ABF8C:  POP.W           {R7,LR}
5ABF90:  BX              LR
