; =========================================================
; Game Engine Function: sub_476E70
; Address            : 0x476E70 - 0x476F64
; =========================================================

476E70:  PUSH            {R4-R7,LR}
476E72:  ADD             R7, SP, #0xC
476E74:  PUSH.W          {R8-R11}
476E78:  SUB             SP, SP, #0x18
476E7A:  STR             R2, [SP,#0x34+var_34]
476E7C:  LDR             R2, [R7,#arg_0]
476E7E:  CMP             R2, #1
476E80:  BLT             loc_476F5C
476E82:  LDR             R6, [R0,#0x1C]
476E84:  STR             R6, [SP,#0x34+var_30]
476E86:  LDR.W           R0, [R0,#0x150]
476E8A:  LDR             R0, [R0,#8]
476E8C:  MOV             R5, R3
476E8E:  MOV             R4, R1
476E90:  ADDS            R1, R5, #1
476E92:  STR             R1, [SP,#0x34+var_20]
476E94:  ADDS            R1, R4, #4
476E96:  STR             R1, [SP,#0x34+var_24]
476E98:  SUBS            R1, R2, #1
476E9A:  STR             R1, [SP,#0x34+var_28]
476E9C:  LDR             R1, [SP,#0x34+var_30]
476E9E:  STR             R2, [SP,#0x34+var_2C]
476EA0:  CMP             R1, #0
476EA2:  BEQ             loc_476F50
476EA4:  LDR             R1, [SP,#0x34+var_34]
476EA6:  LDRD.W          LR, R11, [R1]
476EAA:  LDRD.W          R10, R6, [R1,#8]
476EAE:  LDR.W           R9, [R6,R5,LSL#2]
476EB2:  LDR.W           R8, [LR,R5,LSL#2]
476EB6:  LDR.W           R10, [R10,R5,LSL#2]
476EBA:  LDR.W           R11, [R11,R5,LSL#2]
476EBE:  LDR             R6, [R4]
476EC0:  LDR.W           LR, [SP,#0x34+var_30]
476EC4:  LDRB.W          R12, [R6,#1]
476EC8:  SUBS.W          LR, LR, #1
476ECC:  LDRB            R2, [R6]
476ECE:  LDRB            R1, [R6,#3]
476ED0:  LDRB            R4, [R6,#2]
476ED2:  EOR.W           R2, R2, #0xFF
476ED6:  STRB.W          R1, [R9],#1
476EDA:  EOR.W           R1, R12, #0xFF
476EDE:  ORR.W           R3, R1, #0x100
476EE2:  LDR.W           R5, [R0,R2,LSL#2]
476EE6:  ADD.W           R6, R6, #4
476EEA:  LDR.W           R3, [R0,R3,LSL#2]
476EEE:  ADD             R3, R5
476EF0:  EOR.W           R5, R4, #0xFF
476EF4:  ORR.W           R4, R5, #0x200
476EF8:  LDR.W           R4, [R0,R4,LSL#2]
476EFC:  ADD             R3, R4
476EFE:  ORR.W           R4, R1, #0x400
476F02:  ORR.W           R1, R1, #0x600
476F06:  MOV.W           R3, R3,LSR#16
476F0A:  STRB.W          R3, [R8],#1
476F0E:  ORR.W           R3, R2, #0x300
476F12:  LDR.W           R4, [R0,R4,LSL#2]
476F16:  ORR.W           R2, R2, #0x500
476F1A:  LDR.W           R3, [R0,R3,LSL#2]
476F1E:  ADD             R3, R4
476F20:  ORR.W           R4, R5, #0x500
476F24:  LDR.W           R4, [R0,R4,LSL#2]
476F28:  ADD             R3, R4
476F2A:  MOV.W           R3, R3,LSR#16
476F2E:  STRB.W          R3, [R11],#1
476F32:  ORR.W           R3, R5, #0x700
476F36:  LDR.W           R2, [R0,R2,LSL#2]
476F3A:  LDR.W           R1, [R0,R1,LSL#2]
476F3E:  LDR.W           R3, [R0,R3,LSL#2]
476F42:  ADD             R1, R2
476F44:  ADD             R1, R3
476F46:  MOV.W           R1, R1,LSR#16
476F4A:  STRB.W          R1, [R10],#1
476F4E:  BNE             loc_476EC4
476F50:  LDR             R1, [SP,#0x34+var_2C]
476F52:  LDR             R3, [SP,#0x34+var_20]
476F54:  CMP             R1, #2
476F56:  LDRD.W          R2, R1, [SP,#0x34+var_28]
476F5A:  BGE             loc_476E8C
476F5C:  ADD             SP, SP, #0x18
476F5E:  POP.W           {R8-R11}
476F62:  POP             {R4-R7,PC}
