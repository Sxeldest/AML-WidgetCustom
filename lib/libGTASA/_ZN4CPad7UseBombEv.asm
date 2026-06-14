; =========================================================
; Game Engine Function: _ZN4CPad7UseBombEv
; Address            : 0x3FA75E - 0x3FA774
; =========================================================

3FA75E:  LDRH.W          R0, [R0,#0x110]
3FA762:  CMP             R0, #0
3FA764:  ITT NE
3FA766:  MOVNE           R0, #0
3FA768:  BXNE            LR
3FA76A:  MOVS            R0, #0x19
3FA76C:  MOVS            R1, #0
3FA76E:  MOVS            R2, #1
3FA770:  B.W             sub_18D4F0
