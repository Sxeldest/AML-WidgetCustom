; =========================================================
; Game Engine Function: png_write_rows
; Address            : 0x204110 - 0x20413A
; =========================================================

204110:  PUSH            {R4-R7,LR}
204112:  ADD             R7, SP, #0xC
204114:  PUSH.W          {R11}
204118:  MOV             R6, R0
20411A:  CMP             R6, #0
20411C:  MOV             R4, R2
20411E:  MOV             R5, R1
204120:  IT NE
204122:  CMPNE           R4, #0
204124:  BEQ             loc_204134
204126:  LDR.W           R1, [R5],#4
20412A:  MOV             R0, R6
20412C:  BLX             j_png_write_row
204130:  SUBS            R4, #1
204132:  BNE             loc_204126
204134:  POP.W           {R11}
204138:  POP             {R4-R7,PC}
