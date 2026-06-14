; =========================================================
; Game Engine Function: _ZN10CPlayerPed36MakeGroupRespondToPlayerTakingDamageERK12CEventDamage
; Address            : 0x4CA1E0 - 0x4CA25C
; =========================================================

4CA1E0:  PUSH            {R4-R7,LR}
4CA1E2:  ADD             R7, SP, #0xC
4CA1E4:  PUSH.W          {R8}
4CA1E8:  SUB             SP, SP, #0x18
4CA1EA:  MOV             R5, R1
4CA1EC:  MOV             R4, R0
4CA1EE:  LDR             R0, [R5,#0x10]
4CA1F0:  CBZ             R0, loc_4CA254
4CA1F2:  LDR.W           R0, [R4,#0x444]
4CA1F6:  MOV.W           R8, #0x2D4
4CA1FA:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA202)
4CA1FC:  LDR             R0, [R0,#0x38]
4CA1FE:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA200:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4CA202:  MLA.W           R0, R0, R8, R1
4CA206:  ADDS            R0, #8; this
4CA208:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
4CA20C:  CMP             R0, #1
4CA20E:  BLT             loc_4CA254
4CA210:  LDR.W           R0, [R4,#0x444]
4CA214:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA21A)
4CA216:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA218:  LDR             R6, [R0,#0x38]
4CA21A:  LDR             R0, [R1]; CPedGroups::ms_groups ...
4CA21C:  MLA.W           R0, R6, R8, R0
4CA220:  LDRB            R0, [R0,#4]
4CA222:  CBZ             R0, loc_4CA254
4CA224:  LDR             R0, [R5]
4CA226:  LDR             R1, [R0,#0x14]
4CA228:  MOV             R0, R5
4CA22A:  BLX             R1
4CA22C:  ADD             R5, SP, #0x28+var_24
4CA22E:  MOV             R2, R0; CEvent *
4CA230:  MOV             R1, R4; CPed *
4CA232:  MOV             R0, R5; this
4CA234:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4CA238:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA242)
4CA23A:  MOV.W           R1, #0x2D4
4CA23E:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA240:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4CA242:  MLA.W           R0, R6, R1, R0
4CA246:  MOV             R1, R5; CEvent *
4CA248:  ADDS            R0, #0x30 ; '0'; this
4CA24A:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4CA24E:  MOV             R0, R5; this
4CA250:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4CA254:  ADD             SP, SP, #0x18
4CA256:  POP.W           {R8}
4CA25A:  POP             {R4-R7,PC}
