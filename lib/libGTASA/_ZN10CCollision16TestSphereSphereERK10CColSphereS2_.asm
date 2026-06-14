; =========================================================
; Game Engine Function: _ZN10CCollision16TestSphereSphereERK10CColSphereS2_
; Address            : 0x2D9960 - 0x2D99A8
; =========================================================

2D9960:  VLDR            S0, [R1]
2D9964:  VLDR            S2, [R0]
2D9968:  VLDR            D16, [R1,#4]
2D996C:  VSUB.F32        S0, S2, S0
2D9970:  VLDR            D17, [R0,#4]
2D9974:  VSUB.F32        D16, D17, D16
2D9978:  VLDR            S4, [R0,#0xC]
2D997C:  VLDR            S2, [R1,#0xC]
2D9980:  MOVS            R0, #0
2D9982:  VADD.F32        S2, S4, S2
2D9986:  VMUL.F32        D2, D16, D16
2D998A:  VMUL.F32        S0, S0, S0
2D998E:  VMUL.F32        S2, S2, S2
2D9992:  VADD.F32        S0, S0, S4
2D9996:  VADD.F32        S0, S0, S5
2D999A:  VCMPE.F32       S0, S2
2D999E:  VMRS            APSR_nzcv, FPSCR
2D99A2:  IT LT
2D99A4:  MOVLT           R0, #1
2D99A6:  BX              LR
