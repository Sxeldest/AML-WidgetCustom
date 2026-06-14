; =========================================================
; Game Engine Function: sub_F9ED4
; Address            : 0xF9ED4 - 0xF9F14
; =========================================================

F9ED4:  PUSH            {R7,LR}
F9ED6:  MOV             R7, SP
F9ED8:  SUB             SP, SP, #0x18
F9EDA:  VMOV            S0, R1
F9EDE:  LDR             R0, =(unk_B2E1C - 0xF9EEE)
F9EE0:  VMOV            S2, R2
F9EE4:  ADD             R2, SP, #0x20+var_C
F9EE6:  VCVT.F64.F32    D16, S0
F9EEA:  ADD             R0, PC; unk_B2E1C
F9EEC:  STR             R2, [SP,#0x20+var_10]
F9EEE:  VMOV            R1, R12, D16
F9EF2:  VMOV            S0, R3
F9EF6:  VCVT.F64.F32    D17, S2
F9EFA:  VCVT.F64.F32    D16, S0
F9EFE:  VSTR            D17, [SP,#0x20+var_20]
F9F02:  VSTR            D16, [SP,#0x20+var_18]
F9F06:  MOV             R2, R1
F9F08:  MOV             R3, R12
F9F0A:  BL              sub_107188
F9F0E:  LDR             R0, [SP,#0x20+var_C]
F9F10:  ADD             SP, SP, #0x18
F9F12:  POP             {R7,PC}
