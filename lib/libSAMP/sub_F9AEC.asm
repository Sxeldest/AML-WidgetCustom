; =========================================================
; Game Engine Function: sub_F9AEC
; Address            : 0xF9AEC - 0xF9B18
; =========================================================

F9AEC:  PUSH            {R7,LR}
F9AEE:  MOV             R7, SP
F9AF0:  SUB             SP, SP, #8
F9AF2:  VMOV            S0, R1
F9AF6:  LDR             R0, =(unk_B2D40 - 0xF9B00)
F9AF8:  VCVT.F64.F32    D16, S0
F9AFC:  ADD             R0, PC; unk_B2D40
F9AFE:  VMOV            R1, R3, D16
F9B02:  VMOV            S0, R2
F9B06:  VCVT.F64.F32    D16, S0
F9B0A:  VSTR            D16, [SP,#0x10+var_10]
F9B0E:  MOV             R2, R1
F9B10:  BL              sub_107188
F9B14:  ADD             SP, SP, #8
F9B16:  POP             {R7,PC}
