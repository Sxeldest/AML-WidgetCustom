; =========================================================
; Game Engine Function: _ZN10CGameLogic22FindCityClosestToPointE7CVector
; Address            : 0x309F54 - 0x309FDC
; =========================================================

309F54:  VMOV            S6, R0
309F58:  VLDR            S0, =-1670.0
309F5C:  VLDR            S10, =-2161.0
309F60:  VMOV            S4, R1
309F64:  VLDR            S2, =1137.0
309F68:  VADD.F32        S0, S6, S0
309F6C:  VLDR            S8, =-2140.0
309F70:  VADD.F32        S10, S6, S10
309F74:  VADD.F32        S2, S4, S2
309F78:  VLDR            S14, =1810.0
309F7C:  VADD.F32        S8, S4, S8
309F80:  VLDR            S12, =-884.0
309F84:  VADD.F32        S6, S6, S14
309F88:  MOVS            R0, #1
309F8A:  VADD.F32        S4, S4, S12
309F8E:  VMUL.F32        S0, S0, S0
309F92:  VMUL.F32        S10, S10, S10
309F96:  VMUL.F32        S2, S2, S2
309F9A:  VMUL.F32        S8, S8, S8
309F9E:  VMUL.F32        S6, S6, S6
309FA2:  VMUL.F32        S4, S4, S4
309FA6:  VADD.F32        S0, S0, S2
309FAA:  VADD.F32        S2, S10, S8
309FAE:  VADD.F32        S4, S6, S4
309FB2:  VSQRT.F32       S0, S0
309FB6:  VSQRT.F32       S2, S2
309FBA:  VCMPE.F32       S2, S0
309FBE:  VMRS            APSR_nzcv, FPSCR
309FC2:  VMIN.F32        D3, D1, D0
309FC6:  VSQRT.F32       S4, S4
309FCA:  VCMPE.F32       S4, S6
309FCE:  IT LT
309FD0:  MOVLT           R0, #3
309FD2:  VMRS            APSR_nzcv, FPSCR
309FD6:  IT LT
309FD8:  MOVLT           R0, #2
309FDA:  BX              LR
