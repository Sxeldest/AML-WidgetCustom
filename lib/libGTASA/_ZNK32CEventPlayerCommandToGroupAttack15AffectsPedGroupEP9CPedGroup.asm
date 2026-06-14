; =========================================================
; Game Engine Function: _ZNK32CEventPlayerCommandToGroupAttack15AffectsPedGroupEP9CPedGroup
; Address            : 0x377D1E - 0x377DB6
; =========================================================

377D1E:  PUSH            {R4,R5,R7,LR}
377D20:  ADD             R7, SP, #8
377D22:  MOV             R4, R1
377D24:  BLX             j__ZNK26CEventPlayerCommandToGroup15AffectsPedGroupEP9CPedGroup; CEventPlayerCommandToGroup::AffectsPedGroup(CPedGroup *)
377D28:  CMP             R0, #1
377D2A:  BNE             loc_377DAE
377D2C:  ADDS            R4, #8
377D2E:  MOVS            R1, #0; int
377D30:  MOV             R0, R4; this
377D32:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377D36:  MOVS            R5, #0x20 ; ' '
377D38:  CBZ             R0, loc_377D42
377D3A:  LDR.W           R0, [R0,#0x48C]
377D3E:  TST             R0, R5
377D40:  BEQ             loc_377DB2
377D42:  MOV             R0, R4; this
377D44:  MOVS            R1, #1; int
377D46:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377D4A:  CBZ             R0, loc_377D54
377D4C:  LDR.W           R0, [R0,#0x48C]
377D50:  TST             R0, R5
377D52:  BEQ             loc_377DB2
377D54:  MOV             R0, R4; this
377D56:  MOVS            R1, #2; int
377D58:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377D5C:  CBZ             R0, loc_377D66
377D5E:  LDR.W           R0, [R0,#0x48C]
377D62:  TST             R0, R5
377D64:  BEQ             loc_377DB2
377D66:  MOV             R0, R4; this
377D68:  MOVS            R1, #3; int
377D6A:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377D6E:  CBZ             R0, loc_377D78
377D70:  LDR.W           R0, [R0,#0x48C]
377D74:  TST             R0, R5
377D76:  BEQ             loc_377DB2
377D78:  MOV             R0, R4; this
377D7A:  MOVS            R1, #4; int
377D7C:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377D80:  CBZ             R0, loc_377D8A
377D82:  LDR.W           R0, [R0,#0x48C]
377D86:  TST             R0, R5
377D88:  BEQ             loc_377DB2
377D8A:  MOV             R0, R4; this
377D8C:  MOVS            R1, #5; int
377D8E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377D92:  CBZ             R0, loc_377D9C
377D94:  LDR.W           R0, [R0,#0x48C]
377D98:  TST             R0, R5
377D9A:  BEQ             loc_377DB2
377D9C:  MOV             R0, R4; this
377D9E:  MOVS            R1, #6; int
377DA0:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377DA4:  CBZ             R0, loc_377DAE
377DA6:  LDR.W           R0, [R0,#0x48C]
377DAA:  TST             R0, R5
377DAC:  BEQ             loc_377DB2
377DAE:  MOVS            R0, #0
377DB0:  POP             {R4,R5,R7,PC}
377DB2:  MOVS            R0, #1
377DB4:  POP             {R4,R5,R7,PC}
