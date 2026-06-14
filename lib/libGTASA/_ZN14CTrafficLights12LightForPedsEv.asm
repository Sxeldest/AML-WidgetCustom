; =========================================================
; Game Engine Function: _ZN14CTrafficLights12LightForPedsEv
; Address            : 0x362B3C - 0x362B60
; =========================================================

362B3C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362B46)
362B3E:  MOVW            R2, #0x3C17
362B42:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362B44:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362B46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362B48:  UBFX.W          R1, R0, #1, #0xE
362B4C:  MOVS            R0, #0
362B4E:  CMP             R1, R2
362B50:  MOVW            R2, #0x2EE0
362B54:  IT HI
362B56:  MOVHI           R0, #1
362B58:  CMP             R1, R2
362B5A:  IT CC
362B5C:  MOVCC           R0, #2
362B5E:  BX              LR
