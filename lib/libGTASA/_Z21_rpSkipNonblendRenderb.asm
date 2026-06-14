; =========================================================
; Game Engine Function: _Z21_rpSkipNonblendRenderb
; Address            : 0x222C7C - 0x222C88
; =========================================================

222C7C:  LDR             R0, =(skipNonblendRender_ptr - 0x222C84)
222C7E:  MOVS            R1, #0
222C80:  ADD             R0, PC; skipNonblendRender_ptr
222C82:  LDR             R0, [R0]; skipNonblendRender
222C84:  STRB            R1, [R0]
222C86:  BX              LR
