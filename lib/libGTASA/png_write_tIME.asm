; =========================================================
; Game Engine Function: png_write_tIME
; Address            : 0x208D18 - 0x208E1A
; =========================================================

208D18:  PUSH            {R4,R5,R7,LR}
208D1A:  ADD             R7, SP, #8
208D1C:  SUB             SP, SP, #0x18
208D1E:  MOV             R4, R0
208D20:  LDR             R0, =(__stack_chk_guard_ptr - 0x208D26)
208D22:  ADD             R0, PC; __stack_chk_guard_ptr
208D24:  LDR             R0, [R0]; __stack_chk_guard
208D26:  LDR             R0, [R0]
208D28:  STR             R0, [SP,#0x20+var_C]
208D2A:  LDRB            R0, [R1,#2]
208D2C:  SUBS            R2, R0, #1
208D2E:  UXTB            R2, R2
208D30:  CMP             R2, #0xB
208D32:  BHI             loc_208D44
208D34:  LDRB            R2, [R1,#3]
208D36:  SUBS            R3, R2, #1
208D38:  UXTB            R3, R3
208D3A:  CMP             R3, #0x1E
208D3C:  ITT LS
208D3E:  LDRBLS          R3, [R1,#4]
208D40:  CMPLS           R3, #0x17
208D42:  BLS             loc_208D62
208D44:  ADR             R1, aInvalidTimeSpe; "Invalid time specified for tIME chunk"
208D46:  MOV             R0, R4
208D48:  BLX             j_png_warning
208D4C:  LDR             R0, =(__stack_chk_guard_ptr - 0x208D54)
208D4E:  LDR             R1, [SP,#0x20+var_C]
208D50:  ADD             R0, PC; __stack_chk_guard_ptr
208D52:  LDR             R0, [R0]; __stack_chk_guard
208D54:  LDR             R0, [R0]
208D56:  SUBS            R0, R0, R1
208D58:  ITT EQ
208D5A:  ADDEQ           SP, SP, #0x18
208D5C:  POPEQ           {R4,R5,R7,PC}
208D5E:  BLX             __stack_chk_fail
208D62:  LDRB            R5, [R1,#6]
208D64:  CMP             R5, #0x3D ; '='
208D66:  BCS             loc_208D44
208D68:  LDRH.W          R12, [R1]
208D6C:  CMP             R4, #0
208D6E:  STRB.W          R12, [R7,#var_1A]
208D72:  STRB.W          R0, [R7,#var_19]
208D76:  MOV.W           R0, R12,LSR#8
208D7A:  STRB.W          R2, [R7,#var_18]
208D7E:  STRB.W          R3, [R7,#var_17]
208D82:  STRB.W          R0, [R7,#var_1B]
208D86:  LDRB            R0, [R1,#5]
208D88:  STRB.W          R5, [R7,#var_15]
208D8C:  STRB.W          R0, [R7,#var_16]
208D90:  BEQ             loc_208D4C
208D92:  MOVS            R0, #0x22 ; '"'
208D94:  ADD             R5, SP, #0x20+var_14
208D96:  STR.W           R0, [R4,#0x368]
208D9A:  MOV.W           R0, #0x7000000
208D9E:  STR             R0, [SP,#0x20+var_14]
208DA0:  MOV             R0, #0x454D4974
208DA8:  MOV             R1, R5
208DAA:  STR             R0, [SP,#0x20+var_10]
208DAC:  MOV             R0, R4
208DAE:  MOVS            R2, #8
208DB0:  BLX             j_png_write_data
208DB4:  MOV             R0, #0x74494D45
208DBC:  STR.W           R0, [R4,#0x1DC]
208DC0:  MOV             R0, R4
208DC2:  BLX             j_png_reset_crc
208DC6:  ADDS            R1, R5, #4
208DC8:  MOV             R0, R4
208DCA:  MOVS            R2, #4
208DCC:  BLX             j_png_calculate_crc
208DD0:  SUB.W           R5, R7, #-var_1B
208DD4:  MOVS            R0, #0x42 ; 'B'
208DD6:  STR.W           R0, [R4,#0x368]
208DDA:  MOV             R0, R4
208DDC:  MOV             R1, R5
208DDE:  MOVS            R2, #7
208DE0:  BLX             j_png_write_data
208DE4:  MOV             R0, R4
208DE6:  MOV             R1, R5
208DE8:  MOVS            R2, #7
208DEA:  BLX             j_png_calculate_crc
208DEE:  LDR.W           R0, [R4,#0x1F8]
208DF2:  MOVS            R1, #0x82
208DF4:  STR.W           R1, [R4,#0x368]
208DF8:  MOVS            R2, #4
208DFA:  STRB.W          R0, [SP,#0x20+var_14+3]
208DFE:  LSRS            R1, R0, #0x10
208E00:  STRB.W          R1, [SP,#0x20+var_14+1]
208E04:  LSRS            R1, R0, #0x18
208E06:  STRB.W          R1, [SP,#0x20+var_14]
208E0A:  LSRS            R0, R0, #8
208E0C:  ADD             R1, SP, #0x20+var_14
208E0E:  STRB.W          R0, [SP,#0x20+var_14+2]
208E12:  MOV             R0, R4
208E14:  BLX             j_png_write_data
208E18:  B               loc_208D4C
