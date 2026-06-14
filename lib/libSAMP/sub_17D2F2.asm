; =========================================================
; Game Engine Function: sub_17D2F2
; Address            : 0x17D2F2 - 0x17D338
; =========================================================

17D2F2:  VLDR            S4, [R0,#8]
17D2F6:  VLDR            S2, [R0,#4]
17D2FA:  VMUL.F32        S8, S4, S4
17D2FE:  VLDR            S6, [R0,#0xC]
17D302:  VLDR            S0, [R0]
17D306:  VMLA.F32        S8, S2, S2
17D30A:  VMLA.F32        S8, S6, S6
17D30E:  VMLA.F32        S8, S0, S0
17D312:  VSQRT.F32       S8, S8
17D316:  VDIV.F32        S6, S6, S8
17D31A:  VDIV.F32        S4, S4, S8
17D31E:  VDIV.F32        S2, S2, S8
17D322:  VDIV.F32        S0, S0, S8
17D326:  VSTR            S0, [R0]
17D32A:  VSTR            S2, [R0,#4]
17D32E:  VSTR            S4, [R0,#8]
17D332:  VSTR            S6, [R0,#0xC]
17D336:  BX              LR
