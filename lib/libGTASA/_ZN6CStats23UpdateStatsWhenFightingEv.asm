; =========================================================
; Game Engine Function: _ZN6CStats23UpdateStatsWhenFightingEv
; Address            : 0x41BD74 - 0x41BD8A
; =========================================================

41BD74:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41BD7A)
41BD76:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41BD78:  LDR             R0, [R0]; CStats::StatReactionValue ...
41BD7A:  VLDR            S0, [R0,#0x80]
41BD7E:  VCVT.U32.F32    S0, S0
41BD82:  VMOV            R0, S0; this
41BD86:  B.W             _ZN6CStats23UpdateFatAndMuscleStatsEj; CStats::UpdateFatAndMuscleStats(uint)
