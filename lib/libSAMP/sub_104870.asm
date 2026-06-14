; =========================================================
; Game Engine Function: sub_104870
; Address            : 0x104870 - 0x1048B6
; =========================================================

104870:  PUSH            {R7,LR}
104872:  MOV             R7, SP
104874:  SUB             SP, SP, #0x20
104876:  VLDR            S0, [R1]
10487A:  VLDR            S2, [R1,#4]
10487E:  VCVT.F64.F32    D16, S0
104882:  VMOV            S0, R2
104886:  VLDR            S4, [R1,#8]
10488A:  VMOV            R2, R3, D16
10488E:  LDR             R0, =(unk_B373A - 0x10489A)
104890:  VCVT.F64.F32    D16, S0
104894:  MOVS            R1, #0
104896:  ADD             R0, PC; unk_B373A
104898:  STR             R1, [SP,#0x28+var_10]
10489A:  VCVT.F64.F32    D17, S4
10489E:  VCVT.F64.F32    D18, S2
1048A2:  VSTR            D18, [SP,#0x28+var_28]
1048A6:  VSTR            D17, [SP,#0x28+var_20]
1048AA:  VSTR            D16, [SP,#0x28+var_18]
1048AE:  BL              sub_107188
1048B2:  ADD             SP, SP, #0x20 ; ' '
1048B4:  POP             {R7,PC}
