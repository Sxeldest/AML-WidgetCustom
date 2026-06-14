; =========================================================
; Game Engine Function: _ZN10CCollision28GetBoundingBoxFromTwoSpheresEP7CColBoxP10CColSphereS3_
; Address            : 0x2DE8E4 - 0x2DE976
; =========================================================

2DE8E4:  VLDR            S0, [R1]
2DE8E8:  MOV             R3, R1
2DE8EA:  VLDR            S4, [R2]
2DE8EE:  VLDR            S2, [R1,#0xC]
2DE8F2:  VCMPE.F32       S0, S4
2DE8F6:  VMRS            APSR_nzcv, FPSCR
2DE8FA:  VMIN.F32        D3, D0, D2
2DE8FE:  VSUB.F32        S6, S6, S2
2DE902:  VSTR            S6, [R0]
2DE906:  IT LT
2DE908:  MOVLT           R3, R2
2DE90A:  VLDR            S0, [R3]
2DE90E:  ADDS            R3, R1, #4
2DE910:  VADD.F32        S0, S2, S0
2DE914:  VSTR            S0, [R0,#0xC]
2DE918:  VLDR            S0, [R2,#4]
2DE91C:  VLDR            S4, [R1,#4]
2DE920:  VCMPE.F32       S4, S0
2DE924:  VMRS            APSR_nzcv, FPSCR
2DE928:  VMIN.F32        D3, D2, D0
2DE92C:  VSUB.F32        S6, S6, S2
2DE930:  VSTR            S6, [R0,#4]
2DE934:  IT LT
2DE936:  ADDLT           R3, R2, #4
2DE938:  VLDR            S0, [R3]
2DE93C:  VADD.F32        S0, S2, S0
2DE940:  VSTR            S0, [R0,#0x10]
2DE944:  VLDR            S4, [R1,#8]
2DE948:  ADDS            R1, #8
2DE94A:  VLDR            S0, [R2,#8]
2DE94E:  VCMPE.F32       S4, S0
2DE952:  VMRS            APSR_nzcv, FPSCR
2DE956:  VMIN.F32        D3, D2, D0
2DE95A:  VSUB.F32        S6, S6, S2
2DE95E:  VSTR            S6, [R0,#8]
2DE962:  IT LT
2DE964:  ADDLT.W         R1, R2, #8
2DE968:  VLDR            S0, [R1]
2DE96C:  VADD.F32        S0, S2, S0
2DE970:  VSTR            S0, [R0,#0x14]
2DE974:  BX              LR
