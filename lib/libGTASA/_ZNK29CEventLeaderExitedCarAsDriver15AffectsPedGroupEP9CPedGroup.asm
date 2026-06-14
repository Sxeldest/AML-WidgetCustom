; =========================================================
; Game Engine Function: _ZNK29CEventLeaderExitedCarAsDriver15AffectsPedGroupEP9CPedGroup
; Address            : 0x37689E - 0x37690C
; =========================================================

37689E:  PUSH            {R4-R7,LR}
3768A0:  ADD             R7, SP, #0xC
3768A2:  PUSH.W          {R8}
3768A6:  ADD.W           R8, R1, #8
3768AA:  MOV.W           R5, #0xFFFFFFFF
3768AE:  ADDS            R5, #1
3768B0:  MOV             R0, R8; this
3768B2:  MOV             R1, R5; int
3768B4:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
3768B8:  MOV             R6, R0
3768BA:  CBZ             R6, loc_3768F8
3768BC:  LDR.W           R4, [R6,#0x590]
3768C0:  CMP             R4, #0
3768C2:  ITT NE
3768C4:  LDRBNE.W        R0, [R6,#0x485]
3768C8:  MOVSNE.W        R0, R0,LSL#31
3768CC:  BEQ             loc_3768DC
3768CE:  MOV             R0, R8; this
3768D0:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
3768D4:  LDR.W           R0, [R0,#0x590]
3768D8:  CMP             R4, R0
3768DA:  BEQ             loc_376904
3768DC:  LDR.W           R0, [R6,#0x440]; this
3768E0:  MOV.W           R1, #0x2BC; int
3768E4:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
3768E8:  CBNZ            R0, loc_376904
3768EA:  LDR.W           R0, [R6,#0x440]; this
3768EE:  MOVW            R1, #0x2CE; int
3768F2:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
3768F6:  CBNZ            R0, loc_376904
3768F8:  CMP             R5, #6
3768FA:  BLT             loc_3768AE
3768FC:  MOVS            R0, #0
3768FE:  POP.W           {R8}
376902:  POP             {R4-R7,PC}
376904:  MOVS            R0, #1
376906:  POP.W           {R8}
37690A:  POP             {R4-R7,PC}
