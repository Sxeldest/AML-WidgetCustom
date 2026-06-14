; =========================================================
; Game Engine Function: _ZNK5CDoor17GetAngleOpenRatioEv
; Address            : 0x56F274 - 0x56F29A
; =========================================================

56F274:  VLDR            S0, [R0]
56F278:  VCMP.F32        S0, #0.0
56F27C:  VMRS            APSR_nzcv, FPSCR
56F280:  ITTT EQ
56F282:  VLDREQ          S0, =0.0
56F286:  VMOVEQ          R0, S0
56F28A:  BXEQ            LR
56F28C:  VLDR            S2, [R0,#0xC]
56F290:  VDIV.F32        S0, S2, S0
56F294:  VMOV            R0, S0
56F298:  BX              LR
