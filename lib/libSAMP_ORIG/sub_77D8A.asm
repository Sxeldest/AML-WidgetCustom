; =========================================================
; Game Engine Function: sub_77D8A
; Address            : 0x77D8A - 0x77ED2
; =========================================================

77D8A:  PUSH            {R4,R6,R7,LR}
77D8C:  ADD             R7, SP, #8
77D8E:  SUBS            R2, R1, R0
77D90:  CLZ.W           R2, R2
77D94:  MOV.W           R2, R2,LSR#5
77D98:  STRB            R2, [R1,#0xC]
77D9A:  BEQ.W           locret_77ED0
77D9E:  MOV.W           R12, #1
77DA2:  B               loc_77DC2
77DA4:  SUBS.W          R1, LR, R0
77DA8:  STRB.W          R12, [R3,#0xC]
77DAC:  CLZ.W           R1, R1
77DB0:  MOV.W           R1, R1,LSR#5
77DB4:  STRB.W          R1, [LR,#0xC]
77DB8:  MOV             R1, LR
77DBA:  STRB.W          R12, [R2]
77DBE:  BEQ.W           locret_77ED0
77DC2:  LDR             R3, [R1,#8]
77DC4:  LDRB            R2, [R3,#0xC]
77DC6:  CMP             R2, #0
77DC8:  BNE.W           locret_77ED0
77DCC:  LDR.W           LR, [R3,#8]
77DD0:  LDR.W           R2, [LR]
77DD4:  CMP             R2, R3
77DD6:  BEQ             loc_77DE4
77DD8:  CBZ             R2, loc_77E26
77DDA:  LDRB.W          R4, [R2,#0xC]!
77DDE:  CMP             R4, #0
77DE0:  BEQ             loc_77DA4
77DE2:  B               loc_77E26
77DE4:  LDR.W           R2, [LR,#4]
77DE8:  CBZ             R2, loc_77DF2
77DEA:  LDRB.W          R4, [R2,#0xC]!
77DEE:  CMP             R4, #0
77DF0:  BEQ             loc_77DA4
77DF2:  LDR             R0, [R3]
77DF4:  CMP             R0, R1
77DF6:  BEQ             loc_77E94
77DF8:  LDR             R1, [R3,#4]
77DFA:  LDR             R0, [R1]
77DFC:  STR             R0, [R3,#4]
77DFE:  CMP             R0, #0
77E00:  ITT NE
77E02:  STRNE           R3, [R0,#8]
77E04:  LDRNE.W         LR, [R3,#8]
77E08:  STR.W           LR, [R1,#8]
77E0C:  LDR             R0, [R3,#8]
77E0E:  MOV             R2, R0
77E10:  LDR.W           R4, [R2],#4
77E14:  CMP             R4, R3
77E16:  IT EQ
77E18:  MOVEQ           R2, R0
77E1A:  STR             R1, [R2]
77E1C:  STR             R1, [R3,#8]
77E1E:  LDR.W           LR, [R1,#8]
77E22:  STR             R3, [R1]
77E24:  B               loc_77E96
77E26:  LDR             R0, [R3]
77E28:  CMP             R0, R1
77E2A:  BEQ             loc_77E30
77E2C:  MOV             R1, R3
77E2E:  B               loc_77E5A
77E30:  LDR             R0, [R1,#4]
77E32:  STR             R0, [R3]
77E34:  CMP             R0, #0
77E36:  ITT NE
77E38:  STRNE           R3, [R0,#8]
77E3A:  LDRNE.W         LR, [R3,#8]
77E3E:  STR.W           LR, [R1,#8]
77E42:  LDR             R0, [R3,#8]
77E44:  MOV             R2, R0
77E46:  LDR.W           R4, [R2],#4
77E4A:  CMP             R4, R3
77E4C:  IT EQ
77E4E:  MOVEQ           R2, R0
77E50:  STR             R1, [R2]
77E52:  STR             R1, [R3,#8]
77E54:  LDR.W           LR, [R1,#8]
77E58:  STR             R3, [R1,#4]
77E5A:  LDR.W           R0, [LR,#4]
77E5E:  MOVS            R2, #1
77E60:  STRB            R2, [R1,#0xC]
77E62:  MOVS            R2, #0
77E64:  STRB.W          R2, [LR,#0xC]
77E68:  LDR             R1, [R0]
77E6A:  STR.W           R1, [LR,#4]
77E6E:  CMP             R1, #0
77E70:  IT NE
77E72:  STRNE.W         LR, [R1,#8]
77E76:  MOV             R1, LR
77E78:  LDR.W           R2, [R1,#8]!
77E7C:  STR             R2, [R0,#8]
77E7E:  LDR             R2, [R1]
77E80:  MOV             R3, R2
77E82:  LDR.W           R4, [R3],#4
77E86:  CMP             R4, LR
77E88:  IT EQ
77E8A:  MOVEQ           R3, R2
77E8C:  STR             R0, [R3]
77E8E:  STR.W           LR, [R0]
77E92:  B               loc_77ECE
77E94:  MOV             R1, R3
77E96:  LDR.W           R0, [LR]
77E9A:  MOVS            R2, #1
77E9C:  STRB            R2, [R1,#0xC]
77E9E:  MOVS            R2, #0
77EA0:  STRB.W          R2, [LR,#0xC]
77EA4:  LDR             R1, [R0,#4]
77EA6:  STR.W           R1, [LR]
77EAA:  CMP             R1, #0
77EAC:  IT NE
77EAE:  STRNE.W         LR, [R1,#8]
77EB2:  MOV             R1, LR
77EB4:  LDR.W           R2, [R1,#8]!
77EB8:  STR             R2, [R0,#8]
77EBA:  LDR             R2, [R1]
77EBC:  MOV             R3, R2
77EBE:  LDR.W           R4, [R3],#4
77EC2:  CMP             R4, LR
77EC4:  IT EQ
77EC6:  MOVEQ           R3, R2
77EC8:  STR             R0, [R3]
77ECA:  STR.W           LR, [R0,#4]
77ECE:  STR             R0, [R1]
77ED0:  POP             {R4,R6,R7,PC}
