; =========================================================
; Game Engine Function: png_set_pCAL
; Address            : 0x201D0C - 0x201EA6
; =========================================================

201D0C:  PUSH            {R4-R7,LR}
201D0E:  ADD             R7, SP, #0xC
201D10:  PUSH.W          {R8-R11}
201D14:  SUB             SP, SP, #0x14
201D16:  MOV             R9, R0
201D18:  CMP.W           R9, #0
201D1C:  MOV             R11, R1
201D1E:  MOV             R8, R3
201D20:  MOV             R4, R2
201D22:  IT NE
201D24:  CMPNE.W         R11, #0
201D28:  BEQ             loc_201D46
201D2A:  CMP             R4, #0
201D2C:  ITT NE
201D2E:  LDRNE.W         R10, [R7,#arg_C]
201D32:  CMPNE.W         R10, #0
201D36:  BEQ             loc_201D46
201D38:  LDR             R6, [R7,#arg_8]
201D3A:  LDR             R5, [R7,#arg_10]
201D3C:  LDRD.W          R1, R0, [R7,#arg_0]
201D40:  CMP             R6, #1
201D42:  BLT             loc_201D4E
201D44:  CBNZ            R5, loc_201D4E
201D46:  ADD             SP, SP, #0x14
201D48:  POP.W           {R8-R11}
201D4C:  POP             {R4-R7,PC}
201D4E:  STR             R1, [SP,#0x30+var_2C]
201D50:  STR             R0, [SP,#0x30+var_20]
201D52:  MOV             R0, R4; char *
201D54:  BLX             strlen
201D58:  MOV             R1, R0
201D5A:  LDR             R0, [SP,#0x30+var_20]
201D5C:  CMP             R0, #4
201D5E:  BCC             loc_201D64
201D60:  ADR             R1, aInvalidPcalEqu; "Invalid pCAL equation type"
201D62:  B               loc_201E78
201D64:  CMP             R6, #0xFF
201D66:  BLS             loc_201D6E
201D68:  LDR             R1, =(aInvalidPcalPar - 0x201D6E); "Invalid pCAL parameter count"
201D6A:  ADD             R1, PC; "Invalid pCAL parameter count"
201D6C:  B               loc_201E78
201D6E:  MOV             R0, R6
201D70:  CMP             R6, #0
201D72:  MOV             R6, R1
201D74:  STR.W           R8, [SP,#0x30+var_30]
201D78:  STR             R5, [SP,#0x30+var_24]
201D7A:  STR             R0, [SP,#0x30+var_28]
201D7C:  BEQ             loc_201DA8
201D7E:  MOV.W           R8, #0
201D82:  LDR             R0, [SP,#0x30+var_24]
201D84:  LDR.W           R5, [R0,R8,LSL#2]
201D88:  CMP             R5, #0
201D8A:  BEQ             loc_201E70
201D8C:  MOV             R0, R5; char *
201D8E:  BLX             strlen
201D92:  MOV             R1, R0
201D94:  MOV             R0, R5
201D96:  BLX             j_png_check_fp_string
201D9A:  CMP             R0, #0
201D9C:  BEQ             loc_201E70
201D9E:  LDR             R0, [SP,#0x30+var_28]
201DA0:  ADD.W           R8, R8, #1
201DA4:  CMP             R8, R0
201DA6:  BLT             loc_201D82
201DA8:  ADDS            R5, R6, #1
201DAA:  MOV             R0, R9; int
201DAC:  MOV             R1, R5; byte_count
201DAE:  BLX             j_png_malloc_warn
201DB2:  CMP             R0, #0
201DB4:  STR.W           R0, [R11,#0xDC]
201DB8:  BEQ             loc_201E74
201DBA:  MOV             R1, R4; void *
201DBC:  MOV             R2, R5; size_t
201DBE:  BLX             memcpy_1
201DC2:  LDR             R0, [SP,#0x30+var_30]
201DC4:  STR.W           R0, [R11,#0xE0]
201DC8:  LDR             R0, [SP,#0x30+var_2C]
201DCA:  STR.W           R0, [R11,#0xE4]
201DCE:  LDR             R0, [SP,#0x30+var_20]
201DD0:  STRB.W          R0, [R11,#0xF0]
201DD4:  MOV             R0, R10; char *
201DD6:  LDR.W           R8, [SP,#0x30+var_28]
201DDA:  STRB.W          R8, [R11,#0xF1]
201DDE:  BLX             strlen
201DE2:  ADDS            R4, R0, #1
201DE4:  MOV             R0, R9; int
201DE6:  MOV             R1, R4; byte_count
201DE8:  BLX             j_png_malloc_warn
201DEC:  CMP             R0, #0
201DEE:  STR.W           R0, [R11,#0xE8]
201DF2:  BEQ             loc_201E8A
201DF4:  MOV             R1, R10; void *
201DF6:  MOV             R2, R4; size_t
201DF8:  BLX             memcpy_1
201DFC:  MOVS            R0, #4
201DFE:  ADD.W           R4, R0, R8,LSL#2
201E02:  MOV             R0, R9; int
201E04:  MOV             R1, R4; byte_count
201E06:  BLX             j_png_malloc_warn
201E0A:  CMP             R0, #0
201E0C:  STR.W           R0, [R11,#0xEC]
201E10:  BEQ             loc_201E90
201E12:  MOV             R1, R4
201E14:  BLX             j___aeabi_memclr8_0
201E18:  LDR             R6, [SP,#0x30+var_24]
201E1A:  CMP.W           R8, #1
201E1E:  BLT             loc_201E56
201E20:  MOVS            R5, #0
201E22:  LDR.W           R0, [R6,R5,LSL#2]; char *
201E26:  BLX             strlen
201E2A:  ADDS            R4, R0, #1
201E2C:  MOV             R0, R9; int
201E2E:  MOV             R1, R4; byte_count
201E30:  BLX             j_png_malloc_warn
201E34:  LDR.W           R1, [R11,#0xEC]
201E38:  STR.W           R0, [R1,R5,LSL#2]
201E3C:  LDR.W           R0, [R11,#0xEC]
201E40:  LDR.W           R0, [R0,R5,LSL#2]; void *
201E44:  CBZ             R0, loc_201E94
201E46:  LDR.W           R1, [R6,R5,LSL#2]; void *
201E4A:  MOV             R2, R4; size_t
201E4C:  BLX             memcpy_1
201E50:  ADDS            R5, #1
201E52:  CMP             R5, R8
201E54:  BLT             loc_201E22
201E56:  LDR.W           R0, [R11,#8]
201E5A:  LDR.W           R1, [R11,#0xF4]
201E5E:  ORR.W           R0, R0, #0x400
201E62:  STR.W           R0, [R11,#8]
201E66:  ORR.W           R0, R1, #0x80
201E6A:  STR.W           R0, [R11,#0xF4]
201E6E:  B               loc_201D46
201E70:  ADR             R1, aInvalidFormatF; "Invalid format for pCAL parameter"
201E72:  B               loc_201E78
201E74:  LDR             R1, =(aInsufficientMe_10 - 0x201E7A); "Insufficient memory for pCAL purpose"
201E76:  ADD             R1, PC; "Insufficient memory for pCAL purpose"
201E78:  MOV             R0, R9
201E7A:  MOVS            R2, #1
201E7C:  ADD             SP, SP, #0x14
201E7E:  POP.W           {R8-R11}
201E82:  POP.W           {R4-R7,LR}
201E86:  B.W             j_j_png_chunk_report
201E8A:  LDR             R1, =(aInsufficientMe_11 - 0x201E90); "Insufficient memory for pCAL units"
201E8C:  ADD             R1, PC; "Insufficient memory for pCAL units"
201E8E:  B               loc_201E96
201E90:  ADR             R1, aInsufficientMe_3; "Insufficient memory for pCAL params"
201E92:  B               loc_201E96
201E94:  ADR             R1, aInsufficientMe_4; "Insufficient memory for pCAL parameter"
201E96:  MOV             R0, R9
201E98:  ADD             SP, SP, #0x14
201E9A:  POP.W           {R8-R11}
201E9E:  POP.W           {R4-R7,LR}
201EA2:  B.W             j_j_png_warning
