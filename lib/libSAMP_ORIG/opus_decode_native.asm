; =========================================================
; Game Engine Function: opus_decode_native
; Address            : 0xB0C50 - 0xB0F54
; =========================================================

B0C50:  PUSH            {R4-R7,LR}
B0C52:  ADD             R7, SP, #0xC
B0C54:  PUSH.W          {R8-R11}
B0C58:  SUB             SP, SP, #0x94
B0C5A:  MOV             R8, R0
B0C5C:  LDR             R0, =(__stack_chk_guard_ptr - 0xB0C68)
B0C5E:  LDR.W           R10, [R7,#arg_4]
B0C62:  MOV             R11, R3
B0C64:  ADD             R0, PC; __stack_chk_guard_ptr
B0C66:  MOV             R5, R2
B0C68:  MOV             R6, R1
B0C6A:  CMP.W           R10, #1
B0C6E:  LDR             R0, [R0]; __stack_chk_guard
B0C70:  LDR             R0, [R0]
B0C72:  STR             R0, [SP,#0xB0+var_20]
B0C74:  BHI.W           loc_B0DBE
B0C78:  LDR.W           R9, [R7,#arg_0]
B0C7C:  CMP             R6, #0
B0C7E:  IT NE
B0C80:  CMPNE           R5, #0
B0C82:  BEQ             loc_B0C8A
B0C84:  CMP.W           R10, #0
B0C88:  BEQ             loc_B0CAC
B0C8A:  LDR.W           R0, [R8,#0xC]
B0C8E:  MOV             R1, #0x51EB851F
B0C96:  SMMUL.W         R0, R0, R1
B0C9A:  ASRS            R1, R0, #7
B0C9C:  ADD.W           R1, R1, R0,LSR#31
B0CA0:  MOV             R0, R9
B0CA2:  BLX             sub_1090B0
B0CA6:  CMP             R1, #0
B0CA8:  BNE.W           loc_B0DBE
B0CAC:  CMP             R6, #0
B0CAE:  IT NE
B0CB0:  CMPNE           R5, #0
B0CB2:  BNE             loc_B0CEA
B0CB4:  MOVS            R4, #0
B0CB6:  MOVS            R5, #0
B0CB8:  LDR.W           R0, [R8,#8]
B0CBC:  SUB.W           R1, R9, R5
B0CC0:  STRD.W          R1, R4, [SP,#0xB0+var_B0]
B0CC4:  MOVS            R1, #0
B0CC6:  MOVS            R2, #0
B0CC8:  MULS            R0, R5
B0CCA:  ADD.W           R3, R11, R0,LSL#1
B0CCE:  MOV             R0, R8
B0CD0:  BL              sub_B0F5C
B0CD4:  MOV             R6, R0
B0CD6:  CMP             R6, #0
B0CD8:  IT GE
B0CDA:  ADDGE           R5, R5, R6
B0CDC:  BLT             loc_B0DC2
B0CDE:  CMP             R5, R9
B0CE0:  BLT             loc_B0CB8
B0CE2:  STR.W           R5, [R8,#0x48]
B0CE6:  MOV             R6, R5
B0CE8:  B               loc_B0DC2
B0CEA:  BLT             loc_B0DBE
B0CEC:  LDRB            R0, [R6]
B0CEE:  TST.W           R0, #0x80
B0CF2:  BNE             loc_B0D16
B0CF4:  AND.W           R1, R0, #0x60 ; '`'
B0CF8:  MOV.W           R2, #0x3E8
B0CFC:  CMP             R1, #0x60 ; '`'
B0CFE:  IT EQ
B0D00:  MOVWEQ          R2, #0x3E9
B0D04:  STR             R2, [SP,#0xB0+var_90]
B0D06:  BNE             loc_B0D30
B0D08:  LSRS            R1, R0, #4
B0D0A:  MOV.W           R0, #0x228
B0D0E:  BFI.W           R1, R0, #1, #0x1F
B0D12:  STR             R1, [SP,#0xB0+var_98]
B0D14:  B               loc_B0D3A
B0D16:  UBFX.W          R0, R0, #5, #2
B0D1A:  ADDW            R1, R0, #0x44E
B0D1E:  CMP             R0, #0
B0D20:  IT EQ
B0D22:  MOVWEQ          R1, #0x44D
B0D26:  MOVW            R0, #0x3EA
B0D2A:  STR             R1, [SP,#0xB0+var_98]
B0D2C:  STR             R0, [SP,#0xB0+var_90]
B0D2E:  B               loc_B0D3A
B0D30:  UBFX.W          R0, R0, #5, #2
B0D34:  ADDW            R0, R0, #0x44D
B0D38:  STR             R0, [SP,#0xB0+var_98]
B0D3A:  LDR.W           R1, [R8,#0xC]
B0D3E:  MOV             R0, R6
B0D40:  BLX             j_opus_packet_get_samples_per_frame
B0D44:  ADD             R2, SP, #0xB0+var_80
B0D46:  STR             R0, [SP,#0xB0+var_8C]
B0D48:  MOVS            R1, #0
B0D4A:  LDRB            R4, [R6]
B0D4C:  STRD.W          R1, R2, [SP,#0xB0+var_B0]
B0D50:  ADD             R0, SP, #0xB0+var_84
B0D52:  LDR             R2, [R7,#arg_8]
B0D54:  SUB.W           R3, R7, #-var_85
B0D58:  STR             R0, [SP,#0xB0+var_A8]
B0D5A:  MOV             R1, R5
B0D5C:  LDR             R0, [R7,#arg_C]
B0D5E:  STR             R0, [SP,#0xB0+var_A4]
B0D60:  MOV             R0, R6
B0D62:  BLX             j_opus_packet_parse_impl
B0D66:  MOV             R3, R0
B0D68:  CMP             R3, #0
B0D6A:  BLT             loc_B0DDE
B0D6C:  AND.W           R0, R4, #4
B0D70:  MOVS            R1, #1
B0D72:  CMP.W           R10, #0
B0D76:  ADD.W           R2, R1, R0,LSR#2
B0D7A:  LDR             R0, [SP,#0xB0+var_84]
B0D7C:  ADD.W           R12, R6, R0
B0D80:  BEQ             loc_B0DE2
B0D82:  LDR             R1, [SP,#0xB0+var_90]
B0D84:  MOVW            R0, #0x3EA
B0D88:  LDR             R3, [SP,#0xB0+var_8C]
B0D8A:  CMP             R1, R0
B0D8C:  BEQ             loc_B0D9E
B0D8E:  CMP             R3, R9
B0D90:  BGT             loc_B0D9E
B0D92:  LDR.W           R0, [R8,#0x38]
B0D96:  MOVW            R1, #0x3EA
B0D9A:  CMP             R0, R1
B0D9C:  BNE             loc_B0E84
B0D9E:  LDR.W           R0, [R8,#0xC]
B0DA2:  MOV             R1, #0x51EB851F
B0DAA:  SMMUL.W         R0, R0, R1
B0DAE:  ASRS            R1, R0, #7
B0DB0:  ADD.W           R1, R1, R0,LSR#31
B0DB4:  MOV             R0, R9
B0DB6:  BLX             sub_1090B0
B0DBA:  CMP             R1, #0
B0DBC:  BEQ             loc_B0E54
B0DBE:  MOV.W           R6, #0xFFFFFFFF
B0DC2:  LDR             R0, =(__stack_chk_guard_ptr - 0xB0DCA)
B0DC4:  LDR             R1, [SP,#0xB0+var_20]
B0DC6:  ADD             R0, PC; __stack_chk_guard_ptr
B0DC8:  LDR             R0, [R0]; __stack_chk_guard
B0DCA:  LDR             R0, [R0]
B0DCC:  SUBS            R0, R0, R1
B0DCE:  ITTTT EQ
B0DD0:  MOVEQ           R0, R6
B0DD2:  ADDEQ           SP, SP, #0x94
B0DD4:  POPEQ.W         {R8-R11}
B0DD8:  POPEQ           {R4-R7,PC}
B0DDA:  BLX             __stack_chk_fail
B0DDE:  MOV             R6, R3
B0DE0:  B               loc_B0DC2
B0DE2:  LDR             R1, [SP,#0xB0+var_8C]
B0DE4:  MUL.W           R0, R3, R1
B0DE8:  CMP             R0, R9
B0DEA:  BLE             loc_B0DF2
B0DEC:  MOV             R6, #0xFFFFFFFE
B0DF0:  B               loc_B0DC2
B0DF2:  STR.W           R1, [R8,#0x40]
B0DF6:  CMP             R3, #1
B0DF8:  STR.W           R2, [R8,#0x30]
B0DFC:  LDR             R0, [SP,#0xB0+var_98]
B0DFE:  STR.W           R0, [R8,#0x34]
B0E02:  LDR             R0, [SP,#0xB0+var_90]
B0E04:  STR.W           R0, [R8,#0x38]
B0E08:  BLT             loc_B0EBC
B0E0A:  ADD             R5, SP, #0xB0+var_80
B0E0C:  MOV.W           R10, #0
B0E10:  MOVS            R6, #0
B0E12:  STR             R3, [SP,#0xB0+var_94]
B0E14:  LDR.W           R0, [R8,#8]
B0E18:  SUB.W           R1, R9, R6
B0E1C:  LDRSH.W         R2, [R5,R10,LSL#1]
B0E20:  MOV             R4, R9
B0E22:  STR             R1, [SP,#0xB0+var_B0]
B0E24:  MULS            R0, R6
B0E26:  MOVS            R1, #0
B0E28:  STR             R1, [SP,#0xB0+var_AC]
B0E2A:  MOV             R1, R12
B0E2C:  MOV             R9, R12
B0E2E:  ADD.W           R3, R11, R0,LSL#1
B0E32:  MOV             R0, R8
B0E34:  BL              sub_B0F5C
B0E38:  CMP             R0, #0
B0E3A:  BLT             loc_B0EC4
B0E3C:  LDRSH.W         R1, [R5,R10,LSL#1]
B0E40:  ADD             R6, R0
B0E42:  LDR             R3, [SP,#0xB0+var_94]
B0E44:  ADD.W           R10, R10, #1
B0E48:  ADD             R9, R1
B0E4A:  CMP             R10, R3
B0E4C:  MOV             R12, R9
B0E4E:  MOV             R9, R4
B0E50:  BLT             loc_B0E14
B0E52:  B               loc_B0EBE
B0E54:  MOVS            R4, #0
B0E56:  MOVS            R5, #0
B0E58:  LDR.W           R0, [R8,#8]
B0E5C:  SUB.W           R1, R9, R5
B0E60:  STRD.W          R1, R4, [SP,#0xB0+var_B0]
B0E64:  MOVS            R1, #0
B0E66:  MOVS            R2, #0
B0E68:  MULS            R0, R5
B0E6A:  ADD.W           R3, R11, R0,LSL#1
B0E6E:  MOV             R0, R8
B0E70:  BL              sub_B0F5C
B0E74:  MOV             R6, R0
B0E76:  CMP             R6, #0
B0E78:  IT GE
B0E7A:  ADDGE           R5, R5, R6
B0E7C:  BLT             loc_B0DC2
B0E7E:  CMP             R5, R9
B0E80:  BLT             loc_B0E58
B0E82:  B               loc_B0CE2
B0E84:  SUBS.W          R5, R9, R3
B0E88:  BEQ             loc_B0F10
B0E8A:  STR.W           R12, [SP,#0xB0+var_9C]
B0E8E:  MOVW            R1, #0x851F
B0E92:  STR             R2, [SP,#0xB0+var_94]
B0E94:  MOVT            R1, #0x51EB
B0E98:  LDR.W           R0, [R8,#0xC]
B0E9C:  LDR.W           R4, [R8,#0x48]
B0EA0:  SMMUL.W         R0, R0, R1
B0EA4:  ASRS            R1, R0, #7
B0EA6:  ADD.W           R1, R1, R0,LSR#31
B0EAA:  MOV             R0, R5
B0EAC:  BLX             sub_1090B0
B0EB0:  CBZ             R1, loc_B0EC8
B0EB2:  MOV.W           R6, #0xFFFFFFFF
B0EB6:  STR.W           R4, [R8,#0x48]
B0EBA:  B               loc_B0DC2
B0EBC:  MOVS            R6, #0
B0EBE:  STR.W           R6, [R8,#0x48]
B0EC2:  B               loc_B0DC2
B0EC4:  MOV             R6, R0
B0EC6:  B               loc_B0DC2
B0EC8:  STR             R4, [SP,#0xB0+var_A0]
B0ECA:  MOVS            R4, #0
B0ECC:  MOV.W           R10, #0
B0ED0:  LDR.W           R0, [R8,#8]
B0ED4:  SUB.W           R1, R5, R10
B0ED8:  STRD.W          R1, R4, [SP,#0xB0+var_B0]
B0EDC:  MOVS            R1, #0
B0EDE:  MOVS            R2, #0
B0EE0:  MUL.W           R0, R0, R10
B0EE4:  ADD.W           R3, R11, R0,LSL#1
B0EE8:  MOV             R0, R8
B0EEA:  BL              sub_B0F5C
B0EEE:  MOV             R6, R0
B0EF0:  CMP             R6, #0
B0EF2:  IT GE
B0EF4:  ADDGE           R10, R6
B0EF6:  BLT             loc_B0F02
B0EF8:  CMP             R10, R5
B0EFA:  BLT             loc_B0ED0
B0EFC:  MOV             R6, R10
B0EFE:  STR.W           R10, [R8,#0x48]
B0F02:  LDR             R3, [SP,#0xB0+var_8C]
B0F04:  CMP.W           R6, #0xFFFFFFFF
B0F08:  LDR             R2, [SP,#0xB0+var_94]
B0F0A:  LDRD.W          R4, R12, [SP,#0xB0+var_A0]
B0F0E:  BLE             loc_B0F4E
B0F10:  LDR.W           R0, [R8,#8]
B0F14:  STR.W           R3, [R8,#0x40]
B0F18:  STR.W           R2, [R8,#0x30]
B0F1C:  MULS            R0, R5
B0F1E:  LDR             R1, [SP,#0xB0+var_98]
B0F20:  STR.W           R1, [R8,#0x34]
B0F24:  LDR             R1, [SP,#0xB0+var_90]
B0F26:  STR.W           R1, [R8,#0x38]
B0F2A:  MOVS            R1, #1
B0F2C:  LDRSH.W         R2, [SP,#0xB0+var_80]
B0F30:  STRD.W          R3, R1, [SP,#0xB0+var_B0]
B0F34:  MOV             R1, R12
B0F36:  ADD.W           R3, R11, R0,LSL#1
B0F3A:  MOV             R0, R8
B0F3C:  BL              sub_B0F5C
B0F40:  MOV             R6, R0
B0F42:  CMP             R6, #0
B0F44:  ITT GE
B0F46:  STRGE.W         R9, [R8,#0x48]
B0F4A:  MOVGE           R6, R9
B0F4C:  B               loc_B0DC2
B0F4E:  STR.W           R4, [R8,#0x48]
B0F52:  B               loc_B0DC2
