; =========================================================
; Game Engine Function: _ZNK30CEventLeaderEnteredCarAsDriver15AffectsPedGroupEP9CPedGroup
; Address            : 0x37683A - 0x37689A
; =========================================================

37683A:  PUSH            {R4-R7,LR}
37683C:  ADD             R7, SP, #0xC
37683E:  PUSH.W          {R11}
376842:  MOV             R4, R0
376844:  LDR             R0, [R4,#0x10]
376846:  CMP             R0, #0
376848:  ITT NE
37684A:  LDRBNE          R0, [R1,#4]
37684C:  CMPNE           R0, #0
37684E:  BEQ             loc_37688A
376850:  ADD.W           R5, R1, #8
376854:  MOV.W           R6, #0xFFFFFFFF
376858:  ADDS            R6, #1
37685A:  MOV             R0, R5; this
37685C:  MOV             R1, R6; int
37685E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
376862:  CBZ             R0, loc_376886
376864:  LDRB.W          R1, [R0,#0x485]
376868:  LSLS            R1, R1, #0x1F
37686A:  BEQ             loc_376892
37686C:  LDR             R1, [R4,#0x10]
37686E:  LDR.W           R2, [R0,#0x590]
376872:  CMP             R2, R1
376874:  BNE             loc_376892
376876:  LDR.W           R0, [R0,#0x440]
37687A:  MOV.W           R1, #0x2C0; int
37687E:  ADDS            R0, #4; this
376880:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
376884:  CBNZ            R0, loc_376892
376886:  CMP             R6, #6
376888:  BLT             loc_376858
37688A:  MOVS            R0, #0
37688C:  POP.W           {R11}
376890:  POP             {R4-R7,PC}
376892:  MOVS            R0, #1
376894:  POP.W           {R11}
376898:  POP             {R4-R7,PC}
