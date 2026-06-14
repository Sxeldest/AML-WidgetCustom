; =========================================================
; Game Engine Function: png_get_chunk_malloc_max
; Address            : 0x1F3F1C - 0x1F3F28
; =========================================================

1F3F1C:  CMP             R0, #0
1F3F1E:  ITE NE
1F3F20:  LDRNE.W         R0, [R0,#0x340]
1F3F24:  MOVEQ           R0, #0
1F3F26:  BX              LR
