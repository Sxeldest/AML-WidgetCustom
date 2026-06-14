; =========================================================
; Game Engine Function: bs2b_is_clear
; Address            : 0x1DA8D8 - 0x1DA900
; =========================================================

1DA8D8:  MOV             R1, #0x67 ; 'g'
1DA8DC:  CMP             R1, #0x37 ; '7'
1DA8E0:  MOVEQ           R0, #1
1DA8E4:  BXEQ            LR
1DA8E8:  LDRB            R2, [R0,R1]
1DA8EC:  SUB             R1, R1, #1
1DA8F0:  CMP             R2, #0
1DA8F4:  MOVNE           R0, #0
1DA8F8:  BXNE            LR
1DA8FC:  B               loc_1DA8DC
