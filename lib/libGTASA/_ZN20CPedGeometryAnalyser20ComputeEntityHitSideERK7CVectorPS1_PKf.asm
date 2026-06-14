; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorPS1_PKf
; Address            : 0x4AE228 - 0x4AE350
; =========================================================

4AE228:  VLDR            S0, [R0]
4AE22C:  VLDR            S2, [R1,#0x24]
4AE230:  VLDR            S6, [R0,#4]
4AE234:  VLDR            S8, [R1,#0x28]
4AE238:  VMUL.F32        S2, S0, S2
4AE23C:  VLDR            S12, [R1]
4AE240:  VLDR            S14, [R1,#4]
4AE244:  VMUL.F32        S8, S6, S8
4AE248:  VMUL.F32        S12, S0, S12
4AE24C:  VLDR            S4, [R0,#8]
4AE250:  VMUL.F32        S14, S6, S14
4AE254:  VLDR            S10, [R1,#0x2C]
4AE258:  VLDR            S1, [R1,#8]
4AE25C:  MOVS            R0, #0
4AE25E:  VMUL.F32        S10, S4, S10
4AE262:  VADD.F32        S2, S2, S8
4AE266:  VMUL.F32        S8, S4, S1
4AE26A:  VADD.F32        S12, S12, S14
4AE26E:  VADD.F32        S2, S2, S10
4AE272:  VLDR            S10, [R2]
4AE276:  VADD.F32        S8, S12, S8
4AE27A:  VLDR            S12, [R2,#0xC]
4AE27E:  VADD.F32        S2, S12, S2
4AE282:  VADD.F32        S10, S10, S8
4AE286:  VCMPE.F32       S2, #0.0
4AE28A:  VMRS            APSR_nzcv, FPSCR
4AE28E:  BLT             loc_4AE29C
4AE290:  VCMPE.F32       S10, #0.0
4AE294:  VMRS            APSR_nzcv, FPSCR
4AE298:  IT LT
4AE29A:  BXLT            LR
4AE29C:  VLDR            S8, [R1,#0xC]
4AE2A0:  MOVS            R3, #0
4AE2A2:  VLDR            S12, [R1,#0x10]
4AE2A6:  VMUL.F32        S8, S0, S8
4AE2AA:  VLDR            S14, [R1,#0x14]
4AE2AE:  VMUL.F32        S12, S6, S12
4AE2B2:  VMUL.F32        S14, S4, S14
4AE2B6:  VADD.F32        S8, S8, S12
4AE2BA:  VLDR            S12, [R2,#4]
4AE2BE:  VADD.F32        S8, S8, S14
4AE2C2:  VADD.F32        S8, S12, S8
4AE2C6:  VCMPE.F32       S8, #0.0
4AE2CA:  VMRS            APSR_nzcv, FPSCR
4AE2CE:  VCMPE.F32       S10, #0.0
4AE2D2:  IT LT
4AE2D4:  MOVLT           R3, #1
4AE2D6:  VMRS            APSR_nzcv, FPSCR
4AE2DA:  IT GE
4AE2DC:  MOVGE           R0, #1
4AE2DE:  ANDS            R0, R3
4AE2E0:  BNE             locret_4AE34E
4AE2E2:  VLDR            S10, [R1,#0x18]
4AE2E6:  VLDR            S12, [R1,#0x1C]
4AE2EA:  VMUL.F32        S0, S0, S10
4AE2EE:  VLDR            S14, [R1,#0x20]
4AE2F2:  VMUL.F32        S6, S6, S12
4AE2F6:  MOVS            R1, #0
4AE2F8:  VMUL.F32        S4, S4, S14
4AE2FC:  VADD.F32        S0, S0, S6
4AE300:  VADD.F32        S0, S0, S4
4AE304:  VLDR            S4, [R2,#8]
4AE308:  MOVS            R2, #0
4AE30A:  VADD.F32        S0, S4, S0
4AE30E:  VCMPE.F32       S0, #0.0
4AE312:  VMRS            APSR_nzcv, FPSCR
4AE316:  VCMPE.F32       S8, #0.0
4AE31A:  IT LT
4AE31C:  MOVLT           R2, #1
4AE31E:  VMRS            APSR_nzcv, FPSCR
4AE322:  IT GE
4AE324:  MOVGE           R1, #1
4AE326:  ANDS            R1, R2
4AE328:  CMP             R1, #0
4AE32A:  ITT NE
4AE32C:  MOVNE           R0, #2
4AE32E:  BXNE            LR
4AE330:  VCMPE.F32       S2, #0.0
4AE334:  IT NE
4AE336:  MOVNE           R0, #2
4AE338:  VMRS            APSR_nzcv, FPSCR
4AE33C:  MOV             R1, R0
4AE33E:  VCMPE.F32       S0, #0.0
4AE342:  IT LT
4AE344:  MOVLT           R1, #3
4AE346:  VMRS            APSR_nzcv, FPSCR
4AE34A:  IT GE
4AE34C:  MOVGE           R0, R1
4AE34E:  BX              LR
