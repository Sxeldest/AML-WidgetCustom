; =========================================================
; Game Engine Function: _ZN8CCarCtrl22FindIntersection2LinesEffffffffPfS0_
; Address            : 0x2F8ECC - 0x2F8F3E
; =========================================================

2F8ECC:  VLDR            S8, [SP,#arg_C]
2F8ED0:  VMOV            S2, R2
2F8ED4:  VMOV            S0, R3
2F8ED8:  VLDR            S10, [SP,#arg_8]
2F8EDC:  VMUL.F32        S6, S2, S8
2F8EE0:  LDRD.W          R3, R2, [SP,#arg_10]
2F8EE4:  VMUL.F32        S4, S0, S10
2F8EE8:  VSUB.F32        S12, S6, S4
2F8EEC:  VMOV            S4, R1
2F8EF0:  VMOV            S6, R0
2F8EF4:  VCMP.F32        S12, #0.0
2F8EF8:  VMRS            APSR_nzcv, FPSCR
2F8EFC:  BEQ             loc_2F8F20
2F8EFE:  VLDR            S14, [SP,#arg_4]
2F8F02:  VLDR            S1, [SP,#arg_0]
2F8F06:  VSUB.F32        S14, S14, S4
2F8F0A:  VSUB.F32        S1, S1, S6
2F8F0E:  VMUL.F32        S10, S14, S10
2F8F12:  VMUL.F32        S8, S1, S8
2F8F16:  VSUB.F32        S8, S8, S10
2F8F1A:  VDIV.F32        S8, S8, S12
2F8F1E:  B               loc_2F8F24
2F8F20:  VLDR            S8, =0.0
2F8F24:  VMUL.F32        S2, S8, S2
2F8F28:  VMUL.F32        S0, S8, S0
2F8F2C:  VADD.F32        S2, S2, S6
2F8F30:  VADD.F32        S0, S0, S4
2F8F34:  VSTR            S2, [R3]
2F8F38:  VSTR            S0, [R2]
2F8F3C:  BX              LR
