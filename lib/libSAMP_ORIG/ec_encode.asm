; =========================================================
; Game Engine Function: ec_encode
; Address            : 0xB6DBA - 0xB6EA8
; =========================================================

B6DBA:  PUSH            {R4-R7,LR}
B6DBC:  ADD             R7, SP, #0xC
B6DBE:  PUSH.W          {R8,R9,R11}
B6DC2:  MOV             R4, R0
B6DC4:  MOV             R9, R3
B6DC6:  LDR             R6, [R4,#0x1C]
B6DC8:  MOV             R5, R1
B6DCA:  MOV             R1, R9
B6DCC:  MOV             R8, R2
B6DCE:  MOV             R0, R6
B6DD0:  BLX             sub_108874
B6DD4:  MOVW            R12, #1
B6DD8:  CMP             R5, #0
B6DDA:  MOVT            R12, #0x80
B6DDE:  BEQ             loc_B6DF8
B6DE0:  SUB.W           R1, R9, R5
B6DE4:  SUB.W           R2, R8, R5
B6DE8:  MLS.W           R1, R0, R1, R6
B6DEC:  MUL.W           R6, R0, R2
B6DF0:  LDR             R0, [R4,#0x20]
B6DF2:  ADD             R0, R1
B6DF4:  STR             R0, [R4,#0x20]
B6DF6:  B               loc_B6E00
B6DF8:  SUB.W           R1, R9, R8
B6DFC:  MLS.W           R6, R0, R1, R6
B6E00:  CMP             R6, R12
B6E02:  STR             R6, [R4,#0x1C]
B6E04:  BCS             loc_B6EA2
B6E06:  LDR             R3, [R4,#0x20]
B6E08:  MOVW            R8, #0xFF00
B6E0C:  MOV.W           LR, #0xFF
B6E10:  MOVT            R8, #0x7FFF
B6E14:  CMP.W           LR, R3,LSR#23
B6E18:  BNE             loc_B6E22
B6E1A:  LDR             R0, [R4,#0x24]
B6E1C:  ADDS            R0, #1
B6E1E:  STR             R0, [R4,#0x24]
B6E20:  B               loc_B6E8C
B6E22:  LDR             R6, [R4,#0x28]
B6E24:  LSRS            R1, R3, #0x1F
B6E26:  CMP             R6, #0
B6E28:  BLT             loc_B6E4E
B6E2A:  LDRD.W          R0, R2, [R4,#4]
B6E2E:  LDR             R5, [R4,#0x18]
B6E30:  ADD             R2, R5
B6E32:  CMP             R2, R0
B6E34:  BCS             loc_B6E44
B6E36:  LDR             R0, [R4]
B6E38:  ADDS            R2, R5, #1
B6E3A:  STR             R2, [R4,#0x18]
B6E3C:  ADDS            R2, R6, R1
B6E3E:  MOVS            R6, #0
B6E40:  STRB            R2, [R0,R5]
B6E42:  B               loc_B6E48
B6E44:  MOV.W           R6, #0xFFFFFFFF
B6E48:  LDR             R0, [R4,#0x2C]
B6E4A:  ORRS            R0, R6
B6E4C:  STR             R0, [R4,#0x2C]
B6E4E:  LDR             R6, [R4,#0x24]
B6E50:  LSRS            R5, R3, #0x17
B6E52:  CBZ             R6, loc_B6E84
B6E54:  ADD.W           R3, R1, #0xFF
B6E58:  LDRD.W          R0, R2, [R4,#4]
B6E5C:  LDR             R1, [R4,#0x18]
B6E5E:  ADD             R2, R1
B6E60:  CMP             R2, R0
B6E62:  BCS             loc_B6E72
B6E64:  LDR             R0, [R4]
B6E66:  ADDS            R2, R1, #1
B6E68:  STR             R2, [R4,#0x18]
B6E6A:  STRB            R3, [R0,R1]
B6E6C:  MOVS            R1, #0
B6E6E:  LDR             R6, [R4,#0x24]
B6E70:  B               loc_B6E76
B6E72:  MOV.W           R1, #0xFFFFFFFF
B6E76:  LDR             R0, [R4,#0x2C]
B6E78:  SUBS            R6, #1
B6E7A:  STR             R6, [R4,#0x24]
B6E7C:  ORR.W           R0, R0, R1
B6E80:  STR             R0, [R4,#0x2C]
B6E82:  BNE             loc_B6E58
B6E84:  UXTB            R0, R5
B6E86:  LDRD.W          R6, R3, [R4,#0x1C]
B6E8A:  STR             R0, [R4,#0x28]
B6E8C:  LDR             R0, [R4,#0x14]
B6E8E:  AND.W           R3, R8, R3,LSL#8
B6E92:  LSLS            R6, R6, #8
B6E94:  CMP             R6, R12
B6E96:  STRD.W          R6, R3, [R4,#0x1C]
B6E9A:  ADD.W           R0, R0, #8
B6E9E:  STR             R0, [R4,#0x14]
B6EA0:  BCC             loc_B6E14
B6EA2:  POP.W           {R8,R9,R11}
B6EA6:  POP             {R4-R7,PC}
