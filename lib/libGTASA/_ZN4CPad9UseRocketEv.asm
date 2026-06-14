; =========================================================
; Game Engine Function: _ZN4CPad9UseRocketEv
; Address            : 0x3FA774 - 0x3FA78A
; =========================================================

3FA774:  LDRH.W          R0, [R0,#0x110]
3FA778:  CMP             R0, #0
3FA77A:  ITT NE
3FA77C:  MOVNE           R0, #0
3FA77E:  BXNE            LR
3FA780:  MOVS            R0, #0x18
3FA782:  MOVS            R1, #0
3FA784:  MOVS            R2, #1
3FA786:  B.W             sub_18D4F0
