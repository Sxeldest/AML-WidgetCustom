; =========================================================
; Game Engine Function: sub_20E6C4
; Address            : 0x20E6C4 - 0x20E6D6
; =========================================================

20E6C4:  MOVS            R1, #0
20E6C6:  MOVS            R2, #0
20E6C8:  CMP             R2, #3
20E6CA:  IT EQ
20E6CC:  BXEQ            LR
20E6CE:  STR.W           R1, [R0,R2,LSL#2]
20E6D2:  ADDS            R2, #1
20E6D4:  B               loc_20E6C8
