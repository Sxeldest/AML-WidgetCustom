; =========================================================
; Game Engine Function: png_write_eXIf
; Address            : 0x207E40 - 0x207F2A
; =========================================================

207E40:  PUSH            {R4-R7,LR}
207E42:  ADD             R7, SP, #0xC
207E44:  PUSH.W          {R8}
207E48:  SUB             SP, SP, #0x10
207E4A:  MOV             R4, R0
207E4C:  LDR             R0, =(__stack_chk_guard_ptr - 0x207E56)
207E4E:  MOV             R5, R2
207E50:  MOV             R6, R1
207E52:  ADD             R0, PC; __stack_chk_guard_ptr
207E54:  CMP             R4, #0
207E56:  LDR             R0, [R0]; __stack_chk_guard
207E58:  LDR             R0, [R0]
207E5A:  STR             R0, [SP,#0x20+var_14]
207E5C:  BEQ             loc_207EB6
207E5E:  MOVS            R0, #0x22 ; '"'
207E60:  ADD.W           R8, SP, #0x20+var_1C
207E64:  STR.W           R0, [R4,#0x368]
207E68:  LSRS            R0, R5, #0x10
207E6A:  STRB.W          R0, [SP,#0x20+var_1B]
207E6E:  LSRS            R0, R5, #0x18
207E70:  STRB.W          R0, [SP,#0x20+var_1C]
207E74:  LSRS            R0, R5, #8
207E76:  STRB.W          R0, [SP,#0x20+var_1A]
207E7A:  MOV             R0, #0x66495865
207E82:  STRB.W          R5, [SP,#0x20+var_19]
207E86:  STR             R0, [SP,#0x20+var_18]
207E88:  MOV             R0, R4
207E8A:  MOV             R1, R8
207E8C:  MOVS            R2, #8
207E8E:  BLX             j_png_write_data
207E92:  MOV             R0, #0x65584966
207E9A:  STR.W           R0, [R4,#0x1DC]
207E9E:  MOV             R0, R4
207EA0:  BLX             j_png_reset_crc
207EA4:  ADD.W           R1, R8, #4
207EA8:  MOV             R0, R4
207EAA:  MOVS            R2, #4
207EAC:  BLX             j_png_calculate_crc
207EB0:  MOVS            R0, #0x42 ; 'B'
207EB2:  STR.W           R0, [R4,#0x368]
207EB6:  CMP             R5, #1
207EB8:  BLT             loc_207EE4
207EBA:  SUB.W           R8, R7, #-var_1D
207EBE:  LDRB            R0, [R6]
207EC0:  CMP             R4, #0
207EC2:  STRB.W          R0, [R7,#var_1D]
207EC6:  BEQ             loc_207EDC
207EC8:  MOV             R0, R4
207ECA:  MOV             R1, R8
207ECC:  MOVS            R2, #1
207ECE:  BLX             j_png_write_data
207ED2:  MOV             R0, R4
207ED4:  MOV             R1, R8
207ED6:  MOVS            R2, #1
207ED8:  BLX             j_png_calculate_crc
207EDC:  SUBS            R5, #1
207EDE:  ADD.W           R6, R6, #1
207EE2:  BNE             loc_207EBE
207EE4:  CBZ             R4, loc_207F10
207EE6:  LDR.W           R0, [R4,#0x1F8]
207EEA:  MOVS            R1, #0x82
207EEC:  STR.W           R1, [R4,#0x368]
207EF0:  MOVS            R2, #4
207EF2:  STRB.W          R0, [SP,#0x20+var_19]
207EF6:  LSRS            R1, R0, #0x10
207EF8:  STRB.W          R1, [SP,#0x20+var_1B]
207EFC:  LSRS            R1, R0, #0x18
207EFE:  STRB.W          R1, [SP,#0x20+var_1C]
207F02:  LSRS            R0, R0, #8
207F04:  ADD             R1, SP, #0x20+var_1C
207F06:  STRB.W          R0, [SP,#0x20+var_1A]
207F0A:  MOV             R0, R4
207F0C:  BLX             j_png_write_data
207F10:  LDR             R0, =(__stack_chk_guard_ptr - 0x207F18)
207F12:  LDR             R1, [SP,#0x20+var_14]
207F14:  ADD             R0, PC; __stack_chk_guard_ptr
207F16:  LDR             R0, [R0]; __stack_chk_guard
207F18:  LDR             R0, [R0]
207F1A:  SUBS            R0, R0, R1
207F1C:  ITTT EQ
207F1E:  ADDEQ           SP, SP, #0x10
207F20:  POPEQ.W         {R8}
207F24:  POPEQ           {R4-R7,PC}
207F26:  BLX             __stack_chk_fail
