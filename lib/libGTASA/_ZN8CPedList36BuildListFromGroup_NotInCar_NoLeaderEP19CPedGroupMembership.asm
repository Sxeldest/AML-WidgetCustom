; =========================================================
; Game Engine Function: _ZN8CPedList36BuildListFromGroup_NotInCar_NoLeaderEP19CPedGroupMembership
; Address            : 0x5483D6 - 0x548436
; =========================================================

5483D6:  PUSH            {R4-R7,LR}
5483D8:  ADD             R7, SP, #0xC
5483DA:  PUSH.W          {R11}
5483DE:  MOV             R5, R1
5483E0:  MOV             R4, R0
5483E2:  MOVS            R6, #0
5483E4:  STR             R6, [R4]
5483E6:  MOV             R0, R5; this
5483E8:  MOV             R1, R6; int
5483EA:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5483EE:  CBZ             R0, loc_548414
5483F0:  LDR.W           R0, [R0,#0x440]; this
5483F4:  BLX             j__ZN16CPedIntelligence21IsInACarOrEnteringOneEv; CPedIntelligence::IsInACarOrEnteringOne(void)
5483F8:  CBNZ            R0, loc_548414
5483FA:  MOV             R0, R5; this
5483FC:  MOV             R1, R6; int
5483FE:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
548402:  LDR             R1, [R4]
548404:  CMP             R1, #0x1D
548406:  BGT             loc_548414
548408:  ADD.W           R1, R4, R1,LSL#2
54840C:  STR             R0, [R1,#4]
54840E:  LDR             R0, [R4]
548410:  ADDS            R0, #1
548412:  STR             R0, [R4]
548414:  ADDS            R6, #1
548416:  CMP             R6, #7
548418:  BNE             loc_5483E6
54841A:  LDR             R1, [R4]
54841C:  CMP             R1, #0x1D
54841E:  BGT             loc_548430
548420:  ADD.W           R0, R4, R1,LSL#2
548424:  RSB.W           R1, R1, #0x1E
548428:  ADDS            R0, #4
54842A:  LSLS            R1, R1, #2
54842C:  BLX             j___aeabi_memclr8_0
548430:  POP.W           {R11}
548434:  POP             {R4-R7,PC}
