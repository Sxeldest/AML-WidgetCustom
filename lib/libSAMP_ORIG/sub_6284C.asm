; =========================================================
; Game Engine Function: sub_6284C
; Address            : 0x6284C - 0x628CC
; =========================================================

6284C:  PUSH            {R7,LR}
6284E:  MOV             R7, SP
62850:  VLDR            S0, =0.0
62854:  CMP             R0, #0
62856:  IT NE
62858:  CMPNE           R1, #0
6285A:  BNE             loc_62862
6285C:  VMOV            R0, S0
62860:  POP             {R7,PC}
62862:  LDR             R0, [R0,#0x5C]
62864:  CMP             R0, #0
62866:  ITT NE
62868:  LDRNE           R1, [R1,#0xC]
6286A:  CMPNE           R1, #0
6286C:  BEQ             loc_6285C
6286E:  LDR             R0, [R0,#0x14]
62870:  LDR             R1, [R1,#0x14]
62872:  LDR             R3, [R0,#0x34]
62874:  LDR             R2, [R1,#0x34]
62876:  LDR.W           LR, [R0,#0x30]
6287A:  VMOV            S0, R3
6287E:  LDR.W           R12, [R0,#0x38]
62882:  VMOV            S2, R2
62886:  LDR             R0, [R1,#0x30]
62888:  LDR             R1, [R1,#0x38]
6288A:  VSUB.F32        S0, S2, S0
6288E:  VMOV            S2, R0
62892:  VCVT.F64.F32    D16, S0
62896:  VMOV            S0, LR
6289A:  VMUL.F64        D16, D16, D16
6289E:  VSUB.F32        S0, S2, S0
628A2:  VMOV            S2, R1
628A6:  VCVT.F64.F32    D17, S0
628AA:  VMLA.F64        D16, D17, D17
628AE:  VMOV            S0, R12
628B2:  VSUB.F32        S0, S2, S0
628B6:  VCVT.F64.F32    D17, S0
628BA:  VMLA.F64        D16, D17, D17
628BE:  VSQRT.F64       D16, D16
628C2:  VCVT.F32.F64    S0, D16
628C6:  VMOV            R0, S0
628CA:  POP             {R7,PC}
