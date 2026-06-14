; =========================================================
; Game Engine Function: png_destroy_info_struct
; Address            : 0x1EDCCC - 0x1EDD0E
; =========================================================

1EDCCC:  PUSH            {R4,R5,R7,LR}
1EDCCE:  ADD             R7, SP, #8
1EDCD0:  MOV             R4, R0
1EDCD2:  CMP             R4, #0
1EDCD4:  IT NE
1EDCD6:  CMPNE           R1, #0
1EDCD8:  BEQ             locret_1EDD0C
1EDCDA:  LDR             R5, [R1]
1EDCDC:  CMP             R5, #0
1EDCDE:  IT EQ
1EDCE0:  POPEQ           {R4,R5,R7,PC}
1EDCE2:  MOVS            R0, #0
1EDCE4:  MOVW            R2, #0xFFFF
1EDCE8:  STR             R0, [R1]
1EDCEA:  MOV             R0, R4; int
1EDCEC:  MOV             R1, R5
1EDCEE:  MOV.W           R3, #0xFFFFFFFF
1EDCF2:  BLX             j_png_free_data
1EDCF6:  MOV             R0, R5
1EDCF8:  MOV.W           R1, #0x118
1EDCFC:  BLX             j___aeabi_memclr8_0
1EDD00:  MOV             R0, R4; int
1EDD02:  MOV             R1, R5; p
1EDD04:  POP.W           {R4,R5,R7,LR}
1EDD08:  B.W             j_j_png_free
1EDD0C:  POP             {R4,R5,R7,PC}
