; =========================================================
; Game Engine Function: png_get_compression_type
; Address            : 0x1F3236 - 0x1F3248
; =========================================================

1F3236:  MOV             R2, R0
1F3238:  MOVS            R0, #0
1F323A:  CMP             R2, #0
1F323C:  IT EQ
1F323E:  BXEQ            LR
1F3240:  CMP             R1, #0
1F3242:  IT NE
1F3244:  LDRBNE          R0, [R1,#0x1A]
1F3246:  BX              LR
