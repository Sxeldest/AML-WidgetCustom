; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence16IsInHearingRangeERK7CVector
; Address            : 0x4C02D8 - 0x4C032C
; =========================================================

4C02D8:  LDR.W           R12, [R0]
4C02DC:  VLDR            S0, [R1]
4C02E0:  LDR.W           R3, [R12,#0x14]
4C02E4:  ADD.W           R2, R3, #0x30 ; '0'
4C02E8:  CMP             R3, #0
4C02EA:  IT EQ
4C02EC:  ADDEQ.W         R2, R12, #4
4C02F0:  VLDR            D16, [R1,#4]
4C02F4:  VLDR            S2, [R2]
4C02F8:  VLDR            D17, [R2,#4]
4C02FC:  VSUB.F32        S0, S0, S2
4C0300:  VLDR            S4, [R0,#0xBC]
4C0304:  VSUB.F32        D16, D16, D17
4C0308:  MOVS            R0, #0
4C030A:  VMUL.F32        S4, S4, S4
4C030E:  VMUL.F32        D1, D16, D16
4C0312:  VMUL.F32        S0, S0, S0
4C0316:  VADD.F32        S0, S0, S2
4C031A:  VADD.F32        S0, S0, S3
4C031E:  VCMPE.F32       S0, S4
4C0322:  VMRS            APSR_nzcv, FPSCR
4C0326:  IT LT
4C0328:  MOVLT           R0, #1
4C032A:  BX              LR
