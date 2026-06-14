; =========================================================
; Game Engine Function: _ZN7CWanted13UpdateCrimesQEv
; Address            : 0x421C30 - 0x421CA8
; =========================================================

421C30:  PUSH            {R4-R7,LR}
421C32:  ADD             R7, SP, #0xC
421C34:  PUSH.W          {R8-R11}
421C38:  SUB             SP, SP, #4
421C3A:  MOV             R4, R0
421C3C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x421C4A)
421C3E:  MOV.W           R10, #0
421C42:  MOVW            R11, #0x2710
421C46:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421C48:  MOVS            R5, #0
421C4A:  LDR             R6, [R0]; CTimer::m_snTimeInMilliseconds ...
421C4C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x421C52)
421C4E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
421C50:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds ...
421C54:  ADD.W           R8, R4, R5
421C58:  LDR.W           R1, [R8,#0x34]
421C5C:  CBZ             R1, loc_421C98
421C5E:  LDR.W           R0, [R8,#0x3C]
421C62:  LDR             R2, [R6]; CTimer::m_snTimeInMilliseconds
421C64:  ADD.W           R3, R0, #0x1F4
421C68:  CMP             R2, R3
421C6A:  BLS             loc_421C8E
421C6C:  LDRB.W          R3, [R8,#0x4C]
421C70:  CBNZ            R3, loc_421C8E
421C72:  LDRB.W          R3, [R8,#0x4D]
421C76:  ADD.W           R2, R8, #0x40 ; '@'
421C7A:  MOV             R0, R4
421C7C:  BLX             j__ZN7CWanted14ReportCrimeNowE10eCrimeTypeRK7CVectorb; CWanted::ReportCrimeNow(eCrimeType,CVector const&,bool)
421C80:  MOVS            R0, #1
421C82:  STRB.W          R0, [R8,#0x4C]
421C86:  LDR.W           R0, [R8,#0x3C]
421C8A:  LDR.W           R2, [R9]; CTimer::m_snTimeInMilliseconds
421C8E:  ADD             R0, R11
421C90:  CMP             R2, R0
421C92:  IT HI
421C94:  STRHI.W         R10, [R8,#0x34]
421C98:  ADDS            R5, #0x1C
421C9A:  CMP.W           R5, #0x1C0
421C9E:  BNE             loc_421C54
421CA0:  ADD             SP, SP, #4
421CA2:  POP.W           {R8-R11}
421CA6:  POP             {R4-R7,PC}
