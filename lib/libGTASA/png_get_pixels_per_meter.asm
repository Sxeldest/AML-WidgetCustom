; =========================================================
; Game Engine Function: png_get_pixels_per_meter
; Address            : 0x1F3294 - 0x1F32B6
; =========================================================

1F3294:  CMP             R0, #0
1F3296:  IT NE
1F3298:  CMPNE           R1, #0
1F329A:  BEQ             loc_1F32B2
1F329C:  LDRB            R0, [R1,#8]
1F329E:  LSLS            R0, R0, #0x18
1F32A0:  BPL             loc_1F32B2
1F32A2:  LDRB.W          R0, [R1,#0xC8]
1F32A6:  CMP             R0, #1
1F32A8:  ITTT EQ
1F32AA:  LDRDEQ.W        R0, R1, [R1,#0xC0]
1F32AE:  CMPEQ           R0, R1
1F32B0:  BXEQ            LR
1F32B2:  MOVS            R0, #0
1F32B4:  BX              LR
