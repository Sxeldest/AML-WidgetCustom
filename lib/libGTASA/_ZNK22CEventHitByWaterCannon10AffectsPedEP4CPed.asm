; =========================================================
; Game Engine Function: _ZNK22CEventHitByWaterCannon10AffectsPedEP4CPed
; Address            : 0x376BE8 - 0x376C16
; =========================================================

376BE8:  PUSH            {R4,R6,R7,LR}
376BEA:  ADD             R7, SP, #8
376BEC:  MOV             R4, R1
376BEE:  MOV             R0, R4; this
376BF0:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
376BF4:  CMP             R0, #1
376BF6:  BNE             loc_376C0E
376BF8:  LDR.W           R0, [R4,#0x440]
376BFC:  ADDS            R0, #4; this
376BFE:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
376C02:  CBZ             R0, loc_376C12
376C04:  LDR             R1, [R0]
376C06:  LDR             R1, [R1,#0x14]
376C08:  BLX             R1
376C0A:  CMP             R0, #0xD0
376C0C:  BNE             loc_376C12
376C0E:  MOVS            R0, #0
376C10:  POP             {R4,R6,R7,PC}
376C12:  MOVS            R0, #1
376C14:  POP             {R4,R6,R7,PC}
