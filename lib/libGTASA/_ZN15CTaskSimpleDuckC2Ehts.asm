; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuckC2Ehts
; Address            : 0x542DCC - 0x542E18
; =========================================================

542DCC:  PUSH            {R4-R7,LR}
542DCE:  ADD             R7, SP, #0xC
542DD0:  PUSH.W          {R11}
542DD4:  MOV             R4, R3
542DD6:  MOV             R5, R2
542DD8:  MOV             R6, R1
542DDA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
542DDE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x542DE8)
542DE0:  MOVS            R3, #0xFF
542DE2:  LDR             R2, =(_ZTV15CTaskSimpleDuck_ptr - 0x542DEE)
542DE4:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
542DE6:  STRB.W          R6, [R0,#0x24]
542DEA:  ADD             R2, PC; _ZTV15CTaskSimpleDuck_ptr
542DEC:  STRB.W          R3, [R0,#0x25]
542DF0:  MOVS            R3, #0
542DF2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
542DF4:  LDR             R2, [R2]; `vtable for'CTaskSimpleDuck ...
542DF6:  MOVT            R3, #0x101
542DFA:  STR             R3, [R0,#0x18]
542DFC:  MOVS            R3, #0
542DFE:  STRD.W          R3, R3, [R0,#0x1C]
542E02:  ADDS            R2, #8
542E04:  STR             R2, [R0]
542E06:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
542E08:  STRH            R5, [R0,#0xC]
542E0A:  STR             R1, [R0,#8]
542E0C:  STRH            R4, [R0,#0xE]
542E0E:  STRD.W          R3, R3, [R0,#0x10]
542E12:  POP.W           {R11}
542E16:  POP             {R4-R7,PC}
