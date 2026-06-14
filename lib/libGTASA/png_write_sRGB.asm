; =========================================================
; Game Engine Function: png_write_sRGB
; Address            : 0x206FE4 - 0x2070A8
; =========================================================

206FE4:  PUSH            {R4,R5,R7,LR}
206FE6:  ADD             R7, SP, #8
206FE8:  SUB             SP, SP, #0x10
206FEA:  MOV             R4, R0
206FEC:  LDR             R0, =(__stack_chk_guard_ptr - 0x206FF6)
206FEE:  MOV             R5, R1
206FF0:  CMP             R5, #4
206FF2:  ADD             R0, PC; __stack_chk_guard_ptr
206FF4:  LDR             R0, [R0]; __stack_chk_guard
206FF6:  LDR             R0, [R0]
206FF8:  STR             R0, [SP,#0x18+var_C]
206FFA:  BLT             loc_207004
206FFC:  ADR             R1, aInvalidSrgbRen_0; "Invalid sRGB rendering intent specified"
206FFE:  MOV             R0, R4
207000:  BLX             j_png_warning
207004:  CMP             R4, #0
207006:  STRB.W          R5, [R7,#var_15]
20700A:  BEQ             loc_207092
20700C:  MOVS            R0, #0x22 ; '"'
20700E:  ADD             R5, SP, #0x18+var_14
207010:  STR.W           R0, [R4,#0x368]
207014:  MOV.W           R0, #0x1000000
207018:  STR             R0, [SP,#0x18+var_14]
20701A:  MOV             R0, #0x42475273
207022:  MOV             R1, R5
207024:  STR             R0, [SP,#0x18+var_10]
207026:  MOV             R0, R4
207028:  MOVS            R2, #8
20702A:  BLX             j_png_write_data
20702E:  MOV             R0, #0x73524742
207036:  STR.W           R0, [R4,#0x1DC]
20703A:  MOV             R0, R4
20703C:  BLX             j_png_reset_crc
207040:  ADDS            R1, R5, #4
207042:  MOV             R0, R4
207044:  MOVS            R2, #4
207046:  BLX             j_png_calculate_crc
20704A:  SUB.W           R5, R7, #-var_15
20704E:  MOVS            R0, #0x42 ; 'B'
207050:  STR.W           R0, [R4,#0x368]
207054:  MOV             R0, R4
207056:  MOV             R1, R5
207058:  MOVS            R2, #1
20705A:  BLX             j_png_write_data
20705E:  MOV             R0, R4
207060:  MOV             R1, R5
207062:  MOVS            R2, #1
207064:  BLX             j_png_calculate_crc
207068:  LDR.W           R0, [R4,#0x1F8]
20706C:  MOVS            R1, #0x82
20706E:  STR.W           R1, [R4,#0x368]
207072:  MOVS            R2, #4
207074:  STRB.W          R0, [SP,#0x18+var_14+3]
207078:  LSRS            R1, R0, #0x10
20707A:  STRB.W          R1, [SP,#0x18+var_14+1]
20707E:  LSRS            R1, R0, #0x18
207080:  STRB.W          R1, [SP,#0x18+var_14]
207084:  LSRS            R0, R0, #8
207086:  ADD             R1, SP, #0x18+var_14
207088:  STRB.W          R0, [SP,#0x18+var_14+2]
20708C:  MOV             R0, R4
20708E:  BLX             j_png_write_data
207092:  LDR             R0, =(__stack_chk_guard_ptr - 0x20709A)
207094:  LDR             R1, [SP,#0x18+var_C]
207096:  ADD             R0, PC; __stack_chk_guard_ptr
207098:  LDR             R0, [R0]; __stack_chk_guard
20709A:  LDR             R0, [R0]
20709C:  SUBS            R0, R0, R1
20709E:  ITT EQ
2070A0:  ADDEQ           SP, SP, #0x10
2070A2:  POPEQ           {R4,R5,R7,PC}
2070A4:  BLX             __stack_chk_fail
