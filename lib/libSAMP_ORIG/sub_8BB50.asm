; =========================================================
; Game Engine Function: sub_8BB50
; Address            : 0x8BB50 - 0x8BBBE
; =========================================================

8BB50:  VMOV            S0, R1
8BB54:  VCMP.F32        S0, #0.0
8BB58:  VMRS            APSR_nzcv, FPSCR
8BB5C:  ITTT MI
8BB5E:  VLDRMI          S2, =0.0
8BB62:  VMOVMI          R0, S2
8BB66:  BXMI            LR
8BB68:  LDR             R1, =(dword_1ACF68 - 0x8BB76)
8BB6A:  MOVW            R2, #0x19AC
8BB6E:  VCMP.F32        S0, #0.0
8BB72:  ADD             R1, PC; dword_1ACF68
8BB74:  VMRS            APSR_nzcv, FPSCR
8BB78:  LDR             R1, [R1]
8BB7A:  LDR             R1, [R1,R2]
8BB7C:  BNE             loc_8BB84
8BB7E:  VLDR            S0, [R1,#0x208]
8BB82:  B               loc_8BB9E
8BB84:  VCMP.F32        S0, #0.0
8BB88:  VMRS            APSR_nzcv, FPSCR
8BB8C:  ITTTT GT
8BB8E:  VLDRGT          S2, [R1,#0xC]
8BB92:  VLDRGT          S4, [R1,#0x50]
8BB96:  VSUBGT.F32      S2, S2, S4
8BB9A:  VADDGT.F32      S0, S2, S0
8BB9E:  VLDR            S4, [R0]
8BBA2:  VMOV.F32        S2, #1.0
8BBA6:  VSUB.F32        S0, S0, S4
8BBAA:  VCMP.F32        S0, S2
8BBAE:  VMRS            APSR_nzcv, FPSCR
8BBB2:  IT GE
8BBB4:  VMOVGE.F32      S2, S0
8BBB8:  VMOV            R0, S2
8BBBC:  BX              LR
