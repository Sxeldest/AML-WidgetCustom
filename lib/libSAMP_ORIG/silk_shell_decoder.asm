; =========================================================
; Game Engine Function: silk_shell_decoder
; Address            : 0xB6A40 - 0xB6D18
; =========================================================

B6A40:  PUSH            {R4-R7,LR}
B6A42:  ADD             R7, SP, #0xC
B6A44:  PUSH.W          {R8-R11}
B6A48:  SUB             SP, SP, #4
B6A4A:  MOV             R6, R2
B6A4C:  MOV             R9, R1
B6A4E:  MOV             R4, R0
B6A50:  CMP             R6, #1
B6A52:  BLT             loc_B6AEA
B6A54:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6A5E)
B6A56:  MOVS            R2, #8
B6A58:  LDR             R1, =(silk_shell_code_table3_ptr - 0xB6A60)
B6A5A:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6A5C:  ADD             R1, PC; silk_shell_code_table3_ptr
B6A5E:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6A60:  LDR             R1, [R1]; silk_shell_code_table3
B6A62:  LDRB            R0, [R0,R6]
B6A64:  ADD             R1, R0
B6A66:  MOV             R0, R9
B6A68:  BLX             j_ec_dec_icdf
B6A6C:  SUBS            R2, R6, R0
B6A6E:  LSLS            R1, R0, #0x10
B6A70:  CMP             R1, #1
B6A72:  SXTH.W          R8, R2
B6A76:  BLT             loc_B6AF4
B6A78:  SXTH            R5, R0
B6A7A:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6A84)
B6A7C:  LDR             R1, =(silk_shell_code_table2_ptr - 0xB6A86)
B6A7E:  MOVS            R2, #8
B6A80:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6A82:  ADD             R1, PC; silk_shell_code_table2_ptr
B6A84:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6A86:  LDR             R1, [R1]; silk_shell_code_table2
B6A88:  LDRB            R0, [R0,R5]
B6A8A:  ADD             R1, R0
B6A8C:  MOV             R0, R9
B6A8E:  BLX             j_ec_dec_icdf
B6A92:  SUBS            R1, R5, R0
B6A94:  SXTH.W          R10, R1
B6A98:  LSLS            R1, R0, #0x10
B6A9A:  CMP             R1, #0
B6A9C:  BLE             loc_B6AF8
B6A9E:  SXTH            R5, R0
B6AA0:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6AAA)
B6AA2:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB6AAC)
B6AA4:  MOVS            R2, #8
B6AA6:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6AA8:  ADD             R1, PC; silk_shell_code_table1_ptr
B6AAA:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6AAC:  LDR             R1, [R1]; silk_shell_code_table1
B6AAE:  LDRB            R0, [R0,R5]
B6AB0:  ADD             R1, R0
B6AB2:  MOV             R0, R9
B6AB4:  BLX             j_ec_dec_icdf
B6AB8:  SUBS            R2, R5, R0
B6ABA:  ADDS            R6, R4, #2
B6ABC:  LSLS            R1, R0, #0x10
B6ABE:  CMP             R1, #1
B6AC0:  SXTH            R5, R2
B6AC2:  BLT             loc_B6AFC
B6AC4:  SXTH.W          R11, R0
B6AC8:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6AD2)
B6ACA:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6AD4)
B6ACC:  MOVS            R2, #8
B6ACE:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6AD0:  ADD             R1, PC; silk_shell_code_table0_ptr
B6AD2:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6AD4:  LDR             R1, [R1]; silk_shell_code_table0
B6AD6:  LDRB.W          R0, [R0,R11]
B6ADA:  ADD             R1, R0
B6ADC:  MOV             R0, R9
B6ADE:  BLX             j_ec_dec_icdf
B6AE2:  STRH            R0, [R4]
B6AE4:  SUB.W           R0, R11, R0
B6AE8:  B               loc_B6B00
B6AEA:  MOV.W           R10, #0
B6AEE:  MOV.W           R8, #0
B6AF2:  B               loc_B6AF8
B6AF4:  MOV.W           R10, #0
B6AF8:  ADDS            R6, R4, #2
B6AFA:  MOVS            R5, #0
B6AFC:  MOVS            R0, #0
B6AFE:  STRH            R0, [R4]
B6B00:  CMP             R5, #1
B6B02:  STRH            R0, [R6]
B6B04:  BLT             loc_B6B24
B6B06:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6B10)
B6B08:  MOVS            R2, #8
B6B0A:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6B12)
B6B0C:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6B0E:  ADD             R1, PC; silk_shell_code_table0_ptr
B6B10:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6B12:  LDR             R1, [R1]; silk_shell_code_table0
B6B14:  LDRB            R0, [R0,R5]
B6B16:  ADD             R1, R0
B6B18:  MOV             R0, R9
B6B1A:  BLX             j_ec_dec_icdf
B6B1E:  STRH            R0, [R4,#4]
B6B20:  SUBS            R0, R5, R0
B6B22:  B               loc_B6B28
B6B24:  MOVS            R0, #0
B6B26:  STRH            R0, [R4,#4]
B6B28:  CMP.W           R10, #0
B6B2C:  STRH            R0, [R4,#6]
B6B2E:  BLE             loc_B6B84
B6B30:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6B3A)
B6B32:  MOVS            R2, #8
B6B34:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB6B3C)
B6B36:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6B38:  ADD             R1, PC; silk_shell_code_table1_ptr
B6B3A:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6B3C:  LDR             R1, [R1]; silk_shell_code_table1
B6B3E:  LDRB.W          R0, [R0,R10]
B6B42:  ADD             R1, R0
B6B44:  MOV             R0, R9
B6B46:  BLX             j_ec_dec_icdf
B6B4A:  SUB.W           R2, R10, R0
B6B4E:  ADD.W           R10, R4, #0xA
B6B52:  ADD.W           R6, R4, #8
B6B56:  LSLS            R1, R0, #0x10
B6B58:  SXTH            R5, R2
B6B5A:  CMP             R1, #1
B6B5C:  BLT             loc_B6B8E
B6B5E:  SXTH.W          R11, R0
B6B62:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6B6C)
B6B64:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6B6E)
B6B66:  MOVS            R2, #8
B6B68:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6B6A:  ADD             R1, PC; silk_shell_code_table0_ptr
B6B6C:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6B6E:  LDR             R1, [R1]; silk_shell_code_table0
B6B70:  LDRB.W          R0, [R0,R11]
B6B74:  ADD             R1, R0
B6B76:  MOV             R0, R9
B6B78:  BLX             j_ec_dec_icdf
B6B7C:  STRH            R0, [R6]
B6B7E:  SUB.W           R0, R11, R0
B6B82:  B               loc_B6B92
B6B84:  ADD.W           R10, R4, #0xA
B6B88:  ADD.W           R6, R4, #8
B6B8C:  MOVS            R5, #0
B6B8E:  MOVS            R0, #0
B6B90:  STRH            R0, [R6]
B6B92:  CMP             R5, #1
B6B94:  STRH.W          R0, [R10]
B6B98:  BLT             loc_B6BB8
B6B9A:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6BA4)
B6B9C:  MOVS            R2, #8
B6B9E:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6BA6)
B6BA0:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6BA2:  ADD             R1, PC; silk_shell_code_table0_ptr
B6BA4:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6BA6:  LDR             R1, [R1]; silk_shell_code_table0
B6BA8:  LDRB            R0, [R0,R5]
B6BAA:  ADD             R1, R0
B6BAC:  MOV             R0, R9
B6BAE:  BLX             j_ec_dec_icdf
B6BB2:  STRH            R0, [R4,#0xC]
B6BB4:  SUBS            R0, R5, R0
B6BB6:  B               loc_B6BBC
B6BB8:  MOVS            R0, #0
B6BBA:  STRH            R0, [R4,#0xC]
B6BBC:  CMP.W           R8, #1
B6BC0:  STRH            R0, [R4,#0xE]
B6BC2:  BLT             loc_B6C3E
B6BC4:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6BCE)
B6BC6:  MOVS            R2, #8
B6BC8:  LDR             R1, =(silk_shell_code_table2_ptr - 0xB6BD0)
B6BCA:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6BCC:  ADD             R1, PC; silk_shell_code_table2_ptr
B6BCE:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6BD0:  LDR             R1, [R1]; silk_shell_code_table2
B6BD2:  LDRB.W          R0, [R0,R8]
B6BD6:  ADD             R1, R0
B6BD8:  MOV             R0, R9
B6BDA:  BLX             j_ec_dec_icdf
B6BDE:  SUB.W           R1, R8, R0
B6BE2:  SXTH.W          R8, R1
B6BE6:  LSLS            R1, R0, #0x10
B6BE8:  CMP             R1, #0
B6BEA:  BLE             loc_B6C42
B6BEC:  SXTH            R5, R0
B6BEE:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6BF8)
B6BF0:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB6BFA)
B6BF2:  MOVS            R2, #8
B6BF4:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6BF6:  ADD             R1, PC; silk_shell_code_table1_ptr
B6BF8:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6BFA:  LDR             R1, [R1]; silk_shell_code_table1
B6BFC:  LDRB            R0, [R0,R5]
B6BFE:  ADD             R1, R0
B6C00:  MOV             R0, R9
B6C02:  BLX             j_ec_dec_icdf
B6C06:  SUBS            R2, R5, R0
B6C08:  ADD.W           R10, R4, #0x12
B6C0C:  ADD.W           R6, R4, #0x10
B6C10:  LSLS            R1, R0, #0x10
B6C12:  SXTH            R5, R2
B6C14:  CMP             R1, #1
B6C16:  BLT             loc_B6C4C
B6C18:  SXTH.W          R11, R0
B6C1C:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6C26)
B6C1E:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6C28)
B6C20:  MOVS            R2, #8
B6C22:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6C24:  ADD             R1, PC; silk_shell_code_table0_ptr
B6C26:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6C28:  LDR             R1, [R1]; silk_shell_code_table0
B6C2A:  LDRB.W          R0, [R0,R11]
B6C2E:  ADD             R1, R0
B6C30:  MOV             R0, R9
B6C32:  BLX             j_ec_dec_icdf
B6C36:  STRH            R0, [R6]
B6C38:  SUB.W           R0, R11, R0
B6C3C:  B               loc_B6C50
B6C3E:  MOV.W           R8, #0
B6C42:  ADD.W           R10, R4, #0x12
B6C46:  ADD.W           R6, R4, #0x10
B6C4A:  MOVS            R5, #0
B6C4C:  MOVS            R0, #0
B6C4E:  STRH            R0, [R6]
B6C50:  CMP             R5, #1
B6C52:  STRH.W          R0, [R10]
B6C56:  BLT             loc_B6C76
B6C58:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6C62)
B6C5A:  MOVS            R2, #8
B6C5C:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6C64)
B6C5E:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6C60:  ADD             R1, PC; silk_shell_code_table0_ptr
B6C62:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6C64:  LDR             R1, [R1]; silk_shell_code_table0
B6C66:  LDRB            R0, [R0,R5]
B6C68:  ADD             R1, R0
B6C6A:  MOV             R0, R9
B6C6C:  BLX             j_ec_dec_icdf
B6C70:  STRH            R0, [R4,#0x14]
B6C72:  SUBS            R0, R5, R0
B6C74:  B               loc_B6C7A
B6C76:  MOVS            R0, #0
B6C78:  STRH            R0, [R4,#0x14]
B6C7A:  CMP.W           R8, #0
B6C7E:  STRH            R0, [R4,#0x16]
B6C80:  BLE             loc_B6CD6
B6C82:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6C8C)
B6C84:  MOVS            R2, #8
B6C86:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB6C8E)
B6C88:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6C8A:  ADD             R1, PC; silk_shell_code_table1_ptr
B6C8C:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6C8E:  LDR             R1, [R1]; silk_shell_code_table1
B6C90:  LDRB.W          R0, [R0,R8]
B6C94:  ADD             R1, R0
B6C96:  MOV             R0, R9
B6C98:  BLX             j_ec_dec_icdf
B6C9C:  SUB.W           R2, R8, R0
B6CA0:  ADD.W           R8, R4, #0x1A
B6CA4:  ADD.W           R6, R4, #0x18
B6CA8:  LSLS            R1, R0, #0x10
B6CAA:  SXTH            R5, R2
B6CAC:  CMP             R1, #1
B6CAE:  BLT             loc_B6CE0
B6CB0:  SXTH.W          R10, R0
B6CB4:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6CBE)
B6CB6:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6CC0)
B6CB8:  MOVS            R2, #8
B6CBA:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6CBC:  ADD             R1, PC; silk_shell_code_table0_ptr
B6CBE:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6CC0:  LDR             R1, [R1]; silk_shell_code_table0
B6CC2:  LDRB.W          R0, [R0,R10]
B6CC6:  ADD             R1, R0
B6CC8:  MOV             R0, R9
B6CCA:  BLX             j_ec_dec_icdf
B6CCE:  STRH            R0, [R6]
B6CD0:  SUB.W           R0, R10, R0
B6CD4:  B               loc_B6CE4
B6CD6:  ADD.W           R8, R4, #0x1A
B6CDA:  ADD.W           R6, R4, #0x18
B6CDE:  MOVS            R5, #0
B6CE0:  MOVS            R0, #0
B6CE2:  STRH            R0, [R6]
B6CE4:  CMP             R5, #1
B6CE6:  STRH.W          R0, [R8]
B6CEA:  BLT             loc_B6D0A
B6CEC:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6CF6)
B6CEE:  MOVS            R2, #8
B6CF0:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6CF8)
B6CF2:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6CF4:  ADD             R1, PC; silk_shell_code_table0_ptr
B6CF6:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6CF8:  LDR             R1, [R1]; silk_shell_code_table0
B6CFA:  LDRB            R0, [R0,R5]
B6CFC:  ADD             R1, R0
B6CFE:  MOV             R0, R9
B6D00:  BLX             j_ec_dec_icdf
B6D04:  STRH            R0, [R4,#0x1C]
B6D06:  SUBS            R0, R5, R0
B6D08:  B               loc_B6D0E
B6D0A:  MOVS            R0, #0
B6D0C:  STRH            R0, [R4,#0x1C]
B6D0E:  STRH            R0, [R4,#0x1E]
B6D10:  ADD             SP, SP, #4
B6D12:  POP.W           {R8-R11}
B6D16:  POP             {R4-R7,PC}
