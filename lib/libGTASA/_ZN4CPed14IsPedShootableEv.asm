; =========================================================
; Game Engine Function: _ZN4CPed14IsPedShootableEv
; Address            : 0x4A4B4E - 0x4A4B5C
; =========================================================

4A4B4E:  LDR.W           R1, [R0,#0x44C]
4A4B52:  MOVS            R0, #0
4A4B54:  CMP             R1, #0x2F ; '/'
4A4B56:  IT LT
4A4B58:  MOVLT           R0, #1
4A4B5A:  BX              LR
