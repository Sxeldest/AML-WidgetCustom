; =========================================================
; Game Engine Function: _ZN4CPed12CanBeDeletedEv
; Address            : 0x4A4C18 - 0x4A4C60
; =========================================================

4A4C18:  PUSH            {R4,R6,R7,LR}
4A4C1A:  ADD             R7, SP, #8
4A4C1C:  MOV             R4, R0
4A4C1E:  LDRB.W          R0, [R4,#0x485]
4A4C22:  LSLS            R0, R0, #0x1F
4A4C24:  BNE             loc_4A4C58
4A4C26:  MOV.W           R0, #0xFFFFFFFF; int
4A4C2A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4A4C2E:  LDR.W           R0, [R0,#0x444]
4A4C32:  MOV.W           R2, #0x2D4
4A4C36:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4A4C3E)
4A4C38:  LDR             R0, [R0,#0x38]
4A4C3A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4A4C3C:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4A4C3E:  MLA.W           R0, R0, R2, R1
4A4C42:  MOV             R1, R4; CPed *
4A4C44:  ADDS            R0, #8; this
4A4C46:  BLX             j__ZNK19CPedGroupMembership10IsFollowerEPK4CPed; CPedGroupMembership::IsFollower(CPed const*)
4A4C4A:  CBNZ            R0, loc_4A4C58
4A4C4C:  LDRB.W          R0, [R4,#0x448]
4A4C50:  CMP             R0, #3
4A4C52:  IT NE
4A4C54:  CMPNE           R0, #2
4A4C56:  BNE             loc_4A4C5C
4A4C58:  MOVS            R0, #0
4A4C5A:  POP             {R4,R6,R7,PC}
4A4C5C:  MOVS            R0, #1
4A4C5E:  POP             {R4,R6,R7,PC}
