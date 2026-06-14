; =========================================================
; Game Engine Function: sub_1471D0
; Address            : 0x1471D0 - 0x14725A
; =========================================================

1471D0:  PUSH            {R4,R6,R7,LR}
1471D2:  ADD             R7, SP, #8
1471D4:  SUB             SP, SP, #0x118
1471D6:  LDRD.W          R1, R0, [R0]; src
1471DA:  MOVS            R3, #0
1471DC:  ASRS            R2, R0, #0x1F
1471DE:  ADD.W           R0, R0, R2,LSR#29
1471E2:  MOVS            R2, #1
1471E4:  ADD.W           R2, R2, R0,ASR#3; size
1471E8:  MOV             R0, SP; int
1471EA:  BL              sub_17D4F2
1471EE:  SUB.W           R1, R7, #-var_A; int
1471F2:  MOVS            R2, #0x10
1471F4:  MOVS            R3, #1
1471F6:  BL              sub_17D786
1471FA:  ADD             R1, SP, #0x120+var_C; int
1471FC:  MOV             R0, SP; int
1471FE:  MOVS            R2, #0x10
147200:  MOVS            R3, #1
147202:  BL              sub_17D786
147206:  LDRH.W          R0, [R7,#var_A]
14720A:  CMP.W           R0, #0x3EC
14720E:  BHI             loc_147250
147210:  LDR             R1, =(off_23496C - 0x147216)
147212:  ADD             R1, PC; off_23496C
147214:  LDR             R1, [R1]; dword_23DEF4
147216:  LDR             R1, [R1]
147218:  LDR.W           R1, [R1,#0x3B0]
14721C:  LDR             R1, [R1]
14721E:  ADDS            R2, R1, R0
147220:  LDRB.W          R2, [R2,#0xFB4]
147224:  CBZ             R2, loc_147250
147226:  ADD.W           R0, R1, R0,LSL#2
14722A:  LDR             R0, [R0,#4]
14722C:  CBZ             R0, loc_147250
14722E:  LDR             R4, [R0]
147230:  CBZ             R4, loc_147250
147232:  MOV             R0, R4
147234:  BL              sub_14B4F8
147238:  VMOV            S0, R0
14723C:  VLDR            S2, =200.0
147240:  VCMP.F32        S0, S2
147244:  VMRS            APSR_nzcv, FPSCR
147248:  BPL             loc_147250
14724A:  MOV             R0, R4
14724C:  BL              sub_14B5B4
147250:  MOV             R0, SP
147252:  BL              sub_17D542
147256:  ADD             SP, SP, #0x118
147258:  POP             {R4,R6,R7,PC}
