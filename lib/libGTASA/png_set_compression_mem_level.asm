; =========================================================
; Game Engine Function: png_set_compression_mem_level
; Address            : 0x2046E6 - 0x2046F0
; =========================================================

2046E6:  CMP             R0, #0
2046E8:  IT NE
2046EA:  STRNE.W         R1, [R0,#0x190]
2046EE:  BX              LR
