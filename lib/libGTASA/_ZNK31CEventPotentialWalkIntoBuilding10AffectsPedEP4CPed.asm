; =========================================================
; Game Engine Function: _ZNK31CEventPotentialWalkIntoBuilding10AffectsPedEP4CPed
; Address            : 0x376AF0 - 0x376B7A
; =========================================================

376AF0:  PUSH            {R4,R5,R7,LR}
376AF2:  ADD             R7, SP, #8
376AF4:  MOV             R4, R1
376AF6:  MOV             R5, R0
376AF8:  MOV             R0, R4; this
376AFA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
376AFE:  CBNZ            R0, loc_376B12
376B00:  MOV             R0, R4; this
376B02:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
376B06:  CMP             R0, #1
376B08:  ITT EQ
376B0A:  LDREQ.W         R0, [R4,#0x100]
376B0E:  CMPEQ           R0, #0
376B10:  BEQ             loc_376B16
376B12:  MOVS            R0, #0
376B14:  POP             {R4,R5,R7,PC}
376B16:  LDRH            R0, [R5,#0xC]
376B18:  CMP             R0, #1
376B1A:  BEQ             loc_376B12
376B1C:  LDR.W           R0, [R4,#0x440]
376B20:  ADDS            R0, #0x34 ; '4'; this
376B22:  BLX             j__ZNK13CEventHandler19GetCurrentEventTypeEv; CEventHandler::GetCurrentEventType(void)
376B26:  CMP             R0, #6
376B28:  BNE             loc_376B3C
376B2A:  LDR.W           R0, [R4,#0x440]
376B2E:  ADDS            R0, #0x38 ; '8'; this
376B30:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
376B34:  LDR             R1, [R5,#0x14]
376B36:  LDR             R0, [R0,#0x14]
376B38:  CMP             R0, R1
376B3A:  BEQ             loc_376B12
376B3C:  LDR.W           R0, [R4,#0x440]
376B40:  ADDS            R0, #0x34 ; '4'; this
376B42:  BLX             j__ZNK13CEventHandler19GetCurrentEventTypeEv; CEventHandler::GetCurrentEventType(void)
376B46:  CMP             R0, #6
376B48:  BNE             loc_376B5C
376B4A:  LDR.W           R0, [R4,#0x440]
376B4E:  ADDS            R0, #0x38 ; '8'; this
376B50:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
376B54:  LDR             R1, [R5,#0x14]
376B56:  LDR             R0, [R0,#0x14]
376B58:  CMP             R0, R1
376B5A:  BEQ             loc_376B12
376B5C:  LDR.W           R0, [R4,#0x440]
376B60:  ADDS            R0, #4; this
376B62:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
376B66:  CBZ             R0, loc_376B76
376B68:  LDR             R1, [R0]
376B6A:  LDR             R1, [R1,#0x14]
376B6C:  BLX             R1
376B6E:  MOVW            R1, #0x259
376B72:  CMP             R0, R1
376B74:  BEQ             loc_376B12
376B76:  MOVS            R0, #1
376B78:  POP             {R4,R5,R7,PC}
