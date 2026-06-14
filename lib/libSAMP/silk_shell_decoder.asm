; =========================================================
; Game Engine Function: silk_shell_decoder
; Address            : 0x194C64 - 0x194F3C
; =========================================================

194C64:  PUSH            {R4-R7,LR}
194C66:  ADD             R7, SP, #0xC
194C68:  PUSH.W          {R8-R11}
194C6C:  SUB             SP, SP, #4
194C6E:  MOV             R6, R2
194C70:  MOV             R9, R1
194C72:  MOV             R4, R0
194C74:  CMP             R6, #1
194C76:  BLT             loc_194D0E
194C78:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194C82)
194C7A:  MOVS            R2, #8
194C7C:  LDR             R1, =(silk_shell_code_table3_ptr - 0x194C84)
194C7E:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194C80:  ADD             R1, PC; silk_shell_code_table3_ptr
194C82:  LDR             R0, [R0]; silk_shell_code_table_offsets
194C84:  LDR             R1, [R1]; silk_shell_code_table3
194C86:  LDRB            R0, [R0,R6]
194C88:  ADD             R1, R0
194C8A:  MOV             R0, R9
194C8C:  BLX             j_ec_dec_icdf
194C90:  SUBS            R2, R6, R0
194C92:  LSLS            R1, R0, #0x10
194C94:  CMP             R1, #1
194C96:  SXTH.W          R8, R2
194C9A:  BLT             loc_194D18
194C9C:  SXTH            R5, R0
194C9E:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194CA8)
194CA0:  LDR             R1, =(silk_shell_code_table2_ptr - 0x194CAA)
194CA2:  MOVS            R2, #8
194CA4:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194CA6:  ADD             R1, PC; silk_shell_code_table2_ptr
194CA8:  LDR             R0, [R0]; silk_shell_code_table_offsets
194CAA:  LDR             R1, [R1]; silk_shell_code_table2
194CAC:  LDRB            R0, [R0,R5]
194CAE:  ADD             R1, R0
194CB0:  MOV             R0, R9
194CB2:  BLX             j_ec_dec_icdf
194CB6:  SUBS            R1, R5, R0
194CB8:  SXTH.W          R10, R1
194CBC:  LSLS            R1, R0, #0x10
194CBE:  CMP             R1, #0
194CC0:  BLE             loc_194D1C
194CC2:  SXTH            R5, R0
194CC4:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194CCE)
194CC6:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194CD0)
194CC8:  MOVS            R2, #8
194CCA:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194CCC:  ADD             R1, PC; silk_shell_code_table1_ptr
194CCE:  LDR             R0, [R0]; silk_shell_code_table_offsets
194CD0:  LDR             R1, [R1]; silk_shell_code_table1
194CD2:  LDRB            R0, [R0,R5]
194CD4:  ADD             R1, R0
194CD6:  MOV             R0, R9
194CD8:  BLX             j_ec_dec_icdf
194CDC:  SUBS            R2, R5, R0
194CDE:  ADDS            R6, R4, #2
194CE0:  LSLS            R1, R0, #0x10
194CE2:  CMP             R1, #1
194CE4:  SXTH            R5, R2
194CE6:  BLT             loc_194D20
194CE8:  SXTH.W          R11, R0
194CEC:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194CF6)
194CEE:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194CF8)
194CF0:  MOVS            R2, #8
194CF2:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194CF4:  ADD             R1, PC; silk_shell_code_table0_ptr
194CF6:  LDR             R0, [R0]; silk_shell_code_table_offsets
194CF8:  LDR             R1, [R1]; silk_shell_code_table0
194CFA:  LDRB.W          R0, [R0,R11]
194CFE:  ADD             R1, R0
194D00:  MOV             R0, R9
194D02:  BLX             j_ec_dec_icdf
194D06:  STRH            R0, [R4]
194D08:  SUB.W           R0, R11, R0
194D0C:  B               loc_194D24
194D0E:  MOV.W           R10, #0
194D12:  MOV.W           R8, #0
194D16:  B               loc_194D1C
194D18:  MOV.W           R10, #0
194D1C:  ADDS            R6, R4, #2
194D1E:  MOVS            R5, #0
194D20:  MOVS            R0, #0
194D22:  STRH            R0, [R4]
194D24:  CMP             R5, #1
194D26:  STRH            R0, [R6]
194D28:  BLT             loc_194D48
194D2A:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194D34)
194D2C:  MOVS            R2, #8
194D2E:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194D36)
194D30:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194D32:  ADD             R1, PC; silk_shell_code_table0_ptr
194D34:  LDR             R0, [R0]; silk_shell_code_table_offsets
194D36:  LDR             R1, [R1]; silk_shell_code_table0
194D38:  LDRB            R0, [R0,R5]
194D3A:  ADD             R1, R0
194D3C:  MOV             R0, R9
194D3E:  BLX             j_ec_dec_icdf
194D42:  STRH            R0, [R4,#4]
194D44:  SUBS            R0, R5, R0
194D46:  B               loc_194D4C
194D48:  MOVS            R0, #0
194D4A:  STRH            R0, [R4,#4]
194D4C:  CMP.W           R10, #0
194D50:  STRH            R0, [R4,#6]
194D52:  BLE             loc_194DA8
194D54:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194D5E)
194D56:  MOVS            R2, #8
194D58:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194D60)
194D5A:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194D5C:  ADD             R1, PC; silk_shell_code_table1_ptr
194D5E:  LDR             R0, [R0]; silk_shell_code_table_offsets
194D60:  LDR             R1, [R1]; silk_shell_code_table1
194D62:  LDRB.W          R0, [R0,R10]
194D66:  ADD             R1, R0
194D68:  MOV             R0, R9
194D6A:  BLX             j_ec_dec_icdf
194D6E:  SUB.W           R2, R10, R0
194D72:  ADD.W           R10, R4, #0xA
194D76:  ADD.W           R6, R4, #8
194D7A:  LSLS            R1, R0, #0x10
194D7C:  SXTH            R5, R2
194D7E:  CMP             R1, #1
194D80:  BLT             loc_194DB2
194D82:  SXTH.W          R11, R0
194D86:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194D90)
194D88:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194D92)
194D8A:  MOVS            R2, #8
194D8C:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194D8E:  ADD             R1, PC; silk_shell_code_table0_ptr
194D90:  LDR             R0, [R0]; silk_shell_code_table_offsets
194D92:  LDR             R1, [R1]; silk_shell_code_table0
194D94:  LDRB.W          R0, [R0,R11]
194D98:  ADD             R1, R0
194D9A:  MOV             R0, R9
194D9C:  BLX             j_ec_dec_icdf
194DA0:  STRH            R0, [R6]
194DA2:  SUB.W           R0, R11, R0
194DA6:  B               loc_194DB6
194DA8:  ADD.W           R10, R4, #0xA
194DAC:  ADD.W           R6, R4, #8
194DB0:  MOVS            R5, #0
194DB2:  MOVS            R0, #0
194DB4:  STRH            R0, [R6]
194DB6:  CMP             R5, #1
194DB8:  STRH.W          R0, [R10]
194DBC:  BLT             loc_194DDC
194DBE:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194DC8)
194DC0:  MOVS            R2, #8
194DC2:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194DCA)
194DC4:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194DC6:  ADD             R1, PC; silk_shell_code_table0_ptr
194DC8:  LDR             R0, [R0]; silk_shell_code_table_offsets
194DCA:  LDR             R1, [R1]; silk_shell_code_table0
194DCC:  LDRB            R0, [R0,R5]
194DCE:  ADD             R1, R0
194DD0:  MOV             R0, R9
194DD2:  BLX             j_ec_dec_icdf
194DD6:  STRH            R0, [R4,#0xC]
194DD8:  SUBS            R0, R5, R0
194DDA:  B               loc_194DE0
194DDC:  MOVS            R0, #0
194DDE:  STRH            R0, [R4,#0xC]
194DE0:  CMP.W           R8, #1
194DE4:  STRH            R0, [R4,#0xE]
194DE6:  BLT             loc_194E62
194DE8:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194DF2)
194DEA:  MOVS            R2, #8
194DEC:  LDR             R1, =(silk_shell_code_table2_ptr - 0x194DF4)
194DEE:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194DF0:  ADD             R1, PC; silk_shell_code_table2_ptr
194DF2:  LDR             R0, [R0]; silk_shell_code_table_offsets
194DF4:  LDR             R1, [R1]; silk_shell_code_table2
194DF6:  LDRB.W          R0, [R0,R8]
194DFA:  ADD             R1, R0
194DFC:  MOV             R0, R9
194DFE:  BLX             j_ec_dec_icdf
194E02:  SUB.W           R1, R8, R0
194E06:  SXTH.W          R8, R1
194E0A:  LSLS            R1, R0, #0x10
194E0C:  CMP             R1, #0
194E0E:  BLE             loc_194E66
194E10:  SXTH            R5, R0
194E12:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194E1C)
194E14:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194E1E)
194E16:  MOVS            R2, #8
194E18:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194E1A:  ADD             R1, PC; silk_shell_code_table1_ptr
194E1C:  LDR             R0, [R0]; silk_shell_code_table_offsets
194E1E:  LDR             R1, [R1]; silk_shell_code_table1
194E20:  LDRB            R0, [R0,R5]
194E22:  ADD             R1, R0
194E24:  MOV             R0, R9
194E26:  BLX             j_ec_dec_icdf
194E2A:  SUBS            R2, R5, R0
194E2C:  ADD.W           R10, R4, #0x12
194E30:  ADD.W           R6, R4, #0x10
194E34:  LSLS            R1, R0, #0x10
194E36:  SXTH            R5, R2
194E38:  CMP             R1, #1
194E3A:  BLT             loc_194E70
194E3C:  SXTH.W          R11, R0
194E40:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194E4A)
194E42:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194E4C)
194E44:  MOVS            R2, #8
194E46:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194E48:  ADD             R1, PC; silk_shell_code_table0_ptr
194E4A:  LDR             R0, [R0]; silk_shell_code_table_offsets
194E4C:  LDR             R1, [R1]; silk_shell_code_table0
194E4E:  LDRB.W          R0, [R0,R11]
194E52:  ADD             R1, R0
194E54:  MOV             R0, R9
194E56:  BLX             j_ec_dec_icdf
194E5A:  STRH            R0, [R6]
194E5C:  SUB.W           R0, R11, R0
194E60:  B               loc_194E74
194E62:  MOV.W           R8, #0
194E66:  ADD.W           R10, R4, #0x12
194E6A:  ADD.W           R6, R4, #0x10
194E6E:  MOVS            R5, #0
194E70:  MOVS            R0, #0
194E72:  STRH            R0, [R6]
194E74:  CMP             R5, #1
194E76:  STRH.W          R0, [R10]
194E7A:  BLT             loc_194E9A
194E7C:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194E86)
194E7E:  MOVS            R2, #8
194E80:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194E88)
194E82:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194E84:  ADD             R1, PC; silk_shell_code_table0_ptr
194E86:  LDR             R0, [R0]; silk_shell_code_table_offsets
194E88:  LDR             R1, [R1]; silk_shell_code_table0
194E8A:  LDRB            R0, [R0,R5]
194E8C:  ADD             R1, R0
194E8E:  MOV             R0, R9
194E90:  BLX             j_ec_dec_icdf
194E94:  STRH            R0, [R4,#0x14]
194E96:  SUBS            R0, R5, R0
194E98:  B               loc_194E9E
194E9A:  MOVS            R0, #0
194E9C:  STRH            R0, [R4,#0x14]
194E9E:  CMP.W           R8, #0
194EA2:  STRH            R0, [R4,#0x16]
194EA4:  BLE             loc_194EFA
194EA6:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194EB0)
194EA8:  MOVS            R2, #8
194EAA:  LDR             R1, =(silk_shell_code_table1_ptr - 0x194EB2)
194EAC:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194EAE:  ADD             R1, PC; silk_shell_code_table1_ptr
194EB0:  LDR             R0, [R0]; silk_shell_code_table_offsets
194EB2:  LDR             R1, [R1]; silk_shell_code_table1
194EB4:  LDRB.W          R0, [R0,R8]
194EB8:  ADD             R1, R0
194EBA:  MOV             R0, R9
194EBC:  BLX             j_ec_dec_icdf
194EC0:  SUB.W           R2, R8, R0
194EC4:  ADD.W           R8, R4, #0x1A
194EC8:  ADD.W           R6, R4, #0x18
194ECC:  LSLS            R1, R0, #0x10
194ECE:  SXTH            R5, R2
194ED0:  CMP             R1, #1
194ED2:  BLT             loc_194F04
194ED4:  SXTH.W          R10, R0
194ED8:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194EE2)
194EDA:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194EE4)
194EDC:  MOVS            R2, #8
194EDE:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194EE0:  ADD             R1, PC; silk_shell_code_table0_ptr
194EE2:  LDR             R0, [R0]; silk_shell_code_table_offsets
194EE4:  LDR             R1, [R1]; silk_shell_code_table0
194EE6:  LDRB.W          R0, [R0,R10]
194EEA:  ADD             R1, R0
194EEC:  MOV             R0, R9
194EEE:  BLX             j_ec_dec_icdf
194EF2:  STRH            R0, [R6]
194EF4:  SUB.W           R0, R10, R0
194EF8:  B               loc_194F08
194EFA:  ADD.W           R8, R4, #0x1A
194EFE:  ADD.W           R6, R4, #0x18
194F02:  MOVS            R5, #0
194F04:  MOVS            R0, #0
194F06:  STRH            R0, [R6]
194F08:  CMP             R5, #1
194F0A:  STRH.W          R0, [R8]
194F0E:  BLT             loc_194F2E
194F10:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0x194F1A)
194F12:  MOVS            R2, #8
194F14:  LDR             R1, =(silk_shell_code_table0_ptr - 0x194F1C)
194F16:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
194F18:  ADD             R1, PC; silk_shell_code_table0_ptr
194F1A:  LDR             R0, [R0]; silk_shell_code_table_offsets
194F1C:  LDR             R1, [R1]; silk_shell_code_table0
194F1E:  LDRB            R0, [R0,R5]
194F20:  ADD             R1, R0
194F22:  MOV             R0, R9
194F24:  BLX             j_ec_dec_icdf
194F28:  STRH            R0, [R4,#0x1C]
194F2A:  SUBS            R0, R5, R0
194F2C:  B               loc_194F32
194F2E:  MOVS            R0, #0
194F30:  STRH            R0, [R4,#0x1C]
194F32:  STRH            R0, [R4,#0x1E]
194F34:  ADD             SP, SP, #4
194F36:  POP.W           {R8-R11}
194F3A:  POP             {R4-R7,PC}
