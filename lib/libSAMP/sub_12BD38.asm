; =========================================================
; Game Engine Function: sub_12BD38
; Address            : 0x12BD38 - 0x12BD92
; =========================================================

12BD38:  VLDR            S6, [R0,#0x28]
12BD3C:  VLDR            S10, [R1,#4]
12BD40:  VLDR            S4, [R0,#0x24]
12BD44:  VLDR            S8, [R1]
12BD48:  VCMP.F32        S10, S6
12BD4C:  VLDR            S2, [R0,#0x20]
12BD50:  VMRS            APSR_nzcv, FPSCR
12BD54:  VCMP.F32        S8, S4
12BD58:  VLDR            S0, [R0,#0x1C]
12BD5C:  IT MI
12BD5E:  VMOVMI.F32      S10, S6
12BD62:  VMRS            APSR_nzcv, FPSCR
12BD66:  VCMP.F32        S10, S2
12BD6A:  IT MI
12BD6C:  VMOVMI.F32      S8, S4
12BD70:  VMRS            APSR_nzcv, FPSCR
12BD74:  VCMP.F32        S8, S0
12BD78:  IT GT
12BD7A:  VMOVGT.F32      S10, S2
12BD7E:  VMRS            APSR_nzcv, FPSCR
12BD82:  IT GT
12BD84:  VMOVGT.F32      S8, S0
12BD88:  VSTR            S8, [R0,#0x14]
12BD8C:  VSTR            S10, [R0,#0x18]
12BD90:  BX              LR
