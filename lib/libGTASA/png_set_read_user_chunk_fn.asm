; =========================================================
; Game Engine Function: png_set_read_user_chunk_fn
; Address            : 0x202F34 - 0x202F3E
; =========================================================

202F34:  CMP             R0, #0
202F36:  IT NE
202F38:  STRDNE.W        R1, R2, [R0,#0x2F0]
202F3C:  BX              LR
