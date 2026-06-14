; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePointC2ERK7CVectorbfi
; Address            : 0x5135F4 - 0x513652
; =========================================================

5135F4:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexSmartFleePoint::CTaskComplexSmartFleePoint(CVector const&, bool, float, int)'
5135F6:  ADD             R7, SP, #0xC
5135F8:  PUSH.W          {R11}
5135FC:  MOV             R4, R3
5135FE:  MOV             R5, R2
513600:  MOV             R6, R1
513602:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
513606:  LDR             R1, =(_ZTV26CTaskComplexSmartFleePoint_ptr - 0x51360E)
513608:  MOVS            R3, #0
51360A:  ADD             R1, PC; _ZTV26CTaskComplexSmartFleePoint_ptr
51360C:  LDR             R1, [R1]; `vtable for'CTaskComplexSmartFleePoint ...
51360E:  ADDS            R1, #8
513610:  STR             R1, [R0]
513612:  LDR             R2, [R6,#8]
513614:  LDR             R1, [R7,#arg_0]
513616:  VLDR            D16, [R6]
51361A:  STR             R2, [R0,#0x20]
51361C:  MOVS            R2, #7
51361E:  STRD.W          R1, R4, [R0,#0x28]
513622:  STRD.W          R2, R3, [R0,#0x30]
513626:  ADDS            R2, R1, #1
513628:  STR             R3, [R0,#0x38]
51362A:  STRB.W          R5, [R0,#0x24]
51362E:  STRH            R3, [R0,#0x3C]
513630:  STRH.W          R3, [R0,#0x40]
513634:  VSTR            D16, [R0,#0x18]
513638:  BEQ             loc_51364C
51363A:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513642)
51363C:  MOVS            R3, #1
51363E:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513640:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
513642:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
513644:  STRB.W          R3, [R0,#0x3C]
513648:  STRD.W          R2, R1, [R0,#0x34]
51364C:  POP.W           {R11}
513650:  POP             {R4-R7,PC}
