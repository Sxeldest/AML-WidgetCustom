; =========================================================
; Game Engine Function: _ZN11CPlayerInfo20IsPlayerInRemoteModeEv
; Address            : 0x40B93C - 0x40B954
; =========================================================

40B93C:  LDR.W           R1, [R0,#0xB0]
40B940:  CMP             R1, #0
40B942:  ITT NE
40B944:  MOVNE           R0, #1
40B946:  BXNE            LR
40B948:  LDRB.W          R0, [R0,#0xDD]
40B94C:  CMP             R0, #0
40B94E:  IT NE
40B950:  MOVNE           R0, #1
40B952:  BX              LR
