; =========================================================
; Game Engine Function: _ZN9CPopCycle19GetCurrentPercGangsEv
; Address            : 0x4CB9A0 - 0x4CB9D2
; =========================================================

4CB9A0:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CB9A8)
4CB9A2:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CB9AC)
4CB9A4:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CB9A6:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CB9B2)
4CB9A8:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CB9AA:  LDR             R3, =(_ZN9CPopCycle11m_nPercGangE_ptr - 0x4CB9B6)
4CB9AC:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CB9AE:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CB9B0:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CB9B2:  ADD             R3, PC; _ZN9CPopCycle11m_nPercGangE_ptr
4CB9B4:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CB9B6:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CB9B8:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CB9BA:  LDR             R3, [R3]; CPopCycle::m_nPercGang ...
4CB9BC:  ADD.W           R0, R0, R0,LSL#2
4CB9C0:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType
4CB9C2:  ADD.W           R1, R1, R1,LSL#2
4CB9C6:  ADD.W           R0, R3, R0,LSL#3
4CB9CA:  ADD.W           R0, R0, R1,LSL#2
4CB9CE:  LDRB            R0, [R0,R2]
4CB9D0:  BX              LR
