; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader12ScanForStuffEP4CPed
; Address            : 0x515E20 - 0x516298
; =========================================================

515E20:  PUSH            {R4-R7,LR}
515E22:  ADD             R7, SP, #0xC
515E24:  PUSH.W          {R8-R11}
515E28:  SUB             SP, SP, #4
515E2A:  VPUSH           {D8-D11}
515E2E:  SUB             SP, SP, #0x48
515E30:  MOV             R10, R0
515E32:  MOV             R9, R1
515E34:  LDRB.W          R0, [R10,#0x24]
515E38:  CBZ             R0, loc_515E72
515E3A:  LDRB.W          R0, [R10,#0x25]
515E3E:  CBZ             R0, loc_515E58
515E40:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x515E4A)
515E44:  MOVS            R1, #0
515E46:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
515E48:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
515E4A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
515E4C:  STRB.W          R1, [R10,#0x25]
515E50:  STR.W           R0, [R10,#0x1C]
515E54:  MOV             R1, R0
515E56:  B               loc_515E66
515E58:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x515E64)
515E5C:  LDR.W           R1, [R10,#0x1C]
515E60:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
515E62:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
515E64:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
515E66:  LDR.W           R2, [R10,#0x20]
515E6A:  ADD             R1, R2
515E6C:  CMP             R1, R0
515E6E:  BHI.W           loc_516086
515E72:  BLX             rand
515E76:  UXTH            R0, R0
515E78:  VLDR            S16, =0.000015259
515E7C:  VMOV            S0, R0
515E80:  VLDR            S18, =100.0
515E84:  VCVT.F32.S32    S0, S0
515E88:  VMUL.F32        S0, S0, S16
515E8C:  VMUL.F32        S0, S0, S18
515E90:  VCVT.S32.F32    S0, S0
515E94:  VMOV            R0, S0
515E98:  CMP             R0, #4
515E9A:  BGT.W           loc_515FEC
515E9E:  LDR.W           R0, [R9,#0x440]
515EA2:  VMOV.F32        S18, #5.0
515EA6:  VLDR            S20, =300.0
515EAA:  ADD             R6, SP, #0x88+var_5C
515EAC:  ADD.W           R4, R0, #0xE0
515EB0:  LDR.W           R0, =(_ZTV19CEventLeanOnVehicle_ptr - 0x515EC0)
515EB4:  VLDR            S22, =15000.0
515EB8:  MOV.W           R8, #0
515EBC:  ADD             R0, PC; _ZTV19CEventLeanOnVehicle_ptr
515EBE:  LDR             R0, [R0]; `vtable for'CEventLeanOnVehicle ...
515EC0:  ADDS            R0, #8
515EC2:  STR             R0, [SP,#0x88+var_7C]
515EC4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x515ECC)
515EC8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
515ECA:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds ...
515ECE:  LDR.W           R5, [R4,R8,LSL#2]
515ED2:  CMP             R5, #0
515ED4:  BEQ.W           loc_515FDE
515ED8:  LDR.W           R0, [R5,#0x5A4]
515EDC:  CMP             R0, #0
515EDE:  BNE             loc_515FDE
515EE0:  LDRB.W          R0, [R5,#0x3A]
515EE4:  AND.W           R0, R0, #0xF8
515EE8:  CMP             R0, #0x20 ; ' '
515EEA:  ITT EQ
515EEC:  LDRBEQ.W        R0, [R5,#0x432]
515EF0:  MOVSEQ.W        R0, R0,LSL#31
515EF4:  BNE             loc_515FDE
515EF6:  LDRB.W          R0, [R5,#0x4A8]
515EFA:  CMP             R0, #2
515EFC:  BEQ             loc_515FDE
515EFE:  LDR.W           R0, [R9,#0x14]
515F02:  LDR             R1, [R5,#0x14]
515F04:  ADD.W           R2, R0, #0x30 ; '0'
515F08:  CMP             R0, #0
515F0A:  IT EQ
515F0C:  ADDEQ.W         R2, R9, #4
515F10:  ADD.W           R0, R1, #0x30 ; '0'
515F14:  CMP             R1, #0
515F16:  VLD1.32         {D16}, [R2]!
515F1A:  IT EQ
515F1C:  ADDEQ           R0, R5, #4
515F1E:  VLD1.32         {D17}, [R0]!
515F22:  VLDR            S0, [R2]
515F26:  VLDR            S2, [R0]
515F2A:  VSUB.F32        S0, S2, S0
515F2E:  VABS.F32        S2, S0
515F32:  VCMPE.F32       S2, S18
515F36:  VMRS            APSR_nzcv, FPSCR
515F3A:  BGE             loc_515FDE
515F3C:  VSUB.F32        D16, D17, D16
515F40:  VMUL.F32        S0, S0, S0
515F44:  VMUL.F32        D1, D16, D16
515F48:  VADD.F32        S2, S2, S3
515F4C:  VADD.F32        S0, S2, S0
515F50:  VCMPE.F32       S0, S20
515F54:  VMRS            APSR_nzcv, FPSCR
515F58:  BGE             loc_515FDE
515F5A:  BLX             rand
515F5E:  STR             R0, [SP,#0x88+var_84]
515F60:  MOVS            R0, #dword_14; this
515F62:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
515F66:  STR.W           R11, [SP,#0x88+var_80]
515F6A:  MOV             R11, R6
515F6C:  MOV             R6, R0
515F6E:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
515F72:  LDR             R0, [SP,#0x88+var_84]
515F74:  MOVW            R1, #0x2710
515F78:  UXTH            R0, R0
515F7A:  VMOV            S0, R0
515F7E:  VCVT.F32.S32    S0, S0
515F82:  VMUL.F32        S0, S0, S16
515F86:  VMUL.F32        S0, S0, S22
515F8A:  VCVT.S32.F32    S0, S0
515F8E:  LDR             R0, [SP,#0x88+var_7C]
515F90:  STR             R0, [R6]
515F92:  VMOV            R0, S0
515F96:  ADD             R0, R1
515F98:  MOV             R1, R6
515F9A:  STR             R0, [R6,#0x10]
515F9C:  MOV             R0, R5; this
515F9E:  STR.W           R5, [R1,#0xC]!; CEntity **
515FA2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
515FA6:  MOV             R2, R6; CEvent *
515FA8:  MOV             R0, R11; this
515FAA:  MOV             R1, R9; CPed *
515FAC:  MOV             R6, R11
515FAE:  LDR.W           R11, [SP,#0x88+var_80]
515FB2:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
515FB6:  LDR.W           R0, [R10,#0xC]
515FBA:  MOV             R1, R6; CEvent *
515FBC:  ADDS            R0, #0x30 ; '0'; this
515FBE:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
515FC2:  LDR.W           R0, [R11]
515FC6:  STR.W           R0, [R10,#0x1C]
515FCA:  MOVW            R0, #0xEA60
515FCE:  STR.W           R0, [R10,#0x20]
515FD2:  MOVS            R0, #1
515FD4:  STRB.W          R0, [R10,#0x24]
515FD8:  MOV             R0, R6; this
515FDA:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
515FDE:  ADD.W           R8, R8, #1
515FE2:  CMP.W           R8, #0x10
515FE6:  BNE.W           loc_515ECE
515FEA:  B               loc_516086
515FEC:  CMP             R0, #0x14
515FEE:  BNE             loc_516086
515FF0:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x515FFC)
515FF2:  MOVS            R0, #0x4C ; 'L'
515FF4:  LDR.W           R4, [R9,#0x440]
515FF8:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
515FFA:  LDR             R1, [R1]; CPedGroups::ms_groups ...
515FFC:  STR             R1, [SP,#0x88+var_7C]
515FFE:  MOV             R11, R0
516000:  LDR.W           R5, [R4,R11,LSL#2]
516004:  CBZ             R5, loc_51607A
516006:  LDRB.W          R0, [R5,#0x448]
51600A:  CMP             R0, #1
51600C:  BNE             loc_51607A
51600E:  LDR.W           R0, [R5,#0x59C]
516012:  LDR.W           R1, [R9,#0x59C]; CPed *
516016:  CMP             R1, R0
516018:  BNE             loc_51607A
51601A:  MOV             R0, R5; this
51601C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
516020:  MOV             R8, R0
516022:  LDR.W           R0, [R10,#0xC]
516026:  CMP             R8, R0
516028:  BEQ             loc_51607A
51602A:  LDRB.W          R0, [R5,#0x485]
51602E:  LSLS            R0, R0, #0x1F
516030:  BNE             loc_51607A
516032:  MOV.W           R0, #0xFFFFFFFF; int
516036:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51603A:  LDR.W           R0, [R0,#0x444]
51603E:  MOV.W           R1, #0x2D4
516042:  LDR             R2, [SP,#0x88+var_7C]
516044:  LDR             R0, [R0,#0x38]
516046:  MLA.W           R0, R0, R1, R2
51604A:  MOV             R1, R5; CPed *
51604C:  ADDS            R0, #8; this
51604E:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
516052:  CBNZ            R0, loc_51607A
516054:  LDR.W           R0, [R9,#0x440]
516058:  MOV.W           R1, #0x390; int
51605C:  ADDS            R0, #4; this
51605E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
516062:  MOV             R6, R0
516064:  CBZ             R6, loc_5160A4
516066:  LDR             R0, [R6]
516068:  LDR             R1, [R0,#0x34]
51606A:  MOV             R0, R6
51606C:  BLX             R1
51606E:  CMP             R0, #4
516070:  BNE             loc_5160A4
516072:  MOV             R0, R6; this
516074:  BLX             j__ZN22CTaskComplexWanderGang11CanJoinGangEv; CTaskComplexWanderGang::CanJoinGang(void)
516078:  CBNZ            R0, loc_5160A4
51607A:  SUB.W           R1, R11, #0x4C ; 'L'
51607E:  ADD.W           R0, R11, #1
516082:  CMP             R1, #0xF
516084:  BLT             loc_515FFE
516086:  ADD             SP, SP, #0x48 ; 'H'
516088:  VPOP            {D8-D11}
51608C:  ADD             SP, SP, #4
51608E:  POP.W           {R8-R11}
516092:  POP             {R4-R7,PC}
516094:  DCFS 0.000015259
516098:  DCFS 100.0
51609C:  DCFS 300.0
5160A0:  DCFS 15000.0
5160A4:  CMP.W           R8, #0
5160A8:  BNE             loc_516108
5160AA:  LDR.W           R0, [R10,#0xC]; this
5160AE:  BLX             j__ZN10CPedGroups10GetGroupIdEP9CPedGroup; CPedGroups::GetGroupId(CPedGroup *)
5160B2:  MOV             R4, R0
5160B4:  LDR.W           R0, [R10,#0xC]
5160B8:  ADDS            R0, #8; this
5160BA:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
5160BE:  CMP             R0, #6
5160C0:  BGT             loc_516108
5160C2:  MOVS            R0, #word_28; this
5160C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5160C8:  MOV             R1, R4; int
5160CA:  MOVS            R2, #0; bool
5160CC:  MOV             R6, R0
5160CE:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
5160D2:  ADD             R4, SP, #0x88+var_5C
5160D4:  MOVS            R1, #3; int
5160D6:  MOV             R2, R6; CTask *
5160D8:  MOVS            R3, #0; bool
5160DA:  MOV             R0, R4; this
5160DC:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
5160E0:  LDR.W           R0, [R5,#0x440]
5160E4:  MOV             R1, R4; CEvent *
5160E6:  MOVS            R2, #0; bool
5160E8:  ADDS            R0, #0x68 ; 'h'; this
5160EA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5160EE:  LDR.W           R0, [R10,#0xC]
5160F2:  MOV             R1, R5; CPed *
5160F4:  ADDS            R0, #8; this
5160F6:  BLX             j__ZN19CPedGroupMembership11AddFollowerEP4CPed; CPedGroupMembership::AddFollower(CPed *)
5160FA:  LDR.W           R0, [R10,#0xC]; this
5160FE:  BLX             j__ZN9CPedGroup7ProcessEv; CPedGroup::Process(void)
516102:  MOV             R0, R4; this
516104:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
516108:  LDR.W           R0, [R10,#0xC]
51610C:  MOVS            R6, #0
51610E:  VLDR            S20, =1.0e9
516112:  MOV.W           R9, #0
516116:  ADD.W           R8, R0, #8
51611A:  MOV             R0, R8; this
51611C:  MOV             R1, R6; int
51611E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
516122:  CMP             R0, #0
516124:  IT NE
516126:  CMPNE           R0, R5
516128:  BEQ             loc_51617E
51612A:  LDR             R1, [R0,#0x14]
51612C:  LDR             R2, [R5,#0x14]
51612E:  ADD.W           R3, R1, #0x30 ; '0'
516132:  CMP             R1, #0
516134:  IT EQ
516136:  ADDEQ           R3, R0, #4
516138:  ADD.W           R1, R2, #0x30 ; '0'
51613C:  CMP             R2, #0
51613E:  VLDR            S0, [R3]
516142:  IT EQ
516144:  ADDEQ           R1, R5, #4
516146:  VLDR            D16, [R3,#4]
51614A:  VLDR            S2, [R1]
51614E:  VLDR            D17, [R1,#4]
516152:  VSUB.F32        S0, S2, S0
516156:  VSUB.F32        D16, D17, D16
51615A:  VMUL.F32        D1, D16, D16
51615E:  VMUL.F32        S0, S0, S0
516162:  VADD.F32        S0, S0, S2
516166:  VADD.F32        S0, S0, S3
51616A:  VMIN.F32        D1, D0, D10
51616E:  VCMPE.F32       S0, S20
516172:  VMRS            APSR_nzcv, FPSCR
516176:  VMOV            D10, D1
51617A:  IT LT
51617C:  MOVLT           R9, R0
51617E:  ADDS            R6, #1
516180:  CMP             R6, #8
516182:  BNE             loc_51611A
516184:  VCMPE.F32       S20, S18
516188:  VMRS            APSR_nzcv, FPSCR
51618C:  BGT             loc_516280
51618E:  VMOV.F32        S0, #16.0
516192:  VCMPE.F32       S20, S0
516196:  VMRS            APSR_nzcv, FPSCR
51619A:  BLT             loc_516280
51619C:  BLX             rand
5161A0:  MOV             R4, R0
5161A2:  ADD             R0, SP, #0x88+var_5C; this
5161A4:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
5161A8:  UXTH            R1, R4
5161AA:  VMOV.F32        S2, #7.0
5161AE:  VMOV            S0, R1
5161B2:  LDR             R1, =(_ZTV23CEventCreatePartnerTask_ptr - 0x5161C2)
5161B4:  MOVS            R2, #1
5161B6:  ADD.W           R6, R0, #0x10
5161BA:  VCVT.F32.S32    S0, S0
5161BE:  ADD             R1, PC; _ZTV23CEventCreatePartnerTask_ptr
5161C0:  CMP.W           R9, #0
5161C4:  LDR             R1, [R1]; `vtable for'CEventCreatePartnerTask ...
5161C6:  ADD.W           R1, R1, #8
5161CA:  VMUL.F32        S0, S0, S16
5161CE:  VMUL.F32        S0, S0, S2
5161D2:  VCVT.S32.F32    S2, S0
5161D6:  STR.W           R9, [SP,#0x88+var_4C]
5161DA:  STRB.W          R2, [SP,#0x88+var_48]
5161DE:  MOV.W           R2, #0x3F000000
5161E2:  STR             R2, [SP,#0x88+var_44]
5161E4:  STR             R1, [SP,#0x88+var_5C]
5161E6:  VCVT.S32.F32    S0, S0
5161EA:  VSTR            S2, [SP,#0x88+var_50]
5161EE:  VMOV            R4, S0
5161F2:  ITTT NE
5161F4:  MOVNE           R0, R9; this
5161F6:  MOVNE           R1, R6; CEntity **
5161F8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5161FC:  STR             R6, [SP,#0x88+var_7C]
5161FE:  ADD             R1, SP, #0x88+var_5C; CEvent *
516200:  LDR.W           R0, [R5,#0x440]
516204:  MOVS            R2, #0; bool
516206:  MOV.W           R8, #0
51620A:  ADDS            R0, #0x68 ; 'h'; this
51620C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
516210:  ADD             R6, SP, #0x88+var_78
516212:  MOV             R0, R6; this
516214:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
516218:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x516224)
51621A:  STR             R4, [SP,#0x88+var_6C]
51621C:  ADD.W           R4, R6, #0x10
516220:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
516222:  MOV             R1, R4; CEntity **
516224:  LDR             R0, [R0]; `vtable for'CEventCreatePartnerTask ...
516226:  ADD.W           R11, R0, #8
51622A:  MOV.W           R0, #0x3F000000
51622E:  STR.W           R11, [SP,#0x88+var_78]
516232:  STR             R5, [SP,#0x88+var_68]
516234:  STRB.W          R8, [SP,#0x88+var_64]
516238:  STR             R0, [SP,#0x88+var_60]
51623A:  MOV             R0, R5; this
51623C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
516240:  LDR.W           R0, [R9,#0x440]
516244:  MOV             R1, R6; CEvent *
516246:  MOVS            R2, #0; bool
516248:  ADDS            R0, #0x68 ; 'h'; this
51624A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
51624E:  LDR             R0, [SP,#0x88+var_68]; this
516250:  STR.W           R11, [SP,#0x88+var_78]
516254:  CMP             R0, #0
516256:  ITT NE
516258:  MOVNE           R1, R4; CEntity **
51625A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51625E:  ADD             R0, SP, #0x88+var_78; this
516260:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
516264:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x51626A)
516266:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
516268:  LDR             R1, [R0]; `vtable for'CEventCreatePartnerTask ...
51626A:  LDR             R0, [SP,#0x88+var_4C]; this
51626C:  ADDS            R1, #8
51626E:  STR             R1, [SP,#0x88+var_5C]
516270:  LDR             R1, [SP,#0x88+var_7C]; CEntity **
516272:  CMP             R0, #0
516274:  IT NE
516276:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51627A:  ADD             R0, SP, #0x88+var_5C; this
51627C:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
516280:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51628A)
516282:  MOVW            R1, #0x2710
516286:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
516288:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51628A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51628C:  STRD.W          R0, R1, [R10,#0x1C]
516290:  MOVS            R0, #1
516292:  STRB.W          R0, [R10,#0x24]
516296:  B               loc_516086
