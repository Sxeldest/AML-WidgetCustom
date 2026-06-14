; =========================================================
; Game Engine Function: _ZN10CPedGroups8AddGroupEv
; Address            : 0x4B7210 - 0x4B72CA
; =========================================================

4B7210:  PUSH            {R4-R7,LR}
4B7212:  ADD             R7, SP, #0xC
4B7214:  PUSH.W          {R11}
4B7218:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7220)
4B721A:  MOVS            R5, #0
4B721C:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B721E:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7220:  LDRB            R1, [R0]; CPedGroups::ms_activeGroups
4B7222:  CBZ             R1, loc_4B727E
4B7224:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B722A)
4B7226:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7228:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B722A:  LDRB.W          R1, [R0,#(byte_9EF9B1 - 0x9EF9B0)]!
4B722E:  CBZ             R1, loc_4B7282
4B7230:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7236)
4B7232:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7234:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7236:  LDRB.W          R1, [R0,#(byte_9EF9B2 - 0x9EF9B0)]!
4B723A:  CBZ             R1, loc_4B7286
4B723C:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7242)
4B723E:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7240:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7242:  LDRB.W          R1, [R0,#(byte_9EF9B3 - 0x9EF9B0)]!
4B7246:  CBZ             R1, loc_4B728A
4B7248:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B724E)
4B724A:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B724C:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B724E:  LDRB.W          R1, [R0,#(byte_9EF9B4 - 0x9EF9B0)]!
4B7252:  CBZ             R1, loc_4B728E
4B7254:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B725A)
4B7256:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7258:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B725A:  LDRB.W          R1, [R0,#(byte_9EF9B5 - 0x9EF9B0)]!
4B725E:  CBZ             R1, loc_4B7292
4B7260:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7266)
4B7262:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7264:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7266:  LDRB.W          R1, [R0,#(byte_9EF9B6 - 0x9EF9B0)]!
4B726A:  CBZ             R1, loc_4B7296
4B726C:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B7272)
4B726E:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B7270:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B7272:  LDRB.W          R1, [R0,#(byte_9EF9B7 - 0x9EF9B0)]!
4B7276:  CBZ             R1, loc_4B729A
4B7278:  MOV.W           R4, #0xFFFFFFFF
4B727C:  B               loc_4B72C2
4B727E:  MOVS            R4, #0
4B7280:  B               loc_4B729C
4B7282:  MOVS            R4, #1
4B7284:  B               loc_4B729C
4B7286:  MOVS            R4, #2
4B7288:  B               loc_4B729C
4B728A:  MOVS            R4, #3
4B728C:  B               loc_4B729C
4B728E:  MOVS            R4, #4
4B7290:  B               loc_4B729C
4B7292:  MOVS            R4, #5
4B7294:  B               loc_4B729C
4B7296:  MOVS            R4, #6
4B7298:  B               loc_4B729C
4B729A:  MOVS            R4, #7
4B729C:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B72A6)
4B729E:  MOV.W           R2, #0x2D4
4B72A2:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B72A4:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B72A6:  SMLABB.W        R6, R4, R2, R1
4B72AA:  MOVS            R1, #1
4B72AC:  STRB            R1, [R0]; CPedGroups::ms_activeGroups ...
4B72AE:  ADD.W           R0, R6, #8; this
4B72B2:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B72B6:  ADD.W           R0, R6, #0x30 ; '0'; this
4B72BA:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B72BE:  STRB.W          R5, [R6,#0x2D0]
4B72C2:  MOV             R0, R4
4B72C4:  POP.W           {R11}
4B72C8:  POP             {R4-R7,PC}
