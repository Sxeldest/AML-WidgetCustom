; =========================================================
; Game Engine Function: _ZNK16CEventStuckInAir16GetEventPriorityEv
; Address            : 0x376E0A - 0x376E36
; =========================================================

376E0A:  PUSH            {R4,R6,R7,LR}
376E0C:  ADD             R7, SP, #8
376E0E:  MOV             R4, R0
376E10:  LDR             R0, [R4,#0xC]
376E12:  CBZ             R0, loc_376E32
376E14:  LDR.W           R0, [R0,#0x440]
376E18:  ADDS            R0, #0x34 ; '4'; this
376E1A:  BLX             j__ZNK13CEventHandler19GetCurrentEventTypeEv; CEventHandler::GetCurrentEventType(void)
376E1E:  CMP             R0, #0x5D ; ']'
376E20:  BEQ             loc_376E32
376E22:  LDR             R0, [R4,#0xC]
376E24:  LDR.W           R0, [R0,#0x440]
376E28:  LDR             R0, [R0,#0x70]
376E2A:  CMP             R0, #1
376E2C:  ITT GT
376E2E:  MOVGT           R0, #0x4B ; 'K'
376E30:  POPGT           {R4,R6,R7,PC}
376E32:  MOVS            R0, #0x3F ; '?'
376E34:  POP             {R4,R6,R7,PC}
