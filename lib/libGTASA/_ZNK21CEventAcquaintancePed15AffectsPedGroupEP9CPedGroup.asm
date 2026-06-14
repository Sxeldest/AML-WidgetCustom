; =========================================================
; Game Engine Function: _ZNK21CEventAcquaintancePed15AffectsPedGroupEP9CPedGroup
; Address            : 0x37511C - 0x3751BA
; =========================================================

37511C:  PUSH            {R4-R7,LR}
37511E:  ADD             R7, SP, #0xC
375120:  PUSH.W          {R11}
375124:  MOV             R4, R0
375126:  MOV             R6, R1
375128:  LDR             R1, [R4,#0x10]; CPed *
37512A:  CBZ             R1, loc_3751AA
37512C:  ADD.W           R5, R6, #8
375130:  MOV             R0, R5; this
375132:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
375136:  CBNZ            R0, loc_3751AA
375138:  LDR             R0, [R4]
37513A:  LDR             R1, [R0,#8]
37513C:  MOV             R0, R4
37513E:  BLX             R1
375140:  CMP             R0, #0x27 ; '''
375142:  BEQ             loc_375150
375144:  LDR             R0, [R4]
375146:  LDR             R1, [R0,#8]
375148:  MOV             R0, R4
37514A:  BLX             R1
37514C:  CMP             R0, #0x26 ; '&'
37514E:  BNE             loc_375158
375150:  LDR             R0, [R6]
375152:  LDR             R1, [R4,#0x10]
375154:  CMP             R1, R0
375156:  BEQ             loc_3751AA
375158:  LDR             R0, [R4]
37515A:  LDR             R1, [R0,#8]
37515C:  MOV             R0, R4
37515E:  BLX             R1
375160:  CMP             R0, #0x27 ; '''
375162:  BEQ             loc_375170
375164:  LDR             R0, [R4]
375166:  LDR             R1, [R0,#8]
375168:  MOV             R0, R4
37516A:  BLX             R1
37516C:  CMP             R0, #0x26 ; '&'
37516E:  BNE             loc_3751B2
375170:  MOV             R0, R5; this
375172:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
375176:  CBZ             R0, loc_375184
375178:  MOV             R0, R5; this
37517A:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
37517E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
375182:  CBNZ            R0, loc_3751AA
375184:  MOV.W           R0, #0xFFFFFFFF; int
375188:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
37518C:  LDR.W           R0, [R0,#0x444]
375190:  MOV.W           R2, #0x2D4
375194:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x37519C)
375196:  LDR             R0, [R0,#0x38]
375198:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
37519A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
37519C:  MLA.W           R0, R0, R2, R1
3751A0:  LDR             R1, [R4,#0x10]; CPed *
3751A2:  ADDS            R0, #8; this
3751A4:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
3751A8:  CBZ             R0, loc_3751B2
3751AA:  MOVS            R0, #0
3751AC:  POP.W           {R11}
3751B0:  POP             {R4-R7,PC}
3751B2:  MOVS            R0, #1
3751B4:  POP.W           {R11}
3751B8:  POP             {R4-R7,PC}
