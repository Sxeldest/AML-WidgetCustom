; =========================================================
; Game Engine Function: sub_99F94
; Address            : 0x99F94 - 0x99FE8
; =========================================================

99F94:  PUSH            {R4-R7,LR}
99F96:  ADD             R7, SP, #0xC
99F98:  PUSH.W          {R11}
99F9C:  MOV             R4, R0
99F9E:  LDR             R0, =(dword_1ACF68 - 0x99FAA)
99FA0:  MOV             R5, R1
99FA2:  MOVW            R1, #0x19AC
99FA6:  ADD             R0, PC; dword_1ACF68
99FA8:  EOR.W           R6, R2, #1
99FAC:  LDR             R0, [R0]
99FAE:  LDR             R0, [R0,R1]
99FB0:  MOVS            R1, #1
99FB2:  STRB.W          R1, [R0,#0x7C]
99FB6:  LDR.W           R0, [R0,#0x1C0]
99FBA:  CBZ             R0, loc_99FCC
99FBC:  LDR             R1, [R0,#0x10]
99FBE:  CMP             R1, R4
99FC0:  ITT EQ
99FC2:  LDREQ           R0, [R0,#4]
99FC4:  CMPEQ           R0, R6
99FC6:  BEQ             loc_99FD0
99FC8:  BL              sub_96B84
99FCC:  CMP             R4, #1
99FCE:  BNE             loc_99FD6
99FD0:  POP.W           {R11}
99FD4:  POP             {R4-R7,PC}
99FD6:  MOV             R0, R5
99FD8:  MOV             R1, R4
99FDA:  MOV             R2, R6
99FDC:  POP.W           {R11}
99FE0:  POP.W           {R4-R7,LR}
99FE4:  B.W             sub_99AB0
