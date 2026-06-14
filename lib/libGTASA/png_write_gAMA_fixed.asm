; =========================================================
; Game Engine Function: png_write_gAMA_fixed
; Address            : 0x206F10 - 0x206FDC
; =========================================================

206F10:  PUSH            {R4,R5,R7,LR}
206F12:  ADD             R7, SP, #8
206F14:  SUB             SP, SP, #0x10
206F16:  MOV             R4, R0
206F18:  LDR             R0, =(__stack_chk_guard_ptr - 0x206F20)
206F1A:  CMP             R4, #0
206F1C:  ADD             R0, PC; __stack_chk_guard_ptr
206F1E:  LDR             R0, [R0]; __stack_chk_guard
206F20:  LDR             R0, [R0]
206F22:  STR             R0, [SP,#0x18+var_C]
206F24:  MOV.W           R0, R1,LSR#16
206F28:  STRB.W          R0, [SP,#0x18+var_17]
206F2C:  MOV.W           R0, R1,LSR#24
206F30:  STRB.W          R0, [SP,#0x18+var_18]
206F34:  MOV.W           R0, R1,LSR#8
206F38:  STRB.W          R0, [SP,#0x18+var_16]
206F3C:  STRB.W          R1, [SP,#0x18+var_15]
206F40:  BEQ             loc_206FC6
206F42:  MOVS            R0, #0x22 ; '"'
206F44:  ADD             R5, SP, #0x18+var_14
206F46:  STR.W           R0, [R4,#0x368]
206F4A:  MOV.W           R0, #0x4000000
206F4E:  STR             R0, [SP,#0x18+var_14]
206F50:  MOV             R0, #0x414D4167
206F58:  MOV             R1, R5
206F5A:  STR             R0, [SP,#0x18+var_10]
206F5C:  MOV             R0, R4
206F5E:  MOVS            R2, #8
206F60:  BLX             j_png_write_data
206F64:  MOV             R0, #0x67414D41
206F6C:  STR.W           R0, [R4,#0x1DC]
206F70:  MOV             R0, R4
206F72:  BLX             j_png_reset_crc
206F76:  ADDS            R1, R5, #4
206F78:  MOV             R0, R4
206F7A:  MOVS            R2, #4
206F7C:  BLX             j_png_calculate_crc
206F80:  MOVS            R0, #0x42 ; 'B'
206F82:  MOV             R5, SP
206F84:  STR.W           R0, [R4,#0x368]
206F88:  MOV             R0, R4
206F8A:  MOV             R1, R5
206F8C:  MOVS            R2, #4
206F8E:  BLX             j_png_write_data
206F92:  MOV             R0, R4
206F94:  MOV             R1, R5
206F96:  MOVS            R2, #4
206F98:  BLX             j_png_calculate_crc
206F9C:  LDR.W           R0, [R4,#0x1F8]
206FA0:  MOVS            R1, #0x82
206FA2:  STR.W           R1, [R4,#0x368]
206FA6:  MOVS            R2, #4
206FA8:  STRB.W          R0, [SP,#0x18+var_14+3]
206FAC:  LSRS            R1, R0, #0x10
206FAE:  STRB.W          R1, [SP,#0x18+var_14+1]
206FB2:  LSRS            R1, R0, #0x18
206FB4:  STRB.W          R1, [SP,#0x18+var_14]
206FB8:  LSRS            R0, R0, #8
206FBA:  ADD             R1, SP, #0x18+var_14
206FBC:  STRB.W          R0, [SP,#0x18+var_14+2]
206FC0:  MOV             R0, R4
206FC2:  BLX             j_png_write_data
206FC6:  LDR             R0, =(__stack_chk_guard_ptr - 0x206FCE)
206FC8:  LDR             R1, [SP,#0x18+var_C]
206FCA:  ADD             R0, PC; __stack_chk_guard_ptr
206FCC:  LDR             R0, [R0]; __stack_chk_guard
206FCE:  LDR             R0, [R0]
206FD0:  SUBS            R0, R0, R1
206FD2:  ITT EQ
206FD4:  ADDEQ           SP, SP, #0x10
206FD6:  POPEQ           {R4,R5,R7,PC}
206FD8:  BLX             __stack_chk_fail
