; =========================================================
; Game Engine Function: _ZN10CBugstarPC4InitEv
; Address            : 0x3BED4C - 0x3BED58
; =========================================================

3BED4C:  LDR             R1, [R0]
3BED4E:  MOVW            R2, #0xDA2
3BED52:  STR             R2, [R0,#8]
3BED54:  LDR             R1, [R1,#0x10]
3BED56:  BX              R1
