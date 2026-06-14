; =========================================================
; Game Engine Function: png_write_hIST
; Address            : 0x207F34 - 0x20802C
; =========================================================

207F34:  PUSH            {R4-R7,LR}
207F36:  ADD             R7, SP, #0xC
207F38:  PUSH.W          {R8}
207F3C:  SUB             SP, SP, #0x10
207F3E:  MOV             R4, R0
207F40:  LDR             R0, =(__stack_chk_guard_ptr - 0x207F4A)
207F42:  MOV             R5, R2
207F44:  MOV             R6, R1
207F46:  ADD             R0, PC; __stack_chk_guard_ptr
207F48:  LDR             R0, [R0]; __stack_chk_guard
207F4A:  LDR             R0, [R0]
207F4C:  STR             R0, [SP,#0x20+var_14]
207F4E:  LDRH.W          R0, [R4,#0x200]
207F52:  CMP             R0, R5
207F54:  BGE             loc_207F60
207F56:  ADR             R1, aInvalidNumberO_0; "Invalid number of histogram entries spe"...
207F58:  MOV             R0, R4
207F5A:  BLX             j_png_warning
207F5E:  B               loc_208012
207F60:  MOVS            R0, #0x22 ; '"'
207F62:  ADD.W           R8, SP, #0x20+var_1C
207F66:  STR.W           R0, [R4,#0x368]
207F6A:  LSRS            R0, R5, #0xF
207F6C:  STRB.W          R0, [SP,#0x20+var_1B]
207F70:  LSRS            R0, R5, #0x17
207F72:  STRB.W          R0, [SP,#0x20+var_1C]
207F76:  LSRS            R0, R5, #7
207F78:  STRB.W          R0, [SP,#0x20+var_1A]
207F7C:  LSLS            R0, R5, #1
207F7E:  STRB.W          R0, [SP,#0x20+var_19]
207F82:  MOV             R0, #0x54534968
207F8A:  MOV             R1, R8
207F8C:  STR             R0, [SP,#0x20+var_18]
207F8E:  MOV             R0, R4
207F90:  MOVS            R2, #8
207F92:  BLX             j_png_write_data
207F96:  MOV             R0, #0x68495354
207F9E:  STR.W           R0, [R4,#0x1DC]
207FA2:  MOV             R0, R4
207FA4:  BLX             j_png_reset_crc
207FA8:  ADD.W           R1, R8, #4
207FAC:  MOV             R0, R4
207FAE:  MOVS            R2, #4
207FB0:  BLX             j_png_calculate_crc
207FB4:  MOVS            R0, #0x42 ; 'B'
207FB6:  CMP             R5, #1
207FB8:  STR.W           R0, [R4,#0x368]
207FBC:  BLT             loc_207FE8
207FBE:  SUB.W           R8, R7, #-var_1F
207FC2:  LDRH.W          R0, [R6],#2
207FC6:  MOV             R1, R8
207FC8:  STRB.W          R0, [R7,#var_1E]
207FCC:  MOVS            R2, #2
207FCE:  LSRS            R0, R0, #8
207FD0:  STRB.W          R0, [R7,#var_1F]
207FD4:  MOV             R0, R4
207FD6:  BLX             j_png_write_data
207FDA:  MOV             R0, R4
207FDC:  MOV             R1, R8
207FDE:  MOVS            R2, #2
207FE0:  BLX             j_png_calculate_crc
207FE4:  SUBS            R5, #1
207FE6:  BNE             loc_207FC2
207FE8:  LDR.W           R0, [R4,#0x1F8]
207FEC:  MOVS            R1, #0x82
207FEE:  STR.W           R1, [R4,#0x368]
207FF2:  MOVS            R2, #4
207FF4:  STRB.W          R0, [SP,#0x20+var_19]
207FF8:  LSRS            R1, R0, #0x10
207FFA:  STRB.W          R1, [SP,#0x20+var_1B]
207FFE:  LSRS            R1, R0, #0x18
208000:  STRB.W          R1, [SP,#0x20+var_1C]
208004:  LSRS            R0, R0, #8
208006:  ADD             R1, SP, #0x20+var_1C
208008:  STRB.W          R0, [SP,#0x20+var_1A]
20800C:  MOV             R0, R4
20800E:  BLX             j_png_write_data
208012:  LDR             R0, =(__stack_chk_guard_ptr - 0x20801A)
208014:  LDR             R1, [SP,#0x20+var_14]
208016:  ADD             R0, PC; __stack_chk_guard_ptr
208018:  LDR             R0, [R0]; __stack_chk_guard
20801A:  LDR             R0, [R0]
20801C:  SUBS            R0, R0, R1
20801E:  ITTT EQ
208020:  ADDEQ           SP, SP, #0x10
208022:  POPEQ.W         {R8}
208026:  POPEQ           {R4-R7,PC}
208028:  BLX             __stack_chk_fail
