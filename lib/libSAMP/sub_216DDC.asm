; =========================================================
; Game Engine Function: sub_216DDC
; Address            : 0x216DDC - 0x216E86
; =========================================================

216DDC:  PUSH            {R4,R5,R7,LR}
216DDE:  ADD             R7, SP, #8
216DE0:  SUB             SP, SP, #0x18
216DE2:  MOV             R5, R0
216DE4:  LDR             R0, =(__stack_chk_guard_ptr - 0x216DEA)
216DE6:  ADD             R0, PC; __stack_chk_guard_ptr
216DE8:  LDR             R0, [R0]; __stack_chk_guard
216DEA:  LDR             R0, [R0]
216DEC:  STR             R0, [SP,#0x20+var_C]
216DEE:  LDRD.W          R0, R1, [R5]
216DF2:  CMP             R0, R1
216DF4:  BEQ             loc_216E6C
216DF6:  LDRB            R1, [R0]
216DF8:  CMP             R1, #0x68 ; 'h'
216DFA:  BNE             loc_216E2A
216DFC:  ADDS            R0, #1
216DFE:  STR             R0, [R5]
216E00:  ADD             R0, SP, #0x20+var_14
216E02:  MOV             R1, R5
216E04:  MOVS            R2, #1
216E06:  MOVS            R4, #1
216E08:  BL              sub_215BB4
216E0C:  LDRD.W          R0, R1, [SP,#0x20+var_14]
216E10:  CMP             R0, R1
216E12:  BEQ             loc_216E6E
216E14:  LDRD.W          R0, R1, [R5]
216E18:  CMP             R0, R1
216E1A:  BEQ             loc_216E6C
216E1C:  LDRB            R1, [R0]
216E1E:  CMP             R1, #0x5F ; '_'
216E20:  BNE             loc_216E6C
216E22:  ADDS            R0, #1
216E24:  STR             R0, [R5]
216E26:  MOVS            R4, #0
216E28:  B               loc_216E6E
216E2A:  LDRB            R1, [R0]
216E2C:  CMP             R1, #0x76 ; 'v'
216E2E:  BNE             loc_216E6C
216E30:  ADDS            R0, #1
216E32:  STR             R0, [R5]
216E34:  ADD             R0, SP, #0x20+var_14
216E36:  MOV             R1, R5
216E38:  MOVS            R2, #1
216E3A:  MOVS            R4, #1
216E3C:  BL              sub_215BB4
216E40:  LDRD.W          R0, R1, [SP,#0x20+var_14]
216E44:  CMP             R0, R1
216E46:  BEQ             loc_216E6E
216E48:  LDRD.W          R0, R1, [R5]
216E4C:  CMP             R0, R1
216E4E:  BEQ             loc_216E6C
216E50:  LDRB            R1, [R0]
216E52:  CMP             R1, #0x5F ; '_'
216E54:  BNE             loc_216E6C
216E56:  ADDS            R0, #1
216E58:  STR             R0, [R5]
216E5A:  ADD             R0, SP, #0x20+var_1C
216E5C:  MOV             R1, R5
216E5E:  MOVS            R2, #1
216E60:  MOVS            R4, #1
216E62:  BL              sub_215BB4
216E66:  LDRD.W          R0, R1, [SP,#0x20+var_1C]
216E6A:  B               loc_216E10
216E6C:  MOVS            R4, #1
216E6E:  LDR             R0, [SP,#0x20+var_C]
216E70:  LDR             R1, =(__stack_chk_guard_ptr - 0x216E76)
216E72:  ADD             R1, PC; __stack_chk_guard_ptr
216E74:  LDR             R1, [R1]; __stack_chk_guard
216E76:  LDR             R1, [R1]
216E78:  CMP             R1, R0
216E7A:  ITTT EQ
216E7C:  MOVEQ           R0, R4
216E7E:  ADDEQ           SP, SP, #0x18
216E80:  POPEQ           {R4,R5,R7,PC}
216E82:  BLX             __stack_chk_fail
