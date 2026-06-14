; =========================================================
; Game Engine Function: _ZNK10CColSphere14IntersectPointERK7CVector
; Address            : 0x2E1F84 - 0x2E1FC4
; =========================================================

2E1F84:  VLDR            S0, [R1]
2E1F88:  VLDR            S2, [R0]
2E1F8C:  VLDR            D16, [R1,#4]
2E1F90:  VSUB.F32        S0, S2, S0
2E1F94:  VLDR            D17, [R0,#4]
2E1F98:  VSUB.F32        D16, D17, D16
2E1F9C:  VLDR            S4, [R0,#0xC]
2E1FA0:  MOVS            R0, #0
2E1FA2:  VMUL.F32        S4, S4, S4
2E1FA6:  VMUL.F32        D1, D16, D16
2E1FAA:  VMUL.F32        S0, S0, S0
2E1FAE:  VADD.F32        S0, S0, S2
2E1FB2:  VADD.F32        S0, S0, S3
2E1FB6:  VCMPE.F32       S0, S4
2E1FBA:  VMRS            APSR_nzcv, FPSCR
2E1FBE:  IT LT
2E1FC0:  MOVLT           R0, #1
2E1FC2:  BX              LR
