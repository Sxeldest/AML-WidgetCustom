; =========================================================
; Game Engine Function: _ZN9CPathFind22FindStartPointOfRegionEiiRfS0_
; Address            : 0x318CC8 - 0x318CFC
; =========================================================

318CC8:  VMOV            S0, R1
318CCC:  VLDR            S4, =750.0
318CD0:  VMOV            S2, R2
318CD4:  LDR             R0, [SP,#arg_0]
318CD6:  VCVT.F32.S32    S0, S0
318CDA:  VCVT.F32.S32    S2, S2
318CDE:  VMUL.F32        S0, S0, S4
318CE2:  VMUL.F32        S2, S2, S4
318CE6:  VLDR            S4, =-3000.0
318CEA:  VADD.F32        S0, S0, S4
318CEE:  VADD.F32        S2, S2, S4
318CF2:  VSTR            S0, [R3]
318CF6:  VSTR            S2, [R0]
318CFA:  BX              LR
