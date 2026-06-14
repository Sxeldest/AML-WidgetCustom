; =========================================================
; Game Engine Function: png_write_chunk_data
; Address            : 0x206110 - 0x20614A
; =========================================================

206110:  PUSH            {R4-R7,LR}
206112:  ADD             R7, SP, #0xC
206114:  PUSH.W          {R11}
206118:  MOV             R6, R0
20611A:  CMP             R6, #0
20611C:  MOV             R5, R1
20611E:  MOV             R4, R2
206120:  IT NE
206122:  CMPNE           R5, #0
206124:  BEQ             loc_206144
206126:  CBZ             R4, loc_206144
206128:  MOV             R0, R6
20612A:  MOV             R1, R5
20612C:  MOV             R2, R4
20612E:  BLX             j_png_write_data
206132:  MOV             R0, R6
206134:  MOV             R1, R5
206136:  MOV             R2, R4
206138:  POP.W           {R11}
20613C:  POP.W           {R4-R7,LR}
206140:  B.W             sub_19AB3C
206144:  POP.W           {R11}
206148:  POP             {R4-R7,PC}
