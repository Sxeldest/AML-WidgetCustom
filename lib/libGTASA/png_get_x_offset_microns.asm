; =========================================================
; Game Engine Function: png_get_x_offset_microns
; Address            : 0x1F3334 - 0x1F335A
; =========================================================

1F3334:  MOV             R2, R0
1F3336:  CMP             R2, #0
1F3338:  MOV.W           R0, #0
1F333C:  IT NE
1F333E:  CMPNE           R1, #0
1F3340:  BEQ             locret_1F3354
1F3342:  LDRB            R0, [R1,#9]
1F3344:  LSLS            R0, R0, #0x1F
1F3346:  BEQ             loc_1F3356
1F3348:  LDRB.W          R0, [R1,#0xBC]
1F334C:  CMP             R0, #1
1F334E:  BNE             loc_1F3356
1F3350:  LDR.W           R0, [R1,#0xB4]
1F3354:  BX              LR
1F3356:  MOVS            R0, #0
1F3358:  BX              LR
