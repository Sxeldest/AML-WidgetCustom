; =========================================================
; Game Engine Function: png_colorspace_set_ICC
; Address            : 0x1F0020 - 0x1F0094
; =========================================================

1F0020:  PUSH            {R4-R7,LR}
1F0022:  ADD             R7, SP, #0xC
1F0024:  PUSH.W          {R8,R9,R11}
1F0028:  SUB             SP, SP, #8
1F002A:  MOV             R4, R1
1F002C:  MOV             R8, R0
1F002E:  LDRSH.W         R0, [R4,#0x4A]
1F0032:  MOV             R6, R3
1F0034:  MOV             R5, R2
1F0036:  CMP             R0, #0
1F0038:  BLT             loc_1F008A
1F003A:  CMP             R6, #0x83
1F003C:  BHI             loc_1F0052
1F003E:  LDR             R0, =(aTooShort - 0x1F004A); "too short"
1F0040:  MOV             R1, R4
1F0042:  MOV             R2, R5
1F0044:  MOV             R3, R6
1F0046:  ADD             R0, PC; "too short"
1F0048:  STR             R0, [SP,#0x20+var_20]
1F004A:  MOV             R0, R8
1F004C:  BL              sub_1EF844
1F0050:  B               loc_1F008A
1F0052:  LDRD.W          R9, R0, [R7,#arg_0]
1F0056:  MOV             R1, R4
1F0058:  STRD.W          R9, R0, [SP,#0x20+var_20]
1F005C:  MOV             R0, R8
1F005E:  MOV             R2, R5
1F0060:  MOV             R3, R6
1F0062:  BLX             j_png_icc_check_header
1F0066:  CBZ             R0, loc_1F008A
1F0068:  MOV             R0, R8
1F006A:  MOV             R1, R4
1F006C:  MOV             R2, R5
1F006E:  MOV             R3, R6
1F0070:  STR.W           R9, [SP,#0x20+var_20]
1F0074:  BLX             j_png_icc_check_tag_table
1F0078:  CBZ             R0, loc_1F008A
1F007A:  MOV             R0, R8
1F007C:  MOV             R1, R4
1F007E:  MOV             R2, R9
1F0080:  MOVS            R3, #0
1F0082:  BLX             j_png_icc_set_sRGB
1F0086:  MOVS            R0, #1
1F0088:  B               loc_1F008C
1F008A:  MOVS            R0, #0
1F008C:  ADD             SP, SP, #8
1F008E:  POP.W           {R8,R9,R11}
1F0092:  POP             {R4-R7,PC}
