; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderStandard12ScanForStuffEP4CPed
; Address            : 0x523174 - 0x5231E8
; =========================================================

523174:  PUSH            {R4,R5,R7,LR}
523176:  ADD             R7, SP, #8
523178:  MOV             R5, R0
52317A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523186)
52317C:  MOV             R4, R1
52317E:  LDRB.W          R1, [R5,#0x30]
523182:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523184:  CMP             R1, #0
523186:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523188:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52318A:  BNE             loc_523198
52318C:  MOVS            R1, #0x32 ; '2'
52318E:  STRD.W          R0, R1, [R5,#0x28]
523192:  MOVS            R1, #1
523194:  STRB.W          R1, [R5,#0x30]
523198:  LDR             R1, [R5,#0x34]
52319A:  CMP             R0, R1
52319C:  BCC             locret_5231E6
52319E:  LDRB.W          R1, [R5,#0x31]
5231A2:  CBZ             R1, loc_5231B0
5231A4:  MOVS            R1, #0
5231A6:  STRB.W          R1, [R5,#0x31]
5231AA:  MOV             R1, R0
5231AC:  STR             R0, [R5,#0x28]
5231AE:  B               loc_5231B2
5231B0:  LDR             R1, [R5,#0x28]
5231B2:  LDR             R2, [R5,#0x2C]
5231B4:  ADD             R1, R2
5231B6:  CMP             R1, R0
5231B8:  BHI             locret_5231E6
5231BA:  MOVS            R1, #0x32 ; '2'
5231BC:  STRD.W          R0, R1, [R5,#0x28]
5231C0:  MOVS            R0, #1
5231C2:  STRB.W          R0, [R5,#0x30]
5231C6:  MOV             R0, R5; this
5231C8:  MOV             R1, R4; CPed *
5231CA:  BLX             j__ZN26CTaskComplexWanderStandard18LookForGangMembersEP4CPed; CTaskComplexWanderStandard::LookForGangMembers(CPed *)
5231CE:  CBNZ            R0, locret_5231E6
5231D0:  MOV             R0, R5; this
5231D2:  MOV             R1, R4; CPed *
5231D4:  BLX             j__ZN26CTaskComplexWanderStandard19LookForChatPartnersEP4CPed; CTaskComplexWanderStandard::LookForChatPartners(CPed *)
5231D8:  CMP             R0, #0
5231DA:  IT NE
5231DC:  POPNE           {R4,R5,R7,PC}
5231DE:  MOV             R0, R5; this
5231E0:  MOV             R1, R4; CPed *
5231E2:  BLX             j__ZN26CTaskComplexWanderStandard15LookForSexyCarsEP4CPed; CTaskComplexWanderStandard::LookForSexyCars(CPed *)
5231E6:  POP             {R4,R5,R7,PC}
