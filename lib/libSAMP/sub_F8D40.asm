; =========================================================
; Game Engine Function: sub_F8D40
; Address            : 0xF8D40 - 0xF8DB0
; =========================================================

F8D40:  PUSH            {R7,LR}
F8D42:  MOV             R7, SP
F8D44:  SUB             SP, SP, #0x40
F8D46:  LDR             R1, [R0,#4]
F8D48:  VLDR            S0, =100000.0
F8D4C:  CBZ             R1, loc_F8DA8
F8D4E:  LDR             R1, [R1]
F8D50:  MOV             R2, #0x667D24
F8D58:  CMP             R1, R2
F8D5A:  BEQ             loc_F8DA8
F8D5C:  MOV             R1, SP
F8D5E:  BL              sub_F8910
F8D62:  LDR             R0, =(off_23494C - 0xF8D74)
F8D64:  MOV             R1, #0x9528D4
F8D6C:  VLDR            S2, [SP,#0x48+var_14]
F8D70:  ADD             R0, PC; off_23494C
F8D72:  VLDR            S0, [SP,#0x48+var_18]
F8D76:  VLDR            S4, [SP,#0x48+var_10]
F8D7A:  LDR             R0, [R0]; dword_23DF24
F8D7C:  LDR             R0, [R0]
F8D7E:  ADD             R0, R1
F8D80:  VLDR            S8, [R0,#4]
F8D84:  VLDR            S6, [R0]
F8D88:  VSUB.F32        S2, S2, S8
F8D8C:  VLDR            S10, [R0,#8]
F8D90:  VSUB.F32        S0, S0, S6
F8D94:  VSUB.F32        S4, S4, S10
F8D98:  VMUL.F32        S2, S2, S2
F8D9C:  VMLA.F32        S2, S0, S0
F8DA0:  VMLA.F32        S2, S4, S4
F8DA4:  VSQRT.F32       S0, S2
F8DA8:  VMOV            R0, S0
F8DAC:  ADD             SP, SP, #0x40 ; '@'
F8DAE:  POP             {R7,PC}
