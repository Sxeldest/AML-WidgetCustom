; =========================================================
; Game Engine Function: png_write_sCAL_s
; Address            : 0x208A90 - 0x208BB2
; =========================================================

208A90:  PUSH            {R4-R7,LR}
208A92:  ADD             R7, SP, #0xC
208A94:  PUSH.W          {R8-R11}
208A98:  SUB             SP, SP, #0x4C
208A9A:  MOV             R8, R0
208A9C:  LDR             R0, =(__stack_chk_guard_ptr - 0x208AA6)
208A9E:  MOV             R4, R2
208AA0:  MOV             R11, R3
208AA2:  ADD             R0, PC; __stack_chk_guard_ptr
208AA4:  MOV             R9, R1
208AA6:  LDR             R0, [R0]; __stack_chk_guard
208AA8:  LDR             R0, [R0]
208AAA:  STR             R0, [SP,#0x68+var_20]
208AAC:  MOV             R0, R4; char *
208AAE:  BLX             strlen
208AB2:  MOV             R5, R0
208AB4:  MOV             R0, R11; char *
208AB6:  BLX             strlen
208ABA:  MOV             R6, R0
208ABC:  ADDS            R0, R5, R6
208ABE:  ADD.W           R10, R0, #2
208AC2:  CMP.W           R10, #0x41 ; 'A'
208AC6:  BCC             loc_208AD2
208AC8:  ADR             R1, aCanTWriteScalB; "Can't write sCAL (buffer too small)"
208ACA:  MOV             R0, R8
208ACC:  BLX             j_png_warning
208AD0:  B               loc_208B98
208AD2:  STRB.W          R9, [SP,#0x68+var_68]
208AD6:  MOV             R9, SP
208AD8:  ADD.W           R0, R9, #1; void *
208ADC:  ADDS            R2, R5, #1; size_t
208ADE:  MOV             R1, R4; void *
208AE0:  BLX             memcpy_1
208AE4:  ADD.W           R0, R9, R5
208AE8:  MOV             R1, R11; void *
208AEA:  ADDS            R0, #2; void *
208AEC:  MOV             R2, R6; size_t
208AEE:  BLX             memcpy_1
208AF2:  CMP.W           R8, #0
208AF6:  BEQ             loc_208B98
208AF8:  MOVS            R0, #0x22 ; '"'
208AFA:  ADD             R4, SP, #0x68+var_28
208AFC:  STR.W           R0, [R8,#0x368]
208B00:  MOV.W           R0, R10,LSR#16
208B04:  STRB.W          R0, [SP,#0x68+var_27]
208B08:  MOV.W           R0, R10,LSR#24
208B0C:  STRB.W          R0, [SP,#0x68+var_28]
208B10:  MOV.W           R0, R10,LSR#8
208B14:  STRB.W          R0, [SP,#0x68+var_26]
208B18:  MOV             R0, #0x4C414373
208B20:  STRB.W          R10, [SP,#0x68+var_25]
208B24:  STR             R0, [SP,#0x68+var_24]
208B26:  MOV             R0, R8
208B28:  MOV             R1, R4
208B2A:  MOVS            R2, #8
208B2C:  BLX             j_png_write_data
208B30:  MOV             R0, #0x7343414C
208B38:  STR.W           R0, [R8,#0x1DC]
208B3C:  MOV             R0, R8
208B3E:  BLX             j_png_reset_crc
208B42:  ADDS            R1, R4, #4
208B44:  MOV             R0, R8
208B46:  MOVS            R2, #4
208B48:  BLX             j_png_calculate_crc
208B4C:  MOVS            R0, #0x42 ; 'B'
208B4E:  CMP.W           R10, #0
208B52:  STR.W           R0, [R8,#0x368]
208B56:  BEQ             loc_208B6E
208B58:  MOV             R4, SP
208B5A:  MOV             R0, R8
208B5C:  MOV             R1, R4
208B5E:  MOV             R2, R10
208B60:  BLX             j_png_write_data
208B64:  MOV             R0, R8
208B66:  MOV             R1, R4
208B68:  MOV             R2, R10
208B6A:  BLX             j_png_calculate_crc
208B6E:  LDR.W           R0, [R8,#0x1F8]
208B72:  MOVS            R1, #0x82
208B74:  STR.W           R1, [R8,#0x368]
208B78:  MOVS            R2, #4
208B7A:  STRB.W          R0, [SP,#0x68+var_25]
208B7E:  LSRS            R1, R0, #0x10
208B80:  STRB.W          R1, [SP,#0x68+var_27]
208B84:  LSRS            R1, R0, #0x18
208B86:  STRB.W          R1, [SP,#0x68+var_28]
208B8A:  LSRS            R0, R0, #8
208B8C:  ADD             R1, SP, #0x68+var_28
208B8E:  STRB.W          R0, [SP,#0x68+var_26]
208B92:  MOV             R0, R8
208B94:  BLX             j_png_write_data
208B98:  LDR             R0, =(__stack_chk_guard_ptr - 0x208BA0)
208B9A:  LDR             R1, [SP,#0x68+var_20]
208B9C:  ADD             R0, PC; __stack_chk_guard_ptr
208B9E:  LDR             R0, [R0]; __stack_chk_guard
208BA0:  LDR             R0, [R0]
208BA2:  SUBS            R0, R0, R1
208BA4:  ITTT EQ
208BA6:  ADDEQ           SP, SP, #0x4C ; 'L'
208BA8:  POPEQ.W         {R8-R11}
208BAC:  POPEQ           {R4-R7,PC}
208BAE:  BLX             __stack_chk_fail
