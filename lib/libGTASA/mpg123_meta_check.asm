; =========================================================
; Game Engine Function: mpg123_meta_check
; Address            : 0x2333B8 - 0x2333C6
; =========================================================

2333B8:  CMP             R0, #0
2333BA:  ITEE EQ
2333BC:  MOVEQ           R0, #0
2333BE:  MOVWNE          R1, #0xB478
2333C2:  LDRNE           R0, [R0,R1]
2333C4:  BX              LR
