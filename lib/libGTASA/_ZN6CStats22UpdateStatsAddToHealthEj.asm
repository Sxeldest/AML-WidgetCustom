; =========================================================
; Game Engine Function: _ZN6CStats22UpdateStatsAddToHealthEj
; Address            : 0x41604C - 0x41610C
; =========================================================

41604C:  LDR             R1, =(_ZN6CStats20m_AddToHealthCounterE_ptr - 0x416054)
41604E:  LDR             R3, =(_ZN6CStats17StatReactionValueE_ptr - 0x416056)
416050:  ADD             R1, PC; _ZN6CStats20m_AddToHealthCounterE_ptr
416052:  ADD             R3, PC; _ZN6CStats17StatReactionValueE_ptr
416054:  LDR             R1, [R1]; bool
416056:  LDR             R2, [R1]; CStats::m_AddToHealthCounter
416058:  ADD             R0, R2
41605A:  LDR             R2, [R3]; CStats::StatReactionValue ...
41605C:  VMOV            S0, R0
416060:  VCVT.F32.U32    S0, S0
416064:  VLDR            S2, [R2,#0xE8]
416068:  STR             R0, [R1]; CStats::m_AddToHealthCounter
41606A:  VCMPE.F32       S2, S0
41606E:  VMRS            APSR_nzcv, FPSCR
416072:  IT GE
416074:  BXGE            LR
416076:  PUSH            {R7,LR}; float
416078:  MOV             R7, SP
41607A:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x416080)
41607C:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41607E:  LDR             R0, [R0]; CStats::StatReactionValue ...
416080:  VLDR            S0, [R0,#0x2C]
416084:  VCMPE.F32       S0, #0.0
416088:  VMRS            APSR_nzcv, FPSCR
41608C:  BLE             loc_4160B8
41608E:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416098)
416090:  VLDR            S4, =1000.0
416094:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
416096:  LDR             R0, [R0]; CStats::StatTypesFloat ...
416098:  VLDR            S2, [R0,#0x60]
41609C:  VADD.F32        S0, S0, S2
4160A0:  VMIN.F32        D0, D0, D2
4160A4:  VSTR            S0, [R0,#0x60]
4160A8:  MOVS            R0, #0; this
4160AA:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
4160AE:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x4160B4)
4160B0:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
4160B2:  LDR             R0, [R0]; CStats::StatReactionValue ...
4160B4:  VLDR            S0, [R0,#0x2C]
4160B8:  VMOV.F32        S2, #1.0
4160BC:  VCMPE.F32       S0, S2
4160C0:  VMRS            APSR_nzcv, FPSCR
4160C4:  BLE             loc_4160FC
4160C6:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x4160CC)
4160C8:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
4160CA:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
4160CC:  LDRB            R0, [R0]; CStats::bShowUpdateStats
4160CE:  CBZ             R0, loc_4160FC
4160D0:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4160DA)
4160D2:  VLDR            S4, =1000.0
4160D6:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
4160D8:  LDR             R0, [R0]; CStats::StatTypesFloat ...
4160DA:  VLDR            S2, [R0,#0x60]
4160DE:  VCMPE.F32       S2, S4
4160E2:  VMRS            APSR_nzcv, FPSCR
4160E6:  ITTTT LT
4160E8:  VMOVLT          R2, S0; unsigned __int16
4160EC:  MOVLT           R3, #0
4160EE:  MOVTLT          R3, #0x447A; float
4160F2:  MOVLT           R0, #(stderr+1); this
4160F4:  ITT LT
4160F6:  MOVLT           R1, #0x18; unsigned __int8
4160F8:  BLXLT           j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
4160FC:  LDR             R0, =(_ZN6CStats20m_AddToHealthCounterE_ptr - 0x416104)
4160FE:  MOVS            R1, #0
416100:  ADD             R0, PC; _ZN6CStats20m_AddToHealthCounterE_ptr
416102:  LDR             R0, [R0]; CStats::m_AddToHealthCounter ...
416104:  STR             R1, [R0]; CStats::m_AddToHealthCounter
416106:  POP.W           {R7,LR}
41610A:  BX              LR
