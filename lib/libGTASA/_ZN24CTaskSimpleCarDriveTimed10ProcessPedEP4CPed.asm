; =========================================================
; Game Engine Function: _ZN24CTaskSimpleCarDriveTimed10ProcessPedEP4CPed
; Address            : 0x334D64 - 0x334DB4
; =========================================================

334D64:  LDRB.W          R2, [R0,#0x6C]
334D68:  CBNZ            R2, loc_334D7E
334D6A:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x334D72)
334D6C:  LDR             R3, [R0,#0x60]
334D6E:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
334D70:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
334D72:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
334D74:  STRD.W          R2, R3, [R0,#0x64]
334D78:  MOVS            R2, #1
334D7A:  STRB.W          R2, [R0,#0x6C]
334D7E:  LDRB.W          R2, [R0,#0x6D]
334D82:  CBZ             R2, loc_334D98
334D84:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x334D8C)
334D86:  MOVS            R3, #0
334D88:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
334D8A:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
334D8C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
334D8E:  STRB.W          R3, [R0,#0x6D]
334D92:  STR             R2, [R0,#0x64]
334D94:  MOV             R12, R2
334D96:  B               loc_334DA4
334D98:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x334DA2)
334D9A:  LDR.W           R12, [R0,#0x64]
334D9E:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
334DA0:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
334DA2:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
334DA4:  LDR             R3, [R0,#0x68]
334DA6:  ADD             R3, R12
334DA8:  CMP             R3, R2
334DAA:  IT HI
334DAC:  BHI.W           sub_194F6C
334DB0:  MOVS            R0, #1
334DB2:  BX              LR
