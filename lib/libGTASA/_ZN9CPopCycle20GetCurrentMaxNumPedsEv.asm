; =========================================================
; Game Engine Function: _ZN9CPopCycle20GetCurrentMaxNumPedsEv
; Address            : 0x4CBB34 - 0x4CBB66
; =========================================================

4CBB34:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CBB3C)
4CBB36:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CBB40)
4CBB38:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CBB3A:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CBB46)
4CBB3C:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CBB3E:  LDR             R3, =(_ZN9CPopCycle13m_nMaxNumPedsE_ptr - 0x4CBB4A)
4CBB40:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CBB42:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CBB44:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CBB46:  ADD             R3, PC; _ZN9CPopCycle13m_nMaxNumPedsE_ptr
4CBB48:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CBB4A:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CBB4C:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CBB4E:  LDR             R3, [R3]; CPopCycle::m_nMaxNumPeds ...
4CBB50:  ADD.W           R0, R0, R0,LSL#2
4CBB54:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType
4CBB56:  ADD.W           R1, R1, R1,LSL#2
4CBB5A:  ADD.W           R0, R3, R0,LSL#3
4CBB5E:  ADD.W           R0, R0, R1,LSL#2
4CBB62:  LDRB            R0, [R0,R2]
4CBB64:  BX              LR
