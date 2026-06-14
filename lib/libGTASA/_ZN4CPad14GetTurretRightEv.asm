; =========================================================
; Game Engine Function: _ZN4CPad14GetTurretRightEv
; Address            : 0x3FA466 - 0x3FA47C
; =========================================================

3FA466:  LDRH.W          R0, [R0,#0x110]
3FA46A:  CMP             R0, #0
3FA46C:  ITT NE
3FA46E:  MOVNE           R0, #0
3FA470:  BXNE            LR
3FA472:  MOVS            R0, #0x1B
3FA474:  MOVS            R1, #0
3FA476:  MOVS            R2, #1
3FA478:  B.W             sub_19C34C
