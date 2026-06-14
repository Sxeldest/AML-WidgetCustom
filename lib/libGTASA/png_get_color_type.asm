; =========================================================
; Game Engine Function: png_get_color_type
; Address            : 0x1F3200 - 0x1F3212
; =========================================================

1F3200:  MOV             R2, R0
1F3202:  MOVS            R0, #0
1F3204:  CMP             R2, #0
1F3206:  IT EQ
1F3208:  BXEQ            LR
1F320A:  CMP             R1, #0
1F320C:  IT NE
1F320E:  LDRBNE          R0, [R1,#0x19]
1F3210:  BX              LR
