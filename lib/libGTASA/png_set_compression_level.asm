; =========================================================
; Game Engine Function: png_set_compression_level
; Address            : 0x2046DC - 0x2046E6
; =========================================================

2046DC:  CMP             R0, #0
2046DE:  IT NE
2046E0:  STRNE.W         R1, [R0,#0x184]
2046E4:  BX              LR
