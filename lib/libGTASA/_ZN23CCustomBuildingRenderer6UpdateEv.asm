; =========================================================
; Game Engine Function: _ZN23CCustomBuildingRenderer6UpdateEv
; Address            : 0x2CA334 - 0x2CA3DC
; =========================================================

2CA334:  LDR             R0, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x2CA33E)
2CA336:  VLDR            S4, =60.0
2CA33A:  ADD             R0, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
2CA33C:  LDR             R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x2CA348)
2CA33E:  VLDR            S6, =360.0
2CA342:  LDR             R0, [R0]; CClock::ms_nGameClockSeconds ...
2CA344:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
2CA346:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
2CA348:  LDRH            R0, [R0]; CClock::ms_nGameClockSeconds
2CA34A:  VMOV            S0, R0
2CA34E:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x2CA358)
2CA350:  VCVT.F32.U32    S0, S0
2CA354:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
2CA356:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
2CA358:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
2CA35A:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
2CA35C:  VDIV.F32        S0, S0, S4
2CA360:  RSB.W           R0, R0, R0,LSL#4
2CA364:  ADD.W           R0, R1, R0,LSL#2
2CA368:  VMOV            S2, R0
2CA36C:  VCVT.F32.S32    S2, S2
2CA370:  VADD.F32        S2, S0, S2
2CA374:  VMOV.F32        S0, #1.0
2CA378:  VCMPE.F32       S2, S6
2CA37C:  VMRS            APSR_nzcv, FPSCR
2CA380:  BLT             loc_2CA3D0
2CA382:  VLDR            S6, =420.0
2CA386:  VCMPE.F32       S2, S6
2CA38A:  VMRS            APSR_nzcv, FPSCR
2CA38E:  BGE             loc_2CA39A
2CA390:  VSUB.F32        S0, S6, S2
2CA394:  VDIV.F32        S0, S0, S4
2CA398:  B               loc_2CA3D0
2CA39A:  VLDR            S4, =1200.0
2CA39E:  VCMPE.F32       S2, S4
2CA3A2:  VMRS            APSR_nzcv, FPSCR
2CA3A6:  BGE             loc_2CA3AE
2CA3A8:  VLDR            S0, =0.0
2CA3AC:  B               loc_2CA3D0
2CA3AE:  VLDR            S4, =1260.0
2CA3B2:  VCMPE.F32       S2, S4
2CA3B6:  VMRS            APSR_nzcv, FPSCR
2CA3BA:  BGE             loc_2CA3D0
2CA3BC:  VSUB.F32        S0, S4, S2
2CA3C0:  VLDR            S2, =-60.0
2CA3C4:  VDIV.F32        S0, S0, S2
2CA3C8:  VMOV.F32        S2, #1.0
2CA3CC:  VADD.F32        S0, S0, S2
2CA3D0:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x2CA3D6)
2CA3D2:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
2CA3D4:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
2CA3D6:  VSTR            S0, [R0]
2CA3DA:  BX              LR
