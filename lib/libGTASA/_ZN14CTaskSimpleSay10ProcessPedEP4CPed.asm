; =========================================================
; Game Engine Function: _ZN14CTaskSimpleSay10ProcessPedEP4CPed
; Address            : 0x3575CC - 0x357638
; =========================================================

3575CC:  PUSH            {R4,R5,R7,LR}
3575CE:  ADD             R7, SP, #8
3575D0:  SUB             SP, SP, #0x10
3575D2:  MOV             R4, R0
3575D4:  LDRB            R0, [R4,#0x18]
3575D6:  CBNZ            R0, loc_3575EA
3575D8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3575E0)
3575DA:  LDR             R2, [R4,#0xC]
3575DC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3575DE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3575E0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3575E2:  STRD.W          R0, R2, [R4,#0x10]
3575E6:  MOVS            R0, #1
3575E8:  STRB            R0, [R4,#0x18]
3575EA:  LDRH            R2, [R4,#8]
3575EC:  MOVS            R5, #0
3575EE:  MOV             R0, R1; this
3575F0:  MOV.W           R3, #0x3F800000; float
3575F4:  STRD.W          R5, R5, [SP,#0x18+var_18]; unsigned __int8
3575F8:  MOV             R1, R2; unsigned __int16
3575FA:  MOVS            R2, #0; unsigned int
3575FC:  STR             R5, [SP,#0x18+var_10]; unsigned __int8
3575FE:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
357602:  LDRB            R0, [R4,#0x18]
357604:  CBZ             R0, loc_357632
357606:  LDRB            R0, [R4,#0x19]
357608:  CBZ             R0, loc_35761C
35760A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x357612)
35760C:  MOVS            R1, #0
35760E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
357610:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
357612:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
357614:  STRB            R1, [R4,#0x19]
357616:  STR             R0, [R4,#0x10]
357618:  MOV             R1, R0
35761A:  B               loc_357626
35761C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x357624)
35761E:  LDR             R1, [R4,#0x10]
357620:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
357622:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
357624:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
357626:  LDR             R2, [R4,#0x14]
357628:  MOVS            R5, #0
35762A:  ADD             R1, R2
35762C:  CMP             R1, R0
35762E:  IT LS
357630:  MOVLS           R5, #1
357632:  MOV             R0, R5
357634:  ADD             SP, SP, #0x10
357636:  POP             {R4,R5,R7,PC}
