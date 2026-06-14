; =========================================================
; Game Engine Function: png_set_text_compression_method
; Address            : 0x2047D0 - 0x2047F2
; =========================================================

2047D0:  PUSH            {R4,R5,R7,LR}
2047D2:  ADD             R7, SP, #8
2047D4:  MOV             R5, R0
2047D6:  MOV             R4, R1
2047D8:  CMP             R5, #0
2047DA:  IT EQ
2047DC:  POPEQ           {R4,R5,R7,PC}
2047DE:  CMP             R4, #8
2047E0:  BEQ             loc_2047EC
2047E2:  LDR             R1, =(aOnlyCompressio_1 - 0x2047EA); "Only compression method 8 is supported "...
2047E4:  MOV             R0, R5
2047E6:  ADD             R1, PC; "Only compression method 8 is supported "...
2047E8:  BLX             j_png_warning
2047EC:  STR.W           R4, [R5,#0x19C]
2047F0:  POP             {R4,R5,R7,PC}
