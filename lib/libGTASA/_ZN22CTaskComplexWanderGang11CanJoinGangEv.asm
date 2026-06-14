; =========================================================
; Game Engine Function: _ZN22CTaskComplexWanderGang11CanJoinGangEv
; Address            : 0x5219D4 - 0x521A12
; =========================================================

5219D4:  LDRB.W          R1, [R0,#0x30]
5219D8:  CMP             R1, #0
5219DA:  ITT EQ
5219DC:  MOVEQ           R0, #0
5219DE:  BXEQ            LR
5219E0:  LDRB.W          R1, [R0,#0x31]
5219E4:  CBZ             R1, loc_5219FA
5219E6:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5219EE)
5219E8:  MOVS            R2, #0
5219EA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5219EC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5219EE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5219F0:  STRB.W          R2, [R0,#0x31]
5219F4:  STR             R1, [R0,#0x28]
5219F6:  MOV             R2, R1
5219F8:  B               loc_521A04
5219FA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x521A02)
5219FC:  LDR             R2, [R0,#0x28]
5219FE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
521A00:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
521A02:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
521A04:  LDR             R0, [R0,#0x2C]
521A06:  ADD             R2, R0
521A08:  MOVS            R0, #0
521A0A:  CMP             R2, R1
521A0C:  IT LS
521A0E:  MOVLS           R0, #1
521A10:  BX              LR
