; =========================================================
; Game Engine Function: png_write_tRNS
; Address            : 0x207948 - 0x207B3E
; =========================================================

207948:  PUSH            {R4-R7,LR}
20794A:  ADD             R7, SP, #0xC
20794C:  PUSH.W          {R8,R9,R11}
207950:  SUB             SP, SP, #0x18
207952:  MOV             R4, R0
207954:  LDR             R0, =(__stack_chk_guard_ptr - 0x207960)
207956:  MOV             R6, R1
207958:  MOVW            R9, #0x4E53
20795C:  ADD             R0, PC; __stack_chk_guard_ptr
20795E:  MOV             R5, R3
207960:  MOVT            R9, #0x7452
207964:  LDR             R0, [R0]; __stack_chk_guard
207966:  LDR             R1, [R0]
207968:  LDR             R0, [R7,#arg_0]
20796A:  STR             R1, [SP,#0x30+var_1C]
20796C:  CBZ             R0, loc_20798A
20796E:  CMP             R0, #2
207970:  BEQ             loc_2079F6
207972:  CMP             R0, #3
207974:  BNE             loc_207A30
207976:  CMP             R5, #1
207978:  ITT GE
20797A:  LDRHGE.W        R0, [R4,#0x200]
20797E:  CMPGE           R0, R5
207980:  BGE.W           loc_207A92
207984:  LDR             R1, =(aInvalidNumberO_1 - 0x20798A); "Invalid number of transparent colors sp"...
207986:  ADD             R1, PC; "Invalid number of transparent colors sp"...
207988:  B               loc_207A8A
20798A:  LDRB.W          R1, [R4,#0x210]
20798E:  LDRH            R0, [R2,#8]
207990:  MOVS            R2, #1
207992:  LSL.W           R1, R2, R1
207996:  CMP             R1, R0
207998:  BLE             loc_207A88
20799A:  STRB.W          R0, [R7,#var_29]
20799E:  LSRS            R0, R0, #8
2079A0:  STRB.W          R0, [R7,#var_2A]
2079A4:  MOVS            R0, #0x22 ; '"'
2079A6:  STR.W           R0, [R4,#0x368]
2079AA:  MOV.W           R0, #0x2000000
2079AE:  STR             R0, [SP,#0x30+var_24]
2079B0:  MOVW            R0, #0x5274
2079B4:  ADD             R5, SP, #0x30+var_24
2079B6:  MOVT            R0, #0x534E
2079BA:  STR             R0, [SP,#0x30+var_20]
2079BC:  MOV             R0, R4
2079BE:  MOV             R1, R5
2079C0:  MOVS            R2, #8
2079C2:  BLX             j_png_write_data
2079C6:  MOV             R0, R4
2079C8:  STR.W           R9, [R4,#0x1DC]
2079CC:  BLX             j_png_reset_crc
2079D0:  ADDS            R1, R5, #4
2079D2:  MOV             R0, R4
2079D4:  MOVS            R2, #4
2079D6:  BLX             j_png_calculate_crc
2079DA:  SUB.W           R5, R7, #-var_2A
2079DE:  MOVS            R0, #0x42 ; 'B'
2079E0:  STR.W           R0, [R4,#0x368]
2079E4:  MOV             R0, R4
2079E6:  MOV             R1, R5
2079E8:  MOVS            R2, #2
2079EA:  BLX             j_png_write_data
2079EE:  MOV             R0, R4
2079F0:  MOV             R1, R5
2079F2:  MOVS            R2, #2
2079F4:  B               loc_207AF6
2079F6:  LDRH            R0, [R2,#2]
2079F8:  STRB.W          R0, [R7,#var_29]
2079FC:  LDRB.W          R3, [R4,#0x210]
207A00:  LSRS            R0, R0, #8
207A02:  STRB.W          R0, [R7,#var_2A]
207A06:  CMP             R3, #8
207A08:  LDRH            R1, [R2,#4]
207A0A:  STRB.W          R1, [R7,#var_27]
207A0E:  MOV.W           R1, R1,LSR#8
207A12:  STRB.W          R1, [R7,#var_28]
207A16:  LDRH            R2, [R2,#6]
207A18:  STRB.W          R2, [R7,#var_25]
207A1C:  MOV.W           R2, R2,LSR#8
207A20:  STRB.W          R2, [R7,#var_26]
207A24:  BNE             loc_207A36
207A26:  ORRS            R0, R1
207A28:  ORRS            R0, R2
207A2A:  BEQ             loc_207A36
207A2C:  ADR             R1, aIgnoringAttemp; "Ignoring attempt to write 16-bit tRNS c"...
207A2E:  B               loc_207A8A
207A30:  LDR             R1, =(aCanTWriteTrnsW - 0x207A36); "Can't write tRNS with an alpha channel"
207A32:  ADD             R1, PC; "Can't write tRNS with an alpha channel"
207A34:  B               loc_207A8A
207A36:  MOVS            R0, #0x22 ; '"'
207A38:  ADD             R5, SP, #0x30+var_24
207A3A:  STR.W           R0, [R4,#0x368]
207A3E:  MOV.W           R0, #0x6000000
207A42:  STR             R0, [SP,#0x30+var_24]
207A44:  MOV             R0, #0x534E5274
207A4C:  MOV             R1, R5
207A4E:  STR             R0, [SP,#0x30+var_20]
207A50:  MOV             R0, R4
207A52:  MOVS            R2, #8
207A54:  BLX             j_png_write_data
207A58:  MOV             R0, R4
207A5A:  STR.W           R9, [R4,#0x1DC]
207A5E:  BLX             j_png_reset_crc
207A62:  ADDS            R1, R5, #4
207A64:  MOV             R0, R4
207A66:  MOVS            R2, #4
207A68:  BLX             j_png_calculate_crc
207A6C:  SUB.W           R5, R7, #-var_2A
207A70:  MOVS            R0, #0x42 ; 'B'
207A72:  STR.W           R0, [R4,#0x368]
207A76:  MOV             R0, R4
207A78:  MOV             R1, R5
207A7A:  MOVS            R2, #6
207A7C:  BLX             j_png_write_data
207A80:  MOV             R0, R4
207A82:  MOV             R1, R5
207A84:  MOVS            R2, #6
207A86:  B               loc_207AF6
207A88:  ADR             R1, aIgnoringAttemp_0; "Ignoring attempt to write tRNS chunk ou"...
207A8A:  MOV             R0, R4
207A8C:  BLX             j_png_app_warning
207A90:  B               loc_207B24
207A92:  MOVS            R0, #0x22 ; '"'
207A94:  ADD.W           R8, SP, #0x30+var_24
207A98:  STR.W           R0, [R4,#0x368]
207A9C:  LSRS            R0, R5, #0x10
207A9E:  STRB.W          R0, [SP,#0x30+var_24+1]
207AA2:  LSRS            R0, R5, #0x18
207AA4:  STRB.W          R0, [SP,#0x30+var_24]
207AA8:  LSRS            R0, R5, #8
207AAA:  STRB.W          R0, [SP,#0x30+var_24+2]
207AAE:  MOV             R0, #0x534E5274
207AB6:  STRB.W          R5, [SP,#0x30+var_24+3]
207ABA:  STR             R0, [SP,#0x30+var_20]
207ABC:  MOV             R0, R4
207ABE:  MOV             R1, R8
207AC0:  MOVS            R2, #8
207AC2:  BLX             j_png_write_data
207AC6:  MOV             R0, R4
207AC8:  STR.W           R9, [R4,#0x1DC]
207ACC:  BLX             j_png_reset_crc
207AD0:  ADD.W           R1, R8, #4
207AD4:  MOV             R0, R4
207AD6:  MOVS            R2, #4
207AD8:  BLX             j_png_calculate_crc
207ADC:  MOVS            R0, #0x42 ; 'B'
207ADE:  CMP             R6, #0
207AE0:  STR.W           R0, [R4,#0x368]
207AE4:  BEQ             loc_207AFA
207AE6:  MOV             R0, R4
207AE8:  MOV             R1, R6
207AEA:  MOV             R2, R5
207AEC:  BLX             j_png_write_data
207AF0:  MOV             R0, R4
207AF2:  MOV             R1, R6
207AF4:  MOV             R2, R5
207AF6:  BLX             j_png_calculate_crc
207AFA:  LDR.W           R0, [R4,#0x1F8]
207AFE:  MOVS            R1, #0x82
207B00:  STR.W           R1, [R4,#0x368]
207B04:  MOVS            R2, #4
207B06:  STRB.W          R0, [SP,#0x30+var_24+3]
207B0A:  LSRS            R1, R0, #0x10
207B0C:  STRB.W          R1, [SP,#0x30+var_24+1]
207B10:  LSRS            R1, R0, #0x18
207B12:  STRB.W          R1, [SP,#0x30+var_24]
207B16:  LSRS            R0, R0, #8
207B18:  ADD             R1, SP, #0x30+var_24
207B1A:  STRB.W          R0, [SP,#0x30+var_24+2]
207B1E:  MOV             R0, R4
207B20:  BLX             j_png_write_data
207B24:  LDR             R0, =(__stack_chk_guard_ptr - 0x207B2C)
207B26:  LDR             R1, [SP,#0x30+var_1C]
207B28:  ADD             R0, PC; __stack_chk_guard_ptr
207B2A:  LDR             R0, [R0]; __stack_chk_guard
207B2C:  LDR             R0, [R0]
207B2E:  SUBS            R0, R0, R1
207B30:  ITTT EQ
207B32:  ADDEQ           SP, SP, #0x18
207B34:  POPEQ.W         {R8,R9,R11}
207B38:  POPEQ           {R4-R7,PC}
207B3A:  BLX             __stack_chk_fail
