; =========================================================
; Game Engine Function: _Z21emu_IsAltRenderTargetv
; Address            : 0x1BB874 - 0x1BB898
; =========================================================

1BB874:  LDR             R0, =(NoRenderTarget_ptr - 0x1BB87E)
1BB876:  MOVS            R2, #0
1BB878:  LDR             R1, =(backTarget_ptr - 0x1BB880)
1BB87A:  ADD             R0, PC; NoRenderTarget_ptr
1BB87C:  ADD             R1, PC; backTarget_ptr
1BB87E:  LDR             R0, [R0]; NoRenderTarget
1BB880:  LDR             R1, [R1]; backTarget
1BB882:  LDRB            R0, [R0]
1BB884:  LDR             R1, [R1]
1BB886:  CMP             R0, #0
1BB888:  IT EQ
1BB88A:  MOVEQ           R2, #1
1BB88C:  CMP             R1, #0
1BB88E:  IT NE
1BB890:  MOVNE           R1, #1
1BB892:  AND.W           R0, R2, R1
1BB896:  BX              LR
