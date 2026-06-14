; =========================================================
; Game Engine Function: _ZNK26CEventPlayerCommandToGroup15AffectsPedGroupEP9CPedGroup
; Address            : 0x377C4E - 0x377D1A
; =========================================================

377C4E:  PUSH            {R4,R5,R7,LR}
377C50:  ADD             R7, SP, #8
377C52:  ADD.W           R5, R1, #8
377C56:  MOV             R0, R5; this
377C58:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
377C5C:  MOV             R4, R0
377C5E:  CMP             R4, #0
377C60:  BEQ             loc_377D16
377C62:  MOV             R0, R4; this
377C64:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
377C68:  CMP             R0, #1
377C6A:  BNE             loc_377D16
377C6C:  MOV             R0, R5; this
377C6E:  MOVS            R1, #0; int
377C70:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377C74:  CMP             R0, #0
377C76:  ITTT NE
377C78:  LDRBNE.W        R1, [R4,#0x33]
377C7C:  LDRBNE.W        R0, [R0,#0x33]
377C80:  CMPNE           R0, R1
377C82:  BNE             loc_377D16
377C84:  MOV             R0, R5; this
377C86:  MOVS            R1, #1; int
377C88:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377C8C:  CBZ             R0, loc_377C9A
377C8E:  LDRB.W          R1, [R4,#0x33]
377C92:  LDRB.W          R0, [R0,#0x33]
377C96:  CMP             R0, R1
377C98:  BNE             loc_377D16
377C9A:  MOV             R0, R5; this
377C9C:  MOVS            R1, #2; int
377C9E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377CA2:  CMP             R0, #0
377CA4:  ITTT NE
377CA6:  LDRBNE.W        R1, [R4,#0x33]
377CAA:  LDRBNE.W        R0, [R0,#0x33]
377CAE:  CMPNE           R0, R1
377CB0:  BNE             loc_377D16
377CB2:  MOV             R0, R5; this
377CB4:  MOVS            R1, #3; int
377CB6:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377CBA:  CMP             R0, #0
377CBC:  ITTT NE
377CBE:  LDRBNE.W        R1, [R4,#0x33]
377CC2:  LDRBNE.W        R0, [R0,#0x33]
377CC6:  CMPNE           R0, R1
377CC8:  BNE             loc_377D16
377CCA:  MOV             R0, R5; this
377CCC:  MOVS            R1, #4; int
377CCE:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377CD2:  CMP             R0, #0
377CD4:  ITTT NE
377CD6:  LDRBNE.W        R1, [R4,#0x33]
377CDA:  LDRBNE.W        R0, [R0,#0x33]
377CDE:  CMPNE           R0, R1
377CE0:  BNE             loc_377D16
377CE2:  MOV             R0, R5; this
377CE4:  MOVS            R1, #5; int
377CE6:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377CEA:  CMP             R0, #0
377CEC:  ITTT NE
377CEE:  LDRBNE.W        R1, [R4,#0x33]
377CF2:  LDRBNE.W        R0, [R0,#0x33]
377CF6:  CMPNE           R0, R1
377CF8:  BNE             loc_377D16
377CFA:  MOV             R0, R5; this
377CFC:  MOVS            R1, #6; int
377CFE:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
377D02:  CMP             R0, #0
377D04:  ITTT NE
377D06:  LDRBNE.W        R1, [R4,#0x33]
377D0A:  LDRBNE.W        R0, [R0,#0x33]
377D0E:  CMPNE           R0, R1
377D10:  BNE             loc_377D16
377D12:  MOVS            R0, #1
377D14:  POP             {R4,R5,R7,PC}
377D16:  MOVS            R0, #0
377D18:  POP             {R4,R5,R7,PC}
