; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCop12ScanForStuffEP4CPed
; Address            : 0x523C70 - 0x523D4E
; =========================================================

523C70:  PUSH            {R4,R5,R7,LR}
523C72:  ADD             R7, SP, #8
523C74:  MOV             R5, R0
523C76:  MOV             R4, R1
523C78:  LDRB.W          R0, [R5,#0x34]
523C7C:  CBNZ            R0, loc_523C92
523C7E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523C86)
523C80:  MOVS            R1, #0x32 ; '2'
523C82:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523C84:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523C86:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
523C88:  STRD.W          R0, R1, [R5,#0x2C]
523C8C:  MOVS            R0, #1
523C8E:  STRB.W          R0, [R5,#0x34]
523C92:  LDR             R0, [R5,#8]
523C94:  LDR             R1, [R0]
523C96:  LDR             R1, [R1,#0x14]
523C98:  BLX             R1
523C9A:  MOVW            R1, #0x44F
523C9E:  CMP             R0, R1
523CA0:  ITT NE
523CA2:  LDRBNE.W        R0, [R5,#0x34]
523CA6:  CMPNE           R0, #0
523CA8:  BEQ             locret_523D18
523CAA:  LDRB.W          R0, [R5,#0x35]
523CAE:  CBZ             R0, loc_523CC4
523CB0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523CB8)
523CB2:  MOVS            R1, #0
523CB4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523CB6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523CB8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
523CBA:  STRB.W          R1, [R5,#0x35]
523CBE:  STR             R0, [R5,#0x2C]
523CC0:  MOV             R1, R0
523CC2:  B               loc_523CCE
523CC4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523CCC)
523CC6:  LDR             R1, [R5,#0x2C]
523CC8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523CCA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523CCC:  LDR             R0, [R0]; this
523CCE:  LDR             R2, [R5,#0x30]
523CD0:  ADD             R1, R2
523CD2:  CMP             R1, R0
523CD4:  BHI             locret_523D18
523CD6:  MOVS            R1, #0x32 ; '2'
523CD8:  MOVS            R2, #1
523CDA:  STRD.W          R0, R1, [R5,#0x2C]
523CDE:  LDR             R1, [R5,#0x3C]
523CE0:  STRB.W          R2, [R5,#0x34]
523CE4:  CMP             R0, R1
523CE6:  BCC             loc_523D00
523CE8:  MOV             R1, R4; CPed *
523CEA:  BLX             j__ZN21CTaskComplexWanderCop16LookForCarAlarmsEP4CPed; CTaskComplexWanderCop::LookForCarAlarms(CPed *)
523CEE:  MOV.W           R0, #0xFFFFFFFF; int
523CF2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523CF6:  LDR.W           R0, [R0,#0x444]
523CFA:  LDR             R0, [R0]
523CFC:  LDR             R0, [R0,#0x2C]
523CFE:  CBZ             R0, loc_523D1A
523D00:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523D08)
523D02:  LDR             R1, [R5,#0x38]
523D04:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523D06:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523D08:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
523D0A:  CMP             R0, R1
523D0C:  IT CC
523D0E:  POPCC           {R4,R5,R7,PC}
523D10:  MOV             R0, R5; this
523D12:  MOV             R1, R4; CPed *
523D14:  BLX             j__ZN21CTaskComplexWanderCop16LookForCriminalsEP4CPed; CTaskComplexWanderCop::LookForCriminals(CPed *)
523D18:  POP             {R4,R5,R7,PC}
523D1A:  MOV.W           R0, #0xFFFFFFFF; int
523D1E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523D22:  LDR.W           R0, [R0,#0x590]
523D26:  CMP             R0, #0
523D28:  BEQ             loc_523D00
523D2A:  MOV.W           R0, #0xFFFFFFFF; int
523D2E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523D32:  LDR.W           R0, [R0,#0x590]
523D36:  LDRB.W          R0, [R0,#0x42C]
523D3A:  LSLS            R0, R0, #0x1F
523D3C:  BEQ             loc_523D00
523D3E:  MOV.W           R0, #0xFFFFFFFF; int
523D42:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
523D46:  MOVS            R1, #1; int
523D48:  BLX             j__ZN10CPlayerPed20SetWantedLevelNoDropEi; CPlayerPed::SetWantedLevelNoDrop(int)
523D4C:  B               loc_523D00
