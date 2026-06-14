; =========================================================
; Game Engine Function: png_write_bKGD
; Address            : 0x207BD0 - 0x207DB2
; =========================================================

207BD0:  PUSH            {R4-R7,LR}
207BD2:  ADD             R7, SP, #0xC
207BD4:  PUSH.W          {R11}
207BD8:  SUB             SP, SP, #0x18
207BDA:  MOV             R4, R0
207BDC:  LDR             R0, =(__stack_chk_guard_ptr - 0x207BE8)
207BDE:  MOVW            R6, #0x4744
207BE2:  CMP             R2, #3
207BE4:  ADD             R0, PC; __stack_chk_guard_ptr
207BE6:  MOVT            R6, #0x624B
207BEA:  LDR             R0, [R0]; __stack_chk_guard
207BEC:  LDR             R0, [R0]
207BEE:  STR             R0, [SP,#0x28+var_14]
207BF0:  BNE             loc_207C10
207BF2:  LDRH.W          R0, [R4,#0x200]
207BF6:  CBNZ            R0, loc_207C02
207BF8:  LDRB.W          R2, [R4,#0x30C]
207BFC:  LSLS            R2, R2, #0x1F
207BFE:  BNE.W           loc_207D14
207C02:  LDRB            R1, [R1]
207C04:  CMP             R1, R0
207C06:  BCC.W           loc_207D16
207C0A:  LDR             R1, =(aInvalidBackgro_0 - 0x207C10); "Invalid background palette index"
207C0C:  ADD             R1, PC; "Invalid background palette index"
207C0E:  B               loc_207D0C
207C10:  LSLS            R0, R2, #0x1E
207C12:  BMI             loc_207C7E
207C14:  LDRB.W          R2, [R4,#0x210]
207C18:  LDRH            R0, [R1,#8]
207C1A:  MOVS            R1, #1
207C1C:  LSLS            R1, R2
207C1E:  CMP             R1, R0
207C20:  BLE             loc_207D0A
207C22:  STRB.W          R0, [R7,#var_21]
207C26:  LSRS            R0, R0, #8
207C28:  STRB.W          R0, [R7,#var_22]
207C2C:  MOVS            R0, #0x22 ; '"'
207C2E:  STR.W           R0, [R4,#0x368]
207C32:  MOV.W           R0, #0x2000000
207C36:  STR             R0, [SP,#0x28+var_1C]
207C38:  MOVW            R0, #0x4B62
207C3C:  ADD             R5, SP, #0x28+var_1C
207C3E:  MOVT            R0, #0x4447
207C42:  STR             R0, [SP,#0x28+var_18]
207C44:  MOV             R0, R4
207C46:  MOV             R1, R5
207C48:  MOVS            R2, #8
207C4A:  BLX             j_png_write_data
207C4E:  MOV             R0, R4
207C50:  STR.W           R6, [R4,#0x1DC]
207C54:  BLX             j_png_reset_crc
207C58:  ADDS            R1, R5, #4
207C5A:  MOV             R0, R4
207C5C:  MOVS            R2, #4
207C5E:  BLX             j_png_calculate_crc
207C62:  SUB.W           R5, R7, #-var_22
207C66:  MOVS            R0, #0x42 ; 'B'
207C68:  STR.W           R0, [R4,#0x368]
207C6C:  MOV             R0, R4
207C6E:  MOV             R1, R5
207C70:  MOVS            R2, #2
207C72:  BLX             j_png_write_data
207C76:  MOV             R0, R4
207C78:  MOV             R1, R5
207C7A:  MOVS            R2, #2
207C7C:  B               loc_207D6A
207C7E:  LDRH            R0, [R1,#2]
207C80:  STRB.W          R0, [R7,#var_21]
207C84:  LDRB.W          R3, [R4,#0x210]
207C88:  LSRS            R0, R0, #8
207C8A:  STRB.W          R0, [R7,#var_22]
207C8E:  CMP             R3, #8
207C90:  LDRH            R2, [R1,#4]
207C92:  STRB.W          R2, [R7,#var_1F]
207C96:  MOV.W           R2, R2,LSR#8
207C9A:  STRB.W          R2, [R7,#var_20]
207C9E:  LDRH            R1, [R1,#6]
207CA0:  STRB.W          R1, [R7,#var_1D]
207CA4:  MOV.W           R1, R1,LSR#8
207CA8:  STRB.W          R1, [R7,#var_1E]
207CAC:  BNE             loc_207CB8
207CAE:  ORRS            R0, R2
207CB0:  ORRS            R0, R1
207CB2:  BEQ             loc_207CB8
207CB4:  ADR             R1, aIgnoringAttemp_1; "Ignoring attempt to write 16-bit bKGD c"...
207CB6:  B               loc_207D0C
207CB8:  MOVS            R0, #0x22 ; '"'
207CBA:  ADD             R5, SP, #0x28+var_1C
207CBC:  STR.W           R0, [R4,#0x368]
207CC0:  MOV.W           R0, #0x6000000
207CC4:  STR             R0, [SP,#0x28+var_1C]
207CC6:  MOV             R0, #0x44474B62
207CCE:  MOV             R1, R5
207CD0:  STR             R0, [SP,#0x28+var_18]
207CD2:  MOV             R0, R4
207CD4:  MOVS            R2, #8
207CD6:  BLX             j_png_write_data
207CDA:  MOV             R0, R4
207CDC:  STR.W           R6, [R4,#0x1DC]
207CE0:  BLX             j_png_reset_crc
207CE4:  ADDS            R1, R5, #4
207CE6:  MOV             R0, R4
207CE8:  MOVS            R2, #4
207CEA:  BLX             j_png_calculate_crc
207CEE:  SUB.W           R5, R7, #-var_22
207CF2:  MOVS            R0, #0x42 ; 'B'
207CF4:  STR.W           R0, [R4,#0x368]
207CF8:  MOV             R0, R4
207CFA:  MOV             R1, R5
207CFC:  MOVS            R2, #6
207CFE:  BLX             j_png_write_data
207D02:  MOV             R0, R4
207D04:  MOV             R1, R5
207D06:  MOVS            R2, #6
207D08:  B               loc_207D6A
207D0A:  ADR             R1, aIgnoringAttemp_2; "Ignoring attempt to write bKGD chunk ou"...
207D0C:  MOV             R0, R4
207D0E:  BLX             j_png_warning
207D12:  B               loc_207D98
207D14:  LDRB            R1, [R1]
207D16:  MOVS            R0, #0x22 ; '"'
207D18:  ADD             R5, SP, #0x28+var_1C
207D1A:  STR.W           R0, [R4,#0x368]
207D1E:  MOV.W           R0, #0x1000000
207D22:  STR             R0, [SP,#0x28+var_1C]
207D24:  MOV             R0, #0x44474B62
207D2C:  STRB.W          R1, [R7,#var_22]
207D30:  STR             R0, [SP,#0x28+var_18]
207D32:  MOV             R0, R4
207D34:  MOV             R1, R5
207D36:  MOVS            R2, #8
207D38:  BLX             j_png_write_data
207D3C:  MOV             R0, R4
207D3E:  STR.W           R6, [R4,#0x1DC]
207D42:  BLX             j_png_reset_crc
207D46:  ADDS            R1, R5, #4
207D48:  MOV             R0, R4
207D4A:  MOVS            R2, #4
207D4C:  BLX             j_png_calculate_crc
207D50:  SUB.W           R5, R7, #-var_22
207D54:  MOVS            R0, #0x42 ; 'B'
207D56:  STR.W           R0, [R4,#0x368]
207D5A:  MOV             R0, R4
207D5C:  MOV             R1, R5
207D5E:  MOVS            R2, #1
207D60:  BLX             j_png_write_data
207D64:  MOV             R0, R4
207D66:  MOV             R1, R5
207D68:  MOVS            R2, #1
207D6A:  BLX             j_png_calculate_crc
207D6E:  LDR.W           R0, [R4,#0x1F8]
207D72:  MOVS            R1, #0x82
207D74:  STR.W           R1, [R4,#0x368]
207D78:  MOVS            R2, #4
207D7A:  STRB.W          R0, [SP,#0x28+var_1C+3]
207D7E:  LSRS            R1, R0, #0x10
207D80:  STRB.W          R1, [SP,#0x28+var_1C+1]
207D84:  LSRS            R1, R0, #0x18
207D86:  STRB.W          R1, [SP,#0x28+var_1C]
207D8A:  LSRS            R0, R0, #8
207D8C:  ADD             R1, SP, #0x28+var_1C
207D8E:  STRB.W          R0, [SP,#0x28+var_1C+2]
207D92:  MOV             R0, R4
207D94:  BLX             j_png_write_data
207D98:  LDR             R0, =(__stack_chk_guard_ptr - 0x207DA0)
207D9A:  LDR             R1, [SP,#0x28+var_14]
207D9C:  ADD             R0, PC; __stack_chk_guard_ptr
207D9E:  LDR             R0, [R0]; __stack_chk_guard
207DA0:  LDR             R0, [R0]
207DA2:  SUBS            R0, R0, R1
207DA4:  ITTT EQ
207DA6:  ADDEQ           SP, SP, #0x18
207DA8:  POPEQ.W         {R11}
207DAC:  POPEQ           {R4-R7,PC}
207DAE:  BLX             __stack_chk_fail
