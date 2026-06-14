; =========================================================
; Game Engine Function: png_get_y_offset_microns
; Address            : 0x1F335A - 0x1F3380
; =========================================================

1F335A:  MOV             R2, R0
1F335C:  CMP             R2, #0
1F335E:  MOV.W           R0, #0
1F3362:  IT NE
1F3364:  CMPNE           R1, #0
1F3366:  BEQ             locret_1F337A
1F3368:  LDRB            R0, [R1,#9]
1F336A:  LSLS            R0, R0, #0x1F
1F336C:  BEQ             loc_1F337C
1F336E:  LDRB.W          R0, [R1,#0xBC]
1F3372:  CMP             R0, #1
1F3374:  BNE             loc_1F337C
1F3376:  LDR.W           R0, [R1,#0xB8]
1F337A:  BX              LR
1F337C:  MOVS            R0, #0
1F337E:  BX              LR
