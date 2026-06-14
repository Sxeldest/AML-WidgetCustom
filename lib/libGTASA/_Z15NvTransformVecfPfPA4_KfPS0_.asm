; =========================================================
; Game Engine Function: _Z15NvTransformVecfPfPA4_KfPS0_
; Address            : 0x277556 - 0x2775E8
; =========================================================

277556:  VLDR            S0, [R2]
27755A:  VLDR            S6, [R1]
27755E:  VLDR            S2, [R2,#4]
277562:  VLDR            S8, [R1,#0x10]
277566:  VMUL.F32        S0, S6, S0
27756A:  VLDR            S4, [R2,#8]
27756E:  VMUL.F32        S2, S8, S2
277572:  VLDR            S10, [R1,#0x20]
277576:  VMUL.F32        S4, S10, S4
27757A:  VADD.F32        S0, S0, S2
27757E:  VADD.F32        S0, S0, S4
277582:  VSTR            S0, [R0]
277586:  VLDR            S0, [R2]
27758A:  VLDR            S6, [R1,#4]
27758E:  VLDR            S2, [R2,#4]
277592:  VLDR            S8, [R1,#0x14]
277596:  VMUL.F32        S0, S6, S0
27759A:  VLDR            S4, [R2,#8]
27759E:  VMUL.F32        S2, S8, S2
2775A2:  VLDR            S10, [R1,#0x24]
2775A6:  VMUL.F32        S4, S10, S4
2775AA:  VADD.F32        S0, S0, S2
2775AE:  VADD.F32        S0, S0, S4
2775B2:  VSTR            S0, [R0,#4]
2775B6:  VLDR            S0, [R2]
2775BA:  VLDR            S6, [R1,#8]
2775BE:  VLDR            S2, [R2,#4]
2775C2:  VLDR            S8, [R1,#0x18]
2775C6:  VMUL.F32        S0, S6, S0
2775CA:  VLDR            S4, [R2,#8]
2775CE:  VMUL.F32        S2, S8, S2
2775D2:  VLDR            S10, [R1,#0x28]
2775D6:  VMUL.F32        S4, S10, S4
2775DA:  VADD.F32        S0, S0, S2
2775DE:  VADD.F32        S0, S0, S4
2775E2:  VSTR            S0, [R0,#8]
2775E6:  BX              LR
