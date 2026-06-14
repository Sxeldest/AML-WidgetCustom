; =========================================================
; Game Engine Function: png_get_palette_max
; Address            : 0x1F3F34 - 0x1F3F4A
; =========================================================

1F3F34:  MOV             R2, R0
1F3F36:  MOV.W           R0, #0xFFFFFFFF
1F3F3A:  CMP             R2, #0
1F3F3C:  IT EQ
1F3F3E:  BXEQ            LR
1F3F40:  CMP             R1, #0
1F3F42:  IT NE
1F3F44:  LDRNE.W         R0, [R2,#0x204]
1F3F48:  BX              LR
