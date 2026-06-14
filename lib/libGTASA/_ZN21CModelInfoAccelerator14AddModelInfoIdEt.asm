; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator14AddModelInfoIdEt
; Address            : 0x38652E - 0x38653E
; =========================================================

38652E:  LDRH            R2, [R0,#4]
386530:  LDR             R3, [R0]
386532:  STRH.W          R1, [R3,R2,LSL#1]
386536:  LDRH            R1, [R0,#4]
386538:  ADDS            R1, #1
38653A:  STRH            R1, [R0,#4]
38653C:  BX              LR
