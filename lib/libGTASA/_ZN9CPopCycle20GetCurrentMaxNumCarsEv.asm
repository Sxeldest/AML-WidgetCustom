; =========================================================
; Game Engine Function: _ZN9CPopCycle20GetCurrentMaxNumCarsEv
; Address            : 0x4CBB78 - 0x4CBBAA
; =========================================================

4CBB78:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CBB80)
4CBB7A:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CBB84)
4CBB7C:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CBB7E:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CBB8A)
4CBB80:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CBB82:  LDR             R3, =(_ZN9CPopCycle13m_nMaxNumCarsE_ptr - 0x4CBB8E)
4CBB84:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CBB86:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CBB88:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CBB8A:  ADD             R3, PC; _ZN9CPopCycle13m_nMaxNumCarsE_ptr
4CBB8C:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CBB8E:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CBB90:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CBB92:  LDR             R3, [R3]; CPopCycle::m_nMaxNumCars ...
4CBB94:  ADD.W           R0, R0, R0,LSL#2
4CBB98:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType
4CBB9A:  ADD.W           R1, R1, R1,LSL#2
4CBB9E:  ADD.W           R0, R3, R0,LSL#3
4CBBA2:  ADD.W           R0, R0, R1,LSL#2
4CBBA6:  LDRB            R0, [R0,R2]
4CBBA8:  BX              LR
