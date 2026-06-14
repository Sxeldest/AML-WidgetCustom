; =========================================================
; Game Engine Function: sub_E1D84
; Address            : 0xE1D84 - 0xE1E0C
; =========================================================

E1D84:  PUSH            {R4-R7,LR}
E1D86:  ADD             R7, SP, #0xC
E1D88:  PUSH.W          {R11}
E1D8C:  SUB             SP, SP, #8
E1D8E:  MOV             R5, R1
E1D90:  LDR             R1, [R0]
E1D92:  MOV             R4, R0
E1D94:  CBZ             R1, loc_E1DB8
E1D96:  LDR             R2, =(unk_91D45 - 0xE1DA0)
E1D98:  LDRD.W          R0, R3, [R5,#8]
E1D9C:  ADD             R2, PC; unk_91D45
E1D9E:  LDRB            R6, [R2,R1]
E1DA0:  ADDS            R1, R0, #1
E1DA2:  CMP             R3, R1
E1DA4:  BCS             loc_E1DB2
E1DA6:  LDR             R0, [R5]
E1DA8:  LDR             R2, [R0]
E1DAA:  MOV             R0, R5
E1DAC:  BLX             R2
E1DAE:  LDR             R0, [R5,#8]
E1DB0:  ADDS            R1, R0, #1
E1DB2:  LDR             R2, [R5,#4]
E1DB4:  STR             R1, [R5,#8]
E1DB6:  STRB            R6, [R2,R0]
E1DB8:  LDRD.W          R1, R2, [R4,#4]
E1DBC:  MOVS            R3, #1
E1DBE:  LDRB            R0, [R4,#0xC]
E1DC0:  STR             R0, [SP,#0x18+var_18]
E1DC2:  MOV             R0, R5
E1DC4:  BL              sub_E1E70
E1DC8:  LDR             R1, [R4,#0x10]
E1DCA:  MOV             R5, R0
E1DCC:  CMP             R1, #1
E1DCE:  BLT             loc_E1DDC
E1DD0:  ADD.W           R2, R4, #0x14
E1DD4:  MOV             R0, R5
E1DD6:  BL              sub_DE834
E1DDA:  MOV             R5, R0
E1DDC:  LDRD.W          R0, R2, [R5,#8]
E1DE0:  LDRB            R6, [R4,#0x15]
E1DE2:  ADDS            R1, R0, #1
E1DE4:  CMP             R2, R1
E1DE6:  BCS             loc_E1DF4
E1DE8:  LDR             R0, [R5]
E1DEA:  LDR             R2, [R0]
E1DEC:  MOV             R0, R5
E1DEE:  BLX             R2
E1DF0:  LDR             R0, [R5,#8]
E1DF2:  ADDS            R1, R0, #1
E1DF4:  LDR             R2, [R5,#4]
E1DF6:  STR             R1, [R5,#8]
E1DF8:  MOV             R1, R5
E1DFA:  STRB            R6, [R2,R0]
E1DFC:  LDR             R0, [R4,#0x18]
E1DFE:  ADD             SP, SP, #8
E1E00:  POP.W           {R11}
E1E04:  POP.W           {R4-R7,LR}
E1E08:  B.W             sub_DE870
