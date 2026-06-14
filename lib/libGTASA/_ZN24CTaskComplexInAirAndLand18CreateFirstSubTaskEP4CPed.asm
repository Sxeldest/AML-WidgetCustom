; =========================================================
; Game Engine Function: _ZN24CTaskComplexInAirAndLand18CreateFirstSubTaskEP4CPed
; Address            : 0x52BDE0 - 0x52BE4A
; =========================================================

52BDE0:  PUSH            {R4,R5,R7,LR}
52BDE2:  ADD             R7, SP, #8
52BDE4:  MOV             R4, R0
52BDE6:  MOVS            R0, #off_3C; this
52BDE8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BDEC:  LDRB            R5, [R4,#0xC]
52BDEE:  LDRB            R4, [R4,#0xD]
52BDF0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BDF4:  LDR             R2, =(_ZTV16CTaskSimpleInAir_ptr - 0x52BE00)
52BDF6:  MOVS            R3, #0
52BDF8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52BE06)
52BDFA:  CMP             R4, #0
52BDFC:  ADD             R2, PC; _ZTV16CTaskSimpleInAir_ptr
52BDFE:  STR.W           R3, [R0,#0x32]
52BE02:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52BE04:  STR.W           R3, [R0,#0x2E]
52BE08:  LDR             R2, [R2]; `vtable for'CTaskSimpleInAir ...
52BE0A:  STRD.W          R3, R3, [R0,#0x28]
52BE0E:  STR             R3, [R0,#0x38]
52BE10:  ADD.W           R2, R2, #8
52BE14:  STRD.W          R3, R3, [R0,#0x1C]
52BE18:  LDRB.W          R3, [R0,#0x24]
52BE1C:  STR             R2, [R0]
52BE1E:  IT NE
52BE20:  MOVNE           R4, #1
52BE22:  CMP             R5, #0
52BE24:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52BE26:  IT NE
52BE28:  MOVNE           R5, #1
52BE2A:  AND.W           R3, R3, #0xF8
52BE2E:  ORR.W           R2, R5, R4,LSL#1
52BE32:  ORRS            R2, R3
52BE34:  STRB.W          R2, [R0,#0x24]
52BE38:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
52BE3A:  MOV.W           R2, #0x1F4
52BE3E:  STRD.W          R1, R2, [R0,#0x2C]
52BE42:  MOVS            R1, #1
52BE44:  STRB.W          R1, [R0,#0x34]
52BE48:  POP             {R4,R5,R7,PC}
