; =========================================================
; Game Engine Function: _ZNK13CEventSeenCop10AffectsPedEP4CPed
; Address            : 0x3752B8 - 0x3752F0
; =========================================================

3752B8:  PUSH            {R4,R5,R7,LR}
3752BA:  ADD             R7, SP, #8
3752BC:  MOV             R5, R0
3752BE:  MOV             R4, R1
3752C0:  LDR             R0, [R5,#0x10]
3752C2:  CBZ             R0, loc_3752EC
3752C4:  LDR.W           R0, [R4,#0x738]
3752C8:  CBNZ            R0, loc_3752EC
3752CA:  MOV             R0, R4; this
3752CC:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3752D0:  CMP             R0, #1
3752D2:  BNE             loc_3752EC
3752D4:  LDR             R0, [R5,#0x10]; this
3752D6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3752DA:  CMP             R0, #1
3752DC:  BNE             loc_3752EC
3752DE:  LDR             R1, [R5,#0x10]; CPed *
3752E0:  MOV             R0, R4; this
3752E2:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
3752E6:  EOR.W           R0, R0, #1
3752EA:  POP             {R4,R5,R7,PC}
3752EC:  MOVS            R0, #0
3752EE:  POP             {R4,R5,R7,PC}
