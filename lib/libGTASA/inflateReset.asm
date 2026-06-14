; =========================================================
; Game Engine Function: inflateReset
; Address            : 0x20E81C - 0x20E854
; =========================================================

20E81C:  PUSH            {R4,R6,R7,LR}
20E81E:  ADD             R7, SP, #8
20E820:  MOV             R1, R0
20E822:  CMP             R1, #0
20E824:  ITT NE
20E826:  LDRNE           R0, [R1,#0x1C]
20E828:  CMPNE           R0, #0
20E82A:  BEQ             loc_20E84C
20E82C:  MOVS            R4, #0
20E82E:  STR             R4, [R1,#8]
20E830:  STRD.W          R4, R4, [R1,#0x14]
20E834:  LDR             R2, [R0,#0xC]
20E836:  CMP             R2, #0
20E838:  IT NE
20E83A:  MOVNE           R2, #7
20E83C:  STR             R2, [R0]
20E83E:  MOVS            R2, #0
20E840:  LDR             R0, [R1,#0x1C]
20E842:  LDR             R0, [R0,#0x14]
20E844:  BLX             j_inflate_blocks_reset
20E848:  MOV             R0, R4
20E84A:  POP             {R4,R6,R7,PC}
20E84C:  MOV             R4, #0xFFFFFFFE
20E850:  MOV             R0, R4
20E852:  POP             {R4,R6,R7,PC}
