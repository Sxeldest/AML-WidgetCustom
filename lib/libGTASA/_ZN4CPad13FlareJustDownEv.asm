; =========================================================
; Game Engine Function: _ZN4CPad13FlareJustDownEv
; Address            : 0x3FA72E - 0x3FA742
; =========================================================

3FA72E:  LDRH.W          R0, [R0,#0x110]
3FA732:  CMP             R0, #0
3FA734:  ITT NE
3FA736:  MOVNE           R0, #0
3FA738:  BXNE            LR
3FA73A:  MOVS            R0, #0x58 ; 'X'
3FA73C:  MOVS            R1, #0
3FA73E:  B.W             sub_196BF4
