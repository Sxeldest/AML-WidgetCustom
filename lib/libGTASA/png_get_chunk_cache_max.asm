; =========================================================
; Game Engine Function: png_get_chunk_cache_max
; Address            : 0x1F3F10 - 0x1F3F1C
; =========================================================

1F3F10:  CMP             R0, #0
1F3F12:  ITE NE
1F3F14:  LDRNE.W         R0, [R0,#0x33C]
1F3F18:  MOVEQ           R0, #0
1F3F1A:  BX              LR
