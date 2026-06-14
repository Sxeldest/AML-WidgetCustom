; =========================================================
; Game Engine Function: _ZN8CGeneral14SolveQuadraticEfffRfS0_
; Address            : 0x3F4CE4 - 0x3F4D44
; =========================================================

3F4CE4:  VMOV.F32        S2, #-4.0
3F4CE8:  VMOV            S0, R0
3F4CEC:  VMOV            S6, R2
3F4CF0:  VMUL.F32        S4, S0, S2
3F4CF4:  VMOV            S2, R1
3F4CF8:  VMUL.F32        S8, S2, S2
3F4CFC:  VMUL.F32        S4, S4, S6
3F4D00:  VADD.F32        S4, S8, S4
3F4D04:  VCMPE.F32       S4, #0.0
3F4D08:  VMRS            APSR_nzcv, FPSCR
3F4D0C:  ITT LT
3F4D0E:  MOVLT           R0, #0
3F4D10:  BXLT            LR
3F4D12:  VSQRT.F32       S4, S4
3F4D16:  LDR             R0, [SP,#arg_0]
3F4D18:  VNEG.F32        S6, S2
3F4D1C:  VSUB.F32        S2, S4, S2
3F4D20:  VMOV.F32        S8, #0.5
3F4D24:  VSUB.F32        S4, S6, S4
3F4D28:  VMUL.F32        S2, S2, S8
3F4D2C:  VMUL.F32        S4, S4, S8
3F4D30:  VDIV.F32        S2, S2, S0
3F4D34:  VDIV.F32        S0, S4, S0
3F4D38:  VSTR            S2, [R0]
3F4D3C:  MOVS            R0, #1
3F4D3E:  VSTR            S0, [R3]
3F4D42:  BX              LR
