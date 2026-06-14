; =========================================================
; Game Engine Function: sub_16EA84
; Address            : 0x16EA84 - 0x16EB0A
; =========================================================

16EA84:  LDR             R2, =(dword_381B58 - 0x16EA8A)
16EA86:  ADD             R2, PC; dword_381B58
16EA88:  LDR             R2, [R2]
16EA8A:  ADD.W           R0, R2, R0,LSL#2
16EA8E:  VLDR            S0, [R0,#0x3F4]
16EA92:  MOVS            R0, #0
16EA94:  VCMP.F32        S0, #0.0
16EA98:  VMRS            APSR_nzcv, FPSCR
16EA9C:  ITE EQ
16EA9E:  MOVEQ           R0, #1
16EAA0:  CMPNE           R1, #0
16EAA2:  BNE             loc_16EAA6
16EAA4:  BX              LR
16EAA6:  VLDR            S2, [R2,#0x88]
16EAAA:  VCMP.F32        S0, S2
16EAAE:  VMRS            APSR_nzcv, FPSCR
16EAB2:  BLE             loc_16EB06
16EAB4:  VCMP.F32        S0, S2
16EAB8:  VMRS            APSR_nzcv, FPSCR
16EABC:  ITTTT HI
16EABE:  VMOVHI.F32      S4, #0.5
16EAC2:  VLDRHI          S6, [R2,#0x8C]
16EAC6:  VMULHI.F32      S4, S6, S4
16EACA:  VCMPHI.F32      S4, #0.0
16EACE:  IT HI
16EAD0:  VMRSHI          APSR_nzcv, FPSCR
16EAD4:  BLS             loc_16EB06
16EAD6:  VLDR            S6, [R2,#0x18]
16EADA:  VSUB.F32        S6, S0, S6
16EADE:  VSUB.F32        S0, S0, S2
16EAE2:  VSUB.F32        S2, S6, S2
16EAE6:  VDIV.F32        S0, S0, S4
16EAEA:  VDIV.F32        S2, S2, S4
16EAEE:  VCVT.S32.F32    S0, S0
16EAF2:  VCVT.S32.F32    S2, S2
16EAF6:  VMOV            R0, S0
16EAFA:  VMOV            R1, S2
16EAFE:  CMP             R0, R1
16EB00:  ITT GT
16EB02:  MOVGT           R0, #1
16EB04:  BXGT            LR
16EB06:  MOVS            R0, #0
16EB08:  BX              LR
