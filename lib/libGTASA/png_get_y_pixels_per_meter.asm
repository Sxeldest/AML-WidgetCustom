; =========================================================
; Game Engine Function: png_get_y_pixels_per_meter
; Address            : 0x1F326E - 0x1F3294
; =========================================================

1F326E:  MOV             R2, R0
1F3270:  CMP             R2, #0
1F3272:  MOV.W           R0, #0
1F3276:  IT NE
1F3278:  CMPNE           R1, #0
1F327A:  BEQ             locret_1F328E
1F327C:  LDRB            R0, [R1,#8]
1F327E:  LSLS            R0, R0, #0x18
1F3280:  BPL             loc_1F3290
1F3282:  LDRB.W          R0, [R1,#0xC8]
1F3286:  CMP             R0, #1
1F3288:  BNE             loc_1F3290
1F328A:  LDR.W           R0, [R1,#0xC4]
1F328E:  BX              LR
1F3290:  MOVS            R0, #0
1F3292:  BX              LR
