; =========================================================
; Game Engine Function: sub_108D80
; Address            : 0x108D80 - 0x108DC8
; =========================================================

108D80:  VMOV            S0, R0
108D84:  VLDR            S2, [R2]
108D88:  VCMP.F32        S2, S0
108D8C:  VMRS            APSR_nzcv, FPSCR
108D90:  BHI             loc_108DC4
108D92:  VLDR            S2, [R2,#8]
108D96:  VCMP.F32        S2, S0
108D9A:  VMRS            APSR_nzcv, FPSCR
108D9E:  BLT             loc_108DC4
108DA0:  VMOV            S0, R1
108DA4:  VLDR            S2, [R2,#0xC]
108DA8:  VCMP.F32        S2, S0
108DAC:  VMRS            APSR_nzcv, FPSCR
108DB0:  BHI             loc_108DC4
108DB2:  VLDR            S2, [R2,#4]
108DB6:  VCMP.F32        S2, S0
108DBA:  VMRS            APSR_nzcv, FPSCR
108DBE:  ITT GE
108DC0:  MOVGE           R0, #1
108DC2:  BXGE            LR
108DC4:  MOVS            R0, #0
108DC6:  BX              LR
