; =========================================================
; Game Engine Function: sub_16E9B0
; Address            : 0x16E9B0 - 0x16EA28
; =========================================================

16E9B0:  CMP             R0, #0
16E9B2:  BMI             loc_16E9F4
16E9B4:  LDR             R3, =(dword_381B58 - 0x16E9BA)
16E9B6:  ADD             R3, PC; dword_381B58
16E9B8:  LDR             R3, [R3]
16E9BA:  ADD.W           R0, R3, R0,LSL#2
16E9BE:  ADD.W           R0, R0, #0x458
16E9C2:  VLDR            S0, [R0]
16E9C6:  VCMP.F32        S0, #0.0
16E9CA:  VMRS            APSR_nzcv, FPSCR
16E9CE:  ITT EQ
16E9D0:  MOVEQ           R0, #1
16E9D2:  BXEQ            LR
16E9D4:  VMOV            S2, R2
16E9D8:  MOVS            R0, #0
16E9DA:  VCMP.F32        S2, #0.0
16E9DE:  VMRS            APSR_nzcv, FPSCR
16E9E2:  ITTT HI
16E9E4:  VMOVHI          S4, R1
16E9E8:  VCMPHI.F32      S0, S4
16E9EC:  VMRSHI          APSR_nzcv, FPSCR
16E9F0:  BHI             loc_16E9F8
16E9F2:  BX              LR
16E9F4:  MOVS            R0, #0
16E9F6:  BX              LR
16E9F8:  VLDR            S6, [R3,#0x18]
16E9FC:  VSUB.F32        S6, S0, S6
16EA00:  VSUB.F32        S0, S0, S4
16EA04:  VSUB.F32        S6, S6, S4
16EA08:  VDIV.F32        S0, S0, S2
16EA0C:  VDIV.F32        S4, S6, S2
16EA10:  VCVT.S32.F32    S2, S4
16EA14:  VCVT.S32.F32    S0, S0
16EA18:  VMOV            R0, S2
16EA1C:  VMOV            R1, S0
16EA20:  SUBS            R0, R1, R0
16EA22:  BIC.W           R0, R0, R0,ASR#31
16EA26:  BX              LR
