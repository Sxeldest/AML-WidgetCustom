; =========================================================
; Game Engine Function: _ZN11CEventDeathC2Eb
; Address            : 0x373A60 - 0x373A84
; =========================================================

373A60:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x373A6C)
373A62:  MOVS            R3, #0
373A64:  LDR.W           R12, =(_ZTV11CEventDeath_ptr - 0x373A70)
373A68:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
373A6A:  STRB            R3, [R0,#8]
373A6C:  ADD             R12, PC; _ZTV11CEventDeath_ptr
373A6E:  STR             R3, [R0,#4]
373A70:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
373A72:  LDR.W           R3, [R12]; `vtable for'CEventDeath ...
373A76:  STRB            R1, [R0,#9]
373A78:  ADD.W           R1, R3, #8
373A7C:  STR             R1, [R0]
373A7E:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
373A80:  STR             R1, [R0,#0xC]
373A82:  BX              LR
