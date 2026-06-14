; =========================================================
; Game Engine Function: png_malloc_base
; Address            : 0x1F4050 - 0x1F406C
; =========================================================

1F4050:  CMP             R1, #0
1F4052:  ITT EQ
1F4054:  MOVEQ           R0, #0
1F4056:  BXEQ            LR
1F4058:  CMP             R0, #0
1F405A:  ITT NE
1F405C:  LDRNE.W         R2, [R0,#0x318]
1F4060:  CMPNE           R2, #0
1F4062:  BNE             loc_1F406A
1F4064:  MOV             R0, R1; byte_count
1F4066:  B.W             j_malloc
1F406A:  BX              R2
