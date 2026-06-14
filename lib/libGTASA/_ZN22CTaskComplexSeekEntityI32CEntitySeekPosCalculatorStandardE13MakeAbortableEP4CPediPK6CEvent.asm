; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x333F60 - 0x333FA8
; =========================================================

333F60:  PUSH            {R4,R5,R7,LR}
333F62:  ADD             R7, SP, #8
333F64:  MOV             R5, R0
333F66:  CBNZ            R2, loc_333F84
333F68:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x333F76)
333F6A:  MOV.W           R12, #0xFFFFFFFF
333F6E:  STR.W           R12, [R5,#0x10]
333F72:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
333F74:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
333F76:  LDR.W           LR, [R0]; CTimer::m_snTimeInMilliseconds
333F7A:  MOVS            R0, #1
333F7C:  STRB.W          R0, [R5,#0x3C]
333F80:  STRD.W          LR, R12, [R5,#0x34]
333F84:  LDR             R0, [R5,#8]
333F86:  LDR             R4, [R0]
333F88:  LDR             R4, [R4,#0x1C]
333F8A:  BLX             R4
333F8C:  CMP             R0, #1
333F8E:  IT NE
333F90:  POPNE           {R4,R5,R7,PC}
333F92:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x333F9A)
333F94:  MOVS            R2, #1
333F96:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
333F98:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
333F9A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
333F9C:  STRB.W          R2, [R5,#0x30]
333FA0:  MOVS            R2, #0
333FA2:  STRD.W          R1, R2, [R5,#0x28]
333FA6:  POP             {R4,R5,R7,PC}
