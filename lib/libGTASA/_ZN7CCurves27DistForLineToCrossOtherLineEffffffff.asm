; =========================================================
; Game Engine Function: _ZN7CCurves27DistForLineToCrossOtherLineEffffffff
; Address            : 0x302E4A - 0x302EAC
; =========================================================

302E4A:  VLDR            S0, [SP,#arg_C]
302E4E:  VMOV            S6, R2
302E52:  VLDR            S2, [SP,#arg_8]
302E56:  VMOV            S4, R3
302E5A:  VMUL.F32        S6, S6, S0
302E5E:  VMUL.F32        S4, S4, S2
302E62:  VSUB.F32        S4, S6, S4
302E66:  VCMP.F32        S4, #0.0
302E6A:  VMRS            APSR_nzcv, FPSCR
302E6E:  ITTT EQ
302E70:  VMOVEQ.F32      S0, #-1.0
302E74:  VMOVEQ          R0, S0
302E78:  BXEQ            LR
302E7A:  VLDR            S6, [SP,#arg_4]
302E7E:  VMOV            S10, R1
302E82:  VLDR            S8, [SP,#arg_0]
302E86:  VMOV            S12, R0
302E8A:  VSUB.F32        S6, S10, S6
302E8E:  VSUB.F32        S8, S12, S8
302E92:  VMUL.F32        S2, S6, S2
302E96:  VMUL.F32        S0, S8, S0
302E9A:  VSUB.F32        S0, S0, S2
302E9E:  VNEG.F32        S0, S0
302EA2:  VDIV.F32        S0, S0, S4
302EA6:  VMOV            R0, S0
302EAA:  BX              LR
