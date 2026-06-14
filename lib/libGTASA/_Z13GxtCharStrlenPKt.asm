; =========================================================
; Game Engine Function: _Z13GxtCharStrlenPKt
; Address            : 0x5A83CE - 0x5A83E8
; =========================================================

5A83CE:  LDRH            R1, [R0]
5A83D0:  CMP             R1, #0
5A83D2:  ITT EQ
5A83D4:  MOVEQ           R0, #0
5A83D6:  BXEQ            LR
5A83D8:  ADDS            R1, R0, #2
5A83DA:  MOVS            R0, #0
5A83DC:  LDRH.W          R2, [R1,R0,LSL#1]
5A83E0:  ADDS            R0, #1
5A83E2:  CMP             R2, #0
5A83E4:  BNE             loc_5A83DC
5A83E6:  BX              LR
