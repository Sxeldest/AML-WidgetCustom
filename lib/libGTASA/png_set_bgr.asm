; =========================================================
; Game Engine Function: png_set_bgr
; Address            : 0x2031C8 - 0x2031DA
; =========================================================

2031C8:  CMP             R0, #0
2031CA:  ITTT NE
2031CC:  LDRNE.W         R1, [R0,#0x13C]
2031D0:  ORRNE.W         R1, R1, #1
2031D4:  STRNE.W         R1, [R0,#0x13C]
2031D8:  BX              LR
