; =========================================================
; Game Engine Function: sub_476CB0
; Address            : 0x476CB0 - 0x476D32
; =========================================================

476CB0:  PUSH            {R4-R7,LR}
476CB2:  ADD             R7, SP, #0xC
476CB4:  PUSH.W          {R8-R11}
476CB8:  SUB             SP, SP, #8
476CBA:  LDR.W           R12, [R7,#arg_0]
476CBE:  STR             R2, [SP,#0x24+var_24]
476CC0:  CMP.W           R12, #1
476CC4:  BLT             loc_476D2A
476CC6:  LDR             R2, [R0,#0x1C]
476CC8:  STR             R2, [SP,#0x24+var_20]
476CCA:  LDR.W           R0, [R0,#0x150]
476CCE:  LDR.W           R9, [R0,#8]
476CD2:  LDR             R0, [SP,#0x24+var_20]
476CD4:  MOV             R5, R3
476CD6:  MOV             R4, R1
476CD8:  MOV             R8, R12
476CDA:  ADDS            R3, R5, #1
476CDC:  ADDS            R1, R4, #4
476CDE:  SUB.W           R12, R8, #1
476CE2:  CMP             R0, #0
476CE4:  BEQ             loc_476D24
476CE6:  LDR             R0, [SP,#0x24+var_24]
476CE8:  LDR             R6, [R0]
476CEA:  LDR.W           R5, [R6,R5,LSL#2]
476CEE:  LDR             R6, [R4]
476CF0:  LDR             R4, [SP,#0x24+var_20]
476CF2:  LDRB            R0, [R6]
476CF4:  SUBS            R4, #1
476CF6:  LDRB.W          R10, [R6,#1]
476CFA:  LDRB.W          R11, [R6,#2]
476CFE:  ADD.W           R6, R6, #4
476D02:  LDR.W           LR, [R9,R0,LSL#2]
476D06:  ORR.W           R0, R10, #0x100
476D0A:  ORR.W           R2, R11, #0x200
476D0E:  LDR.W           R0, [R9,R0,LSL#2]
476D12:  LDR.W           R2, [R9,R2,LSL#2]
476D16:  ADD             R0, LR
476D18:  ADD             R0, R2
476D1A:  MOV.W           R0, R0,LSR#16
476D1E:  STRB.W          R0, [R5],#1
476D22:  BNE             loc_476CF2
476D24:  CMP.W           R8, #2
476D28:  BGE             loc_476CD2
476D2A:  ADD             SP, SP, #8
476D2C:  POP.W           {R8-R11}
476D30:  POP             {R4-R7,PC}
