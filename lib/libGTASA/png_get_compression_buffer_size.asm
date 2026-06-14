; =========================================================
; Game Engine Function: png_get_compression_buffer_size
; Address            : 0x1F3EDC - 0x1F3EF8
; =========================================================

1F3EDC:  CMP             R0, #0
1F3EDE:  ITT EQ
1F3EE0:  MOVEQ           R0, #0
1F3EE2:  BXEQ            LR
1F3EE4:  LDRB.W          R1, [R0,#0x135]
1F3EE8:  ADD.W           R2, R0, #0x364
1F3EEC:  LSLS            R1, R1, #0x18
1F3EEE:  IT PL
1F3EF0:  ADDPL.W         R2, R0, #0x180
1F3EF4:  LDR             R0, [R2]
1F3EF6:  BX              LR
