; =========================================================
; Game Engine Function: sub_17457C
; Address            : 0x17457C - 0x1745DA
; =========================================================

17457C:  PUSH            {R4-R7,LR}
17457E:  ADD             R7, SP, #0xC
174580:  PUSH.W          {R11}
174584:  SUB             SP, SP, #8; float
174586:  CMP.W           R3, #0x1000000
17458A:  BCC             loc_1745D2
17458C:  MOV             R4, R0
17458E:  LDR             R0, [R7,#arg_0]
174590:  CMP             R0, #3
174592:  BLT             loc_1745D2
174594:  VMOV            S2, R0
174598:  VLDR            S4, =6.2832
17459C:  VMOV.F32        S0, #-1.0
1745A0:  SUBS            R0, #1
1745A2:  VCVT.F32.S32    S2, S2
1745A6:  MOV             R5, R3
1745A8:  STR             R0, [SP,#0x18+var_14]; int
1745AA:  MOV             R0, R4; int
1745AC:  MOVS            R3, #0; int
1745AE:  MOVS            R6, #0
1745B0:  VADD.F32        S0, S2, S0
1745B4:  VMUL.F32        S0, S0, S4
1745B8:  VDIV.F32        S0, S0, S2
1745BC:  VSTR            S0, [SP,#0x18+var_18]
1745C0:  BL              sub_173B2C
1745C4:  LDR             R2, [R4,#0x58]
1745C6:  MOV             R0, R4
1745C8:  LDR             R1, [R4,#0x60]
1745CA:  MOV             R3, R5
1745CC:  BL              sub_173720
1745D0:  STR             R6, [R4,#0x58]
1745D2:  ADD             SP, SP, #8
1745D4:  POP.W           {R11}
1745D8:  POP             {R4-R7,PC}
