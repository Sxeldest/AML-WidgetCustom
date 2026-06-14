; =========================================================
; Game Engine Function: sub_123D7E
; Address            : 0x123D7E - 0x123E1E
; =========================================================

123D7E:  PUSH            {R4-R7,LR}
123D80:  ADD             R7, SP, #0xC
123D82:  PUSH.W          {R11}
123D86:  SUB             SP, SP, #0x10
123D88:  CMP             R1, R0
123D8A:  BEQ             loc_123E16
123D8C:  MOV             R5, R0
123D8E:  LDR             R0, [R0,#0x10]
123D90:  MOV             R4, R1
123D92:  CMP             R0, R5
123D94:  BEQ             loc_123DA2
123D96:  LDR             R1, [R4,#0x10]
123D98:  CMP             R4, R1
123D9A:  BEQ             loc_123DBE
123D9C:  STR             R1, [R5,#0x10]
123D9E:  STR             R0, [R4,#0x10]
123DA0:  B               loc_123E16
123DA2:  LDR             R1, [R4,#0x10]
123DA4:  CMP             R1, R4
123DA6:  BEQ             loc_123DD8
123DA8:  LDR             R1, [R0]
123DAA:  LDR             R2, [R1,#0xC]
123DAC:  MOV             R1, R4
123DAE:  BLX             R2
123DB0:  LDR             R0, [R5,#0x10]
123DB2:  LDR             R1, [R0]
123DB4:  LDR             R1, [R1,#0x10]
123DB6:  BLX             R1
123DB8:  LDR             R0, [R4,#0x10]
123DBA:  STR             R0, [R5,#0x10]
123DBC:  B               loc_123E14
123DBE:  LDR             R0, [R1]
123DC0:  LDR             R2, [R0,#0xC]
123DC2:  MOV             R0, R1
123DC4:  MOV             R1, R5
123DC6:  BLX             R2
123DC8:  LDR             R0, [R4,#0x10]
123DCA:  LDR             R1, [R0]
123DCC:  LDR             R1, [R1,#0x10]
123DCE:  BLX             R1
123DD0:  LDR             R0, [R5,#0x10]
123DD2:  STR             R0, [R4,#0x10]
123DD4:  STR             R5, [R5,#0x10]
123DD6:  B               loc_123E16
123DD8:  LDR             R1, [R0]
123DDA:  LDR             R2, [R1,#0xC]
123DDC:  MOV             R1, SP
123DDE:  BLX             R2
123DE0:  LDR             R0, [R5,#0x10]
123DE2:  LDR             R1, [R0]
123DE4:  LDR             R1, [R1,#0x10]
123DE6:  BLX             R1
123DE8:  MOVS            R6, #0
123DEA:  STR             R6, [R5,#0x10]
123DEC:  LDR             R0, [R4,#0x10]
123DEE:  LDR             R1, [R0]
123DF0:  LDR             R2, [R1,#0xC]
123DF2:  MOV             R1, R5
123DF4:  BLX             R2
123DF6:  LDR             R0, [R4,#0x10]
123DF8:  LDR             R1, [R0]
123DFA:  LDR             R1, [R1,#0x10]
123DFC:  BLX             R1
123DFE:  LDR             R0, [SP,#0x20+var_20]
123E00:  STR             R6, [R4,#0x10]
123E02:  STR             R5, [R5,#0x10]
123E04:  LDR             R2, [R0,#0xC]
123E06:  MOV             R0, SP
123E08:  MOV             R1, R4
123E0A:  BLX             R2
123E0C:  LDR             R0, [SP,#0x20+var_20]
123E0E:  LDR             R1, [R0,#0x10]
123E10:  MOV             R0, SP
123E12:  BLX             R1
123E14:  STR             R4, [R4,#0x10]
123E16:  ADD             SP, SP, #0x10
123E18:  POP.W           {R11}
123E1C:  POP             {R4-R7,PC}
