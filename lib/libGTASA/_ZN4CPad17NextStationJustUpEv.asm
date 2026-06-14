; =========================================================
; Game Engine Function: _ZN4CPad17NextStationJustUpEv
; Address            : 0x3FB3EA - 0x3FB3FE
; =========================================================

3FB3EA:  LDRH.W          R0, [R0,#0x110]
3FB3EE:  CMP             R0, #0
3FB3F0:  ITT NE
3FB3F2:  MOVNE           R0, #0
3FB3F4:  BXNE            LR
3FB3F6:  MOVS            R0, #0xA6
3FB3F8:  MOVS            R1, #1
3FB3FA:  B.W             sub_195EE0
