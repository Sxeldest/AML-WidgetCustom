; =========================================================
; Game Engine Function: mpg123_outblock
; Address            : 0x2306A0 - 0x2306B0
; =========================================================

2306A0:  CMP             R0, #0
2306A2:  ITEE EQ
2306A4:  MOVEQ.W         R0, #(stru_2F2B8.st_info - 0xB2C4)
2306A8:  MOVWNE          R1, #0xB2C4
2306AC:  LDRNE           R0, [R0,R1]
2306AE:  BX              LR
