; =========================================================
; Game Engine Function: _ZN6CStats26UpdateStatsWhenOnMotorBikeEP5CBike
; Address            : 0x41BAD8 - 0x41BC32
; =========================================================

41BAD8:  LDR             R1, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BAE0)
41BADA:  LDR             R2, =(_ZN6CStats13m_BikeCounterE_ptr - 0x41BAE6)
41BADC:  ADD             R1, PC; _ZN6CStats17StatReactionValueE_ptr
41BADE:  VLDR            S0, =1000.0
41BAE2:  ADD             R2, PC; _ZN6CStats13m_BikeCounterE_ptr
41BAE4:  LDR             R1, [R1]; CStats::StatReactionValue ...
41BAE6:  LDR             R2, [R2]; CStats::m_BikeCounter ...
41BAE8:  VLDR            S2, [R1,#0xA0]
41BAEC:  VLDR            S4, [R2]
41BAF0:  VMUL.F32        S6, S2, S0
41BAF4:  VCVT.F32.U32    S2, S4
41BAF8:  VCMPE.F32       S6, S2
41BAFC:  VMRS            APSR_nzcv, FPSCR
41BB00:  BGE             loc_41BB9C
41BB02:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BB0A)
41BB04:  LDR             R1, =(_ZN6CStats13m_BikeCounterE_ptr - 0x41BB0C)
41BB06:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41BB08:  ADD             R1, PC; _ZN6CStats13m_BikeCounterE_ptr
41BB0A:  LDR             R0, [R0]; CStats::StatReactionValue ...
41BB0C:  LDR             R1, [R1]; CStats::m_BikeCounter ...
41BB0E:  VLDR            S2, [R0,#0x1C]
41BB12:  MOVS            R0, #0
41BB14:  STR             R0, [R1]; CStats::m_BikeCounter
41BB16:  VCMPE.F32       S2, #0.0
41BB1A:  VMRS            APSR_nzcv, FPSCR
41BB1E:  BLE             loc_41BB60
41BB20:  PUSH            {R7,LR}
41BB22:  MOV             R7, SP
41BB24:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41BB2A)
41BB26:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41BB28:  LDR             R0, [R0]; CStats::StatTypesInt ...
41BB2A:  LDR.W           R1, [R0,#(dword_964AE0 - 0x96492C)]
41BB2E:  VCVT.S32.F32    S2, S2
41BB32:  VMOV            R2, S2
41BB36:  ADD             R1, R2
41BB38:  VMOV            S2, R1; bool
41BB3C:  VCVT.F32.S32    S2, S2
41BB40:  VMIN.F32        D0, D1, D0
41BB44:  VCVT.S32.F32    S0, S0
41BB48:  VSTR            S0, [R0,#0x1B4]
41BB4C:  MOVS            R0, #0; this
41BB4E:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41BB52:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BB58)
41BB54:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41BB56:  LDR             R0, [R0]; CStats::StatReactionValue ...
41BB58:  VLDR            S2, [R0,#0x1C]
41BB5C:  POP.W           {R7,LR}
41BB60:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41BB66)
41BB62:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41BB64:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41BB66:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41BB68:  CMP             R0, #0
41BB6A:  BEQ             locret_41BC30
41BB6C:  VMOV.F32        S0, #1.0
41BB70:  VCMPE.F32       S2, S0
41BB74:  VMRS            APSR_nzcv, FPSCR
41BB78:  BLE             locret_41BC30
41BB7A:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41BB80)
41BB7C:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41BB7E:  LDR             R0, [R0]; CStats::StatTypesInt ...
41BB80:  LDR.W           R0, [R0,#(dword_964AE0 - 0x96492C)]
41BB84:  CMP.W           R0, #0x3E8
41BB88:  BGE             locret_41BC30
41BB8A:  VMOV            R2, S2; unsigned __int16
41BB8E:  MOVS            R3, #0x447A0000; float
41BB94:  MOVS            R0, #(stderr+1); this
41BB96:  MOVS            R1, #0xE5; unsigned __int8
41BB98:  B.W             sub_1A0900
41BB9C:  VLDR            S4, [R0,#0x48]
41BBA0:  VLDR            S6, [R0,#0x4C]
41BBA4:  VMUL.F32        S4, S4, S4
41BBA8:  VLDR            S8, [R0,#0x50]
41BBAC:  VMUL.F32        S6, S6, S6
41BBB0:  VMUL.F32        S8, S8, S8
41BBB4:  VADD.F32        S4, S4, S6
41BBB8:  VADD.F32        S4, S4, S8
41BBBC:  VLDR            S8, =0.6
41BBC0:  VSQRT.F32       S6, S4
41BBC4:  VMOV.F32        S4, #1.5
41BBC8:  VCMPE.F32       S6, S8
41BBCC:  VMRS            APSR_nzcv, FPSCR
41BBD0:  BGT             loc_41BBFC
41BBD2:  VLDR            S8, =0.1
41BBD6:  VCMPE.F32       S6, S8
41BBDA:  VMRS            APSR_nzcv, FPSCR
41BBDE:  BLE             loc_41BBE8
41BBE0:  LDRB.W          R0, [R0,#0x818]
41BBE4:  CMP             R0, #3
41BBE6:  BCC             loc_41BBFC
41BBE8:  VLDR            S4, =0.2
41BBEC:  VCMPE.F32       S6, S4
41BBF0:  VMRS            APSR_nzcv, FPSCR
41BBF4:  IT LE
41BBF6:  BXLE            LR
41BBF8:  VMOV.F32        S4, #0.5
41BBFC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41BC06)
41BBFE:  VLDR            S6, =50.0
41BC02:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41BC04:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
41BC06:  VLDR            S8, [R0]
41BC0A:  LDR             R0, =(_ZN6CStats13m_BikeCounterE_ptr - 0x41BC14)
41BC0C:  VDIV.F32        S6, S8, S6
41BC10:  ADD             R0, PC; _ZN6CStats13m_BikeCounterE_ptr
41BC12:  LDR             R0, [R0]; CStats::m_BikeCounter ...
41BC14:  VMUL.F32        S0, S6, S0
41BC18:  VCVT.U32.F32    S0, S0
41BC1C:  VCVT.F32.U32    S0, S0
41BC20:  VMUL.F32        S0, S4, S0
41BC24:  VADD.F32        S0, S0, S2
41BC28:  VCVT.U32.F32    S0, S0
41BC2C:  VSTR            S0, [R0]
41BC30:  BX              LR
