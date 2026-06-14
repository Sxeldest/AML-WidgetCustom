; =========================================================
; Game Engine Function: mpg123_read
; Address            : 0x230CF8 - 0x230D12
; =========================================================

230CF8:  PUSH            {R7,LR}
230CFA:  MOV             R7, SP
230CFC:  SUB             SP, SP, #8
230CFE:  MOV             R12, R1
230D00:  STRD.W          R2, R3, [SP,#0x10+var_10]
230D04:  MOVS            R1, #0
230D06:  MOVS            R2, #0
230D08:  MOV             R3, R12
230D0A:  BLX             j_mpg123_decode
230D0E:  ADD             SP, SP, #8
230D10:  POP             {R7,PC}
