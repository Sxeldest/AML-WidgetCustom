; =========================================================
; Game Engine Function: _ZN19CPedGroupMembership18RemoveAllFollowersEb
; Address            : 0x4B1DD0 - 0x4B1E88
; =========================================================

4B1DD0:  PUSH            {R4,R5,R7,LR}
4B1DD2:  ADD             R7, SP, #8
4B1DD4:  MOV             R4, R0
4B1DD6:  MOV             R5, R1
4B1DD8:  LDR             R0, [R4,#4]
4B1DDA:  CBZ             R0, loc_4B1DF0
4B1DDC:  CMP             R5, #1
4B1DDE:  ITT EQ
4B1DE0:  LDRBEQ.W        R0, [R0,#0x448]
4B1DE4:  CMPEQ           R0, #2
4B1DE6:  BEQ             loc_4B1DF0
4B1DE8:  MOV             R0, R4; this
4B1DEA:  MOVS            R1, #0; int
4B1DEC:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B1DF0:  LDR             R0, [R4,#8]
4B1DF2:  CBZ             R0, loc_4B1E08
4B1DF4:  CMP             R5, #1
4B1DF6:  ITT EQ
4B1DF8:  LDRBEQ.W        R0, [R0,#0x448]
4B1DFC:  CMPEQ           R0, #2
4B1DFE:  BEQ             loc_4B1E08
4B1E00:  MOV             R0, R4; this
4B1E02:  MOVS            R1, #1; int
4B1E04:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B1E08:  LDR             R0, [R4,#0xC]
4B1E0A:  CBZ             R0, loc_4B1E20
4B1E0C:  CMP             R5, #1
4B1E0E:  ITT EQ
4B1E10:  LDRBEQ.W        R0, [R0,#0x448]
4B1E14:  CMPEQ           R0, #2
4B1E16:  BEQ             loc_4B1E20
4B1E18:  MOV             R0, R4; this
4B1E1A:  MOVS            R1, #2; int
4B1E1C:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B1E20:  LDR             R0, [R4,#0x10]
4B1E22:  CBZ             R0, loc_4B1E38
4B1E24:  CMP             R5, #1
4B1E26:  ITT EQ
4B1E28:  LDRBEQ.W        R0, [R0,#0x448]
4B1E2C:  CMPEQ           R0, #2
4B1E2E:  BEQ             loc_4B1E38
4B1E30:  MOV             R0, R4; this
4B1E32:  MOVS            R1, #3; int
4B1E34:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B1E38:  LDR             R0, [R4,#0x14]
4B1E3A:  CBZ             R0, loc_4B1E50
4B1E3C:  CMP             R5, #1
4B1E3E:  ITT EQ
4B1E40:  LDRBEQ.W        R0, [R0,#0x448]
4B1E44:  CMPEQ           R0, #2
4B1E46:  BEQ             loc_4B1E50
4B1E48:  MOV             R0, R4; this
4B1E4A:  MOVS            R1, #4; int
4B1E4C:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B1E50:  LDR             R0, [R4,#0x18]
4B1E52:  CBZ             R0, loc_4B1E68
4B1E54:  CMP             R5, #1
4B1E56:  ITT EQ
4B1E58:  LDRBEQ.W        R0, [R0,#0x448]
4B1E5C:  CMPEQ           R0, #2
4B1E5E:  BEQ             loc_4B1E68
4B1E60:  MOV             R0, R4; this
4B1E62:  MOVS            R1, #5; int
4B1E64:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B1E68:  LDR             R0, [R4,#0x1C]
4B1E6A:  CMP             R0, #0
4B1E6C:  IT EQ
4B1E6E:  POPEQ           {R4,R5,R7,PC}
4B1E70:  CMP             R5, #1
4B1E72:  ITT EQ
4B1E74:  LDRBEQ.W        R0, [R0,#0x448]
4B1E78:  CMPEQ           R0, #2
4B1E7A:  BEQ             locret_4B1E86
4B1E7C:  MOV             R0, R4; this
4B1E7E:  MOVS            R1, #6; int
4B1E80:  POP.W           {R4,R5,R7,LR}
4B1E84:  B               _ZN19CPedGroupMembership12RemoveMemberEi; CPedGroupMembership::RemoveMember(int)
4B1E86:  POP             {R4,R5,R7,PC}
