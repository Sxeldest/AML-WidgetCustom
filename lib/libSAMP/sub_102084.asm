; =========================================================
; Game Engine Function: sub_102084
; Address            : 0x102084 - 0x1020F2
; =========================================================

102084:  PUSH            {R4,R5,R7,LR}
102086:  ADD             R7, SP, #8
102088:  SUB             SP, SP, #0x30
10208A:  MOV             R4, R0
10208C:  LDR             R0, =(unk_B3432 - 0x102096)
10208E:  MOV             R5, R1
102090:  LDR             R1, [R4,#8]
102092:  ADD             R0, PC; unk_B3432
102094:  BL              sub_107188
102098:  CBNZ            R0, loc_1020EE
10209A:  VLDR            S0, [R4,#0x10]
10209E:  VLDR            S2, [R4,#0x14]
1020A2:  VLDR            S4, [R4,#0x18]
1020A6:  VLDR            S6, [R4,#0x1C]
1020AA:  VLDR            S8, [R4,#0x20]
1020AE:  VLDR            S10, [R4,#0x24]
1020B2:  VCVT.F64.F32    D17, S8
1020B6:  LDR             R2, [R5,#8]
1020B8:  LDR             R1, [R4,#8]
1020BA:  LDR             R0, =(unk_B345A - 0x1020C0)
1020BC:  ADD             R0, PC; unk_B345A
1020BE:  VCVT.F64.F32    D16, S10
1020C2:  VCVT.F64.F32    D18, S6
1020C6:  VCVT.F64.F32    D19, S4
1020CA:  VCVT.F64.F32    D20, S2
1020CE:  VCVT.F64.F32    D21, S0
1020D2:  VSTR            D21, [SP,#0x38+var_38]
1020D6:  VSTR            D20, [SP,#0x38+var_30]
1020DA:  VSTR            D19, [SP,#0x38+var_28]
1020DE:  VSTR            D18, [SP,#0x38+var_20]
1020E2:  VSTR            D17, [SP,#0x38+var_18]
1020E6:  VSTR            D16, [SP,#0x38+var_10]
1020EA:  BL              sub_107188
1020EE:  ADD             SP, SP, #0x30 ; '0'
1020F0:  POP             {R4,R5,R7,PC}
