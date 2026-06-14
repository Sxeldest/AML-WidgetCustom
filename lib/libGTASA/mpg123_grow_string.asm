; =========================================================
; Game Engine Function: mpg123_grow_string
; Address            : 0x234816 - 0x234846
; =========================================================

234816:  PUSH            {R4,R5,R7,LR}
234818:  ADD             R7, SP, #8
23481A:  MOV             R5, R0
23481C:  MOV             R4, R1
23481E:  LDR             R0, [R5,#4]
234820:  CMP             R0, R4
234822:  BCS             loc_234834
234824:  LDR             R0, [R5]; ptr
234826:  CBZ             R0, loc_234838
234828:  MOV             R1, R4; size
23482A:  BLX             realloc
23482E:  CBZ             R0, loc_234842
234830:  STRD.W          R0, R4, [R5]
234834:  MOVS            R0, #1
234836:  POP             {R4,R5,R7,PC}
234838:  MOV             R0, R4; byte_count
23483A:  BLX             malloc
23483E:  CMP             R0, #0
234840:  BNE             loc_234830
234842:  MOVS            R0, #0
234844:  POP             {R4,R5,R7,PC}
