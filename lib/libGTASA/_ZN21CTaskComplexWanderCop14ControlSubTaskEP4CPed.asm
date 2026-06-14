; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCop14ControlSubTaskEP4CPed
; Address            : 0x523BA0 - 0x523C68
; =========================================================

523BA0:  PUSH            {R4-R7,LR}
523BA2:  ADD             R7, SP, #0xC
523BA4:  PUSH.W          {R11}
523BA8:  MOV             R5, R1
523BAA:  MOV             R6, R0
523BAC:  LDR.W           R0, [R5,#0x59C]
523BB0:  CMP             R0, #6
523BB2:  BNE             loc_523C20
523BB4:  MOV.W           R0, #0xFFFFFFFF; int
523BB8:  LDR             R4, [R6,#8]
523BBA:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
523BBE:  LDR             R0, [R0,#0x2C]
523BC0:  CMP             R0, #1
523BC2:  BLT             loc_523C08
523BC4:  LDR             R0, [R6,#8]
523BC6:  CBZ             R0, loc_523BD6
523BC8:  LDR             R1, [R0]
523BCA:  LDR             R1, [R1,#0x14]
523BCC:  BLX             R1
523BCE:  MOVW            R1, #0x44F
523BD2:  CMP             R0, R1
523BD4:  BEQ             loc_523C08
523BD6:  MOV.W           R0, #0xFFFFFFFF; int
523BDA:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
523BDE:  MOV             R1, R5; CCopPed *
523BE0:  BLX             j__ZNK7CWanted17CanCopJoinPursuitEP7CCopPed; CWanted::CanCopJoinPursuit(CCopPed *)
523BE4:  CMP             R0, #1
523BE6:  BNE             loc_523C08
523BE8:  LDRB.W          R0, [R6,#0x4C]
523BEC:  CBZ             R0, loc_523C42
523BEE:  LDRB.W          R0, [R6,#0x4D]
523BF2:  CBZ             R0, loc_523C30
523BF4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523BFC)
523BF6:  MOVS            R1, #0
523BF8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523BFA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523BFC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
523BFE:  STRB.W          R1, [R6,#0x4D]
523C02:  STR             R0, [R6,#0x44]
523C04:  MOV             R1, R0
523C06:  B               loc_523C3A
523C08:  LDR             R0, [R6,#8]
523C0A:  LDR             R1, [R0]
523C0C:  LDR             R1, [R1,#0x14]
523C0E:  BLX             R1
523C10:  MOVW            R1, #0x44F
523C14:  CMP             R0, R1
523C16:  BNE             loc_523C1C
523C18:  LDR             R4, [R6,#8]
523C1A:  B               loc_523C60
523C1C:  LDR             R0, [R6,#0x28]
523C1E:  CBNZ            R0, loc_523C60
523C20:  MOV             R0, R6; this
523C22:  MOV             R1, R5; CPed *
523C24:  POP.W           {R11}
523C28:  POP.W           {R4-R7,LR}
523C2C:  B.W             _ZN18CTaskComplexWander14ControlSubTaskEP4CPed; CTaskComplexWander::ControlSubTask(CPed *)
523C30:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523C38)
523C32:  LDR             R1, [R6,#0x44]
523C34:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523C36:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523C38:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
523C3A:  LDR             R2, [R6,#0x48]
523C3C:  ADD             R1, R2
523C3E:  CMP             R1, R0
523C40:  BHI             loc_523C60
523C42:  LDR             R0, [R6,#8]
523C44:  MOVS            R2, #1
523C46:  MOVS            R3, #0
523C48:  LDR             R1, [R0]
523C4A:  LDR             R6, [R1,#0x1C]
523C4C:  MOV             R1, R5
523C4E:  BLX             R6
523C50:  CMP             R0, #1
523C52:  BNE             loc_523C60
523C54:  MOVS            R0, #off_18; this
523C56:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
523C5A:  MOV             R4, R0
523C5C:  BLX             j__ZN25CTaskComplexPolicePursuitC2Ev; CTaskComplexPolicePursuit::CTaskComplexPolicePursuit(void)
523C60:  MOV             R0, R4
523C62:  POP.W           {R11}
523C66:  POP             {R4-R7,PC}
