; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck14SetControlTypeEh
; Address            : 0x543670 - 0x5436A0
; =========================================================

543670:  LDRB            R2, [R0,#0x18]
543672:  CMP             R2, #0
543674:  ITT EQ
543676:  LDRBEQ          R2, [R0,#0x19]
543678:  CMPEQ           R2, #0
54367A:  BEQ             loc_543682
54367C:  MOVS            R1, #0
54367E:  MOV             R0, R1
543680:  BX              LR
543682:  CMP             R1, #4
543684:  ITT EQ
543686:  MOVEQ           R2, #0
543688:  STRHEQ          R2, [R0,#0xC]
54368A:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x543690)
54368C:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54368E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
543690:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
543692:  STRB.W          R1, [R0,#0x24]
543696:  MOVS            R1, #1
543698:  STR             R2, [R0,#8]
54369A:  STRB            R1, [R0,#0x1B]
54369C:  MOV             R0, R1
54369E:  BX              LR
