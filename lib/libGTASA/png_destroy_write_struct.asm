; =========================================================
; Game Engine Function: png_destroy_write_struct
; Address            : 0x2044B6 - 0x204544
; =========================================================

2044B6:  PUSH            {R4-R7,LR}
2044B8:  ADD             R7, SP, #0xC
2044BA:  PUSH.W          {R11}
2044BE:  MOV             R5, R0
2044C0:  CMP             R5, #0
2044C2:  ITT NE
2044C4:  LDRNE           R4, [R5]
2044C6:  CMPNE           R4, #0
2044C8:  BEQ             loc_20453E
2044CA:  MOV             R0, R4
2044CC:  BLX             j_png_destroy_info_struct
2044D0:  MOVS            R6, #0
2044D2:  STR             R6, [R5]
2044D4:  LDRB.W          R0, [R4,#0x138]
2044D8:  LSLS            R0, R0, #0x1E
2044DA:  ITT MI
2044DC:  ADDMI.W         R0, R4, #0x144
2044E0:  BLXMI           j_deflateEnd
2044E4:  ADD.W           R1, R4, #0x17C
2044E8:  MOV             R0, R4
2044EA:  BLX             j_png_free_buffer_list
2044EE:  LDR.W           R1, [R4,#0x1E4]; p
2044F2:  MOV             R0, R4; int
2044F4:  BLX             j_png_free
2044F8:  LDR.W           R1, [R4,#0x1E0]; p
2044FC:  MOV             R0, R4; int
2044FE:  STR.W           R6, [R4,#0x1E4]
204502:  BLX             j_png_free
204506:  LDR.W           R1, [R4,#0x1E8]; p
20450A:  MOV             R0, R4; int
20450C:  BLX             j_png_free
204510:  LDR.W           R1, [R4,#0x1EC]; p
204514:  MOV             R0, R4; int
204516:  BLX             j_png_free
20451A:  LDR.W           R1, [R4,#0x300]; p
20451E:  MOV             R0, R4; int
204520:  STR.W           R6, [R4,#0x1E0]
204524:  STRD.W          R6, R6, [R4,#0x1E8]
204528:  BLX             j_png_free
20452C:  STR.W           R6, [R4,#0x300]
204530:  MOV             R0, R4; void *
204532:  POP.W           {R11}
204536:  POP.W           {R4-R7,LR}
20453A:  B.W             j_j_png_destroy_png_struct
20453E:  POP.W           {R11}
204542:  POP             {R4-R7,PC}
