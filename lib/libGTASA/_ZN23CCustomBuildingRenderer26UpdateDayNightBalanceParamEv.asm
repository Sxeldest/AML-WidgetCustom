; =========================================================
; Game Engine Function: _ZN23CCustomBuildingRenderer26UpdateDayNightBalanceParamEv
; Address            : 0x2CA260 - 0x2CA308
; =========================================================

2CA260:  LDR             R0, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x2CA26A)
2CA262:  VLDR            S4, =60.0
2CA266:  ADD             R0, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
2CA268:  LDR             R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x2CA274)
2CA26A:  VLDR            S6, =360.0
2CA26E:  LDR             R0, [R0]; CClock::ms_nGameClockSeconds ...
2CA270:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
2CA272:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
2CA274:  LDRH            R0, [R0]; CClock::ms_nGameClockSeconds
2CA276:  VMOV            S0, R0
2CA27A:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x2CA284)
2CA27C:  VCVT.F32.U32    S0, S0
2CA280:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
2CA282:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
2CA284:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
2CA286:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
2CA288:  VDIV.F32        S0, S0, S4
2CA28C:  RSB.W           R0, R0, R0,LSL#4
2CA290:  ADD.W           R0, R1, R0,LSL#2
2CA294:  VMOV            S2, R0
2CA298:  VCVT.F32.S32    S2, S2
2CA29C:  VADD.F32        S2, S0, S2
2CA2A0:  VMOV.F32        S0, #1.0
2CA2A4:  VCMPE.F32       S2, S6
2CA2A8:  VMRS            APSR_nzcv, FPSCR
2CA2AC:  BLT             loc_2CA2FC
2CA2AE:  VLDR            S6, =420.0
2CA2B2:  VCMPE.F32       S2, S6
2CA2B6:  VMRS            APSR_nzcv, FPSCR
2CA2BA:  BGE             loc_2CA2C6
2CA2BC:  VSUB.F32        S0, S6, S2
2CA2C0:  VDIV.F32        S0, S0, S4
2CA2C4:  B               loc_2CA2FC
2CA2C6:  VLDR            S4, =1200.0
2CA2CA:  VCMPE.F32       S2, S4
2CA2CE:  VMRS            APSR_nzcv, FPSCR
2CA2D2:  BGE             loc_2CA2DA
2CA2D4:  VLDR            S0, =0.0
2CA2D8:  B               loc_2CA2FC
2CA2DA:  VLDR            S4, =1260.0
2CA2DE:  VCMPE.F32       S2, S4
2CA2E2:  VMRS            APSR_nzcv, FPSCR
2CA2E6:  BGE             loc_2CA2FC
2CA2E8:  VSUB.F32        S0, S4, S2
2CA2EC:  VLDR            S2, =-60.0
2CA2F0:  VDIV.F32        S0, S0, S2
2CA2F4:  VMOV.F32        S2, #1.0
2CA2F8:  VADD.F32        S0, S0, S2
2CA2FC:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x2CA302)
2CA2FE:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
2CA300:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
2CA302:  VSTR            S0, [R0]
2CA306:  BX              LR
