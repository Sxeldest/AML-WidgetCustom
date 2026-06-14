; =========================================================
; Game Engine Function: _ZN12RenderBuffer17ClearRenderBufferEv
; Address            : 0x5BAD94 - 0x5BADA8
; =========================================================

5BAD94:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5BAD9E)
5BAD96:  MOVS            R2, #0
5BAD98:  LDR             R1, =(TempBufferIndicesStored_ptr - 0x5BADA0)
5BAD9A:  ADD             R0, PC; TempBufferVerticesStored_ptr
5BAD9C:  ADD             R1, PC; TempBufferIndicesStored_ptr
5BAD9E:  LDR             R0, [R0]; TempBufferVerticesStored
5BADA0:  LDR             R1, [R1]; TempBufferIndicesStored
5BADA2:  STR             R2, [R0]
5BADA4:  STR             R2, [R1]
5BADA6:  BX              LR
