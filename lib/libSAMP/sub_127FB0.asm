; =========================================================
; Game Engine Function: sub_127FB0
; Address            : 0x127FB0 - 0x128050
; =========================================================

127FB0:  PUSH            {R4-R7,LR}
127FB2:  ADD             R7, SP, #0xC
127FB4:  PUSH.W          {R11}
127FB8:  SUB             SP, SP, #0x10
127FBA:  CMP             R1, R0
127FBC:  BEQ             loc_128048
127FBE:  MOV             R5, R0
127FC0:  LDR             R0, [R0,#0x10]
127FC2:  MOV             R4, R1
127FC4:  CMP             R0, R5
127FC6:  BEQ             loc_127FD4
127FC8:  LDR             R1, [R4,#0x10]
127FCA:  CMP             R4, R1
127FCC:  BEQ             loc_127FF0
127FCE:  STR             R1, [R5,#0x10]
127FD0:  STR             R0, [R4,#0x10]
127FD2:  B               loc_128048
127FD4:  LDR             R1, [R4,#0x10]
127FD6:  CMP             R1, R4
127FD8:  BEQ             loc_12800A
127FDA:  LDR             R1, [R0]
127FDC:  LDR             R2, [R1,#0xC]
127FDE:  MOV             R1, R4
127FE0:  BLX             R2
127FE2:  LDR             R0, [R5,#0x10]
127FE4:  LDR             R1, [R0]
127FE6:  LDR             R1, [R1,#0x10]
127FE8:  BLX             R1
127FEA:  LDR             R0, [R4,#0x10]
127FEC:  STR             R0, [R5,#0x10]
127FEE:  B               loc_128046
127FF0:  LDR             R0, [R1]
127FF2:  LDR             R2, [R0,#0xC]
127FF4:  MOV             R0, R1
127FF6:  MOV             R1, R5
127FF8:  BLX             R2
127FFA:  LDR             R0, [R4,#0x10]
127FFC:  LDR             R1, [R0]
127FFE:  LDR             R1, [R1,#0x10]
128000:  BLX             R1
128002:  LDR             R0, [R5,#0x10]
128004:  STR             R0, [R4,#0x10]
128006:  STR             R5, [R5,#0x10]
128008:  B               loc_128048
12800A:  LDR             R1, [R0]
12800C:  LDR             R2, [R1,#0xC]
12800E:  MOV             R1, SP
128010:  BLX             R2
128012:  LDR             R0, [R5,#0x10]
128014:  LDR             R1, [R0]
128016:  LDR             R1, [R1,#0x10]
128018:  BLX             R1
12801A:  MOVS            R6, #0
12801C:  STR             R6, [R5,#0x10]
12801E:  LDR             R0, [R4,#0x10]
128020:  LDR             R1, [R0]
128022:  LDR             R2, [R1,#0xC]
128024:  MOV             R1, R5
128026:  BLX             R2
128028:  LDR             R0, [R4,#0x10]
12802A:  LDR             R1, [R0]
12802C:  LDR             R1, [R1,#0x10]
12802E:  BLX             R1
128030:  LDR             R0, [SP,#0x20+var_20]
128032:  STR             R6, [R4,#0x10]
128034:  STR             R5, [R5,#0x10]
128036:  LDR             R2, [R0,#0xC]
128038:  MOV             R0, SP
12803A:  MOV             R1, R4
12803C:  BLX             R2
12803E:  LDR             R0, [SP,#0x20+var_20]
128040:  LDR             R1, [R0,#0x10]
128042:  MOV             R0, SP
128044:  BLX             R1
128046:  STR             R4, [R4,#0x10]
128048:  ADD             SP, SP, #0x10
12804A:  POP.W           {R11}
12804E:  POP             {R4-R7,PC}
