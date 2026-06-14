; =========================================================
; Game Engine Function: zcalloc
; Address            : 0x210F40 - 0x210F48
; =========================================================

210F40:  MOV             R0, R1; item_count
210F42:  MOV             R1, R2; item_size
210F44:  B.W             j_calloc
