; =========================================================
; Game Engine Function: _ZN10C3dMarkers11ForceRenderEh
; Address            : 0x5C3560 - 0x5C356A
; =========================================================

5C3560:  LDR             R1, =(_ZN10C3dMarkers17IgnoreRenderLimitE_ptr - 0x5C3566)
5C3562:  ADD             R1, PC; _ZN10C3dMarkers17IgnoreRenderLimitE_ptr
5C3564:  LDR             R1, [R1]; C3dMarkers::IgnoreRenderLimit ...
5C3566:  STRB            R0, [R1]; C3dMarkers::IgnoreRenderLimit
5C3568:  BX              LR
