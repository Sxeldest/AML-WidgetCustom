; =========================================================
; Game Engine Function: _ZN17CVehicleRecording17RenderLineSegmentERi
; Address            : 0x3241AC - 0x324204
; =========================================================

3241AC:  PUSH            {R4,R6,R7,LR}
3241AE:  ADD             R7, SP, #8
3241B0:  MOV             R4, R0
3241B2:  LDR             R0, [R4]
3241B4:  CMP             R0, #2
3241B6:  BLT             loc_3241FE
3241B8:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x3241C0)
3241BA:  MOVS            R0, #0
3241BC:  ADD             R1, PC; TempBufferRenderIndexList_ptr
3241BE:  LDR             R2, [R1]; TempBufferRenderIndexList
3241C0:  ADD.W           R1, R2, R0,LSL#2
3241C4:  STRH.W          R0, [R2,R0,LSL#2]
3241C8:  ADDS            R0, #1
3241CA:  STRH            R0, [R1,#2]
3241CC:  LDR             R1, [R4]
3241CE:  SUBS            R3, R1, #1
3241D0:  CMP             R0, R3
3241D2:  BLT             loc_3241C0
3241D4:  LDR             R0, =(TempVertexBuffer_ptr - 0x3241DE)
3241D6:  MOVS            R2, #0
3241D8:  MOVS            R3, #0
3241DA:  ADD             R0, PC; TempVertexBuffer_ptr
3241DC:  LDR             R0, [R0]; TempVertexBuffer
3241DE:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
3241E2:  CBZ             R0, loc_3241FE
3241E4:  LDR             R0, =(TempBufferRenderIndexList_ptr - 0x3241F0)
3241E6:  MOV             R2, #0xFFFFFFFE
3241EA:  LDR             R1, [R4]
3241EC:  ADD             R0, PC; TempBufferRenderIndexList_ptr
3241EE:  ADD.W           R2, R2, R1,LSL#1
3241F2:  LDR             R1, [R0]; TempBufferRenderIndexList
3241F4:  MOVS            R0, #1
3241F6:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
3241FA:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
3241FE:  MOVS            R0, #0
324200:  STR             R0, [R4]
324202:  POP             {R4,R6,R7,PC}
