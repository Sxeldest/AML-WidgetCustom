; =========================================================
; Game Engine Function: sub_217AE2
; Address            : 0x217AE2 - 0x217AF6
; =========================================================

217AE2:  LDRB            R2, [R0,#5]
217AE4:  CMP             R2, #2
217AE6:  ITTT NE
217AE8:  CLZNE.W         R0, R2
217AEC:  LSRNE           R0, R0, #5
217AEE:  BXNE            LR
217AF0:  LDR             R2, [R0]
217AF2:  LDR             R2, [R2]
217AF4:  BX              R2
