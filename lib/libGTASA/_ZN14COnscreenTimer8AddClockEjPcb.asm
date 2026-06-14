; =========================================================
; Game Engine Function: _ZN14COnscreenTimer8AddClockEjPcb
; Address            : 0x3150AC - 0x3150D2
; =========================================================

3150AC:  LDR.W           R12, [R0]
3150B0:  CMP.W           R12, #0
3150B4:  IT NE
3150B6:  BXNE            LR
3150B8:  STRB.W          R3, [R0,#0x39]
3150BC:  CMP             R2, #0
3150BE:  STR.W           R1, [R0],#4; char *
3150C2:  ITTT NE
3150C4:  MOVNE           R1, R2; char *
3150C6:  MOVNE           R2, #0xA; size_t
3150C8:  BNE.W           sub_19F770
3150CC:  MOVS            R1, #0
3150CE:  STRB            R1, [R0]
3150D0:  BX              LR
