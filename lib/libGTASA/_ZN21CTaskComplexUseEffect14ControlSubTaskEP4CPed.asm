; =========================================================
; Game Engine Function: _ZN21CTaskComplexUseEffect14ControlSubTaskEP4CPed
; Address            : 0x4EDE78 - 0x4EDEE4
; =========================================================

4EDE78:  PUSH            {R4,R5,R7,LR}
4EDE7A:  ADD             R7, SP, #8
4EDE7C:  MOV             R4, R1
4EDE7E:  MOV             R5, R0
4EDE80:  LDR.W           R0, [R4,#0x59C]
4EDE84:  CMP             R0, #6
4EDE86:  BNE             loc_4EDEC8
4EDE88:  MOV.W           R0, #0xFFFFFFFF; int
4EDE8C:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
4EDE90:  LDR             R0, [R0,#0x2C]
4EDE92:  CBZ             R0, loc_4EDEC8
4EDE94:  MOV.W           R0, #0xFFFFFFFF; int
4EDE98:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
4EDE9C:  MOV             R1, R4; CCopPed *
4EDE9E:  BLX             j__ZNK7CWanted17CanCopJoinPursuitEP7CCopPed; CWanted::CanCopJoinPursuit(CCopPed *)
4EDEA2:  CMP             R0, #1
4EDEA4:  BNE             loc_4EDEC8
4EDEA6:  LDR             R0, [R5,#8]
4EDEA8:  MOVS            R2, #1
4EDEAA:  MOVS            R3, #0
4EDEAC:  LDR             R1, [R0]
4EDEAE:  LDR.W           R12, [R1,#0x1C]
4EDEB2:  MOV             R1, R4
4EDEB4:  BLX             R12
4EDEB6:  CBZ             R0, loc_4EDEC8
4EDEB8:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EDEBC:  LDR             R2, [R5,#0x14]; CPedAttractor *
4EDEBE:  MOV             R1, R4; CPed *
4EDEC0:  BLX             j__ZN20CPedAttractorManager13DeRegisterPedEP4CPedP13CPedAttractor; CPedAttractorManager::DeRegisterPed(CPed *,CPedAttractor *)
4EDEC4:  MOVS            R0, #0
4EDEC6:  POP             {R4,R5,R7,PC}
4EDEC8:  LDR             R0, [R5,#0x14]; this
4EDECA:  CBZ             R0, loc_4EDED6
4EDECC:  MOV             R1, R4; CPed *
4EDECE:  POP.W           {R4,R5,R7,LR}
4EDED2:  B.W             j_j__ZNK13CPedAttractor13GetTaskForPedEP4CPed; j_CPedAttractor::GetTaskForPed(CPed *)
4EDED6:  LDR             R0, [R5]
4EDED8:  MOV             R1, R4
4EDEDA:  LDR             R2, [R0,#0x2C]
4EDEDC:  MOV             R0, R5
4EDEDE:  POP.W           {R4,R5,R7,LR}
4EDEE2:  BX              R2
