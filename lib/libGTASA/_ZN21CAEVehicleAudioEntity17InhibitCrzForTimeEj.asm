; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity17InhibitCrzForTimeEj
; Address            : 0x3B3A08 - 0x3B3A18
; =========================================================

3B3A08:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3B3A0E)
3B3A0A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3B3A0C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
3B3A0E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
3B3A10:  ADD             R1, R2
3B3A12:  STR.W           R1, [R0,#0xD4]
3B3A16:  BX              LR
