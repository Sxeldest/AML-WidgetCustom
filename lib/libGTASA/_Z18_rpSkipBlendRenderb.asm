; =========================================================
; Game Engine Function: _Z18_rpSkipBlendRenderb
; Address            : 0x222C6C - 0x222C76
; =========================================================

222C6C:  LDR             R1, =(skipBlendRender_ptr - 0x222C72)
222C6E:  ADD             R1, PC; skipBlendRender_ptr
222C70:  LDR             R1, [R1]; skipBlendRender
222C72:  STRB            R0, [R1]
222C74:  BX              LR
