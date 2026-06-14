; =========================================================
; Game Engine Function: _Z15_rwResHeapAllocPvj
; Address            : 0x1E6D1A - 0x1E6DDC
; =========================================================

1E6D1A:  PUSH            {R4,R5,R7,LR}
1E6D1C:  ADD             R7, SP, #8
1E6D1E:  LDR.W           R12, [R0,#4]
1E6D22:  CMP.W           R12, #0
1E6D26:  BEQ             loc_1E6D86
1E6D28:  ADDS            R1, #0x1F
1E6D2A:  MOVS            R3, #0
1E6D2C:  BIC.W           R5, R1, #0x1F
1E6D30:  MOV             R1, R12
1E6D32:  LDRB            R2, [R1,#0x10]
1E6D34:  LSLS            R2, R2, #0x1F
1E6D36:  BNE             loc_1E6D4C
1E6D38:  LDR             R2, [R1,#0xC]
1E6D3A:  CMP             R2, R5
1E6D3C:  BCC             loc_1E6D4C
1E6D3E:  CBZ             R3, loc_1E6D4A
1E6D40:  LDR             R4, [R3,#0xC]
1E6D42:  CMP             R2, R4
1E6D44:  IT CC
1E6D46:  MOVCC           R3, R1
1E6D48:  B               loc_1E6D4C
1E6D4A:  MOV             R3, R1
1E6D4C:  LDR             R1, [R1,#4]
1E6D4E:  CMP             R1, #0
1E6D50:  BNE             loc_1E6D32
1E6D52:  CBZ             R3, loc_1E6D86
1E6D54:  LDR             R1, [R3,#0xC]
1E6D56:  ADD.W           R2, R5, #0x40 ; '@'
1E6D5A:  CMP             R1, R2
1E6D5C:  BLS             loc_1E6DBC
1E6D5E:  ADDS            R1, R3, R5
1E6D60:  LDR.W           LR, [R3,#4]
1E6D64:  ADDS            R1, #0x20 ; ' '
1E6D66:  CMP.W           LR, #0
1E6D6A:  BEQ             loc_1E6D8A
1E6D6C:  LDRB.W          R2, [LR,#0x10]
1E6D70:  LSLS            R2, R2, #0x1F
1E6D72:  BNE             loc_1E6D8A
1E6D74:  LDR.W           R2, [LR,#4]
1E6D78:  MOV             R12, R1
1E6D7A:  STR.W           R2, [R12,#4]!
1E6D7E:  LDR             R2, [R3,#4]
1E6D80:  LDR             R4, [R3,#0xC]
1E6D82:  LDR             R2, [R2,#0xC]
1E6D84:  B               loc_1E6D96
1E6D86:  MOVS            R0, #0
1E6D88:  POP             {R4,R5,R7,PC}
1E6D8A:  MOV             R12, R1
1E6D8C:  MOV             R4, #0xFFFFFFE0
1E6D90:  STR.W           LR, [R12,#4]!
1E6D94:  LDR             R2, [R3,#0xC]
1E6D96:  SUBS            R4, R4, R5
1E6D98:  ADD.W           LR, R4, R2
1E6D9C:  MOVS            R2, #0
1E6D9E:  STR.W           LR, [R1,#0xC]
1E6DA2:  STR             R1, [R3,#4]
1E6DA4:  STR             R3, [R1,#8]
1E6DA6:  STR             R2, [R1,#0x10]
1E6DA8:  LDR.W           R2, [R12]
1E6DAC:  CMP             R2, #0
1E6DAE:  IT NE
1E6DB0:  STRNE           R1, [R2,#8]
1E6DB2:  STR             R5, [R3,#0xC]
1E6DB4:  LDR             R2, [R3]
1E6DB6:  STR             R2, [R1]
1E6DB8:  LDR.W           R12, [R0,#4]
1E6DBC:  CMP             R3, R12
1E6DBE:  BNE             loc_1E6DD2
1E6DC0:  MOV             R1, R3
1E6DC2:  LDR             R1, [R1,#4]
1E6DC4:  STR             R1, [R0,#4]
1E6DC6:  CMP             R1, #0
1E6DC8:  ITT NE
1E6DCA:  LDRBNE          R2, [R1,#0x10]
1E6DCC:  MOVSNE.W        R2, R2,LSL#31
1E6DD0:  BNE             loc_1E6DC2
1E6DD2:  MOVS            R0, #1
1E6DD4:  STR             R0, [R3,#0x10]
1E6DD6:  ADD.W           R0, R3, #0x20 ; ' '
1E6DDA:  POP             {R4,R5,R7,PC}
