; =========================================================
; Game Engine Function: _ZN11CPlayerInfo30IsRestartingAfterMissionFailedEv
; Address            : 0x40BE9E - 0x40BEAC
; =========================================================

40BE9E:  LDRB.W          R1, [R0,#0xDC]
40BEA2:  MOVS            R0, #0
40BEA4:  CMP             R1, #3
40BEA6:  IT EQ
40BEA8:  MOVEQ           R0, #1
40BEAA:  BX              LR
