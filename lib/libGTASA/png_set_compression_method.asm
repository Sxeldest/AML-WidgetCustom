; =========================================================
; Game Engine Function: png_set_compression_method
; Address            : 0x204748 - 0x20476A
; =========================================================

204748:  PUSH            {R4,R5,R7,LR}
20474A:  ADD             R7, SP, #8
20474C:  MOV             R5, R0
20474E:  MOV             R4, R1
204750:  CMP             R5, #0
204752:  IT EQ
204754:  POPEQ           {R4,R5,R7,PC}
204756:  CMP             R4, #8
204758:  BEQ             loc_204764
20475A:  LDR             R1, =(aOnlyCompressio_1 - 0x204762); "Only compression method 8 is supported "...
20475C:  MOV             R0, R5
20475E:  ADD             R1, PC; "Only compression method 8 is supported "...
204760:  BLX             j_png_warning
204764:  STR.W           R4, [R5,#0x188]
204768:  POP             {R4,R5,R7,PC}
