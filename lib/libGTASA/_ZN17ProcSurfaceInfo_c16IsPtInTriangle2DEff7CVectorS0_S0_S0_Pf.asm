; =========================================================
; Game Engine Function: _ZN17ProcSurfaceInfo_c16IsPtInTriangle2DEff7CVectorS0_S0_S0_Pf
; Address            : 0x4567F2 - 0x4568D4
; =========================================================

4567F2:  LDR             R0, [SP,#arg_0]
4567F4:  VMOV            S0, R1
4567F8:  VLDR            S8, [SP,#arg_14]
4567FC:  VMOV            S4, R3
456800:  VMOV            S2, R2
456804:  VLDR            S10, [SP,#arg_18]
456808:  VMOV            S6, R0
45680C:  MOVS            R0, #0
45680E:  VSUB.F32        S12, S8, S4
456812:  VSUB.F32        S1, S10, S2
456816:  VSUB.F32        S14, S8, S0
45681A:  VSUB.F32        S3, S6, S10
45681E:  VMUL.F32        S12, S1, S12
456822:  VMUL.F32        S14, S14, S3
456826:  VADD.F32        S12, S14, S12
45682A:  VCMPE.F32       S12, #0.0
45682E:  VMRS            APSR_nzcv, FPSCR
456832:  BGT             locret_4568D2
456834:  VLDR            S12, [SP,#arg_8]
456838:  VSUB.F32        S3, S6, S2
45683C:  VLDR            S14, [SP,#arg_C]
456840:  VSUB.F32        S5, S4, S0
456844:  VSUB.F32        S1, S4, S12
456848:  VSUB.F32        S7, S14, S6
45684C:  VMUL.F32        S1, S3, S1
456850:  VMUL.F32        S3, S5, S7
456854:  VADD.F32        S1, S3, S1
456858:  VCMPE.F32       S1, #0.0
45685C:  VMRS            APSR_nzcv, FPSCR
456860:  BGT             locret_4568D2
456862:  VSUB.F32        S8, S12, S8
456866:  VSUB.F32        S1, S14, S2
45686A:  VSUB.F32        S10, S10, S14
45686E:  VSUB.F32        S12, S12, S0
456872:  VMUL.F32        S8, S1, S8
456876:  VMUL.F32        S10, S12, S10
45687A:  VADD.F32        S8, S10, S8
45687E:  VCMPE.F32       S8, #0.0
456882:  VMRS            APSR_nzcv, FPSCR
456886:  IT GT
456888:  BXGT            LR
45688A:  LDRD.W          R2, R1, [SP,#arg_20]
45688E:  VMOV            S10, R1
456892:  LDR             R3, [SP,#arg_4]
456894:  LDRD.W          R0, R12, [SP,#arg_28]
456898:  VMOV            S8, R2
45689C:  VMUL.F32        S6, S6, S10
4568A0:  VMUL.F32        S4, S4, S8
4568A4:  VMOV            S12, R0
4568A8:  MOVS            R0, #1
4568AA:  VMOV            S14, R3
4568AE:  VNMUL.F32       S0, S8, S0
4568B2:  VMUL.F32        S2, S10, S2
4568B6:  VMUL.F32        S8, S14, S12
4568BA:  VADD.F32        S4, S4, S6
4568BE:  VSUB.F32        S0, S0, S2
4568C2:  VADD.F32        S2, S8, S4
4568C6:  VADD.F32        S0, S0, S2
4568CA:  VDIV.F32        S0, S0, S12
4568CE:  VSTR            S0, [R12]
4568D2:  BX              LR
