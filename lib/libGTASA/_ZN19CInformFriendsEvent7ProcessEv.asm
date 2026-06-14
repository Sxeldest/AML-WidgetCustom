; =========================================================
; Game Engine Function: _ZN19CInformFriendsEvent7ProcessEv
; Address            : 0x36FE10 - 0x36FE7A
; =========================================================

36FE10:  PUSH            {R4-R7,LR}
36FE12:  ADD             R7, SP, #0xC
36FE14:  PUSH.W          {R11}
36FE18:  MOV             R4, R0
36FE1A:  LDR             R0, [R4]
36FE1C:  CBZ             R0, loc_36FE5C
36FE1E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x36FE2A)
36FE20:  MOV             R5, R4
36FE22:  LDR.W           R2, [R5,#8]!
36FE26:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
36FE28:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
36FE2A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
36FE2C:  CMP             R2, R1
36FE2E:  BCS             loc_36FE74
36FE30:  LDR.W           R0, [R0,#0x440]
36FE34:  MOVS            R2, #0; bool
36FE36:  LDR             R1, [R4,#4]; CEvent *
36FE38:  MOVS            R6, #0
36FE3A:  ADDS            R0, #0x68 ; 'h'; this
36FE3C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
36FE40:  LDR             R0, [R4]; this
36FE42:  CBZ             R0, loc_36FE4C
36FE44:  MOV             R1, R4; CEntity **
36FE46:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
36FE4A:  STR             R6, [R4]
36FE4C:  LDR             R0, [R4,#4]
36FE4E:  CBZ             R0, loc_36FE6E
36FE50:  LDR             R1, [R0]
36FE52:  LDR             R1, [R1,#4]
36FE54:  BLX             R1
36FE56:  MOVS            R0, #0
36FE58:  STR             R0, [R4,#4]
36FE5A:  B               loc_36FE6E
36FE5C:  LDR             R0, [R4,#4]
36FE5E:  CBZ             R0, loc_36FE6A
36FE60:  LDR             R1, [R0]
36FE62:  LDR             R1, [R1,#4]
36FE64:  BLX             R1
36FE66:  MOVS            R0, #0
36FE68:  STR             R0, [R4,#4]
36FE6A:  ADD.W           R5, R4, #8
36FE6E:  MOV.W           R0, #0xFFFFFFFF
36FE72:  STR             R0, [R5]
36FE74:  POP.W           {R11}
36FE78:  POP             {R4-R7,PC}
