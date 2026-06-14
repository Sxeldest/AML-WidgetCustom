; =========================================================
; Game Engine Function: mpg123_feature
; Address            : 0x223DC0 - 0x223DCE
; =========================================================

223DC0:  CMP             R0, #0xD
223DC2:  ITEE HI
223DC4:  MOVHI           R0, #0
223DC6:  ADRLS           R1, dword_223DD0
223DC8:  LDRLS.W         R0, [R1,R0,LSL#2]
223DCC:  BX              LR
