; =========================================================
; Game Engine Function: png_set_compression_strategy
; Address            : 0x2046F0 - 0x204706
; =========================================================

2046F0:  CMP             R0, #0
2046F2:  ITTTT NE
2046F4:  LDRNE.W         R2, [R0,#0x138]
2046F8:  STRNE.W         R1, [R0,#0x194]
2046FC:  ORRNE.W         R1, R2, #1
204700:  STRNE.W         R1, [R0,#0x138]
204704:  BX              LR
