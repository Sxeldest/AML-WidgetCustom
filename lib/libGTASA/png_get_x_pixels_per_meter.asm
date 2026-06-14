; =========================================================
; Game Engine Function: png_get_x_pixels_per_meter
; Address            : 0x1F3248 - 0x1F326E
; =========================================================

1F3248:  MOV             R2, R0
1F324A:  CMP             R2, #0
1F324C:  MOV.W           R0, #0
1F3250:  IT NE
1F3252:  CMPNE           R1, #0
1F3254:  BEQ             locret_1F3268
1F3256:  LDRB            R0, [R1,#8]
1F3258:  LSLS            R0, R0, #0x18
1F325A:  BPL             loc_1F326A
1F325C:  LDRB.W          R0, [R1,#0xC8]
1F3260:  CMP             R0, #1
1F3262:  BNE             loc_1F326A
1F3264:  LDR.W           R0, [R1,#0xC0]
1F3268:  BX              LR
1F326A:  MOVS            R0, #0
1F326C:  BX              LR
