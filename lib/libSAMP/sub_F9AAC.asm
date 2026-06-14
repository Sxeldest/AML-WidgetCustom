; =========================================================
; Game Engine Function: sub_F9AAC
; Address            : 0xF9AAC - 0xF9AE6
; =========================================================

F9AAC:  PUSH            {R7,LR}
F9AAE:  MOV             R7, SP
F9AB0:  SUB             SP, SP, #0x18
F9AB2:  VMOV            S0, R2
F9AB6:  LDR             R0, =(unk_B2D2C - 0xF9AC6)
F9AB8:  VMOV            S2, R3
F9ABC:  STR             R1, [SP,#0x20+var_10]
F9ABE:  VCVT.F64.F32    D16, S0
F9AC2:  ADD             R0, PC; unk_B2D2C
F9AC4:  VMOV            R2, R12, D16
F9AC8:  VLDR            S0, [R7,#8]
F9ACC:  VCVT.F64.F32    D17, S2
F9AD0:  VCVT.F64.F32    D16, S0
F9AD4:  VSTR            D17, [SP,#0x20+var_20]
F9AD8:  VSTR            D16, [SP,#0x20+var_18]
F9ADC:  MOV             R3, R12
F9ADE:  BL              sub_107188
F9AE2:  ADD             SP, SP, #0x18
F9AE4:  POP             {R7,PC}
