; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePoint13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x513670 - 0x5136A4
; =========================================================

513670:  PUSH            {R4,R6,R7,LR}
513672:  ADD             R7, SP, #8
513674:  CBNZ            R2, loc_513696
513676:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513688)
51367A:  MOV.W           LR, #0xFFFFFFFF
51367E:  STR.W           LR, [R0,#0x28]
513682:  MOVS            R4, #1
513684:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513686:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds ...
51368A:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds
51368E:  STRB.W          R4, [R0,#0x3C]
513692:  STRD.W          R12, LR, [R0,#0x34]
513696:  LDR             R0, [R0,#8]
513698:  LDR             R4, [R0]
51369A:  LDR.W           R12, [R4,#0x1C]
51369E:  POP.W           {R4,R6,R7,LR}
5136A2:  BX              R12
