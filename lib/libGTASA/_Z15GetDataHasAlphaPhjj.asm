; =========================================================
; Game Engine Function: _Z15GetDataHasAlphaPhjj
; Address            : 0x1B3830 - 0x1B3856
; =========================================================

1B3830:  MULS            R1, R2
1B3832:  CMP             R1, #0
1B3834:  ITT EQ
1B3836:  MOVEQ           R0, #0
1B3838:  BXEQ            LR
1B383A:  ADDS            R0, #3
1B383C:  MOVS            R2, #0
1B383E:  LDRB.W          R3, [R0,R2,LSL#2]
1B3842:  CMP             R3, #0xFF
1B3844:  ITT NE
1B3846:  MOVNE           R0, #1
1B3848:  BXNE            LR
1B384A:  ADDS            R2, #1
1B384C:  CMP             R2, R1
1B384E:  ITT CS
1B3850:  MOVCS           R0, #0
1B3852:  BXCS            LR
1B3854:  B               loc_1B383E
