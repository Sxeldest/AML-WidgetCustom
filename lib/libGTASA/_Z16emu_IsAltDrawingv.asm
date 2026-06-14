; =========================================================
; Game Engine Function: _Z16emu_IsAltDrawingv
; Address            : 0x1BB914 - 0x1BB93E
; =========================================================

1BB914:  LDR             R0, =(backTarget_ptr - 0x1BB91E)
1BB916:  LDR             R1, =(flushedSinceSwap_ptr - 0x1BB920)
1BB918:  LDR             R2, =(NoRenderTarget_ptr - 0x1BB922)
1BB91A:  ADD             R0, PC; backTarget_ptr
1BB91C:  ADD             R1, PC; flushedSinceSwap_ptr
1BB91E:  ADD             R2, PC; NoRenderTarget_ptr
1BB920:  LDR             R0, [R0]; backTarget
1BB922:  LDR             R1, [R1]; flushedSinceSwap
1BB924:  LDR             R2, [R2]; NoRenderTarget
1BB926:  LDR             R0, [R0]
1BB928:  LDRB            R1, [R1]
1BB92A:  LDRB            R2, [R2]
1BB92C:  CMP             R0, #0
1BB92E:  IT NE
1BB930:  EORNE.W         R0, R1, #1
1BB934:  CMP             R2, #0
1BB936:  IT NE
1BB938:  MOVNE           R0, #0
1BB93A:  UXTB            R0, R0
1BB93C:  BX              LR
