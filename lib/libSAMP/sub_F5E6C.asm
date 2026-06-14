; =========================================================
; Game Engine Function: sub_F5E6C
; Address            : 0xF5E6C - 0xF5F04
; =========================================================

F5E6C:  PUSH            {R4,R5,R7,LR}
F5E6E:  ADD             R7, SP, #8
F5E70:  LDR             R0, =(off_23494C - 0xF5E7E)
F5E72:  MOV             R3, #0x952058
F5E7A:  ADD             R0, PC; off_23494C
F5E7C:  LDR             R1, [R0]; dword_23DF24
F5E7E:  LDR             R0, =(dword_237984 - 0xF5E86)
F5E80:  LDR             R1, [R1]
F5E82:  ADD             R0, PC; dword_237984
F5E84:  ADDS            R4, R1, R3
F5E86:  LDR             R5, [R0]
F5E88:  VLDR            S4, [R0,#4]
F5E8C:  LDR             R2, [R4,#0x14]
F5E8E:  VLDR            S2, [R4,#0x18]
F5E92:  LDR             R1, [R1,R3]
F5E94:  SUBS            R3, R2, R5
F5E96:  VLDR            S0, [R4,#4]
F5E9A:  IT NE
F5E9C:  MOVNE           R3, #1
F5E9E:  VCMP.F32        S2, S4
F5EA2:  MOVS            R5, #0
F5EA4:  VMRS            APSR_nzcv, FPSCR
F5EA8:  IT NE
F5EAA:  MOVNE           R5, #1
F5EAC:  ORRS            R3, R5
F5EAE:  CMP             R3, #1
F5EB0:  BNE             loc_F5EE0
F5EB2:  LDR             R3, =(dword_237974 - 0xF5EB8)
F5EB4:  ADD             R3, PC; dword_237974
F5EB6:  LDR             R5, [R3,#(dword_237978 - 0x237974)]
F5EB8:  CMP             R2, R5
F5EBA:  BGE             loc_F5EE0
F5EBC:  LDR             R3, [R3]
F5EBE:  CMP             R2, R3
F5EC0:  BLT             loc_F5EE0
F5EC2:  LDR             R5, =(byte_2400C8 - 0xF5ECE)
F5EC4:  CMP             R2, R3
F5EC6:  VSTR            S2, [R0,#4]
F5ECA:  ADD             R5, PC; byte_2400C8
F5ECC:  STR             R2, [R0]
F5ECE:  LDRB            R4, [R5]
F5ED0:  BNE             loc_F5EDA
F5ED2:  CMP             R4, #1
F5ED4:  BEQ             loc_F5EE0
F5ED6:  MOVS            R2, #1
F5ED8:  B               loc_F5EDE
F5EDA:  CBZ             R4, loc_F5EE0
F5EDC:  MOVS            R2, #0
F5EDE:  STRB            R2, [R5]
F5EE0:  LDR             R2, [R0,#(dword_23798C - 0x237984)]
F5EE2:  CMP             R1, R2
F5EE4:  ITTT EQ
F5EE6:  VLDREQ          S2, [R0,#0xC]
F5EEA:  VCMPEQ.F32      S0, S2
F5EEE:  VMRSEQ          APSR_nzcv, FPSCR
F5EF2:  BEQ             locret_F5F02
F5EF4:  VMOV            R2, S0
F5EF8:  MOVS            R0, #1
F5EFA:  POP.W           {R4,R5,R7,LR}
F5EFE:  B.W             sub_F5F14
F5F02:  POP             {R4,R5,R7,PC}
