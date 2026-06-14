; =========================================================
; Game Engine Function: png_set_pHYs
; Address            : 0x20225C - 0x20227C
; =========================================================

20225C:  CMP             R0, #0
20225E:  IT EQ
202260:  BXEQ            LR
202262:  CMP             R1, #0
202264:  ITTTT NE
202266:  LDRNE           R0, [SP,#arg_0]
202268:  STRDNE.W        R2, R3, [R1,#0xC0]
20226C:  LDRNE           R2, [R1,#8]
20226E:  STRBNE.W        R0, [R1,#0xC8]
202272:  ITT NE
202274:  ORRNE.W         R0, R2, #0x80
202278:  STRNE           R0, [R1,#8]
20227A:  BX              LR
