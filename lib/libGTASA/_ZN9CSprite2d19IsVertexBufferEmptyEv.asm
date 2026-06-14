; =========================================================
; Game Engine Function: _ZN9CSprite2d19IsVertexBufferEmptyEv
; Address            : 0x5C8EB8 - 0x5C8ECA
; =========================================================

5C8EB8:  LDR             R0, =(_ZN9CSprite2d16nextBufferVertexE_ptr - 0x5C8EBE)
5C8EBA:  ADD             R0, PC; _ZN9CSprite2d16nextBufferVertexE_ptr
5C8EBC:  LDR             R0, [R0]; CSprite2d::nextBufferVertex ...
5C8EBE:  LDR             R1, [R0]; CSprite2d::nextBufferVertex
5C8EC0:  MOVS            R0, #0
5C8EC2:  CMP             R1, #0
5C8EC4:  IT EQ
5C8EC6:  MOVEQ           R0, #1
5C8EC8:  BX              LR
