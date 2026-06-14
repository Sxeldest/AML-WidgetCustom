; =========================================================
; Game Engine Function: _ZN9CPopCycle24GetCurrentPercOther_CarsEv
; Address            : 0x4CBA28 - 0x4CBA5A
; =========================================================

4CBA28:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CBA30)
4CBA2A:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CBA34)
4CBA2C:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CBA2E:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CBA3A)
4CBA30:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CBA32:  LDR             R3, =(_ZN9CPopCycle12m_nPercOtherE_ptr - 0x4CBA3E)
4CBA34:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CBA36:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CBA38:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CBA3A:  ADD             R3, PC; _ZN9CPopCycle12m_nPercOtherE_ptr
4CBA3C:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CBA3E:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CBA40:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CBA42:  LDR             R3, [R3]; CPopCycle::m_nPercOther ...
4CBA44:  ADD.W           R0, R0, R0,LSL#2
4CBA48:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType
4CBA4A:  ADD.W           R1, R1, R1,LSL#2
4CBA4E:  ADD.W           R0, R3, R0,LSL#3
4CBA52:  ADD.W           R0, R0, R1,LSL#2
4CBA56:  LDRB            R0, [R0,R2]
4CBA58:  BX              LR
