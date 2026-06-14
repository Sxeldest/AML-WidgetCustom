; =========================================================
; Game Engine Function: _ZN16CTaskSimplePause10ProcessPedEP4CPed
; Address            : 0x357464 - 0x3574A8
; =========================================================

357464:  LDRB            R1, [R0,#0x10]
357466:  CBNZ            R1, loc_35747A
357468:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x357470)
35746A:  LDR             R2, [R0,#0x14]
35746C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35746E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
357470:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
357472:  STRD.W          R1, R2, [R0,#8]
357476:  MOVS            R1, #1
357478:  STRB            R1, [R0,#0x10]
35747A:  LDRB            R1, [R0,#0x11]
35747C:  CBZ             R1, loc_357490
35747E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x357486)
357480:  MOVS            R2, #0
357482:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
357484:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
357486:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
357488:  STRB            R2, [R0,#0x11]
35748A:  STR             R1, [R0,#8]
35748C:  MOV             R2, R1
35748E:  B               loc_35749A
357490:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x357498)
357492:  LDR             R2, [R0,#8]
357494:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
357496:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
357498:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
35749A:  LDR             R0, [R0,#0xC]
35749C:  ADD             R2, R0
35749E:  MOVS            R0, #0
3574A0:  CMP             R2, R1
3574A2:  IT LS
3574A4:  MOVLS           R0, #1
3574A6:  BX              LR
