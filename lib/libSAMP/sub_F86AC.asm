; =========================================================
; Game Engine Function: sub_F86AC
; Address            : 0xF86AC - 0xF8700
; =========================================================

F86AC:  PUSH            {R4-R7,LR}
F86AE:  ADD             R7, SP, #0xC
F86B0:  PUSH.W          {R8}
F86B4:  SUB             SP, SP, #0x18
F86B6:  MOV             R8, R0
F86B8:  LDR             R0, =(unk_B2BA6 - 0xF86C2)
F86BA:  MOV             R4, R3
F86BC:  MOV             R5, R2
F86BE:  ADD             R0, PC; unk_B2BA6
F86C0:  MOV             R6, R1
F86C2:  BL              sub_107188
F86C6:  VMOV            S0, R6
F86CA:  LDR             R0, =(unk_B2C0A - 0xF86D8)
F86CC:  MOVS            R6, #0
F86CE:  LDR             R1, [R7,#arg_0]
F86D0:  VCVT.F64.F32    D16, S0
F86D4:  ADD             R0, PC; unk_B2C0A
F86D6:  STR.W           R6, [R8,#4]
F86DA:  STR             R1, [SP,#0x28+var_18]
F86DC:  VMOV            R2, R3, D16
F86E0:  VMOV            S0, R5
F86E4:  VCVT.F64.F32    D16, S0
F86E8:  VMOV            S0, R4
F86EC:  VCVT.F64.F32    D17, S0
F86F0:  VSTMEA          SP, {D16-D17}
F86F4:  BL              sub_107188
F86F8:  ADD             SP, SP, #0x18
F86FA:  POP.W           {R8}
F86FE:  POP             {R4-R7,PC}
