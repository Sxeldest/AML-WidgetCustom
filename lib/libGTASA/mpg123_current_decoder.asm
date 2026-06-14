; =========================================================
; Game Engine Function: mpg123_current_decoder
; Address            : 0x233DD4 - 0x233DEC
; =========================================================

233DD4:  CMP             R0, #0
233DD6:  ITT EQ
233DD8:  MOVEQ           R0, #0
233DDA:  BXEQ            LR
233DDC:  LDR             R1, =(off_660BB0 - 0x233DE8); "auto" ...
233DDE:  MOVW            R2, #0x9294
233DE2:  LDR             R0, [R0,R2]
233DE4:  ADD             R1, PC; off_660BB0
233DE6:  LDR.W           R0, [R1,R0,LSL#2]
233DEA:  BX              LR
