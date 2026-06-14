; =========================================================
; Game Engine Function: sub_217B0A
; Address            : 0x217B0A - 0x217B1E
; =========================================================

217B0A:  LDRB            R2, [R0,#7]
217B0C:  CMP             R2, #2
217B0E:  ITTT NE
217B10:  CLZNE.W         R0, R2
217B14:  LSRNE           R0, R0, #5
217B16:  BXNE            LR
217B18:  LDR             R2, [R0]
217B1A:  LDR             R2, [R2,#8]
217B1C:  BX              R2
