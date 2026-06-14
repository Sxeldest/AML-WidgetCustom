; =========================================================
; Game Engine Function: sub_217AF6
; Address            : 0x217AF6 - 0x217B0A
; =========================================================

217AF6:  LDRB            R2, [R0,#6]
217AF8:  CMP             R2, #2
217AFA:  ITTT NE
217AFC:  CLZNE.W         R0, R2
217B00:  LSRNE           R0, R0, #5
217B02:  BXNE            LR
217B04:  LDR             R2, [R0]
217B06:  LDR             R2, [R2,#4]
217B08:  BX              R2
