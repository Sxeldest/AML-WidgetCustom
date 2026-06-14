; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence14GetTaskJetPackEv
; Address            : 0x4BA5D4 - 0x4BA60A
; =========================================================

4BA5D4:  PUSH            {R4,R6,R7,LR}
4BA5D6:  ADD             R7, SP, #8
4BA5D8:  MOV             R4, R0
4BA5DA:  LDR             R0, [R4]; this
4BA5DC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BA5E0:  CMP             R0, #1
4BA5E2:  BNE             loc_4BA604
4BA5E4:  ADDS            R0, R4, #4; this
4BA5E6:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BA5EA:  MOV             R4, R0
4BA5EC:  CBZ             R4, loc_4BA604
4BA5EE:  LDR             R0, [R4]
4BA5F0:  LDR             R1, [R0,#0x14]
4BA5F2:  MOV             R0, R4
4BA5F4:  BLX             R1
4BA5F6:  MOVW            R1, #0x517
4BA5FA:  CMP             R0, R1
4BA5FC:  IT NE
4BA5FE:  MOVNE           R4, #0
4BA600:  MOV             R0, R4
4BA602:  POP             {R4,R6,R7,PC}
4BA604:  MOVS            R4, #0
4BA606:  MOV             R0, R4
4BA608:  POP             {R4,R6,R7,PC}
