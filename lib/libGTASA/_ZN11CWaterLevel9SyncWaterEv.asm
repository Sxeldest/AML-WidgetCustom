; =========================================================
; Game Engine Function: _ZN11CWaterLevel9SyncWaterEv
; Address            : 0x59BC40 - 0x59BC52
; =========================================================

59BC40:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x59BC48)
59BC42:  LDR             R1, =(_ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr - 0x59BC4A)
59BC44:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
59BC46:  ADD             R1, PC; _ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr
59BC48:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
59BC4A:  LDR             R1, [R1]; CWaterLevel::m_nWaterTimeOffset ...
59BC4C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
59BC4E:  STR             R0, [R1]; CWaterLevel::m_nWaterTimeOffset
59BC50:  BX              LR
