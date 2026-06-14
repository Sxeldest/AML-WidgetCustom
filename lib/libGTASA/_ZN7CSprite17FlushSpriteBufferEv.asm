; =========================================================
; Game Engine Function: _ZN7CSprite17FlushSpriteBufferEv
; Address            : 0x5C59A4 - 0x5C5A2C
; =========================================================

5C59A4:  LDR             R0, =(dword_A7C1F0 - 0x5C59AA)
5C59A6:  ADD             R0, PC; dword_A7C1F0
5C59A8:  LDR             R0, [R0]
5C59AA:  CMP             R0, #1
5C59AC:  IT LT
5C59AE:  BXLT            LR
5C59B0:  PUSH            {R7,LR}
5C59B2:  MOV             R7, SP
5C59B4:  SUB             SP, SP, #8
5C59B6:  LDR             R1, =(_ZN7CSprite31m_bFlushSpriteBufferSwitchZTestE_ptr - 0x5C59BC)
5C59B8:  ADD             R1, PC; _ZN7CSprite31m_bFlushSpriteBufferSwitchZTestE_ptr
5C59BA:  LDR             R1, [R1]; CSprite::m_bFlushSpriteBufferSwitchZTest ...
5C59BC:  LDR             R1, [R1]; CSprite::m_bFlushSpriteBufferSwitchZTest
5C59BE:  CBZ             R1, loc_5C59F8
5C59C0:  MOVS            R0, #6
5C59C2:  MOVS            R1, #0
5C59C4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C59C8:  LDR             R0, =(dword_A7C1F0 - 0x5C59D0)
5C59CA:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C59D4)
5C59CC:  ADD             R0, PC; dword_A7C1F0
5C59CE:  LDR             R2, =(TempVertexBuffer_ptr - 0x5C59D8)
5C59D0:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C59D2:  LDR             R0, [R0]
5C59D4:  ADD             R2, PC; TempVertexBuffer_ptr
5C59D6:  LDR             R3, [R1]; TempBufferRenderIndexList
5C59D8:  LDR             R1, [R2]; TempVertexBuffer
5C59DA:  ADD.W           R2, R0, R0,LSL#1
5C59DE:  ADD.W           R1, R1, #0x12000
5C59E2:  LSLS            R2, R2, #1
5C59E4:  STR             R2, [SP,#0x10+var_10]
5C59E6:  LSLS            R2, R0, #2
5C59E8:  MOVS            R0, #3
5C59EA:  BLX.W           j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5C59EE:  MOVS            R0, #6
5C59F0:  MOVS            R1, #1
5C59F2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C59F6:  B               loc_5C5A1C
5C59F8:  LDR             R2, =(TempVertexBuffer_ptr - 0x5C5A06)
5C59FA:  ADD.W           R3, R0, R0,LSL#1
5C59FE:  LDR.W           R12, =(TempBufferRenderIndexList_ptr - 0x5C5A0A)
5C5A02:  ADD             R2, PC; TempVertexBuffer_ptr
5C5A04:  LSLS            R3, R3, #1
5C5A06:  ADD             R12, PC; TempBufferRenderIndexList_ptr
5C5A08:  STR             R3, [SP,#0x10+var_10]
5C5A0A:  LDR             R1, [R2]; TempVertexBuffer
5C5A0C:  LSLS            R2, R0, #2
5C5A0E:  LDR.W           R3, [R12]; TempBufferRenderIndexList
5C5A12:  MOVS            R0, #3
5C5A14:  ADD.W           R1, R1, #0x12000
5C5A18:  BLX.W           j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5C5A1C:  LDR             R0, =(dword_A7C1F0 - 0x5C5A24)
5C5A1E:  MOVS            R1, #0
5C5A20:  ADD             R0, PC; dword_A7C1F0
5C5A22:  STR             R1, [R0]
5C5A24:  ADD             SP, SP, #8
5C5A26:  POP.W           {R7,LR}
5C5A2A:  BX              LR
