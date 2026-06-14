; =========================================================
; Game Engine Function: _ZN7CVector15NormaliseAndMagEv
; Address            : 0x450BD8 - 0x450C40
; =========================================================

450BD8:  VLDR            S0, [R0]
450BDC:  VLDR            S4, [R0,#4]
450BE0:  VMUL.F32        S8, S0, S0
450BE4:  VLDR            S2, [R0,#8]
450BE8:  VMUL.F32        S6, S4, S4
450BEC:  VMUL.F32        S10, S2, S2
450BF0:  VADD.F32        S6, S8, S6
450BF4:  VADD.F32        S6, S6, S10
450BF8:  VCMPE.F32       S6, #0.0
450BFC:  VMRS            APSR_nzcv, FPSCR
450C00:  BLE             loc_450C30
450C02:  VSQRT.F32       S6, S6
450C06:  VMOV.F32        S8, #1.0
450C0A:  VDIV.F32        S10, S8, S6
450C0E:  VDIV.F32        S6, S8, S10
450C12:  VMUL.F32        S0, S0, S10
450C16:  VMUL.F32        S4, S10, S4
450C1A:  VMUL.F32        S2, S10, S2
450C1E:  VSTR            S0, [R0]
450C22:  VSTR            S4, [R0,#4]
450C26:  VSTR            S2, [R0,#8]
450C2A:  VMOV            R0, S6
450C2E:  BX              LR
450C30:  VMOV.F32        S6, #1.0
450C34:  MOV.W           R1, #0x3F800000
450C38:  STR             R1, [R0]
450C3A:  VMOV            R0, S6
450C3E:  BX              LR
