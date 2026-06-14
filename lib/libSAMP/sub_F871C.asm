; =========================================================
; Game Engine Function: sub_F871C
; Address            : 0xF871C - 0xF879C
; =========================================================

F871C:  PUSH            {R4-R7,LR}
F871E:  ADD             R7, SP, #0xC
F8720:  PUSH.W          {R11}
F8724:  SUB             SP, SP, #0x30
F8726:  LDR             R0, =(unk_B2BA6 - 0xF8732)
F8728:  MOV             R4, R3
F872A:  MOV             R5, R2
F872C:  MOV             R6, R1
F872E:  ADD             R0, PC; unk_B2BA6
F8730:  BL              sub_107188
F8734:  LDR             R0, =(unk_B2BE2 - 0xF873C)
F8736:  MOVS            R1, #1
F8738:  ADD             R0, PC; unk_B2BE2
F873A:  BL              sub_107188
F873E:  VLDR            S0, [R6]
F8742:  VLDR            S2, [R6,#4]
F8746:  VCVT.F64.F32    D16, S0
F874A:  LDR             R1, [R7,#arg_0]
F874C:  VMOV            R2, R3, D16
F8750:  VLDR            S4, [R6,#8]
F8754:  VLDR            S0, [R5]
F8758:  VLDR            S6, [R5,#4]
F875C:  VLDR            S8, [R5,#8]
F8760:  VCVT.F64.F32    D16, S6
F8764:  LDR             R0, =(a6Ffffffii - 0xF876E); "6\tffffffii" ...
F8766:  STRD.W          R4, R1, [SP,#0x40+var_18]
F876A:  ADD             R0, PC; "6\tffffffii"
F876C:  VCVT.F64.F32    D17, S0
F8770:  VCVT.F64.F32    D18, S4
F8774:  VCVT.F64.F32    D19, S2
F8778:  VCVT.F64.F32    D20, S8
F877C:  VSTR            D19, [SP,#0x40+var_40]
F8780:  VSTR            D18, [SP,#0x40+var_38]
F8784:  VSTR            D17, [SP,#0x40+var_30]
F8788:  VSTR            D16, [SP,#0x40+var_28]
F878C:  VSTR            D20, [SP,#0x40+var_20]
F8790:  BL              sub_107188
F8794:  ADD             SP, SP, #0x30 ; '0'
F8796:  POP.W           {R11}
F879A:  POP             {R4-R7,PC}
