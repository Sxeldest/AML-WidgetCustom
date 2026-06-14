; =========================================================
; Game Engine Function: sub_F8DB8
; Address            : 0xF8DB8 - 0xF8E0E
; =========================================================

F8DB8:  PUSH            {R4-R7,LR}
F8DBA:  ADD             R7, SP, #0xC
F8DBC:  PUSH.W          {R11}
F8DC0:  SUB             SP, SP, #0x40
F8DC2:  MOV             R6, R1
F8DC4:  MOV             R1, SP
F8DC6:  MOV             R4, R3
F8DC8:  MOV             R5, R2
F8DCA:  BL              sub_F8910
F8DCE:  VMOV            S0, R5
F8DD2:  VLDR            S4, [SP,#0x50+var_1C]
F8DD6:  VLDR            S2, [SP,#0x50+var_20]
F8DDA:  VSUB.F32        S0, S4, S0
F8DDE:  VLDR            S6, [SP,#0x50+var_18]
F8DE2:  VMOV            S4, R6
F8DE6:  VSUB.F32        S2, S2, S4
F8DEA:  VMOV            S4, R4
F8DEE:  VSUB.F32        S4, S6, S4
F8DF2:  VMUL.F32        S0, S0, S0
F8DF6:  VMLA.F32        S0, S2, S2
F8DFA:  VMLA.F32        S0, S4, S4
F8DFE:  VSQRT.F32       S0, S0
F8E02:  VMOV            R0, S0
F8E06:  ADD             SP, SP, #0x40 ; '@'
F8E08:  POP.W           {R11}
F8E0C:  POP             {R4-R7,PC}
