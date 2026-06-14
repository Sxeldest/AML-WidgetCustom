; =========================================================
; Game Engine Function: _ZN11CPlayerInfo23IsRestartingAfterArrestEv
; Address            : 0x40BE90 - 0x40BE9E
; =========================================================

40BE90:  LDRB.W          R1, [R0,#0xDC]
40BE94:  MOVS            R0, #0
40BE96:  CMP             R1, #2
40BE98:  IT EQ
40BE9A:  MOVEQ           R0, #1
40BE9C:  BX              LR
