; =========================================================
; Game Engine Function: _ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii
; Address            : 0x509484 - 0x5094BA
; =========================================================

509484:  PUSH            {R7,LR}; Alternative name is 'CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&, int, int, int)'
509486:  MOV             R7, SP
509488:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x509494)
50948C:  VLDR            D16, [R1]
509490:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
509492:  LDR             R1, [R1,#8]
509494:  STR             R1, [R0,#8]
509496:  MOVW            R1, #0xFF5C
50949A:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds ...
50949E:  MOVT            R1, #0xC479
5094A2:  STR             R1, [R0,#0xC]
5094A4:  VSTR            D16, [R0]
5094A8:  LDR.W           LR, [R7,#8+arg_0]
5094AC:  LDR.W           R1, [R12]; CTimer::m_snTimeInMilliseconds
5094B0:  STRD.W          R3, LR, [R0,#0x14]
5094B4:  ADD             R1, R2
5094B6:  STR             R1, [R0,#0x10]
5094B8:  POP             {R7,PC}
