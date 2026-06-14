; =========================================================
; Game Engine Function: png_set_packing
; Address            : 0x2031F6 - 0x203216
; =========================================================

2031F6:  CBZ             R0, locret_203214
2031F8:  LDRB.W          R1, [R0,#0x210]
2031FC:  CMP             R1, #7
2031FE:  IT HI
203200:  BXHI            LR
203202:  LDR.W           R1, [R0,#0x13C]
203206:  MOVS            R2, #8
203208:  STRB.W          R2, [R0,#0x211]
20320C:  ORR.W           R1, R1, #4
203210:  STR.W           R1, [R0,#0x13C]
203214:  BX              LR
