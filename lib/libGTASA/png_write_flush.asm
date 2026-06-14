; =========================================================
; Game Engine Function: png_write_flush
; Address            : 0x204480 - 0x2044B6
; =========================================================

204480:  PUSH            {R4,R5,R7,LR}
204482:  ADD             R7, SP, #8
204484:  MOV             R4, R0
204486:  CMP             R4, #0
204488:  IT EQ
20448A:  POPEQ           {R4,R5,R7,PC}
20448C:  LDR.W           R0, [R4,#0x1C8]
204490:  LDR.W           R1, [R4,#0x1D8]
204494:  CMP             R1, R0
204496:  BCS             locret_2044B4
204498:  MOV             R0, R4
20449A:  MOVS            R1, #0
20449C:  MOVS            R2, #0
20449E:  MOVS            R3, #2
2044A0:  MOVS            R5, #0
2044A2:  BLX             j_png_compress_IDAT
2044A6:  STR.W           R5, [R4,#0x23C]
2044AA:  MOV             R0, R4
2044AC:  POP.W           {R4,R5,R7,LR}
2044B0:  B.W             j_j_png_flush
2044B4:  POP             {R4,R5,R7,PC}
