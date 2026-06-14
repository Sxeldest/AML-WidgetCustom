; =========================================================
; Game Engine Function: png_free_buffer_list
; Address            : 0x20628C - 0x2062B0
; =========================================================

20628C:  PUSH            {R4,R5,R7,LR}
20628E:  ADD             R7, SP, #8
206290:  MOV             R2, R1
206292:  MOV             R4, R0
206294:  LDR             R1, [R2]; p
206296:  CMP             R1, #0
206298:  IT EQ
20629A:  POPEQ           {R4,R5,R7,PC}
20629C:  MOVS            R0, #0
20629E:  STR             R0, [R2]
2062A0:  MOV             R0, R4; int
2062A2:  LDR             R5, [R1]
2062A4:  BLX             j_png_free
2062A8:  CMP             R5, #0
2062AA:  MOV             R1, R5
2062AC:  BNE             loc_2062A0
2062AE:  POP             {R4,R5,R7,PC}
