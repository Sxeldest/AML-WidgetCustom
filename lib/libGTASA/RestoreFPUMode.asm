; =========================================================
; Game Engine Function: RestoreFPUMode
; Address            : 0x23EDAE - 0x23EDB4
; =========================================================

23EDAE:  LDR             R0, [R0]; rounding_direction
23EDB0:  B.W             j_fesetround
