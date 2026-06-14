; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel14IsSoundPlayingEv
; Address            : 0x3AA0D4 - 0x3AA0F8
; =========================================================

3AA0D4:  MOV             R1, #0x24040
3AA0DC:  LDR             R0, [R0,R1]
3AA0DE:  ADDS            R1, R0, #5
3AA0E0:  CMP             R1, #4
3AA0E2:  BHI             loc_3AA0EC
3AA0E4:  CMP             R1, #3
3AA0E6:  ITT NE
3AA0E8:  MOVNE           R0, #1
3AA0EA:  BXNE            LR
3AA0EC:  ADDS            R0, #7
3AA0EE:  MOV.W           R0, #0
3AA0F2:  IT EQ
3AA0F4:  MOVEQ           R0, #1
3AA0F6:  BX              LR
