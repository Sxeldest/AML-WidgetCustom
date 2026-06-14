; =========================================================
; Game Engine Function: _ZN10CCollision16GetPrincipleAxisEP7CVector
; Address            : 0x2E0244 - 0x2E0286
; =========================================================

2E0244:  VLDR            S2, [R0,#4]
2E0248:  MOVS            R1, #4
2E024A:  VLDR            S4, [R0,#8]
2E024E:  VABS.F32        S2, S2
2E0252:  VLDR            S0, [R0]
2E0256:  VABS.F32        S4, S4
2E025A:  VABS.F32        S0, S0
2E025E:  VCMPE.F32       S2, S4
2E0262:  VMRS            APSR_nzcv, FPSCR
2E0266:  VCMPE.F32       S0, S4
2E026A:  IT GT
2E026C:  MOVGT           R1, #2
2E026E:  VMRS            APSR_nzcv, FPSCR
2E0272:  MOV             R0, R1
2E0274:  VCMPE.F32       S0, S2
2E0278:  IT GT
2E027A:  MOVGT           R0, #0
2E027C:  VMRS            APSR_nzcv, FPSCR
2E0280:  IT LE
2E0282:  MOVLE           R0, R1
2E0284:  BX              LR
