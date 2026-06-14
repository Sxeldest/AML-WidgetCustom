; =========================================================
; Game Engine Function: _ZN6CPlane6RenderEv
; Address            : 0x5787B0 - 0x5787C4
; =========================================================

5787B0:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5787B6)
5787B2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5787B4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5787B6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5787B8:  ADDW            R1, R1, #0xBB8
5787BC:  STR.W           R1, [R0,#0x4E0]
5787C0:  B.W             sub_18CB2C
