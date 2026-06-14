; =========================================================
; Game Engine Function: _ZN6CStats20UpdateStatsOnRespawnEv
; Address            : 0x41BD90 - 0x41BE5C
; =========================================================

41BD90:  PUSH            {R4,R6,R7,LR}; float
41BD92:  ADD             R7, SP, #8
41BD94:  LDR             R0, =(_ZN6CStats14m_DeathCounterE_ptr - 0x41BD9C)
41BD96:  LDR             R1, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BD9E)
41BD98:  ADD             R0, PC; _ZN6CStats14m_DeathCounterE_ptr
41BD9A:  ADD             R1, PC; _ZN6CStats17StatReactionValueE_ptr
41BD9C:  LDR             R0, [R0]; CStats::m_DeathCounter ...
41BD9E:  LDR             R1, [R1]; bool
41BDA0:  LDR             R0, [R0]; CStats::m_DeathCounter
41BDA2:  VMOV            S0, R0
41BDA6:  VCVT.F32.U32    S0, S0
41BDAA:  VLDR            S2, [R1,#0xE4]
41BDAE:  VCMPE.F32       S2, S0
41BDB2:  VMRS            APSR_nzcv, FPSCR
41BDB6:  BGE             loc_41BE4C
41BDB8:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BDC2)
41BDBA:  VLDR            S2, =400.0
41BDBE:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BDC0:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41BDC2:  VLDR            S0, [R0,#0x60]
41BDC6:  VCMPE.F32       S0, S2
41BDCA:  VMRS            APSR_nzcv, FPSCR
41BDCE:  BLE             loc_41BE50
41BDD0:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BDD6)
41BDD2:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41BDD4:  LDR             R0, [R0]; CStats::StatReactionValue ...
41BDD6:  VLDR            S2, [R0,#0x64]
41BDDA:  VCMPE.F32       S2, #0.0
41BDDE:  VMRS            APSR_nzcv, FPSCR
41BDE2:  BLE             loc_41BE0E
41BDE4:  VADD.F32        S0, S0, S2
41BDE8:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41BDF2)
41BDEA:  VLDR            S4, =1000.0
41BDEE:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41BDF0:  LDR             R4, [R0]; CStats::StatTypesFloat ...
41BDF2:  MOVS            R0, #0; this
41BDF4:  VMIN.F32        D0, D0, D2
41BDF8:  VSTR            S0, [R4,#0x60]
41BDFC:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41BE00:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BE0A)
41BE02:  VLDR            S0, [R4,#0x60]
41BE06:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41BE08:  LDR             R0, [R0]; CStats::StatReactionValue ...
41BE0A:  VLDR            S2, [R0,#0x64]
41BE0E:  VMOV.F32        S4, #1.0
41BE12:  MOVS            R4, #0
41BE14:  VCMPE.F32       S2, S4
41BE18:  VMRS            APSR_nzcv, FPSCR
41BE1C:  BLE             loc_41BE52
41BE1E:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41BE24)
41BE20:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41BE22:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41BE24:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41BE26:  CBZ             R0, loc_41BE52
41BE28:  VLDR            S4, =1000.0
41BE2C:  VCMPE.F32       S0, S4
41BE30:  VMRS            APSR_nzcv, FPSCR
41BE34:  BGE             loc_41BE52
41BE36:  VMOV            R2, S2; unsigned __int16
41BE3A:  MOVS            R3, #0x447A0000; float
41BE40:  MOVS            R0, #0; this
41BE42:  MOVS            R1, #0x18; unsigned __int8
41BE44:  MOVS            R4, #0
41BE46:  BLX             j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
41BE4A:  B               loc_41BE52
41BE4C:  ADDS            R4, R0, #1
41BE4E:  B               loc_41BE52
41BE50:  MOVS            R4, #0
41BE52:  LDR             R0, =(_ZN6CStats14m_DeathCounterE_ptr - 0x41BE58)
41BE54:  ADD             R0, PC; _ZN6CStats14m_DeathCounterE_ptr
41BE56:  LDR             R0, [R0]; CStats::m_DeathCounter ...
41BE58:  STR             R4, [R0]; CStats::m_DeathCounter
41BE5A:  POP             {R4,R6,R7,PC}
