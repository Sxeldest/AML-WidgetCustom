; =========================================================
; Game Engine Function: _ZN7CWidget14IsInsideCircleE9CVector2D5CRect
; Address            : 0x2B403E - 0x2B409E
; =========================================================

2B403E:  VLDR            S0, [SP,#arg_4]
2B4042:  VMOV            S4, R3
2B4046:  VMOV            S2, R2
2B404A:  VLDR            S6, [SP,#arg_0]
2B404E:  VADD.F32        S0, S4, S0
2B4052:  VMOV.F32        S8, #0.5
2B4056:  VADD.F32        S4, S2, S6
2B405A:  VMOV            S12, R0
2B405E:  MOVS            R0, #0
2B4060:  VMOV            S10, R1
2B4064:  VSUB.F32        S2, S6, S2
2B4068:  VMUL.F32        S0, S0, S8
2B406C:  VMUL.F32        S4, S4, S8
2B4070:  VABS.F32        S2, S2
2B4074:  VSUB.F32        S0, S10, S0
2B4078:  VSUB.F32        S4, S12, S4
2B407C:  VMUL.F32        S2, S2, S8
2B4080:  VMUL.F32        S0, S0, S0
2B4084:  VMUL.F32        S4, S4, S4
2B4088:  VADD.F32        S0, S4, S0
2B408C:  VSQRT.F32       S0, S0
2B4090:  VCMPE.F32       S0, S2
2B4094:  VMRS            APSR_nzcv, FPSCR
2B4098:  IT LT
2B409A:  MOVLT           R0, #1
2B409C:  BX              LR
