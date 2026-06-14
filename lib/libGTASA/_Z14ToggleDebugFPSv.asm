; =========================================================
; Game Engine Function: _Z14ToggleDebugFPSv
; Address            : 0x3F54B0 - 0x3F54BE
; =========================================================

3F54B0:  LDR             R0, =(byte_959907 - 0x3F54B6)
3F54B2:  ADD             R0, PC; byte_959907
3F54B4:  LDRB            R1, [R0]
3F54B6:  EOR.W           R1, R1, #1
3F54BA:  STRB            R1, [R0]
3F54BC:  BX              LR
