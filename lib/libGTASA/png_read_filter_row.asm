; =========================================================
; Game Engine Function: png_read_filter_row
; Address            : 0x2008FC - 0x200970
; =========================================================

2008FC:  PUSH            {R4-R7,LR}
2008FE:  ADD             R7, SP, #0xC
200900:  PUSH.W          {R8,R9,R11}
200904:  LDR.W           R12, [R7,#arg_0]
200908:  SUB.W           R12, R12, #1
20090C:  CMP.W           R12, #3
200910:  BHI             loc_20096A
200912:  LDR.W           LR, [R0,#0x370]
200916:  CMP.W           LR, #0
20091A:  BNE             loc_200952
20091C:  LDRB.W          R5, [R0,#0x212]
200920:  LDR.W           R9, =(sub_201404+1 - 0x200938)
200924:  LDR             R4, =(sub_2013A2+1 - 0x20093E)
200926:  ADDS            R5, #7
200928:  LDR.W           LR, =(sub_2011FE+1 - 0x200940)
20092C:  AND.W           R5, R5, #0x1F8
200930:  LDR.W           R8, =(sub_20118C+1 - 0x200942)
200934:  ADD             R9, PC; sub_201404
200936:  LDR             R6, =(sub_201110+1 - 0x200944)
200938:  CMP             R5, #8
20093A:  ADD             R4, PC; sub_2013A2
20093C:  ADD             LR, PC; sub_2011FE
20093E:  ADD             R8, PC; sub_20118C
200940:  ADD             R6, PC; sub_201110
200942:  IT NE
200944:  MOVNE           R4, R9
200946:  ADD.W           R5, R0, #0x370
20094A:  STM.W           R5, {R6,R8,LR}
20094E:  STR.W           R4, [R0,#0x37C]
200952:  ADD.W           R0, R0, R12,LSL#2
200956:  LDR.W           R12, [R0,#0x370]
20095A:  MOV             R0, R1
20095C:  MOV             R1, R2
20095E:  MOV             R2, R3
200960:  POP.W           {R8,R9,R11}
200964:  POP.W           {R4-R7,LR}
200968:  BX              R12
20096A:  POP.W           {R8,R9,R11}
20096E:  POP             {R4-R7,PC}
