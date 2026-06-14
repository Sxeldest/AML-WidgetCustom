; =========================================================
; Game Engine Function: _ZN24CInformFriendsEventQueue7ProcessEv
; Address            : 0x37005C - 0x370138
; =========================================================

37005C:  PUSH            {R4-R7,LR}
37005E:  ADD             R7, SP, #0xC
370060:  PUSH.W          {R8-R11}
370064:  SUB             SP, SP, #0x14
370066:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x370076)
370068:  MOV.W           R10, #0
37006C:  LDR             R1, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x370078)
37006E:  MOV.W           R11, #0
370072:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
370074:  ADD             R1, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
370076:  LDR             R4, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
370078:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x370082)
37007A:  LDR.W           R8, [R1]; CInformFriendsEventQueue::ms_informFriendsEvents ...
37007E:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
370080:  LDR             R0, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
370082:  STR             R0, [SP,#0x30+var_24]
370084:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x37008A)
370086:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
370088:  LDR             R0, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
37008A:  STR             R0, [SP,#0x30+var_28]
37008C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x370092)
37008E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
370090:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
370092:  STR             R0, [SP,#0x30+var_20]
370094:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x37009A)
370096:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
370098:  LDR             R0, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
37009A:  STR             R0, [SP,#0x30+var_2C]
37009C:  LDR             R0, =(_ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr - 0x3700A2)
37009E:  ADD             R0, PC; _ZN24CInformFriendsEventQueue22ms_informFriendsEventsE_ptr
3700A0:  LDR             R0, [R0]; CInformFriendsEventQueue::ms_informFriendsEvents ...
3700A2:  STR             R0, [SP,#0x30+var_30]
3700A4:  LDR.W           R0, [R4,R10]
3700A8:  CBZ             R0, loc_3700F8
3700AA:  LDR             R1, [SP,#0x30+var_20]
3700AC:  ADD.W           R9, R8, R10
3700B0:  LDR.W           R2, [R9,#8]!
3700B4:  LDR             R1, [R1]
3700B6:  CMP             R2, R1
3700B8:  BCS             loc_370122
3700BA:  LDR             R5, [SP,#0x30+var_2C]
3700BC:  MOVS            R2, #0; bool
3700BE:  LDR.W           R0, [R0,#0x440]
3700C2:  ADD.W           R6, R5, R10
3700C6:  ADDS            R0, #0x68 ; 'h'; this
3700C8:  LDR             R1, [R6,#4]; CEvent *
3700CA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
3700CE:  LDR.W           R0, [R5,R10]; this
3700D2:  CBZ             R0, loc_3700E8
3700D4:  MOV             R5, R4
3700D6:  LDR             R4, [SP,#0x30+var_30]
3700D8:  ADD.W           R1, R4, R10; CEntity **
3700DC:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3700E0:  MOVS            R0, #0
3700E2:  STR.W           R0, [R4,R10]
3700E6:  MOV             R4, R5
3700E8:  LDR             R0, [R6,#4]
3700EA:  CBZ             R0, loc_37011A
3700EC:  LDR             R1, [R0]
3700EE:  LDR             R1, [R1,#4]
3700F0:  BLX             R1
3700F2:  MOVS            R0, #0
3700F4:  STR             R0, [R6,#4]
3700F6:  B               loc_37011A
3700F8:  LDR             R0, [SP,#0x30+var_24]
3700FA:  ADD.W           R6, R0, R10
3700FE:  LDR             R0, [R6,#4]
370100:  CBZ             R0, loc_37010C
370102:  LDR             R1, [R0]
370104:  LDR             R1, [R1,#4]
370106:  BLX             R1
370108:  MOVS            R0, #0
37010A:  STR             R0, [R6,#4]
37010C:  ADD.W           R0, R11, R11,LSL#1
370110:  LDR             R1, [SP,#0x30+var_28]
370112:  ADD.W           R0, R1, R0,LSL#2
370116:  ADD.W           R9, R0, #8
37011A:  MOV.W           R0, #0xFFFFFFFF
37011E:  STR.W           R0, [R9]
370122:  ADD.W           R10, R10, #0xC
370126:  ADD.W           R11, R11, #1
37012A:  CMP.W           R10, #0x60 ; '`'
37012E:  BNE             loc_3700A4
370130:  ADD             SP, SP, #0x14
370132:  POP.W           {R8-R11}
370136:  POP             {R4-R7,PC}
