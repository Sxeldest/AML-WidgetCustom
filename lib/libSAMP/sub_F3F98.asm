; =========================================================
; Game Engine Function: sub_F3F98
; Address            : 0xF3F98 - 0xF4038
; =========================================================

F3F98:  PUSH            {R4-R7,LR}
F3F9A:  ADD             R7, SP, #0xC
F3F9C:  PUSH.W          {R11}
F3FA0:  SUB             SP, SP, #0x10
F3FA2:  CMP             R1, R0
F3FA4:  BEQ             loc_F4030
F3FA6:  MOV             R5, R0
F3FA8:  LDR             R0, [R0,#0x10]
F3FAA:  MOV             R4, R1
F3FAC:  CMP             R0, R5
F3FAE:  BEQ             loc_F3FBC
F3FB0:  LDR             R1, [R4,#0x10]
F3FB2:  CMP             R4, R1
F3FB4:  BEQ             loc_F3FD8
F3FB6:  STR             R1, [R5,#0x10]
F3FB8:  STR             R0, [R4,#0x10]
F3FBA:  B               loc_F4030
F3FBC:  LDR             R1, [R4,#0x10]
F3FBE:  CMP             R1, R4
F3FC0:  BEQ             loc_F3FF2
F3FC2:  LDR             R1, [R0]
F3FC4:  LDR             R2, [R1,#0xC]
F3FC6:  MOV             R1, R4
F3FC8:  BLX             R2
F3FCA:  LDR             R0, [R5,#0x10]
F3FCC:  LDR             R1, [R0]
F3FCE:  LDR             R1, [R1,#0x10]
F3FD0:  BLX             R1
F3FD2:  LDR             R0, [R4,#0x10]
F3FD4:  STR             R0, [R5,#0x10]
F3FD6:  B               loc_F402E
F3FD8:  LDR             R0, [R1]
F3FDA:  LDR             R2, [R0,#0xC]
F3FDC:  MOV             R0, R1
F3FDE:  MOV             R1, R5
F3FE0:  BLX             R2
F3FE2:  LDR             R0, [R4,#0x10]
F3FE4:  LDR             R1, [R0]
F3FE6:  LDR             R1, [R1,#0x10]
F3FE8:  BLX             R1
F3FEA:  LDR             R0, [R5,#0x10]
F3FEC:  STR             R0, [R4,#0x10]
F3FEE:  STR             R5, [R5,#0x10]
F3FF0:  B               loc_F4030
F3FF2:  LDR             R1, [R0]
F3FF4:  LDR             R2, [R1,#0xC]
F3FF6:  MOV             R1, SP
F3FF8:  BLX             R2
F3FFA:  LDR             R0, [R5,#0x10]
F3FFC:  LDR             R1, [R0]
F3FFE:  LDR             R1, [R1,#0x10]
F4000:  BLX             R1
F4002:  MOVS            R6, #0
F4004:  STR             R6, [R5,#0x10]
F4006:  LDR             R0, [R4,#0x10]
F4008:  LDR             R1, [R0]
F400A:  LDR             R2, [R1,#0xC]
F400C:  MOV             R1, R5
F400E:  BLX             R2
F4010:  LDR             R0, [R4,#0x10]
F4012:  LDR             R1, [R0]
F4014:  LDR             R1, [R1,#0x10]
F4016:  BLX             R1
F4018:  LDR             R0, [SP,#0x20+var_20]
F401A:  STR             R6, [R4,#0x10]
F401C:  STR             R5, [R5,#0x10]
F401E:  LDR             R2, [R0,#0xC]
F4020:  MOV             R0, SP
F4022:  MOV             R1, R4
F4024:  BLX             R2
F4026:  LDR             R0, [SP,#0x20+var_20]
F4028:  LDR             R1, [R0,#0x10]
F402A:  MOV             R0, SP
F402C:  BLX             R1
F402E:  STR             R4, [R4,#0x10]
F4030:  ADD             SP, SP, #0x10
F4032:  POP.W           {R11}
F4036:  POP             {R4-R7,PC}
