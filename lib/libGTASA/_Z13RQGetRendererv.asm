; =========================================================
; Game Engine Function: _Z13RQGetRendererv
; Address            : 0x1CC588 - 0x1CC592
; =========================================================

1CC588:  LDR             R0, =(rqRenderer_ptr - 0x1CC58E)
1CC58A:  ADD             R0, PC; rqRenderer_ptr
1CC58C:  LDR             R0, [R0]; rqRenderer
1CC58E:  LDR             R0, [R0]
1CC590:  BX              LR
