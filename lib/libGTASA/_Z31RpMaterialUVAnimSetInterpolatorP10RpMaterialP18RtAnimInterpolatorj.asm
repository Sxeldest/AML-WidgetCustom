; =========================================================
; Game Engine Function: _Z31RpMaterialUVAnimSetInterpolatorP10RpMaterialP18RtAnimInterpolatorj
; Address            : 0x1CAD40 - 0x1CAD52
; =========================================================

1CAD40:  LDR             R3, =(RpUVAnimMaterialGlobals_ptr - 0x1CAD46)
1CAD42:  ADD             R3, PC; RpUVAnimMaterialGlobals_ptr
1CAD44:  LDR             R3, [R3]; RpUVAnimMaterialGlobals
1CAD46:  LDR             R3, [R3]
1CAD48:  ADD             R3, R0
1CAD4A:  ADD.W           R2, R3, R2,LSL#2
1CAD4E:  STR             R1, [R2,#8]
1CAD50:  BX              LR
