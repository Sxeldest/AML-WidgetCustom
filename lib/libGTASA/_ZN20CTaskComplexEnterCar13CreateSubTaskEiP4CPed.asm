; =========================================================
; Game Engine Function: _ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed
; Address            : 0x4F4F74 - 0x4F5630
; =========================================================

4F4F74:  PUSH            {R4-R7,LR}
4F4F76:  ADD             R7, SP, #0xC
4F4F78:  PUSH.W          {R8-R10}
4F4F7C:  SUB             SP, SP, #0x30
4F4F7E:  MOV             R6, R2
4F4F80:  MOV             R5, R0
4F4F82:  MOVS            R4, #0
4F4F84:  CMP.W           R1, #0x2C0
4F4F88:  BLT.W           loc_4F50EC
4F4F8C:  SUB.W           R0, R1, #0x2C0; switch 126 cases
4F4F90:  CMP             R0, #0x7D ; '}'
4F4F92:  BHI.W           def_4F4F96; jumptable 004F4F96 default case
4F4F96:  TBH.W           [PC,R0,LSL#1]; switch jump
4F4F9A:  DCW 0x7E; jump table for switch statement
4F4F9C:  DCW 0x33E
4F4F9E:  DCW 0x33E
4F4FA0:  DCW 0x33E
4F4FA2:  DCW 0x33E
4F4FA4:  DCW 0x33E
4F4FA6:  DCW 0x33E
4F4FA8:  DCW 0x33E
4F4FAA:  DCW 0x33E
4F4FAC:  DCW 0x33E
4F4FAE:  DCW 0x33E
4F4FB0:  DCW 0x1B9
4F4FB2:  DCW 0x33E
4F4FB4:  DCW 0x33E
4F4FB6:  DCW 0x33E
4F4FB8:  DCW 0x1CF
4F4FBA:  DCW 0x33E
4F4FBC:  DCW 0x33E
4F4FBE:  DCW 0x33E
4F4FC0:  DCW 0x33E
4F4FC2:  DCW 0x33E
4F4FC4:  DCW 0x33E
4F4FC6:  DCW 0x33E
4F4FC8:  DCW 0x33E
4F4FCA:  DCW 0x33E
4F4FCC:  DCW 0x33E
4F4FCE:  DCW 0x33E
4F4FD0:  DCW 0x33E
4F4FD2:  DCW 0x33E
4F4FD4:  DCW 0x33E
4F4FD6:  DCW 0x33E
4F4FD8:  DCW 0x33E
4F4FDA:  DCW 0x33E
4F4FDC:  DCW 0x33E
4F4FDE:  DCW 0x33E
4F4FE0:  DCW 0x33E
4F4FE2:  DCW 0x33E
4F4FE4:  DCW 0x33E
4F4FE6:  DCW 0x33E
4F4FE8:  DCW 0x33E
4F4FEA:  DCW 0x33E
4F4FEC:  DCW 0x33E
4F4FEE:  DCW 0x33E
4F4FF0:  DCW 0x33E
4F4FF2:  DCW 0x33E
4F4FF4:  DCW 0x33E
4F4FF6:  DCW 0x33E
4F4FF8:  DCW 0x33E
4F4FFA:  DCW 0x33E
4F4FFC:  DCW 0x33E
4F4FFE:  DCW 0x33E
4F5000:  DCW 0x33E
4F5002:  DCW 0x33E
4F5004:  DCW 0x33E
4F5006:  DCW 0x33E
4F5008:  DCW 0x33E
4F500A:  DCW 0x33E
4F500C:  DCW 0x33E
4F500E:  DCW 0x33E
4F5010:  DCW 0x33E
4F5012:  DCW 0x33E
4F5014:  DCW 0x33E
4F5016:  DCW 0x33E
4F5018:  DCW 0x33E
4F501A:  DCW 0x33E
4F501C:  DCW 0x33E
4F501E:  DCW 0x33E
4F5020:  DCW 0x33E
4F5022:  DCW 0x33E
4F5024:  DCW 0x33E
4F5026:  DCW 0x33E
4F5028:  DCW 0x33E
4F502A:  DCW 0x33E
4F502C:  DCW 0x33E
4F502E:  DCW 0x33E
4F5030:  DCW 0x33E
4F5032:  DCW 0x33E
4F5034:  DCW 0x33E
4F5036:  DCW 0x33E
4F5038:  DCW 0x33E
4F503A:  DCW 0x33E
4F503C:  DCW 0x33E
4F503E:  DCW 0x33E
4F5040:  DCW 0x33E
4F5042:  DCW 0x33E
4F5044:  DCW 0x33E
4F5046:  DCW 0x33E
4F5048:  DCW 0x33E
4F504A:  DCW 0x33E
4F504C:  DCW 0x33E
4F504E:  DCW 0x33E
4F5050:  DCW 0x33E
4F5052:  DCW 0x33E
4F5054:  DCW 0x33E
4F5056:  DCW 0x33E
4F5058:  DCW 0x33E
4F505A:  DCW 0x20F
4F505C:  DCW 0x239
4F505E:  DCW 0x247
4F5060:  DCW 0x256
4F5062:  DCW 0x260
4F5064:  DCW 0x26A
4F5066:  DCW 0x274
4F5068:  DCW 0x27E
4F506A:  DCW 0x288
4F506C:  DCW 0x33E
4F506E:  DCW 0x292
4F5070:  DCW 0x29C
4F5072:  DCW 0x2A6
4F5074:  DCW 0x33E
4F5076:  DCW 0x33E
4F5078:  DCW 0x33E
4F507A:  DCW 0x2AF
4F507C:  DCW 0x33E
4F507E:  DCW 0x33E
4F5080:  DCW 0x33E
4F5082:  DCW 0x2B9; unsigned int
4F5084:  DCW 0x33E
4F5086:  DCW 0x33E
4F5088:  DCW 0x33E
4F508A:  DCW 0x33E
4F508C:  DCW 0x33E
4F508E:  DCW 0x33E
4F5090:  DCW 0x33E
4F5092:  DCW 0x33E
4F5094:  DCW 0x2E8
4F5096:  MOVS            R0, #dword_34; jumptable 004F4F96 case 704
4F5098:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F509C:  MOV             R4, R0
4F509E:  LDR.W           R5, [R6,#0x590]
4F50A2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F50A6:  LDR.W           R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F50B6)
4F50AA:  MOVS            R1, #0
4F50AC:  MOVS            R2, #1
4F50AE:  STRD.W          R1, R1, [R4,#0x10]
4F50B2:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F50B4:  STRH            R2, [R4,#0x18]
4F50B6:  MOVS            R2, #0xF
4F50B8:  MOV.W           R3, #0x40800000
4F50BC:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F50BE:  MOV.W           R6, #0x3F800000
4F50C2:  ADD.W           R12, R4, #0x24 ; '$'
4F50C6:  STRB            R1, [R4,#0x1A]
4F50C8:  STR             R1, [R4,#0x1C]
4F50CA:  ADDS            R0, #8
4F50CC:  STRB.W          R1, [R4,#0x20]
4F50D0:  STRB.W          R1, [R4,#0x21]
4F50D4:  STM.W           R12, {R2,R3,R6}
4F50D8:  STRB.W          R1, [R4,#0x30]
4F50DC:  MOV             R1, R4
4F50DE:  STR             R0, [R4]
4F50E0:  STR.W           R5, [R1,#0xC]!; unsigned int
4F50E4:  CMP             R5, #0
4F50E6:  BNE.W           loc_4F5330
4F50EA:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F50EC:  CMP             R1, #0xC8
4F50EE:  BEQ.W           loc_4F55BA
4F50F2:  CMP             R1, #0xCB
4F50F4:  BEQ.W           loc_4F55D2
4F50F8:  CMP             R1, #0xD0
4F50FA:  BNE.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F50FE:  LDR             R0, [R5,#0x14]
4F5100:  BIC.W           R8, R0, #1
4F5104:  MOVS            R0, #off_18; this
4F5106:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F510A:  CMP.W           R8, #0xA
4F510E:  MOV.W           R2, #0
4F5112:  ITE NE
4F5114:  MOVNE           R1, #0x19
4F5116:  MOVEQ           R1, #0x1B
4F5118:  MOV.W           R3, #0x7D0
4F511C:  MOV             R4, R0
4F511E:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
4F5122:  MOV.W           R0, #0xFFFFFFFF; int
4F5126:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4F512A:  CMP             R0, R6
4F512C:  BNE             loc_4F514E
4F512E:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4F513E)
4F5132:  MOV.W           R2, #0x194
4F5136:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x4F5140)
4F513A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4F513C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4F513E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4F5140:  LDR             R1, [R1]; CWorld::Players ...
4F5142:  LDR             R0, [R0]; CWorld::PlayerInFocus
4F5144:  SMLABB.W        R0, R0, R2, R1; this
4F5148:  LDR             R1, [R5,#0xC]; CVehicle *
4F514A:  BLX             j__ZN11CPlayerInfo20SetLastTargetVehicleEP8CVehicle; CPlayerInfo::SetLastTargetVehicle(CVehicle *)
4F514E:  CBZ             R6, loc_4F5160
4F5150:  LDRB.W          R0, [R6,#0x485]
4F5154:  LSLS            R0, R0, #0x1F
4F5156:  ITTT EQ
4F5158:  LDREQ           R0, [R6,#0x1C]
4F515A:  ORREQ.W         R0, R0, #1
4F515E:  STREQ           R0, [R6,#0x1C]
4F5160:  LDR             R1, [R5,#0xC]; CPed *
4F5162:  CMP             R1, #0
4F5164:  BEQ.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5168:  LDR             R2, [R5,#0x14]; CVehicle *
4F516A:  MOV             R0, R6; this
4F516C:  BLX             j__ZN23CTaskSimpleCarSetPedOut25PositionPedOutOfCollisionEP4CPedP8CVehiclei; CTaskSimpleCarSetPedOut::PositionPedOutOfCollision(CPed *,CVehicle *,int)
4F5170:  LDR             R0, [R5,#0xC]
4F5172:  CMP             R0, #0
4F5174:  BEQ.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5178:  LDRB.W          R1, [R5,#0x28]
4F517C:  MOVS            R6, #0
4F517E:  LDRB.W          R2, [R0,#0x489]
4F5182:  SUBS            R1, R2, R1
4F5184:  STRB.W          R1, [R0,#0x489]
4F5188:  LDR             R0, [R5,#0xC]; this
4F518A:  LDRB.W          R1, [R5,#0x44]; unsigned __int8
4F518E:  STRB.W          R6, [R5,#0x28]
4F5192:  BLX             j__ZN8CVehicle19ClearGettingInFlagsEh; CVehicle::ClearGettingInFlags(uchar)
4F5196:  LDR             R0, [R5,#0xC]
4F5198:  LDR             R1, [R5,#0x14]
4F519A:  STRB.W          R6, [R5,#0x44]
4F519E:  LDR             R2, [R0]
4F51A0:  LDR.W           R2, [R2,#0x9C]
4F51A4:  BLX             R2
4F51A6:  CMP             R0, #0
4F51A8:  BNE.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F51AC:  LDR             R0, [R5,#0xC]
4F51AE:  LDR.W           R1, [R0,#0x5A0]
4F51B2:  CMP             R1, #0
4F51B4:  BNE.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F51B8:  LDR             R1, [R5,#0x14]; int
4F51BA:  ADDW            R0, R0, #0x5B4; this
4F51BE:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F51C2:  CBZ             R0, loc_4F51D6
4F51C4:  LDR             R0, [R5,#0xC]
4F51C6:  LDR             R1, [R5,#0x14]; int
4F51C8:  ADDW            R0, R0, #0x5B4; this
4F51CC:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F51D0:  CMP             R0, #2
4F51D2:  BNE.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F51D6:  LDR             R0, [R5,#0xC]
4F51D8:  LDR             R1, [R5,#0x14]; int
4F51DA:  ADDW            R0, R0, #0x5B4; this
4F51DE:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F51E2:  LDR             R3, [R5,#0xC]
4F51E4:  ADDS            R2, R0, #1; unsigned int
4F51E6:  LDR             R1, [R5,#0x14]; int
4F51E8:  ADDW            R0, R3, #0x5B4; this
4F51EC:  BLX             j__ZN14CDamageManager13SetDoorStatusEij; CDamageManager::SetDoorStatus(int,uint)
4F51F0:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F51F2:  MOVW            R0, #0x516; jumptable 004F4F96 default case
4F51F6:  CMP             R1, R0
4F51F8:  BNE.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F51FC:  CMP             R6, #0
4F51FE:  BEQ.W           loc_4F5614
4F5202:  LDRB.W          R0, [R6,#0x485]
4F5206:  ADDW            R4, R6, #0x484
4F520A:  LSLS            R0, R0, #0x1F
4F520C:  BNE             loc_4F5234
4F520E:  MOV             R0, R6
4F5210:  LDR.W           R1, [R0,#0x1C]!
4F5214:  TST.W           R1, #1
4F5218:  BNE             loc_4F5234
4F521A:  LDR             R2, [R0,#4]
4F521C:  ORR.W           R1, R1, #1
4F5220:  STRD.W          R1, R2, [R0]
4F5224:  LDR             R1, [R5,#0xC]; CPed *
4F5226:  CBZ             R1, loc_4F5234
4F5228:  LDR             R2, [R5,#0x14]; CVehicle *
4F522A:  CMP             R2, #0
4F522C:  ITT NE
4F522E:  MOVNE           R0, R6; this
4F5230:  BLXNE           j__ZN23CTaskSimpleCarSetPedOut25PositionPedOutOfCollisionEP4CPedP8CVehiclei; CTaskSimpleCarSetPedOut::PositionPedOutOfCollision(CPed *,CVehicle *,int)
4F5234:  MOV             R0, R6; this
4F5236:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F523A:  CMP             R0, #1
4F523C:  BNE             loc_4F5278
4F523E:  LDR             R0, [R5,#0xC]; this
4F5240:  CBZ             R0, loc_4F5278
4F5242:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
4F5246:  CBZ             R0, loc_4F5278
4F5248:  LDRB            R0, [R5,#0x10]
4F524A:  AND.W           R0, R0, #7
4F524E:  CMP             R0, #1
4F5250:  BNE             loc_4F5278
4F5252:  LDRB.W          R0, [R5,#0x44]
4F5256:  CBZ             R0, loc_4F5278
4F5258:  ADD.W           R8, SP, #0x48+var_30
4F525C:  LDR             R2, [R5,#0xC]; CVehicle *
4F525E:  MOV             R1, R6; CPed *
4F5260:  MOV             R0, R8; this
4F5262:  BLX             j__ZN23CEventCopCarBeingStolenC2EP4CPedP8CVehicle; CEventCopCarBeingStolen::CEventCopCarBeingStolen(CPed *,CVehicle *)
4F5266:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
4F526A:  MOV             R1, R8; CEvent *
4F526C:  MOVS            R2, #0; bool
4F526E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4F5272:  MOV             R0, R8; this
4F5274:  BLX             j__ZN23CEventCopCarBeingStolenD2Ev; CEventCopCarBeingStolen::~CEventCopCarBeingStolen()
4F5278:  LDRB            R0, [R4,#1]
4F527A:  LSLS            R0, R0, #0x1F
4F527C:  BNE             loc_4F52DA
4F527E:  LDRB            R0, [R5,#0x10]
4F5280:  AND.W           R0, R0, #7
4F5284:  CMP             R0, #1
4F5286:  BNE             loc_4F52DA
4F5288:  MOV             R0, R6; this
4F528A:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F528E:  MOV             R10, R0
4F5290:  CMP.W           R10, #0
4F5294:  BEQ             loc_4F52DA
4F5296:  ADD.W           R0, R10, #8; this
4F529A:  MOV             R1, R6; CPed *
4F529C:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F52A0:  CMP             R0, #1
4F52A2:  BNE             loc_4F52DA
4F52A4:  MOVS            R0, #(byte_9+3); this
4F52A6:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F52AA:  MOV             R8, R0
4F52AC:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4F52B0:  LDR             R0, =(_ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr - 0x4F52BE)
4F52B2:  ADD.W           R9, SP, #0x48+var_30
4F52B6:  MOV             R1, R6; CPed *
4F52B8:  MOV             R2, R8; CEvent *
4F52BA:  ADD             R0, PC; _ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr
4F52BC:  LDR             R0, [R0]; `vtable for'CEventLeaderQuitEnteringCarAsDriver ...
4F52BE:  ADDS            R0, #8
4F52C0:  STR.W           R0, [R8]
4F52C4:  MOV             R0, R9; this
4F52C6:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F52CA:  ADD.W           R0, R10, #0x30 ; '0'; this
4F52CE:  MOV             R1, R9; CEvent *
4F52D0:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F52D4:  MOV             R0, R9; this
4F52D6:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F52DA:  MOV             R0, R6; this
4F52DC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F52E0:  CMP             R0, #1
4F52E2:  ITT EQ
4F52E4:  LDRBEQ          R0, [R4,#1]
4F52E6:  MOVSEQ.W        R0, R0,LSL#31
4F52EA:  BEQ.W           loc_4F55EE
4F52EE:  MOV             R0, R6; this
4F52F0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F52F4:  CMP             R0, #0
4F52F6:  BNE.W           loc_4F5614
4F52FA:  LDRB            R0, [R4,#1]
4F52FC:  LSLS            R0, R0, #0x1F
4F52FE:  BEQ.W           loc_4F5614
4F5302:  LDR             R0, [R5,#0xC]
4F5304:  CMP             R0, #0
4F5306:  BNE.W           loc_4F5606
4F530A:  B               loc_4F5614
4F530C:  MOVS            R0, #word_10; jumptable 004F4F96 case 715
4F530E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5312:  MOV             R4, R0
4F5314:  LDR             R5, [R5,#0xC]
4F5316:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F531A:  LDR             R0, =(_ZTV29CTaskComplexEnterBoatAsDriver_ptr - 0x4F5322)
4F531C:  MOV             R1, R4
4F531E:  ADD             R0, PC; _ZTV29CTaskComplexEnterBoatAsDriver_ptr
4F5320:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterBoatAsDriver ...
4F5322:  ADDS            R0, #8
4F5324:  STR.W           R0, [R1],#0xC; CEntity **
4F5328:  STR             R5, [R1]
4F532A:  CMP             R5, #0
4F532C:  BEQ.W           loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5330:  MOV             R0, R5; this
4F5332:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F5336:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5338:  MOVS            R0, #dword_70; jumptable 004F4F96 case 719
4F533A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F533E:  MOV             R4, R0
4F5340:  LDR             R5, [R5,#0xC]
4F5342:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F5346:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4F5354)
4F5348:  VMOV.I32        Q8, #0
4F534C:  MOVS            R6, #0
4F534E:  CMP             R5, #0
4F5350:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4F5352:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarDrive ...
4F5354:  ADD.W           R0, R4, #0xC
4F5358:  VST1.32         {D16-D17}, [R0]
4F535C:  ADD.W           R1, R1, #8
4F5360:  STRH            R6, [R4,#0x1C]
4F5362:  STR.W           R6, [R4,#0x56]
4F5366:  STR.W           R6, [R4,#0x52]
4F536A:  STRD.W          R6, R6, [R4,#0x4C]
4F536E:  LDRB.W          R0, [R4,#0x5C]
4F5372:  STR             R1, [R4]
4F5374:  MOV.W           R1, #2
4F5378:  BFI.W           R0, R1, #2, #4
4F537C:  MOV             R1, R4
4F537E:  STRB.W          R0, [R4,#0x5C]
4F5382:  STR.W           R5, [R1,#8]!; CEntity **
4F5386:  BEQ             loc_4F5392
4F5388:  MOV             R0, R5; this
4F538A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F538E:  LDRB.W          R0, [R4,#0x5C]
4F5392:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x4F53A2)
4F5394:  MOV.W           R2, #0xFFFFFFFF
4F5398:  AND.W           R0, R0, #0xFC
4F539C:  STR             R2, [R4,#0x20]
4F539E:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr ; unsigned int
4F53A0:  STRB.W          R0, [R4,#0x5C]
4F53A4:  STRD.W          R6, R6, [R4,#0x3C]
4F53A8:  STR             R6, [R4,#0x44]
4F53AA:  STR             R2, [R4,#0x60]
4F53AC:  STRH.W          R6, [R4,#0x6C]
4F53B0:  LDR             R0, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
4F53B2:  STRD.W          R6, R6, [R4,#0x64]
4F53B6:  B               loc_4F55CC
4F53B8:  MOVS            R0, #dword_50; jumptable 004F4F96 case 800
4F53BA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F53BE:  LDR             R6, =(_ZN36CTaskComplexGoToCarDoorAndStandStill16ms_fTargetRadiusE_ptr - 0x4F53C8)
4F53C0:  MOV             R4, R0
4F53C2:  LDR             R0, =(_ZN36CTaskComplexGoToCarDoorAndStandStill15ms_iMaxSeekTimeE_ptr - 0x4F53CC)
4F53C4:  ADD             R6, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill16ms_fTargetRadiusE_ptr
4F53C6:  LDR             R1, =(_ZN36CTaskComplexGoToCarDoorAndStandStill19ms_fMaxSeekDistanceE_ptr - 0x4F53D4)
4F53C8:  ADD             R0, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill15ms_iMaxSeekTimeE_ptr
4F53CA:  LDRB.W          R12, [R5,#0x10]
4F53CE:  LDR             R6, [R6]; CTaskComplexGoToCarDoorAndStandStill::ms_fTargetRadius ...
4F53D0:  ADD             R1, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill19ms_fMaxSeekDistanceE_ptr
4F53D2:  LDR             R0, [R0]; CTaskComplexGoToCarDoorAndStandStill::ms_iMaxSeekTime ...
4F53D4:  LDR             R3, [R1]; CTaskComplexGoToCarDoorAndStandStill::ms_fMaxSeekDistance ...
4F53D6:  VLDR            S0, [R6]
4F53DA:  LDR             R6, =(_ZN36CTaskComplexGoToCarDoorAndStandStill20ms_fSlowDownDistanceE_ptr - 0x4F53E2)
4F53DC:  LDR             R2, [R5,#0x24]; int
4F53DE:  ADD             R6, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill20ms_fSlowDownDistanceE_ptr
4F53E0:  LDR             R1, [R5,#0xC]; CVehicle *
4F53E2:  LDR             R5, [R5,#0x1C]
4F53E4:  LDR             R6, [R6]; CTaskComplexGoToCarDoorAndStandStill::ms_fSlowDownDistance ...
4F53E6:  VLDR            S4, [R3]
4F53EA:  AND.W           R3, R12, #1; bool
4F53EE:  LDR             R0, [R0]; CTaskComplexGoToCarDoorAndStandStill::ms_iMaxSeekTime
4F53F0:  VLDR            S2, [R6]
4F53F4:  STR             R5, [SP,#0x48+var_48]; int
4F53F6:  STR             R0, [SP,#0x48+var_38]; int
4F53F8:  MOV             R0, R4; this
4F53FA:  VSTR            S0, [SP,#0x48+var_44]
4F53FE:  VSTR            S2, [SP,#0x48+var_40]
4F5402:  VSTR            S4, [SP,#0x48+var_3C]
4F5406:  BLX             j__ZN36CTaskComplexGoToCarDoorAndStandStillC2EP8CVehicleibifffi; CTaskComplexGoToCarDoorAndStandStill::CTaskComplexGoToCarDoorAndStandStill(CVehicle *,int,bool,int,float,float,float,int)
4F540A:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F540C:  MOVS            R0, #word_28; jumptable 004F4F96 case 801
4F540E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5412:  LDR             R1, [R5,#0xC]; CVehicle *
4F5414:  MOV             R4, R0
4F5416:  LDR             R3, [R5,#0x14]; int
4F5418:  ADD.W           R2, R5, #0x2C ; ','; CVector *
4F541C:  LDR             R0, [R5,#0x38]
4F541E:  STR             R0, [SP,#0x48+var_48]; CTaskUtilityLineUpPedWithCar *
4F5420:  MOV             R0, R4; this
4F5422:  BLX             j__ZN19CTaskSimpleCarAlignC2EP8CVehicleRK7CVectoriP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarAlign::CTaskSimpleCarAlign(CVehicle *,CVector const&,int,CTaskUtilityLineUpPedWithCar *)
4F5426:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5428:  MOVS            R0, #dword_24; jumptable 004F4F96 case 802
4F542A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F542E:  MOV             R4, R0
4F5430:  LDRB            R0, [R5,#0x10]
4F5432:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5434:  LDR             R2, [R5,#0x14]; int
4F5436:  LDR             R1, [R5,#0xC]; CVehicle *
4F5438:  UBFX.W          R0, R0, #1, #1
4F543C:  STR             R0, [SP,#0x48+var_48]; bool
4F543E:  MOV             R0, R4; this
4F5440:  BLX             j__ZN33CTaskSimpleCarOpenDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarOpenDoorFromOutside::CTaskSimpleCarOpenDoorFromOutside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *,bool)
4F5444:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5446:  MOVS            R0, #dword_1C; jumptable 004F4F96 case 803
4F5448:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F544C:  LDR             R1, [R5,#0xC]; CVehicle *
4F544E:  MOV             R4, R0
4F5450:  LDR             R2, [R5,#0x14]; int
4F5452:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5454:  BLX             j__ZN39CTaskSimpleCarOpenLockedDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarOpenLockedDoorFromOutside::CTaskSimpleCarOpenLockedDoorFromOutside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F5458:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F545A:  MOVS            R0, #dword_1C; jumptable 004F4F96 case 804
4F545C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5460:  LDR             R1, [R5,#0xC]; CVehicle *
4F5462:  MOV             R4, R0
4F5464:  LDR             R2, [R5,#0x14]; int
4F5466:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5468:  BLX             j__ZN21CTaskSimplePickUpBikeC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimplePickUpBike::CTaskSimplePickUpBike(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F546C:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F546E:  MOVS            R0, #dword_1C; jumptable 004F4F96 case 805
4F5470:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5474:  LDR             R1, [R5,#0xC]; CVehicle *
4F5476:  MOV             R4, R0
4F5478:  LDR             R2, [R5,#0x14]; int
4F547A:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F547C:  BLX             j__ZN33CTaskSimpleCarCloseDoorFromInsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarCloseDoorFromInside::CTaskSimpleCarCloseDoorFromInside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F5480:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5482:  MOVS            R0, #dword_1C; jumptable 004F4F96 case 806
4F5484:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5488:  LDR             R1, [R5,#0xC]; CVehicle *
4F548A:  MOV             R4, R0
4F548C:  LDR             R2, [R5,#0x14]; int
4F548E:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5490:  BLX             j__ZN34CTaskSimpleCarCloseDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarCloseDoorFromOutside::CTaskSimpleCarCloseDoorFromOutside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F5494:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5496:  MOVS            R0, #dword_24; jumptable 004F4F96 case 807
4F5498:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F549C:  LDR             R1, [R5,#0xC]; CVehicle *
4F549E:  MOV             R4, R0
4F54A0:  LDR             R2, [R5,#0x14]; int
4F54A2:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F54A4:  BLX             j__ZN19CTaskSimpleCarGetInC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarGetIn::CTaskSimpleCarGetIn(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F54A8:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F54AA:  MOVS            R0, #dword_1C; jumptable 004F4F96 case 808
4F54AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F54B0:  LDR             R1, [R5,#0xC]; CVehicle *
4F54B2:  MOV             R4, R0
4F54B4:  LDR             R2, [R5,#0x14]; int
4F54B6:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F54B8:  BLX             j__ZN21CTaskSimpleCarShuffleC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarShuffle::CTaskSimpleCarShuffle(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F54BC:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F54BE:  MOVS            R0, #dword_14; jumptable 004F4F96 case 810
4F54C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F54C4:  LDR             R1, [R5,#0xC]; CVehicle *
4F54C6:  MOV             R4, R0
4F54C8:  LDRD.W          R2, R3, [R5,#0x14]; int
4F54CC:  BLX             j__ZN37CTaskSimpleCarWaitForDoorNotToBeInUseC2EP8CVehicleii; CTaskSimpleCarWaitForDoorNotToBeInUse::CTaskSimpleCarWaitForDoorNotToBeInUse(CVehicle *,int,int)
4F54D0:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F54D2:  MOVS            R0, #dword_20; jumptable 004F4F96 case 811
4F54D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F54D8:  LDR             R1, [R5,#0xC]; CVehicle *
4F54DA:  MOV             R4, R0
4F54DC:  LDR             R2, [R5,#0x14]; int
4F54DE:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F54E0:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F54E4:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F54E6:  MOVS            R0, #dword_1C; jumptable 004F4F96 case 812
4F54E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F54EC:  LDR             R1, [R5,#0xC]; CVehicle *
4F54EE:  MOV             R4, R0
4F54F0:  LDR             R2, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F54F2:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
4F54F6:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F54F8:  MOVS            R0, #off_18; jumptable 004F4F96 case 816
4F54FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F54FE:  LDR             R1, [R5,#0xC]; CVehicle *
4F5500:  MOVS            R3, #1; bool
4F5502:  LDR             R2, [R5,#0x14]; int
4F5504:  MOV             R4, R0
4F5506:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4F550A:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F550C:  CBZ             R6, loc_4F554C; jumptable 004F4F96 case 820
4F550E:  MOV             R0, R6; this
4F5510:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F5514:  CMP             R0, #1
4F5516:  BNE             loc_4F554C
4F5518:  LDR             R0, =(_ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr - 0x4F551E)
4F551A:  ADD             R0, PC; _ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr
4F551C:  LDR             R0, [R0]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText ...
4F551E:  LDRB            R0, [R0]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText
4F5520:  CBNZ            R0, loc_4F554C
4F5522:  LDR             R0, =(_ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr - 0x4F552C)
4F5524:  ADR             R4, aJckHlp; "JCK_HLP"
4F5526:  LDR             R1, =(TheText_ptr - 0x4F552E)
4F5528:  ADD             R0, PC; _ZN10CPlayerPed39bHasDisplayedPlayerQuitEnterCarHelpTextE_ptr
4F552A:  ADD             R1, PC; TheText_ptr
4F552C:  LDR             R2, [R0]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText ...
4F552E:  LDR             R0, [R1]; TheText ; this
4F5530:  MOVS            R1, #1
4F5532:  STRB            R1, [R2]; CPlayerPed::bHasDisplayedPlayerQuitEnterCarHelpText
4F5534:  MOV             R1, R4; CKeyGen *
4F5536:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4F553A:  MOV             R1, R0; char *
4F553C:  MOVS            R0, #0
4F553E:  STRD.W          R0, R0, [SP,#0x48+var_48]; bool
4F5542:  MOV             R0, R4; this
4F5544:  MOVS            R2, #0; unsigned __int16 *
4F5546:  MOVS            R3, #0; bool
4F5548:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
4F554C:  MOVS            R0, #dword_20; this
4F554E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5552:  MOV             R4, R0
4F5554:  LDRB            R0, [R5,#0x10]
4F5556:  LDR             R3, [R5,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5558:  LDR             R2, [R5,#0x14]; int
4F555A:  LDR             R1, [R5,#0xC]; CVehicle *
4F555C:  UBFX.W          R0, R0, #2, #1
4F5560:  STR             R0, [SP,#0x48+var_48]; bool
4F5562:  MOV             R0, R4; this
4F5564:  BLX             j__ZN28CTaskSimpleCarSlowDragPedOutC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarSlowDragPedOut::CTaskSimpleCarSlowDragPedOut(CVehicle *,int,CTaskUtilityLineUpPedWithCar *,bool)
4F5568:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F556A:  LDR             R0, [R5,#0xC]; jumptable 004F4F96 case 829
4F556C:  LDR             R0, [R0,#0x14]
4F556E:  VLDR            D16, [R0]
4F5572:  LDR             R0, [R0,#8]
4F5574:  STR             R0, [SP,#0x48+var_28]
4F5576:  VSTR            D16, [SP,#0x48+var_30]
4F557A:  LDR             R0, [R5,#0x14]
4F557C:  BIC.W           R0, R0, #1
4F5580:  CMP             R0, #0xA
4F5582:  BNE             loc_4F55A8
4F5584:  VLDR            S0, [SP,#0x48+var_30]
4F5588:  VLDR            S2, [SP,#0x48+var_30+4]
4F558C:  VLDR            S4, [SP,#0x48+var_28]
4F5590:  VNEG.F32        S0, S0
4F5594:  VNEG.F32        S2, S2
4F5598:  VNEG.F32        S4, S4
4F559C:  VSTR            S0, [SP,#0x48+var_30]
4F55A0:  VSTR            S2, [SP,#0x48+var_30+4]
4F55A4:  VSTR            S4, [SP,#0x48+var_28]
4F55A8:  MOVS            R0, #dword_1C; this
4F55AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F55AE:  LDR             R1, [R5,#0x40]; CPed *
4F55B0:  ADD             R2, SP, #0x48+var_30; CVector *
4F55B2:  MOV             R4, R0
4F55B4:  BLX             j__ZN31CTaskSimpleWaitUntilPedIsOutCarC2EP4CPedRK7CVector; CTaskSimpleWaitUntilPedIsOutCar::CTaskSimpleWaitUntilPedIsOutCar(CPed *,CVector const&)
4F55B8:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F55BA:  MOVS            R0, #byte_8; this
4F55BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F55C0:  MOV             R4, R0
4F55C2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F55C6:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4F55CC)
4F55C8:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4F55CA:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4F55CC:  ADDS            R0, #8
4F55CE:  STR             R0, [R4]
4F55D0:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F55D2:  MOVS            R0, #dword_20; this
4F55D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F55D8:  MOV             R4, R0
4F55DA:  MOV.W           R0, #0x41000000
4F55DE:  STR             R0, [SP,#0x48+var_48]; float
4F55E0:  MOV             R0, R4; this
4F55E2:  MOVS            R1, #0; int
4F55E4:  MOVS            R2, #0; bool
4F55E6:  MOVS            R3, #0; bool
4F55E8:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4F55EC:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F55EE:  LDR             R0, [R5,#0xC]
4F55F0:  CMP             R0, #0
4F55F2:  ITT NE
4F55F4:  LDRNE.W         R1, [R0,#0x464]
4F55F8:  CMPNE           R1, #0
4F55FA:  BEQ.W           loc_4F52EE
4F55FE:  LDRB            R1, [R5,#0x10]
4F5600:  LSLS            R1, R1, #0x1E
4F5602:  BMI.W           loc_4F52EE
4F5606:  VLDR            S0, [R5,#0x48]
4F560A:  VCMPE.F32       S0, #0.0
4F560E:  VMRS            APSR_nzcv, FPSCR
4F5612:  BGE             loc_4F5620
4F5614:  MOVS            R4, #0
4F5616:  MOV             R0, R4; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
4F5618:  ADD             SP, SP, #0x30 ; '0'
4F561A:  POP.W           {R8-R10}
4F561E:  POP             {R4-R7,PC}
4F5620:  VCVT.U32.F32    S0, S0
4F5624:  MOVS            R4, #0
4F5626:  VMOV            R1, S0
4F562A:  STRB.W          R1, [R0,#0x3D4]
4F562E:  B               loc_4F5616; jumptable 004F4F96 cases 705-714,716-718,720-799,809,813-815,817-819,821-828
