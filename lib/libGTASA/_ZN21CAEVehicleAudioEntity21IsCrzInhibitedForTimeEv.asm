; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity21IsCrzInhibitedForTimeEv
; Address            : 0x3B39EC - 0x3B3A02
; =========================================================

3B39EC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3B39F8)
3B39EE:  LDR.W           R2, [R0,#0xD4]
3B39F2:  MOVS            R0, #0
3B39F4:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3B39F6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3B39F8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3B39FA:  CMP             R2, R1
3B39FC:  IT CC
3B39FE:  MOVCC           R0, #1
3B3A00:  BX              LR
