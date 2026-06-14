; =========================================================
; Game Engine Function: _ZN10CPlayerPed19PlayerWantsToAttackEv
; Address            : 0x4CA118 - 0x4CA1D0
; =========================================================

4CA118:  PUSH            {R4,R5,R7,LR}
4CA11A:  ADD             R7, SP, #8
4CA11C:  MOV             R4, R0
4CA11E:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA12C)
4CA120:  LDR.W           R0, [R4,#0x444]
4CA124:  MOV.W           R5, #0x2D4
4CA128:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA12A:  LDR             R0, [R0,#0x38]
4CA12C:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4CA12E:  MLA.W           R0, R0, R5, R1
4CA132:  ADDS            R0, #8; this
4CA134:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
4CA138:  CMP             R0, #1
4CA13A:  BLT             locret_4CA1CE
4CA13C:  LDR.W           R0, [R4,#0x444]
4CA140:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA146)
4CA142:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA144:  LDR             R0, [R0,#0x38]
4CA146:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4CA148:  MLA.W           R1, R0, R5, R1
4CA14C:  LDRB            R1, [R1,#4]
4CA14E:  CBZ             R1, locret_4CA1CE
4CA150:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA15A)
4CA152:  MOV.W           R2, #0x2D4
4CA156:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA158:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4CA15A:  MLA.W           R0, R0, R2, R1
4CA15E:  ADDS            R0, #0x30 ; '0'; this
4CA160:  BLX             j__ZN21CPedGroupIntelligence31ReportAllBarScriptTasksFinishedEv; CPedGroupIntelligence::ReportAllBarScriptTasksFinished(void)
4CA164:  LDR.W           R5, [R4,#0x720]
4CA168:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
4CA16C:  CBNZ            R5, loc_4CA176
4CA16E:  CMP             R0, #2
4CA170:  IT EQ
4CA172:  LDREQ.W         R5, [R4,#0x7A4]
4CA176:  CBZ             R5, loc_4CA1A4
4CA178:  LDRB.W          R0, [R5,#0x3A]
4CA17C:  AND.W           R0, R0, #7
4CA180:  CMP             R0, #3
4CA182:  BEQ             loc_4CA1AC
4CA184:  MOV             R0, R5; this
4CA186:  BLX             j__ZN11CTagManager5IsTagEPK7CEntity; CTagManager::IsTag(CEntity const*)
4CA18A:  CBNZ            R0, locret_4CA1CE
4CA18C:  LDRB.W          R0, [R5,#0x3A]
4CA190:  AND.W           R0, R0, #7
4CA194:  CMP             R0, #4
4CA196:  BNE             loc_4CA1A4
4CA198:  MOV             R0, R5; this
4CA19A:  BLX             j__ZN7CObject14CanBeTargettedEv; CObject::CanBeTargetted(void)
4CA19E:  CMP             R0, #0
4CA1A0:  IT NE
4CA1A2:  POPNE           {R4,R5,R7,PC}
4CA1A4:  MOV             R0, R4; this
4CA1A6:  BLX             j__ZN10CPlayerPed15FindPedToAttackEv; CPlayerPed::FindPedToAttack(void)
4CA1AA:  MOV             R5, R0
4CA1AC:  CBZ             R5, locret_4CA1CE
4CA1AE:  LDR.W           R0, [R4,#0x444]
4CA1B2:  MOV.W           R2, #0x2D4
4CA1B6:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA1BC)
4CA1B8:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA1BA:  LDR             R0, [R0,#0x38]
4CA1BC:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4CA1BE:  MLA.W           R0, R0, R2, R1; this
4CA1C2:  MOV             R1, R4; CPed *
4CA1C4:  MOV             R2, R5; CPed *
4CA1C6:  POP.W           {R4,R5,R7,LR}
4CA1CA:  B.W             j_j__ZN9CPedGroup24PlayerGaveCommand_AttackEP4CPedS1_; j_CPedGroup::PlayerGaveCommand_Attack(CPed *,CPed *)
4CA1CE:  POP             {R4,R5,R7,PC}
