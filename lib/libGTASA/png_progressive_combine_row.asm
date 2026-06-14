; =========================================================
; Game Engine Function: png_progressive_combine_row
; Address            : 0x1F55DC - 0x1F55EA
; =========================================================

1F55DC:  CMP             R0, #0
1F55DE:  ITTT NE
1F55E0:  CMPNE           R2, #0
1F55E2:  MOVNE           R2, #1
1F55E4:  BNE.W           j_j_png_combine_row
1F55E8:  BX              LR
