; =========================================================
; Game Engine Function: _ZN4CPad13GetTurretLeftEv
; Address            : 0x3FA450 - 0x3FA466
; =========================================================

3FA450:  LDRH.W          R0, [R0,#0x110]
3FA454:  CMP             R0, #0
3FA456:  ITT NE
3FA458:  MOVNE           R0, #0
3FA45A:  BXNE            LR
3FA45C:  MOVS            R0, #0x1A
3FA45E:  MOVS            R1, #0
3FA460:  MOVS            R2, #1
3FA462:  B.W             sub_19C34C
