; =========================================================
; Game Engine Function: png_write_start_row
; Address            : 0x208E4C - 0x208F40
; =========================================================

208E4C:  PUSH            {R4-R7,LR}
208E4E:  ADD             R7, SP, #0xC
208E50:  PUSH.W          {R11}
208E54:  MOV             R4, R0
208E56:  LDRB.W          R0, [R4,#0x214]
208E5A:  LDRB.W          R1, [R4,#0x211]
208E5E:  SMULBB.W        R0, R1, R0
208E62:  LDR.W           R1, [R4,#0x1C0]
208E66:  CMP             R0, #8
208E68:  BCC             loc_208E70
208E6A:  LSRS            R2, R0, #3
208E6C:  MULS            R1, R2
208E6E:  B               loc_208E76
208E70:  MULS            R1, R0
208E72:  ADDS            R1, #7
208E74:  LSRS            R1, R1, #3
208E76:  ADDS            R5, R1, #1
208E78:  LDRB.W          R2, [R4,#0x212]
208E7C:  STRB.W          R0, [R4,#0x216]
208E80:  MOV             R0, R4
208E82:  MOV             R1, R5
208E84:  STRB.W          R2, [R4,#0x217]
208E88:  BLX             j_png_malloc
208E8C:  MOVS            R1, #0
208E8E:  STR.W           R0, [R4,#0x1E4]
208E92:  STRB            R1, [R0]
208E94:  LDRB.W          R6, [R4,#0x20E]
208E98:  LDRD.W          R0, R1, [R4,#0x1C0]
208E9C:  CMP             R1, #1
208E9E:  IT EQ
208EA0:  ANDEQ.W         R6, R6, #0x1F
208EA4:  CMP             R0, #1
208EA6:  IT EQ
208EA8:  ANDEQ.W         R6, R6, #0x2F ; '/'
208EAC:  CMP             R6, #0
208EAE:  IT EQ
208EB0:  MOVEQ           R6, #8
208EB2:  TST.W           R6, #0xF0
208EB6:  STRB.W          R6, [R4,#0x20E]
208EBA:  BEQ             loc_208EF2
208EBC:  LDR.W           R0, [R4,#0x1E8]
208EC0:  CBNZ            R0, loc_208EF2
208EC2:  MOV             R0, R4
208EC4:  MOV             R1, R5
208EC6:  BLX             j_png_malloc
208ECA:  STR.W           R0, [R4,#0x1E8]
208ECE:  UBFX.W          R0, R6, #5, #1
208ED2:  ADD.W           R0, R0, R6,LSR#7
208ED6:  UBFX.W          R1, R6, #4, #1
208EDA:  ADD             R0, R1
208EDC:  UBFX.W          R1, R6, #6, #1
208EE0:  ADD             R0, R1
208EE2:  CMP             R0, #2
208EE4:  BCC             loc_208EF2
208EE6:  MOV             R0, R4
208EE8:  MOV             R1, R5
208EEA:  BLX             j_png_malloc
208EEE:  STR.W           R0, [R4,#0x1EC]
208EF2:  TST.W           R6, #0xE0
208EF6:  BEQ             loc_208F04
208EF8:  MOV             R0, R4
208EFA:  MOV             R1, R5
208EFC:  BLX             j_png_calloc
208F00:  STR.W           R0, [R4,#0x1E0]
208F04:  LDRB.W          R0, [R4,#0x20C]
208F08:  CBZ             R0, loc_208F28
208F0A:  LDRB.W          R0, [R4,#0x13C]
208F0E:  LDR.W           R1, [R4,#0x1C4]
208F12:  LSLS            R0, R0, #0x1E
208F14:  BMI             loc_208F2E
208F16:  LDR.W           R0, [R4,#0x1C0]
208F1A:  ADDS            R1, #7
208F1C:  ADDS            R0, #7
208F1E:  LSRS            R1, R1, #3
208F20:  STR.W           R1, [R4,#0x1C8]
208F24:  LSRS            R0, R0, #3
208F26:  B               loc_208F36
208F28:  LDRD.W          R0, R1, [R4,#0x1C0]
208F2C:  B               loc_208F32
208F2E:  LDR.W           R0, [R4,#0x1C0]
208F32:  STR.W           R1, [R4,#0x1C8]
208F36:  STR.W           R0, [R4,#0x1CC]
208F3A:  POP.W           {R11}
208F3E:  POP             {R4-R7,PC}
