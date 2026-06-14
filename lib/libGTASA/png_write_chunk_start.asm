; =========================================================
; Game Engine Function: png_write_chunk_start
; Address            : 0x206064 - 0x206106
; =========================================================

206064:  PUSH            {R4-R7,LR}
206066:  ADD             R7, SP, #0xC
206068:  PUSH.W          {R8-R10}
20606C:  SUB             SP, SP, #0x10
20606E:  MOV             R4, R0
206070:  LDR             R0, =(__stack_chk_guard_ptr - 0x206078)
206072:  CMP             R4, #0
206074:  ADD             R0, PC; __stack_chk_guard_ptr
206076:  LDR             R0, [R0]; __stack_chk_guard
206078:  LDR             R0, [R0]
20607A:  STR             R0, [SP,#0x28+var_1C]
20607C:  BEQ             loc_2060EC
20607E:  MOVS            R0, #0x22 ; '"'
206080:  LDRB.W          R9, [R1]
206084:  LDRB            R5, [R1,#1]
206086:  ADD.W           R8, SP, #0x28+var_24
20608A:  LDRB.W          R10, [R1,#2]
20608E:  LDRB            R6, [R1,#3]
206090:  MOV             R1, R8
206092:  STR.W           R0, [R4,#0x368]
206096:  LSRS            R0, R2, #0x10
206098:  STRB.W          R0, [SP,#0x28+var_23]
20609C:  LSRS            R0, R2, #0x18
20609E:  STRB.W          R0, [SP,#0x28+var_24]
2060A2:  LSRS            R0, R2, #8
2060A4:  STRB.W          R0, [SP,#0x28+var_22]
2060A8:  MOV             R0, R4
2060AA:  STRB.W          R2, [SP,#0x28+var_21]
2060AE:  MOVS            R2, #8
2060B0:  STRB.W          R9, [SP,#0x28+var_20]
2060B4:  STRB.W          R5, [SP,#0x28+var_1F]
2060B8:  STRB.W          R10, [SP,#0x28+var_1E]
2060BC:  STRB.W          R6, [SP,#0x28+var_1D]
2060C0:  BLX             j_png_write_data
2060C4:  LSLS            R0, R5, #0x10
2060C6:  ORR.W           R0, R0, R9,LSL#24
2060CA:  ORR.W           R0, R0, R10,LSL#8
2060CE:  ORRS            R0, R6
2060D0:  STR.W           R0, [R4,#0x1DC]
2060D4:  MOV             R0, R4
2060D6:  BLX             j_png_reset_crc
2060DA:  ADD.W           R1, R8, #4
2060DE:  MOV             R0, R4
2060E0:  MOVS            R2, #4
2060E2:  BLX             j_png_calculate_crc
2060E6:  MOVS            R0, #0x42 ; 'B'
2060E8:  STR.W           R0, [R4,#0x368]
2060EC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2060F4)
2060EE:  LDR             R1, [SP,#0x28+var_1C]
2060F0:  ADD             R0, PC; __stack_chk_guard_ptr
2060F2:  LDR             R0, [R0]; __stack_chk_guard
2060F4:  LDR             R0, [R0]
2060F6:  SUBS            R0, R0, R1
2060F8:  ITTT EQ
2060FA:  ADDEQ           SP, SP, #0x10
2060FC:  POPEQ.W         {R8-R10}
206100:  POPEQ           {R4-R7,PC}
206102:  BLX             __stack_chk_fail
