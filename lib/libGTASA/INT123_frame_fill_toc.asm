; =========================================================
; Game Engine Function: INT123_frame_fill_toc
; Address            : 0x225C98 - 0x225CC6
; =========================================================

225C98:  PUSH            {R4,R5,R7,LR}
225C9A:  ADD             R7, SP, #8
225C9C:  MOV             R4, R1
225C9E:  MOV             R1, R0
225CA0:  MOVW            R2, #0x9324
225CA4:  LDR             R0, [R1,R2]
225CA6:  CBNZ            R0, loc_225CB6
225CA8:  MOVS            R0, #0x64 ; 'd'; byte_count
225CAA:  ADDS            R5, R1, R2
225CAC:  BLX             malloc
225CB0:  CMP             R0, #0
225CB2:  STR             R0, [R5]
225CB4:  BEQ             loc_225CC2
225CB6:  MOV             R1, R4; void *
225CB8:  MOVS            R2, #0x64 ; 'd'; size_t
225CBA:  BLX             memcpy_1
225CBE:  MOVS            R0, #1
225CC0:  POP             {R4,R5,R7,PC}
225CC2:  MOVS            R0, #0
225CC4:  POP             {R4,R5,R7,PC}
