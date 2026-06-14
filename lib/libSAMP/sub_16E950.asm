; =========================================================
; Game Engine Function: sub_16E950
; Address            : 0x16E950 - 0x16E9AE
; =========================================================

16E950:  VMOV            S0, R0
16E954:  VCMP.F32        S0, #0.0
16E958:  VMRS            APSR_nzcv, FPSCR
16E95C:  ITT EQ
16E95E:  MOVEQ           R0, #1
16E960:  BXEQ            LR
16E962:  VMOV            S2, R2
16E966:  MOVS            R0, #0
16E968:  VCMP.F32        S0, S2
16E96C:  VMRS            APSR_nzcv, FPSCR
16E970:  ITTT HI
16E972:  VMOVHI          S4, R3
16E976:  VCMPHI.F32      S4, #0.0
16E97A:  VMRSHI          APSR_nzcv, FPSCR
16E97E:  BHI             loc_16E982
16E980:  BX              LR
16E982:  VMOV            S6, R1
16E986:  VSUB.F32        S0, S0, S2
16E98A:  VSUB.F32        S6, S6, S2
16E98E:  VDIV.F32        S0, S0, S4
16E992:  VDIV.F32        S2, S6, S4
16E996:  VCVT.S32.F32    S2, S2
16E99A:  VCVT.S32.F32    S0, S0
16E99E:  VMOV            R0, S2
16E9A2:  VMOV            R1, S0
16E9A6:  SUBS            R0, R1, R0
16E9A8:  BIC.W           R0, R0, R0,ASR#31
16E9AC:  BX              LR
