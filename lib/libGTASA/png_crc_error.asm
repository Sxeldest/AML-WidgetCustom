; =========================================================
; Game Engine Function: png_crc_error
; Address            : 0x1FDA24 - 0x1FDA80
; =========================================================

1FDA24:  PUSH            {R4,R5,R7,LR}
1FDA26:  ADD             R7, SP, #8
1FDA28:  SUB             SP, SP, #8
1FDA2A:  MOV             R4, R0
1FDA2C:  LDRB.W          R0, [R4,#0x1DF]
1FDA30:  LDR.W           R5, [R4,#0x138]
1FDA34:  LSLS            R0, R0, #0x1A
1FDA36:  BMI             loc_1FDA52
1FDA38:  MOVS            R0, #0x81
1FDA3A:  ADD             R1, SP, #0x10+var_C
1FDA3C:  STR.W           R0, [R4,#0x368]
1FDA40:  MOV             R0, R4
1FDA42:  MOVS            R2, #4
1FDA44:  BLX             j_png_read_data
1FDA48:  LSLS            R0, R5, #0x14
1FDA4A:  BPL             loc_1FDA6C
1FDA4C:  MOVS            R0, #0
1FDA4E:  ADD             SP, SP, #8
1FDA50:  POP             {R4,R5,R7,PC}
1FDA52:  MOVS            R0, #0x81
1FDA54:  ADD             R1, SP, #0x10+var_C
1FDA56:  STR.W           R0, [R4,#0x368]
1FDA5A:  MOV             R0, R4
1FDA5C:  MOVS            R2, #4
1FDA5E:  BLX             j_png_read_data
1FDA62:  AND.W           R0, R5, #0x300
1FDA66:  CMP.W           R0, #0x300
1FDA6A:  BEQ             loc_1FDA4C
1FDA6C:  LDR             R0, [SP,#0x10+var_C]
1FDA6E:  LDR.W           R1, [R4,#0x1F8]
1FDA72:  REV             R2, R0
1FDA74:  MOVS            R0, #0
1FDA76:  CMP             R2, R1
1FDA78:  IT NE
1FDA7A:  MOVNE           R0, #1
1FDA7C:  ADD             SP, SP, #8
1FDA7E:  POP             {R4,R5,R7,PC}
