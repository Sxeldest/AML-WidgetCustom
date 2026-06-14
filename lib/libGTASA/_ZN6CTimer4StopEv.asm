; =========================================================
; Game Engine Function: _ZN6CTimer4StopEv
; Address            : 0x421024 - 0x421082
; =========================================================

421024:  PUSH            {R4-R7,LR}
421026:  ADD             R7, SP, #0xC
421028:  PUSH.W          {R8}
42102C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x421038)
42102E:  LDR             R1, =(_ZN6CTimer32m_snTimeInMillisecondsNonClippedE_ptr - 0x42103C)
421030:  LDR.W           R12, =(_ZN6CTimer31m_snPPreviousTimeInMillisecondsE_ptr - 0x421040)
421034:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421036:  LDR             R2, =(_ZN6CTimer33m_snPPPPreviousTimeInMillisecondsE_ptr - 0x421046)
421038:  ADD             R1, PC; _ZN6CTimer32m_snTimeInMillisecondsNonClippedE_ptr
42103A:  LDR             R3, =(_ZN6CTimer32m_snPPPreviousTimeInMillisecondsE_ptr - 0x42104A)
42103C:  ADD             R12, PC; _ZN6CTimer31m_snPPreviousTimeInMillisecondsE_ptr
42103E:  LDR.W           LR, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x42104C)
421042:  ADD             R2, PC; _ZN6CTimer33m_snPPPPreviousTimeInMillisecondsE_ptr
421044:  LDR             R6, =(_ZN6CTimer40m_snPreviousTimeInMillisecondsNonClippedE_ptr - 0x421050)
421046:  ADD             R3, PC; _ZN6CTimer32m_snPPPreviousTimeInMillisecondsE_ptr
421048:  ADD             LR, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
42104A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
42104C:  ADD             R6, PC; _ZN6CTimer40m_snPreviousTimeInMillisecondsNonClippedE_ptr
42104E:  LDR             R1, [R1]; CTimer::m_snTimeInMillisecondsNonClipped ...
421050:  LDR.W           R4, [R12]; CTimer::m_snPPreviousTimeInMilliseconds ...
421054:  LDR.W           R12, =(byte_96B524 - 0x421064)
421058:  LDR.W           R8, [R2]; CTimer::m_snPPPPreviousTimeInMilliseconds ...
42105C:  MOVS            R2, #0
42105E:  LDR             R3, [R3]; CTimer::m_snPPPreviousTimeInMilliseconds ...
421060:  ADD             R12, PC; byte_96B524
421062:  LDR.W           R5, [LR]; CTimer::m_snPreviousTimeInMilliseconds ...
421066:  LDR             R6, [R6]; CTimer::m_snPreviousTimeInMillisecondsNonClipped ...
421068:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
42106A:  LDR             R1, [R1]; CTimer::m_snTimeInMillisecondsNonClipped
42106C:  STRB.W          R2, [R12]
421070:  STR.W           R0, [R8]; CTimer::m_snPPPPreviousTimeInMilliseconds
421074:  STR             R0, [R3]; CTimer::m_snPPPreviousTimeInMilliseconds
421076:  STR             R0, [R4]; CTimer::m_snPPreviousTimeInMilliseconds
421078:  STR             R0, [R5]; CTimer::m_snPreviousTimeInMilliseconds
42107A:  STR             R1, [R6]; CTimer::m_snPreviousTimeInMillisecondsNonClipped
42107C:  POP.W           {R8}
421080:  POP             {R4-R7,PC}
