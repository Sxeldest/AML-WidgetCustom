; =========================================================
; Game Engine Function: _ZN39CTaskComplexGoToPointAndStandStillTimed14ControlSubTaskEP4CPed
; Address            : 0x51D984 - 0x51DA00
; =========================================================

51D984:  PUSH            {R4,R5,R7,LR}
51D986:  ADD             R7, SP, #8
51D988:  MOV             R5, R0
51D98A:  MOV             R4, R1
51D98C:  LDRB.W          R0, [R5,#0x34]
51D990:  CBZ             R0, loc_51D9F6
51D992:  LDRB.W          R0, [R5,#0x35]
51D996:  CBZ             R0, loc_51D9AC
51D998:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51D9A0)
51D99A:  MOVS            R1, #0
51D99C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51D99E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51D9A0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51D9A2:  STRB.W          R1, [R5,#0x35]
51D9A6:  STR             R0, [R5,#0x2C]
51D9A8:  MOV             R1, R0
51D9AA:  B               loc_51D9B6
51D9AC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51D9B4)
51D9AE:  LDR             R1, [R5,#0x2C]
51D9B0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51D9B2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51D9B4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51D9B6:  LDR             R2, [R5,#0x30]
51D9B8:  ADD             R1, R2
51D9BA:  CMP             R1, R0
51D9BC:  BHI             loc_51D9F6
51D9BE:  LDR             R0, [R5,#8]
51D9C0:  LDR             R1, [R0]
51D9C2:  LDR             R1, [R1,#0x14]
51D9C4:  BLX             R1
51D9C6:  CMP             R0, #0xCB
51D9C8:  BEQ             loc_51D9F6
51D9CA:  ADD.W           R0, R5, #0x10; this
51D9CE:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
51D9D2:  CMP             R0, #1
51D9D4:  BNE             loc_51D9F6
51D9D6:  LDRD.W          R2, R1, [R5,#0x10]
51D9DA:  LDR             R3, [R4,#0x14]
51D9DC:  LDR             R0, [R5,#0x18]
51D9DE:  CBZ             R3, loc_51D9EC
51D9E0:  STR             R2, [R3,#0x30]
51D9E2:  LDR             R2, [R4,#0x14]
51D9E4:  STR             R1, [R2,#0x34]
51D9E6:  LDR             R1, [R4,#0x14]
51D9E8:  ADDS            R1, #0x38 ; '8'
51D9EA:  B               loc_51D9F4
51D9EC:  STRD.W          R2, R1, [R4,#4]
51D9F0:  ADD.W           R1, R4, #0xC
51D9F4:  STR             R0, [R1]
51D9F6:  MOV             R0, R5; this
51D9F8:  MOV             R1, R4; CPed *
51D9FA:  POP.W           {R4,R5,R7,LR}
51D9FE:  B               _ZN34CTaskComplexGoToPointAndStandStill14ControlSubTaskEP4CPed; CTaskComplexGoToPointAndStandStill::ControlSubTask(CPed *)
