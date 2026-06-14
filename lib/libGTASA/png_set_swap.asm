; =========================================================
; Game Engine Function: png_set_swap
; Address            : 0x2031DA - 0x2031F6
; =========================================================

2031DA:  CMP             R0, #0
2031DC:  IT EQ
2031DE:  BXEQ            LR
2031E0:  LDRB.W          R1, [R0,#0x210]
2031E4:  CMP             R1, #0x10
2031E6:  ITTT EQ
2031E8:  LDREQ.W         R1, [R0,#0x13C]
2031EC:  ORREQ.W         R1, R1, #0x10
2031F0:  STREQ.W         R1, [R0,#0x13C]
2031F4:  BX              LR
