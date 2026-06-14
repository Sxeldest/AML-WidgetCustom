; =========================================================
; Game Engine Function: mpg123_resize_string
; Address            : 0x234846 - 0x234890
; =========================================================

234846:  PUSH            {R4,R5,R7,LR}
234848:  ADD             R7, SP, #8
23484A:  MOV             R4, R0
23484C:  MOV             R5, R1
23484E:  LDR             R0, [R4,#4]
234850:  CBZ             R5, loc_23486A
234852:  CMP             R0, R5
234854:  BEQ             loc_234866
234856:  LDR             R0, [R4]; ptr
234858:  CBZ             R0, loc_234882
23485A:  MOV             R1, R5; size
23485C:  BLX             realloc
234860:  CBZ             R0, loc_23488C
234862:  STRD.W          R0, R5, [R4]
234866:  MOVS            R0, #1
234868:  POP             {R4,R5,R7,PC}
23486A:  CBZ             R0, loc_234876
23486C:  LDR             R0, [R4]; p
23486E:  CMP             R0, #0
234870:  IT NE
234872:  BLXNE           free
234876:  MOVS            R0, #0
234878:  STRD.W          R0, R0, [R4]
23487C:  STR             R0, [R4,#8]
23487E:  MOVS            R0, #1
234880:  POP             {R4,R5,R7,PC}
234882:  MOV             R0, R5; byte_count
234884:  BLX             malloc
234888:  CMP             R0, #0
23488A:  BNE             loc_234862
23488C:  MOVS            R0, #0
23488E:  POP             {R4,R5,R7,PC}
