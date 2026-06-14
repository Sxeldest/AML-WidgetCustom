; =========================================================
; Game Engine Function: _ZN4CPad16GetHydraulicJumpEv
; Address            : 0x3FA6D8 - 0x3FA6EE
; =========================================================

3FA6D8:  LDRH.W          R0, [R0,#0x110]
3FA6DC:  CMP             R0, #0
3FA6DE:  ITT NE
3FA6E0:  MOVNE           R0, #0
3FA6E2:  BXNE            LR
3FA6E4:  MOVS            R0, #0xC
3FA6E6:  MOVS            R1, #0
3FA6E8:  MOVS            R2, #1
3FA6EA:  B.W             sub_18D4F0
