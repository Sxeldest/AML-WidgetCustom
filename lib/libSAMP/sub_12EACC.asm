; =========================================================
; Game Engine Function: sub_12EACC
; Address            : 0x12EACC - 0x12EB2A
; =========================================================

12EACC:  PUSH            {R4,R5,R7,LR}
12EACE:  ADD             R7, SP, #8
12EAD0:  SUB             SP, SP, #0x20
12EAD2:  MOV             R5, R0
12EAD4:  LDR             R0, [R0,#0x2C]
12EAD6:  LDR             R2, [R5,#0x30]
12EAD8:  MOV             R4, R1
12EADA:  VLDR            S2, [R5,#0x14]
12EADE:  ADD.W           R3, R5, #0x74 ; 't'
12EAE2:  VMOV            S6, R0
12EAE6:  VLDR            S4, [R5,#0x18]
12EAEA:  VMOV            S0, R2
12EAEE:  LDR             R1, [R5,#0x70]
12EAF0:  VADD.F32        S2, S2, S6
12EAF4:  STRD.W          R0, R2, [SP,#0x28+var_10]
12EAF8:  VADD.F32        S0, S4, S0
12EAFC:  ADD.W           R2, R5, #0x7C ; '|'
12EB00:  LDR             R1, [R1]
12EB02:  MOV.W           R0, #0xFFFFFFFF
12EB06:  STRD.W          R3, R2, [SP,#0x28+var_28]
12EB0A:  ADD             R2, SP, #0x28+var_10
12EB0C:  ADD             R3, SP, #0x28+var_18
12EB0E:  STR             R0, [SP,#0x28+var_20]
12EB10:  MOV             R0, R4
12EB12:  VSTR            S2, [SP,#0x28+var_18]
12EB16:  VSTR            S0, [SP,#0x28+var_14]
12EB1A:  BL              sub_12B2C0
12EB1E:  MOV             R0, R5
12EB20:  MOV             R1, R4
12EB22:  BL              sub_12C0B6
12EB26:  ADD             SP, SP, #0x20 ; ' '
12EB28:  POP             {R4,R5,R7,PC}
