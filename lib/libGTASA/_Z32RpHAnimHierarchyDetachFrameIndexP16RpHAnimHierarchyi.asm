; =========================================================
; Game Engine Function: _Z32RpHAnimHierarchyDetachFrameIndexP16RpHAnimHierarchyi
; Address            : 0x1C2C1C - 0x1C2C28
; =========================================================

1C2C1C:  LDR             R2, [R0,#0x10]
1C2C1E:  ADD.W           R1, R2, R1,LSL#4
1C2C22:  MOVS            R2, #0
1C2C24:  STR             R2, [R1,#0xC]
1C2C26:  BX              LR
