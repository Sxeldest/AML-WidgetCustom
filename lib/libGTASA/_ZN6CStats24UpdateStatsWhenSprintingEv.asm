; =========================================================
; Game Engine Function: _ZN6CStats24UpdateStatsWhenSprintingEv
; Address            : 0x41AEC8 - 0x41AFF8
; =========================================================

41AEC8:  PUSH            {R4,R6,R7,LR}
41AECA:  ADD             R7, SP, #8
41AECC:  VPUSH           {D8}
41AED0:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AED6)
41AED2:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41AED4:  LDR             R4, [R0]; CStats::StatReactionValue ...
41AED6:  VLDR            S0, [R4,#0x78]
41AEDA:  VCVT.U32.F32    S0, S0
41AEDE:  VMOV            R0, S0; this
41AEE2:  BLX             j__ZN6CStats23UpdateFatAndMuscleStatsEj; CStats::UpdateFatAndMuscleStats(uint)
41AEE6:  LDR             R0, =(_ZN6CStats22m_SprintStaminaCounterE_ptr - 0x41AEF0)
41AEE8:  VLDR            S16, =1000.0
41AEEC:  ADD             R0, PC; _ZN6CStats22m_SprintStaminaCounterE_ptr
41AEEE:  VLDR            S0, [R4,#0x8C]
41AEF2:  LDR             R0, [R0]; CStats::m_SprintStaminaCounter ...
41AEF4:  VMUL.F32        S0, S0, S16
41AEF8:  LDR             R0, [R0]; CStats::m_SprintStaminaCounter
41AEFA:  VMOV            S2, R0
41AEFE:  VCVT.F32.U32    S2, S2
41AF02:  VCMPE.F32       S0, S2
41AF06:  VMRS            APSR_nzcv, FPSCR
41AF0A:  BGE             loc_41AFCA
41AF0C:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AF14)
41AF0E:  LDR             R1, =(_ZN6CStats22m_SprintStaminaCounterE_ptr - 0x41AF16)
41AF10:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41AF12:  ADD             R1, PC; _ZN6CStats22m_SprintStaminaCounterE_ptr
41AF14:  LDR             R0, [R0]; CStats::StatReactionValue ...
41AF16:  LDR             R1, [R1]; CStats::m_SprintStaminaCounter ...
41AF18:  VLDR            S0, [R0,#8]
41AF1C:  MOVS            R0, #0
41AF1E:  STR             R0, [R1]; CStats::m_SprintStaminaCounter
41AF20:  VCMPE.F32       S0, #0.0
41AF24:  VMRS            APSR_nzcv, FPSCR
41AF28:  BLE             loc_41AF84
41AF2A:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41AF32)
41AF2C:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41AF34)
41AF2E:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41AF30:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41AF32:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41AF34:  LDR             R1, [R1]; CStats::StatTypesInt ...
41AF36:  VLDR            S2, [R0,#0x58]
41AF3A:  LDR.W           R1, [R1,#(dword_9649E0 - 0x96492C)]; bool
41AF3E:  VADD.F32        S0, S0, S2
41AF42:  CMP.W           R1, #0xFFFFFFFF
41AF46:  VMIN.F32        D0, D0, D8
41AF4A:  VSTR            S0, [R0,#0x58]
41AF4E:  BGT             loc_41AF74
41AF50:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41AF5E)
41AF52:  VMOV.F32        S0, #-23.0
41AF56:  VLDR            S4, =0.0
41AF5A:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41AF5C:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41AF5E:  VLDR            S2, [R0,#0x54]
41AF62:  VADD.F32        S0, S2, S0
41AF66:  VMAX.F32        D0, D0, D2
41AF6A:  VSTR            S0, [R0,#0x54]
41AF6E:  MOVS            R0, #0; this
41AF70:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41AF74:  MOVS            R0, #0; this
41AF76:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41AF7A:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AF80)
41AF7C:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41AF7E:  LDR             R0, [R0]; CStats::StatReactionValue ...
41AF80:  VLDR            S0, [R0,#8]
41AF84:  VMOV.F32        S2, #1.0
41AF88:  VCMPE.F32       S0, S2
41AF8C:  VMRS            APSR_nzcv, FPSCR
41AF90:  BLE             loc_41AFF2
41AF92:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41AF98)
41AF94:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41AF96:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41AF98:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41AF9A:  CBZ             R0, loc_41AFF2
41AF9C:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41AFA2)
41AF9E:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41AFA0:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41AFA2:  VLDR            S2, [R0,#0x58]
41AFA6:  VCMPE.F32       S2, S16
41AFAA:  VMRS            APSR_nzcv, FPSCR
41AFAE:  BGE             loc_41AFF2
41AFB0:  MOVS            R3, #0
41AFB2:  VMOV            R2, S0; unsigned __int16
41AFB6:  MOVT            R3, #0x447A; float
41AFBA:  MOVS            R0, #(stderr+1); this
41AFBC:  MOVS            R1, #0x16; unsigned __int8
41AFBE:  VPOP            {D8}
41AFC2:  POP.W           {R4,R6,R7,LR}
41AFC6:  B.W             sub_1A0900
41AFCA:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41AFD4)
41AFCC:  VLDR            S0, =50.0
41AFD0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41AFD2:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
41AFD4:  VLDR            S2, [R1]
41AFD8:  LDR             R1, =(_ZN6CStats22m_SprintStaminaCounterE_ptr - 0x41AFE2)
41AFDA:  VDIV.F32        S0, S2, S0
41AFDE:  ADD             R1, PC; _ZN6CStats22m_SprintStaminaCounterE_ptr
41AFE0:  LDR             R1, [R1]; CStats::m_SprintStaminaCounter ...
41AFE2:  VMUL.F32        S0, S0, S16
41AFE6:  VCVT.U32.F32    S0, S0
41AFEA:  VMOV            R2, S0
41AFEE:  ADD             R0, R2
41AFF0:  STR             R0, [R1]; CStats::m_SprintStaminaCounter
41AFF2:  VPOP            {D8}
41AFF6:  POP             {R4,R6,R7,PC}
