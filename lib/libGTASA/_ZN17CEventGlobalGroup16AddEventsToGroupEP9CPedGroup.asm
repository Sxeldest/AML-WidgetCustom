; =========================================================
; Game Engine Function: _ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup
; Address            : 0x36FA2A - 0x36FA72
; =========================================================

36FA2A:  PUSH            {R4-R7,LR}
36FA2C:  ADD             R7, SP, #0xC
36FA2E:  PUSH.W          {R8,R9,R11}
36FA32:  MOV             R8, R0
36FA34:  LDR.W           R0, [R8,#8]
36FA38:  CMP             R0, #1
36FA3A:  BLT             loc_36FA6C
36FA3C:  ADD.W           R9, R1, #0x30 ; '0'
36FA40:  ADD.W           R4, R8, #0xC
36FA44:  MOVS            R5, #0
36FA46:  LDR.W           R0, [R4,R5,LSL#2]
36FA4A:  LDR             R1, [R0]
36FA4C:  LDR             R1, [R1,#0x14]
36FA4E:  BLX             R1
36FA50:  MOV             R6, R0
36FA52:  MOV             R0, R9; this
36FA54:  MOV             R1, R6; CEvent *
36FA56:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
36FA5A:  LDR             R0, [R6]
36FA5C:  LDR             R1, [R0,#4]
36FA5E:  MOV             R0, R6
36FA60:  BLX             R1
36FA62:  LDR.W           R0, [R8,#8]
36FA66:  ADDS            R5, #1
36FA68:  CMP             R5, R0
36FA6A:  BLT             loc_36FA46
36FA6C:  POP.W           {R8,R9,R11}
36FA70:  POP             {R4-R7,PC}
