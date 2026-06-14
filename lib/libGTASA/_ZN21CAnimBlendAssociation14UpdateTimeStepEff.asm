; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation14UpdateTimeStepEff
; Address            : 0x38BD84 - 0x38BDB4
; =========================================================

38BD84:  LDRH            R3, [R0,#0x2E]
38BD86:  TST.W           R3, #1
38BD8A:  IT EQ
38BD8C:  BXEQ            LR
38BD8E:  VMOV            S0, R1
38BD92:  LSLS            R1, R3, #0x1A
38BD94:  BMI             loc_38BD9C
38BD96:  VLDR            S2, [R0,#0x24]
38BD9A:  B               loc_38BDAA
38BD9C:  LDR             R1, [R0,#0x14]
38BD9E:  VMOV            S2, R2
38BDA2:  VLDR            S4, [R1,#0x10]
38BDA6:  VMUL.F32        S2, S4, S2
38BDAA:  VMUL.F32        S0, S2, S0
38BDAE:  VSTR            S0, [R0,#0x28]
38BDB2:  BX              LR
