; =========================================================
; Game Engine Function: _ZN11CPlayerInfo22IsRestartingAfterDeathEv
; Address            : 0x40BE84 - 0x40BE90
; =========================================================

40BE84:  LDRB.W          R0, [R0,#0xDC]
40BE88:  CMP             R0, #1
40BE8A:  IT NE
40BE8C:  MOVNE           R0, #0
40BE8E:  BX              LR
