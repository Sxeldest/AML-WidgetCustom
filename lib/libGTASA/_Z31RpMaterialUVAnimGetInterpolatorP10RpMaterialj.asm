; =========================================================
; Game Engine Function: _Z31RpMaterialUVAnimGetInterpolatorP10RpMaterialj
; Address            : 0x1CAD28 - 0x1CAD3A
; =========================================================

1CAD28:  LDR             R2, =(RpUVAnimMaterialGlobals_ptr - 0x1CAD2E)
1CAD2A:  ADD             R2, PC; RpUVAnimMaterialGlobals_ptr
1CAD2C:  LDR             R2, [R2]; RpUVAnimMaterialGlobals
1CAD2E:  LDR             R2, [R2]
1CAD30:  ADD             R0, R2
1CAD32:  ADD.W           R0, R0, R1,LSL#2
1CAD36:  LDR             R0, [R0,#8]
1CAD38:  BX              LR
