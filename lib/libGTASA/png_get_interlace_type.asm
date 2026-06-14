; =========================================================
; Game Engine Function: png_get_interlace_type
; Address            : 0x1F3224 - 0x1F3236
; =========================================================

1F3224:  MOV             R2, R0
1F3226:  MOVS            R0, #0
1F3228:  CMP             R2, #0
1F322A:  IT EQ
1F322C:  BXEQ            LR
1F322E:  CMP             R1, #0
1F3230:  IT NE
1F3232:  LDRBNE          R0, [R1,#0x1C]
1F3234:  BX              LR
