; =========================================================
; Game Engine Function: sub_1EE5C6
; Address            : 0x1EE5C6 - 0x1EE5D8
; =========================================================

1EE5C6:  MOVS            R1, #0
1EE5C8:  MOVS            R2, #0
1EE5CA:  CMP             R2, #3
1EE5CC:  IT EQ
1EE5CE:  BXEQ            LR
1EE5D0:  STR.W           R1, [R0,R2,LSL#2]
1EE5D4:  ADDS            R2, #1
1EE5D6:  B               loc_1EE5CA
