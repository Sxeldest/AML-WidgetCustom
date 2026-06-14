; =========================================================
; Game Engine Function: _ZN10FxSystem_c19UpdateBoundingBoxCBEP10Particle_ciPPv
; Address            : 0x36EFE2 - 0x36F07A
; =========================================================

36EFE2:  CMP             R1, #0
36EFE4:  IT NE
36EFE6:  BXNE            LR
36EFE8:  LDR             R1, [R2]
36EFEA:  VLDR            S0, [R0,#0x10]
36EFEE:  VLDR            S2, [R1]
36EFF2:  VCMPE.F32       S0, S2
36EFF6:  VMRS            APSR_nzcv, FPSCR
36EFFA:  ITTT LT
36EFFC:  VSTRLT          S0, [R1]
36F000:  LDRLT           R1, [R2]
36F002:  VLDRLT          S0, [R0,#0x10]
36F006:  VLDR            S2, [R1,#4]
36F00A:  VCMPE.F32       S0, S2
36F00E:  VMRS            APSR_nzcv, FPSCR
36F012:  ITT GT
36F014:  VSTRGT          S0, [R1,#4]
36F018:  LDRGT           R1, [R2]
36F01A:  VLDR            S0, [R0,#0x14]
36F01E:  VLDR            S2, [R1,#8]
36F022:  VCMPE.F32       S0, S2
36F026:  VMRS            APSR_nzcv, FPSCR
36F02A:  ITTT LT
36F02C:  VSTRLT          S0, [R1,#8]
36F030:  LDRLT           R1, [R2]
36F032:  VLDRLT          S0, [R0,#0x14]
36F036:  VLDR            S2, [R1,#0xC]
36F03A:  VCMPE.F32       S0, S2
36F03E:  VMRS            APSR_nzcv, FPSCR
36F042:  ITT GT
36F044:  VSTRGT          S0, [R1,#0xC]
36F048:  LDRGT           R1, [R2]
36F04A:  VLDR            S0, [R0,#0x18]
36F04E:  VLDR            S2, [R1,#0x10]
36F052:  VCMPE.F32       S0, S2
36F056:  VMRS            APSR_nzcv, FPSCR
36F05A:  ITTT LT
36F05C:  VSTRLT          S0, [R1,#0x10]
36F060:  LDRLT           R1, [R2]
36F062:  VLDRLT          S0, [R0,#0x18]
36F066:  VLDR            S2, [R1,#0x14]
36F06A:  VCMPE.F32       S0, S2
36F06E:  VMRS            APSR_nzcv, FPSCR
36F072:  IT GT
36F074:  VSTRGT          S0, [R1,#0x14]
36F078:  BX              LR
