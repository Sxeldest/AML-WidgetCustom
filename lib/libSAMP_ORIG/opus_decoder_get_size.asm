; =========================================================
; Game Engine Function: opus_decoder_get_size
; Address            : 0xB0A14 - 0xB0A64
; =========================================================

B0A14:  PUSH            {R4,R6,R7,LR}
B0A16:  ADD             R7, SP, #8
B0A18:  SUB             SP, SP, #8
B0A1A:  MOV             R4, R0
B0A1C:  LDR             R0, =(__stack_chk_guard_ptr - 0xB0A22)
B0A1E:  ADD             R0, PC; __stack_chk_guard_ptr
B0A20:  LDR             R0, [R0]; __stack_chk_guard
B0A22:  LDR             R0, [R0]
B0A24:  STR             R0, [SP,#0x10+var_C]
B0A26:  SUBS            R0, R4, #1
B0A28:  CMP             R0, #1
B0A2A:  BHI             loc_B0A34
B0A2C:  MOV             R0, SP
B0A2E:  BLX             j_silk_Get_Decoder_Size
B0A32:  CBZ             R0, loc_B0A38
B0A34:  MOVS            R0, #0
B0A36:  B               loc_B0A4E
B0A38:  LDR             R0, [SP,#0x10+var_10]
B0A3A:  ADDS            R0, #3
B0A3C:  BIC.W           R0, R0, #3
B0A40:  STR             R0, [SP,#0x10+var_10]
B0A42:  MOV             R0, R4
B0A44:  BLX             j_celt_decoder_get_size
B0A48:  LDR             R1, [SP,#0x10+var_10]
B0A4A:  ADD             R0, R1
B0A4C:  ADDS            R0, #0x50 ; 'P'
B0A4E:  LDR             R1, =(__stack_chk_guard_ptr - 0xB0A56)
B0A50:  LDR             R2, [SP,#0x10+var_C]
B0A52:  ADD             R1, PC; __stack_chk_guard_ptr
B0A54:  LDR             R1, [R1]; __stack_chk_guard
B0A56:  LDR             R1, [R1]
B0A58:  SUBS            R1, R1, R2
B0A5A:  ITT EQ
B0A5C:  ADDEQ           SP, SP, #8
B0A5E:  POPEQ           {R4,R6,R7,PC}
B0A60:  BLX             __stack_chk_fail
