; =========================================================
; Game Engine Function: _Z14SetGlobalColorffff
; Address            : 0x1B4FD0 - 0x1B5046
; =========================================================

1B4FD0:  LDR.W           R12, =(GlobalColor_ptr - 0x1B4FE0)
1B4FD4:  VMOV            S0, R3
1B4FD8:  VMOV            S6, R0
1B4FDC:  ADD             R12, PC; GlobalColor_ptr
1B4FDE:  VMOV            S2, R2
1B4FE2:  VMOV            S4, R1
1B4FE6:  LDR.W           R3, [R12]; GlobalColor
1B4FEA:  VLDR            S8, [R3]
1B4FEE:  VCMP.F32        S8, S6
1B4FF2:  VMRS            APSR_nzcv, FPSCR
1B4FF6:  BNE             loc_1B5024
1B4FF8:  VLDR            S8, [R3,#4]
1B4FFC:  VCMP.F32        S8, S4
1B5000:  VMRS            APSR_nzcv, FPSCR
1B5004:  ITTT EQ
1B5006:  VLDREQ          S8, [R3,#8]
1B500A:  VCMPEQ.F32      S8, S2
1B500E:  VMRSEQ          APSR_nzcv, FPSCR
1B5012:  BNE             loc_1B5024
1B5014:  VLDR            S8, [R3,#0xC]
1B5018:  VCMP.F32        S8, S0
1B501C:  VMRS            APSR_nzcv, FPSCR
1B5020:  IT EQ
1B5022:  BXEQ            LR
1B5024:  LDR             R0, =(GlobalColor_ptr - 0x1B502C)
1B5026:  LDR             R1, =(GlobalColorDirty_ptr - 0x1B502E)
1B5028:  ADD             R0, PC; GlobalColor_ptr
1B502A:  ADD             R1, PC; GlobalColorDirty_ptr
1B502C:  LDR             R0, [R0]; GlobalColor
1B502E:  LDR             R1, [R1]; GlobalColorDirty
1B5030:  VSTR            S6, [R0]
1B5034:  VSTR            S4, [R0,#4]
1B5038:  VSTR            S2, [R0,#8]
1B503C:  VSTR            S0, [R0,#0xC]
1B5040:  MOVS            R0, #1
1B5042:  STRB            R0, [R1]
1B5044:  BX              LR
