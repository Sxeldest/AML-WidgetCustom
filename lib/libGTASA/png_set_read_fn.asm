; =========================================================
; Game Engine Function: png_set_read_fn
; Address            : 0x1F9378 - 0x1F93B6
; =========================================================

1F9378:  PUSH            {R4,R6,R7,LR}
1F937A:  ADD             R7, SP, #8
1F937C:  MOV             R4, R0
1F937E:  CMP             R4, #0
1F9380:  IT EQ
1F9382:  POPEQ           {R4,R6,R7,PC}
1F9384:  LDR             R0, =(png_default_read_data_ptr - 0x1F9390)
1F9386:  CMP             R2, #0
1F9388:  STR.W           R1, [R4,#0x120]
1F938C:  ADD             R0, PC; png_default_read_data_ptr
1F938E:  LDR.W           R1, [R4,#0x118]
1F9392:  IT EQ
1F9394:  LDREQ           R2, [R0]; png_default_read_data
1F9396:  CMP             R1, #0
1F9398:  STR.W           R2, [R4,#0x11C]
1F939C:  BEQ             loc_1F93AE
1F939E:  LDR             R1, =(aCanTSetBothRea - 0x1F93AC); "Can't set both read_data_fn and write_d"...
1F93A0:  MOVS            R0, #0
1F93A2:  STR.W           R0, [R4,#0x118]
1F93A6:  MOV             R0, R4
1F93A8:  ADD             R1, PC; "Can't set both read_data_fn and write_d"...
1F93AA:  BLX             j_png_warning
1F93AE:  MOVS            R0, #0
1F93B0:  STR.W           R0, [R4,#0x234]
1F93B4:  POP             {R4,R6,R7,PC}
