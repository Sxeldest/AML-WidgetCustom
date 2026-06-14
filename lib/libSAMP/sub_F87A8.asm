; =========================================================
; Game Engine Function: sub_F87A8
; Address            : 0xF87A8 - 0xF8820
; =========================================================

F87A8:  PUSH            {R4-R7,LR}
F87AA:  ADD             R7, SP, #0xC
F87AC:  PUSH.W          {R11}
F87B0:  SUB             SP, SP, #0x30
F87B2:  LDR             R0, =(aI_0 - 0xF87BE); "/\ti" ...
F87B4:  MOV             R6, R1
F87B6:  MOVS            R1, #1
F87B8:  MOV             R4, R3
F87BA:  ADD             R0, PC; "/\ti"
F87BC:  MOV             R5, R2
F87BE:  BL              sub_107188
F87C2:  VLDR            S0, [R6]
F87C6:  VLDR            S2, [R6,#4]
F87CA:  VCVT.F64.F32    D16, S0
F87CE:  LDR             R1, [R7,#arg_0]
F87D0:  VMOV            R2, R3, D16
F87D4:  VLDR            S4, [R6,#8]
F87D8:  VLDR            S0, [R5]
F87DC:  VLDR            S6, [R5,#4]
F87E0:  VLDR            S8, [R5,#8]
F87E4:  VCVT.F64.F32    D16, S6
F87E8:  LDR             R0, =(aFfffffii - 0xF87F2); " \tffffffii" ...
F87EA:  STRD.W          R4, R1, [SP,#0x40+var_18]
F87EE:  ADD             R0, PC; " \tffffffii"
F87F0:  VCVT.F64.F32    D17, S0
F87F4:  VCVT.F64.F32    D18, S4
F87F8:  VCVT.F64.F32    D19, S2
F87FC:  VCVT.F64.F32    D20, S8
F8800:  VSTR            D19, [SP,#0x40+var_40]
F8804:  VSTR            D18, [SP,#0x40+var_38]
F8808:  VSTR            D17, [SP,#0x40+var_30]
F880C:  VSTR            D16, [SP,#0x40+var_28]
F8810:  VSTR            D20, [SP,#0x40+var_20]
F8814:  BL              sub_107188
F8818:  ADD             SP, SP, #0x30 ; '0'
F881A:  POP.W           {R11}
F881E:  POP             {R4-R7,PC}
