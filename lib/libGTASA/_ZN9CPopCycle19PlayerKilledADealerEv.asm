; =========================================================
; Game Engine Function: _ZN9CPopCycle19PlayerKilledADealerEv
; Address            : 0x4CC110 - 0x4CC12A
; =========================================================

4CC110:  LDR             R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CC116)
4CC112:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CC114:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
4CC116:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
4CC118:  CMP             R0, #0
4CC11A:  IT EQ
4CC11C:  BXEQ            LR
4CC11E:  LDRB            R1, [R0,#0xA]
4CC120:  CMP             R1, #0
4CC122:  ITT NE
4CC124:  SUBNE           R1, #1
4CC126:  STRBNE          R1, [R0,#0xA]
4CC128:  BX              LR
