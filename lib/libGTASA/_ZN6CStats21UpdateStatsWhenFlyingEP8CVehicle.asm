; =========================================================
; Game Engine Function: _ZN6CStats21UpdateStatsWhenFlyingEP8CVehicle
; Address            : 0x41B944 - 0x41BAA4
; =========================================================

41B944:  LDR.W           R1, [R0,#0x5A0]
41B948:  CBZ             R1, loc_41B94C
41B94A:  BX              LR
41B94C:  LDR             R1, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B954)
41B94E:  LDR             R2, =(_ZN6CStats15m_FlyingCounterE_ptr - 0x41B95A)
41B950:  ADD             R1, PC; _ZN6CStats17StatReactionValueE_ptr
41B952:  VLDR            S0, =1000.0
41B956:  ADD             R2, PC; _ZN6CStats15m_FlyingCounterE_ptr
41B958:  LDR             R1, [R1]; CStats::StatReactionValue ...
41B95A:  LDR             R2, [R2]; CStats::m_FlyingCounter ...
41B95C:  VLDR            S2, [R1,#0x98]
41B960:  VLDR            S4, [R2]
41B964:  VMUL.F32        S6, S2, S0
41B968:  VCVT.F32.U32    S2, S4
41B96C:  VCMPE.F32       S6, S2
41B970:  VMRS            APSR_nzcv, FPSCR
41B974:  BGE             loc_41BA10
41B976:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B97E)
41B978:  LDR             R1, =(_ZN6CStats15m_FlyingCounterE_ptr - 0x41B980)
41B97A:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B97C:  ADD             R1, PC; _ZN6CStats15m_FlyingCounterE_ptr
41B97E:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B980:  LDR             R1, [R1]; CStats::m_FlyingCounter ...
41B982:  VLDR            S2, [R0,#0x14]
41B986:  MOVS            R0, #0
41B988:  STR             R0, [R1]; CStats::m_FlyingCounter
41B98A:  VCMPE.F32       S2, #0.0
41B98E:  VMRS            APSR_nzcv, FPSCR
41B992:  BLE             loc_41B9D4
41B994:  PUSH            {R7,LR}
41B996:  MOV             R7, SP
41B998:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B99E)
41B99A:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41B99C:  LDR             R0, [R0]; CStats::StatTypesInt ...
41B99E:  LDR.W           R1, [R0,#(dword_964AC8 - 0x96492C)]
41B9A2:  VCVT.S32.F32    S2, S2
41B9A6:  VMOV            R2, S2
41B9AA:  ADD             R1, R2
41B9AC:  VMOV            S2, R1; bool
41B9B0:  VCVT.F32.S32    S2, S2
41B9B4:  VMIN.F32        D0, D1, D0
41B9B8:  VCVT.S32.F32    S0, S0
41B9BC:  VSTR            S0, [R0,#0x19C]
41B9C0:  MOVS            R0, #0; this
41B9C2:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41B9C6:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41B9CC)
41B9C8:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41B9CA:  LDR             R0, [R0]; CStats::StatReactionValue ...
41B9CC:  VLDR            S2, [R0,#0x14]
41B9D0:  POP.W           {R7,LR}
41B9D4:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41B9DA)
41B9D6:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41B9D8:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41B9DA:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41B9DC:  CMP             R0, #0
41B9DE:  BEQ             locret_41B94A
41B9E0:  VMOV.F32        S0, #1.0
41B9E4:  VCMPE.F32       S2, S0
41B9E8:  VMRS            APSR_nzcv, FPSCR
41B9EC:  BLE             locret_41B94A
41B9EE:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41B9F4)
41B9F0:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41B9F2:  LDR             R0, [R0]; CStats::StatTypesInt ...
41B9F4:  LDR.W           R0, [R0,#(dword_964AC8 - 0x96492C)]
41B9F8:  CMP.W           R0, #0x3E8
41B9FC:  BGE             locret_41B94A
41B9FE:  VMOV            R2, S2; unsigned __int16
41BA02:  MOVS            R3, #0x447A0000; float
41BA08:  MOVS            R0, #(stderr+1); this
41BA0A:  MOVS            R1, #0xDF; unsigned __int8
41BA0C:  B.W             sub_1A0900
41BA10:  LDRB.W          R1, [R0,#0x974]
41BA14:  CMP             R1, #0
41BA16:  BNE             locret_41B94A
41BA18:  VLDR            S4, [R0,#0x48]
41BA1C:  VLDR            S6, [R0,#0x4C]
41BA20:  VMUL.F32        S4, S4, S4
41BA24:  VLDR            S8, [R0,#0x50]
41BA28:  VMUL.F32        S6, S6, S6
41BA2C:  VMUL.F32        S8, S8, S8
41BA30:  VADD.F32        S4, S4, S6
41BA34:  VADD.F32        S4, S4, S8
41BA38:  VLDR            S8, =1.3
41BA3C:  VSQRT.F32       S6, S4
41BA40:  VMOV.F32        S4, #1.5
41BA44:  VCMPE.F32       S6, S8
41BA48:  VMRS            APSR_nzcv, FPSCR
41BA4C:  BGT             loc_41BA6E
41BA4E:  LDR             R0, [R0,#0x14]
41BA50:  VLDR            S8, [R0,#0x28]
41BA54:  VCMPE.F32       S8, #0.0
41BA58:  VMRS            APSR_nzcv, FPSCR
41BA5C:  BLT             loc_41BA6E
41BA5E:  VMOV.F32        S4, #0.5
41BA62:  VCMPE.F32       S6, S4
41BA66:  VMRS            APSR_nzcv, FPSCR
41BA6A:  IT LE
41BA6C:  BXLE            LR
41BA6E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41BA78)
41BA70:  VLDR            S6, =50.0
41BA74:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41BA76:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
41BA78:  VLDR            S8, [R0]
41BA7C:  LDR             R0, =(_ZN6CStats15m_FlyingCounterE_ptr - 0x41BA86)
41BA7E:  VDIV.F32        S6, S8, S6
41BA82:  ADD             R0, PC; _ZN6CStats15m_FlyingCounterE_ptr
41BA84:  LDR             R0, [R0]; CStats::m_FlyingCounter ...
41BA86:  VMUL.F32        S0, S6, S0
41BA8A:  VCVT.U32.F32    S0, S0
41BA8E:  VCVT.F32.U32    S0, S0
41BA92:  VMUL.F32        S0, S4, S0
41BA96:  VADD.F32        S0, S0, S2
41BA9A:  VCVT.U32.F32    S0, S0
41BA9E:  VSTR            S0, [R0]
41BAA2:  BX              LR
