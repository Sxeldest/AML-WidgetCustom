; =========================================================
; Game Engine Function: png_write_IEND
; Address            : 0x206E68 - 0x206F06
; =========================================================

206E68:  PUSH            {R4,R5,R7,LR}
206E6A:  ADD             R7, SP, #8
206E6C:  SUB             SP, SP, #0x10
206E6E:  MOV             R4, R0
206E70:  LDR             R0, =(__stack_chk_guard_ptr - 0x206E78)
206E72:  CMP             R4, #0
206E74:  ADD             R0, PC; __stack_chk_guard_ptr
206E76:  LDR             R0, [R0]; __stack_chk_guard
206E78:  LDR             R0, [R0]
206E7A:  STR             R0, [SP,#0x18+var_C]
206E7C:  BEQ             loc_206EE4
206E7E:  MOVS            R0, #0x22 ; '"'
206E80:  ADD             R5, SP, #0x18+var_14
206E82:  STR.W           R0, [R4,#0x368]
206E86:  MOVS            R0, #0
206E88:  STR             R0, [SP,#0x18+var_14]
206E8A:  MOV             R0, #0x444E4549
206E92:  MOV             R1, R5
206E94:  STR             R0, [SP,#0x18+var_10]
206E96:  MOV             R0, R4
206E98:  MOVS            R2, #8
206E9A:  BLX             j_png_write_data
206E9E:  MOV             R0, #0x49454E44
206EA6:  STR.W           R0, [R4,#0x1DC]
206EAA:  MOV             R0, R4
206EAC:  BLX             j_png_reset_crc
206EB0:  ADDS            R1, R5, #4
206EB2:  MOV             R0, R4
206EB4:  MOVS            R2, #4
206EB6:  BLX             j_png_calculate_crc
206EBA:  LDR.W           R0, [R4,#0x1F8]
206EBE:  MOVS            R1, #0x82
206EC0:  STR.W           R1, [R4,#0x368]
206EC4:  MOVS            R2, #4
206EC6:  STRB.W          R0, [SP,#0x18+var_14+3]
206ECA:  LSRS            R1, R0, #0x10
206ECC:  STRB.W          R1, [SP,#0x18+var_14+1]
206ED0:  LSRS            R1, R0, #0x18
206ED2:  STRB.W          R1, [SP,#0x18+var_14]
206ED6:  LSRS            R0, R0, #8
206ED8:  ADD             R1, SP, #0x18+var_14
206EDA:  STRB.W          R0, [SP,#0x18+var_14+2]
206EDE:  MOV             R0, R4
206EE0:  BLX             j_png_write_data
206EE4:  LDR.W           R0, [R4,#0x134]
206EE8:  ORR.W           R0, R0, #0x10
206EEC:  STR.W           R0, [R4,#0x134]
206EF0:  LDR             R0, =(__stack_chk_guard_ptr - 0x206EF8)
206EF2:  LDR             R1, [SP,#0x18+var_C]
206EF4:  ADD             R0, PC; __stack_chk_guard_ptr
206EF6:  LDR             R0, [R0]; __stack_chk_guard
206EF8:  LDR             R0, [R0]
206EFA:  SUBS            R0, R0, R1
206EFC:  ITT EQ
206EFE:  ADDEQ           SP, SP, #0x10
206F00:  POPEQ           {R4,R5,R7,PC}
206F02:  BLX             __stack_chk_fail
