; =========================================================
; Game Engine Function: sub_113F62
; Address            : 0x113F62 - 0x113FD4
; =========================================================

113F62:  PUSH            {R4,R5,R7,LR}
113F64:  ADD             R7, SP, #8
113F66:  VPUSH           {D8}
113F6A:  SUB             SP, SP, #8
113F6C:  MOV             R4, R0
113F6E:  LDR             R0, [R1]
113F70:  MOV             R5, R1
113F72:  LDR             R3, [R0,#4]
113F74:  MOV             R0, SP
113F76:  BLX             R3
113F78:  VLDR            S16, [SP,#0x18+var_18]
113F7C:  VCMP.F32        S16, #0.0
113F80:  VMRS            APSR_nzcv, FPSCR
113F84:  ITTT EQ
113F86:  VLDREQ          S0, [SP,#0x18+var_14]
113F8A:  VCMPEQ.F32      S0, #0.0
113F8E:  VMRSEQ          APSR_nzcv, FPSCR
113F92:  BEQ             loc_113FC4
113F94:  LDR.W           R0, [R5,#-0x10]!
113F98:  LDR             R1, [R0,#4]
113F9A:  MOV             R0, R5
113F9C:  BLX             R1
113F9E:  VMOV            S0, R0
113FA2:  LDR             R0, [R5]
113FA4:  VMUL.F32        S0, S16, S0
113FA8:  VLDR            S16, [SP,#0x18+var_14]
113FAC:  LDR             R1, [R0,#4]
113FAE:  MOV             R0, R5
113FB0:  VSTR            S0, [R4]
113FB4:  BLX             R1
113FB6:  VMOV            S0, R0
113FBA:  VMUL.F32        S0, S16, S0
113FBE:  VSTR            S0, [R4,#4]
113FC2:  B               loc_113FCC
113FC4:  LDRD.W          R0, R1, [SP,#0x18+var_18]
113FC8:  STRD.W          R0, R1, [R4]
113FCC:  ADD             SP, SP, #8
113FCE:  VPOP            {D8}
113FD2:  POP             {R4,R5,R7,PC}
