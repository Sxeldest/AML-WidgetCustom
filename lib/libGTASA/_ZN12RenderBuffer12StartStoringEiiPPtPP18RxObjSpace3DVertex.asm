; =========================================================
; Game Engine Function: _ZN12RenderBuffer12StartStoringEiiPPtPP18RxObjSpace3DVertex
; Address            : 0x5BBA30 - 0x5BBAB4
; =========================================================

5BBA30:  PUSH            {R4-R7,LR}
5BBA32:  ADD             R7, SP, #0xC
5BBA34:  PUSH.W          {R8}
5BBA38:  MOV             R5, R0
5BBA3A:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5BBA44)
5BBA3C:  MOV             R8, R3
5BBA3E:  MOV             R4, R2
5BBA40:  ADD             R0, PC; TempBufferIndicesStored_ptr
5BBA42:  MOV             R6, R1
5BBA44:  LDR             R0, [R0]; TempBufferIndicesStored
5BBA46:  LDR             R0, [R0]
5BBA48:  ADD             R0, R5; this
5BBA4A:  CMP.W           R0, #0x1000
5BBA4E:  IT GE
5BBA50:  BLXGE.W         j__ZN12RenderBuffer19RenderStuffInBufferEv; RenderBuffer::RenderStuffInBuffer(void)
5BBA54:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5BBA5A)
5BBA56:  ADD             R0, PC; TempBufferVerticesStored_ptr
5BBA58:  LDR             R0, [R0]; TempBufferVerticesStored
5BBA5A:  LDR             R0, [R0]
5BBA5C:  ADD             R0, R6; this
5BBA5E:  CMP.W           R0, #0x800
5BBA62:  IT GE
5BBA64:  BLXGE.W         j__ZN12RenderBuffer19RenderStuffInBufferEv; RenderBuffer::RenderStuffInBuffer(void)
5BBA68:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5BBA70)
5BBA6A:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5BBA74)
5BBA6C:  ADD             R0, PC; TempBufferIndicesStored_ptr
5BBA6E:  LDR             R2, =(TempBufferVerticesStored_ptr - 0x5BBA7C)
5BBA70:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5BBA72:  LDR.W           LR, =(_ZN12RenderBuffer17IndicesToBeStoredE_ptr - 0x5BBA80)
5BBA76:  LDR             R0, [R0]; TempBufferIndicesStored
5BBA78:  ADD             R2, PC; TempBufferVerticesStored_ptr
5BBA7A:  LDR             R1, [R1]; TempBufferRenderIndexList
5BBA7C:  ADD             LR, PC; _ZN12RenderBuffer17IndicesToBeStoredE_ptr
5BBA7E:  LDR             R2, [R2]; TempBufferVerticesStored
5BBA80:  LDR             R0, [R0]
5BBA82:  LDR             R3, =(_ZN12RenderBuffer18VerticesToBeStoredE_ptr - 0x5BBA94)
5BBA84:  LDR.W           R12, =(TempVertexBuffer_ptr - 0x5BBA96)
5BBA88:  ADD.W           R0, R1, R0,LSL#1
5BBA8C:  STR             R0, [R4]
5BBA8E:  LDR             R0, [R2]
5BBA90:  ADD             R3, PC; _ZN12RenderBuffer18VerticesToBeStoredE_ptr
5BBA92:  ADD             R12, PC; TempVertexBuffer_ptr
5BBA94:  LDR.W           R1, [LR]; RenderBuffer::IndicesToBeStored ...
5BBA98:  LDR             R2, [R3]; RenderBuffer::VerticesToBeStored ...
5BBA9A:  LDR.W           R3, [R12]; TempVertexBuffer
5BBA9E:  ADD.W           R0, R0, R0,LSL#3
5BBAA2:  ADD.W           R0, R3, R0,LSL#2
5BBAA6:  STR.W           R0, [R8]
5BBAAA:  STR             R6, [R2]; RenderBuffer::VerticesToBeStored
5BBAAC:  STR             R5, [R1]; RenderBuffer::IndicesToBeStored
5BBAAE:  POP.W           {R8}
5BBAB2:  POP             {R4-R7,PC}
