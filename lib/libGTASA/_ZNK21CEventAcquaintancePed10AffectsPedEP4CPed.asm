; =========================================================
; Game Engine Function: _ZNK21CEventAcquaintancePed10AffectsPedEP4CPed
; Address            : 0x3751C0 - 0x3751F8
; =========================================================

3751C0:  PUSH            {R4,R5,R7,LR}
3751C2:  ADD             R7, SP, #8
3751C4:  MOV             R5, R0
3751C6:  MOV             R4, R1
3751C8:  LDR             R0, [R5,#0x10]
3751CA:  CBZ             R0, loc_3751F4
3751CC:  LDR.W           R0, [R4,#0x738]
3751D0:  CBNZ            R0, loc_3751F4
3751D2:  MOV             R0, R4; this
3751D4:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3751D8:  CMP             R0, #1
3751DA:  BNE             loc_3751F4
3751DC:  LDR             R0, [R5,#0x10]; this
3751DE:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3751E2:  CMP             R0, #1
3751E4:  BNE             loc_3751F4
3751E6:  LDR             R1, [R5,#0x10]; CPed *
3751E8:  MOV             R0, R4; this
3751EA:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
3751EE:  EOR.W           R0, R0, #1
3751F2:  POP             {R4,R5,R7,PC}
3751F4:  MOVS            R0, #0
3751F6:  POP             {R4,R5,R7,PC}
