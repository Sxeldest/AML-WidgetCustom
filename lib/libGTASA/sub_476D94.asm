; =========================================================
; Game Engine Function: sub_476D94
; Address            : 0x476D94 - 0x476E70
; =========================================================

476D94:  PUSH            {R4-R7,LR}
476D96:  ADD             R7, SP, #0xC
476D98:  PUSH.W          {R8-R11}
476D9C:  SUB             SP, SP, #0x14
476D9E:  STR             R2, [SP,#0x30+var_30]
476DA0:  LDR             R2, [R7,#arg_0]
476DA2:  CMP             R2, #1
476DA4:  BLT             loc_476E68
476DA6:  LDR             R6, [R0,#0x1C]
476DA8:  STR             R6, [SP,#0x30+var_2C]
476DAA:  LDR.W           R0, [R0,#0x150]
476DAE:  LDR             R0, [R0,#8]
476DB0:  MOV             R4, R3
476DB2:  MOV             R5, R1
476DB4:  ADDS            R1, R4, #1
476DB6:  STR             R1, [SP,#0x30+var_20]
476DB8:  ADDS            R1, R5, #4
476DBA:  MOV             R8, R2
476DBC:  STR             R1, [SP,#0x30+var_24]
476DBE:  SUB.W           R1, R8, #1
476DC2:  STR             R1, [SP,#0x30+var_28]
476DC4:  LDR             R1, [SP,#0x30+var_2C]
476DC6:  CMP             R1, #0
476DC8:  BEQ             loc_476E5C
476DCA:  LDR             R1, [SP,#0x30+var_30]
476DCC:  LDRD.W          R11, R10, [R1]
476DD0:  LDR             R6, [R1,#8]
476DD2:  LDR.W           R10, [R10,R4,LSL#2]
476DD6:  LDR.W           R11, [R11,R4,LSL#2]
476DDA:  LDR.W           R9, [R6,R4,LSL#2]
476DDE:  LDR             R5, [R5]
476DE0:  LDR             R6, [SP,#0x30+var_2C]
476DE2:  LDRB.W          LR, [R5,#1]
476DE6:  SUBS            R6, #1
476DE8:  LDRB            R4, [R5]
476DEA:  LDRB.W          R12, [R5,#2]
476DEE:  ORR.W           R2, LR, #0x100
476DF2:  ADD.W           R5, R5, #4
476DF6:  ORR.W           R3, R12, #0x200
476DFA:  LDR.W           R2, [R0,R2,LSL#2]
476DFE:  LDR.W           R1, [R0,R4,LSL#2]
476E02:  LDR.W           R3, [R0,R3,LSL#2]
476E06:  ADD             R1, R2
476E08:  ADD             R1, R3
476E0A:  ORR.W           R2, LR, #0x400
476E0E:  ORR.W           R3, R12, #0x700
476E12:  MOV.W           R1, R1,LSR#16
476E16:  STRB.W          R1, [R11],#1
476E1A:  ORR.W           R1, R4, #0x300
476E1E:  LDR.W           R2, [R0,R2,LSL#2]
476E22:  LDR.W           R1, [R0,R1,LSL#2]
476E26:  ADD             R1, R2
476E28:  ORR.W           R2, R12, #0x500
476E2C:  LDR.W           R2, [R0,R2,LSL#2]
476E30:  ADD             R1, R2
476E32:  ORR.W           R2, LR, #0x600
476E36:  MOV.W           R1, R1,LSR#16
476E3A:  STRB.W          R1, [R10],#1
476E3E:  ORR.W           R1, R4, #0x500
476E42:  LDR.W           R2, [R0,R2,LSL#2]
476E46:  LDR.W           R1, [R0,R1,LSL#2]
476E4A:  LDR.W           R3, [R0,R3,LSL#2]
476E4E:  ADD             R1, R2
476E50:  ADD             R1, R3
476E52:  MOV.W           R1, R1,LSR#16
476E56:  STRB.W          R1, [R9],#1
476E5A:  BNE             loc_476DE2
476E5C:  LDR             R3, [SP,#0x30+var_20]
476E5E:  CMP.W           R8, #2
476E62:  LDRD.W          R2, R1, [SP,#0x30+var_28]
476E66:  BGE             loc_476DB0
476E68:  ADD             SP, SP, #0x14
476E6A:  POP.W           {R8-R11}
476E6E:  POP             {R4-R7,PC}
