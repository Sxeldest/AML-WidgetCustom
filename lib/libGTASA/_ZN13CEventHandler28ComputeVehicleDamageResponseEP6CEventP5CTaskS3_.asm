; =========================================================
; Game Engine Function: _ZN13CEventHandler28ComputeVehicleDamageResponseEP6CEventP5CTaskS3_
; Address            : 0x382F74 - 0x3832C6
; =========================================================

382F74:  PUSH            {R4-R7,LR}
382F76:  ADD             R7, SP, #0xC
382F78:  PUSH.W          {R8}
382F7C:  SUB             SP, SP, #0x10
382F7E:  MOV             R4, R0
382F80:  MOV             R6, R1
382F82:  LDR             R1, [R4]; unsigned int
382F84:  LDR.W           R0, [R1,#0x590]; this
382F88:  CMP             R0, #0
382F8A:  BEQ.W           loc_38324C
382F8E:  LDR             R2, [R6,#0x10]
382F90:  CMP             R0, R2
382F92:  BNE.W           loc_38324C
382F96:  LDRSH.W         R2, [R6,#0xA]
382F9A:  CMP.W           R2, #0x2D8
382F9E:  BLE             loc_383030
382FA0:  LDR             R5, [R6,#0x14]
382FA2:  MOVW            R0, #0x406
382FA6:  CMP             R2, R0
382FA8:  BGT             loc_383076
382FAA:  MOVW            R0, #0x2D9
382FAE:  CMP             R2, R0
382FB0:  BEQ.W           loc_3830B8
382FB4:  CMP.W           R2, #0x3E8
382FB8:  BNE.W           loc_38324C
382FBC:  CMP             R5, #0
382FBE:  BEQ.W           loc_38324C
382FC2:  LDRB.W          R0, [R5,#0x3A]
382FC6:  AND.W           R0, R0, #7
382FCA:  CMP             R0, #3
382FCC:  BNE             loc_383008
382FCE:  LDRB.W          R0, [R1,#0x448]
382FD2:  CMP             R0, #2
382FD4:  BEQ             loc_383008
382FD6:  LDRSB.W         R0, [R1,#0x71C]
382FDA:  LDRSB.W         R6, [R5,#0x71C]
382FDE:  RSB.W           R0, R0, R0,LSL#3
382FE2:  ADD.W           R0, R1, R0,LSL#2
382FE6:  ADDW            R0, R0, #0x5A4; this
382FEA:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
382FEE:  CMP             R0, #1
382FF0:  BNE             loc_383008
382FF2:  RSB.W           R0, R6, R6,LSL#3
382FF6:  ADD.W           R0, R5, R0,LSL#2
382FFA:  ADDW            R0, R0, #0x5A4; this
382FFE:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383002:  CMP             R0, #0
383004:  BEQ.W           loc_383276
383008:  LDRB.W          R0, [R5,#0x3A]
38300C:  AND.W           R0, R0, #7
383010:  CMP             R0, #2
383012:  BEQ.W           loc_3831D8
383016:  CMP             R0, #3
383018:  BNE.W           loc_38324C
38301C:  MOVS            R0, #dword_38; this
38301E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383022:  MOVS            R2, #0
383024:  MOVS            R1, #1
383026:  STRD.W          R2, R2, [SP,#0x20+var_20]
38302A:  STR             R1, [SP,#0x20+var_18]
38302C:  MOV             R1, R5
38302E:  B               loc_3831EC
383030:  CMP             R2, #0xF4
383032:  BEQ             loc_383102
383034:  MOVW            R3, #0x2C2
383038:  CMP             R2, R3
38303A:  BEQ             loc_383130
38303C:  MOVW            R3, #0x2D6
383040:  CMP             R2, R3
383042:  BNE.W           loc_38324C
383046:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
38304A:  CMP             R0, #1
38304C:  BNE.W           loc_383174
383050:  MOVS            R0, #word_2C; this
383052:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383056:  LDR             R1, [R4]
383058:  MOVS            R2, #0x42200000
38305E:  MOVS            R3, #2
383060:  LDR.W           R1, [R1,#0x590]; CVehicle *
383064:  STRD.W          R3, R2, [SP,#0x20+var_20]; int
383068:  MOVS            R2, #0; CEntity *
38306A:  MOVS            R3, #1; int
38306C:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
383070:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x383076)
383072:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
383074:  B               loc_383244
383076:  MOVW            R0, #0x407
38307A:  CMP             R2, R0
38307C:  BEQ             loc_383156
38307E:  MOVW            R0, #0x451
383082:  CMP             R2, R0
383084:  BNE.W           loc_38324C
383088:  CMP             R5, #0
38308A:  BEQ.W           loc_38324C
38308E:  LDRB.W          R0, [R5,#0x3A]
383092:  AND.W           R0, R0, #7
383096:  CMP             R0, #2
383098:  BEQ.W           loc_3831B8
38309C:  CMP             R0, #3
38309E:  BNE.W           loc_38324C
3830A2:  MOV             R0, R5; this
3830A4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3830A8:  CMP             R0, #0
3830AA:  BNE.W           loc_3831C4
3830AE:  MOVS            R0, #dword_20; this
3830B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3830B4:  MOV             R1, R5
3830B6:  B               loc_383202
3830B8:  CMP             R5, #0
3830BA:  BEQ.W           loc_38324C
3830BE:  LDRB.W          R0, [R5,#0x3A]
3830C2:  AND.W           R0, R0, #6
3830C6:  CMP             R0, #2
3830C8:  BNE.W           loc_38324C
3830CC:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3830D2)
3830CE:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3830D0:  LDR             R0, [R0]; MobileSettings::settings ...
3830D2:  LDR.W           R0, [R0,#(dword_6E047C - 0x6E03F4)]
3830D6:  CMP             R0, #0
3830D8:  BEQ.W           loc_38320A
3830DC:  MOVS            R0, #word_2C; this
3830DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3830E2:  LDR             R1, [R4]
3830E4:  MOVS            R2, #0x42200000
3830EA:  MOVS            R3, #2
3830EC:  LDR.W           R1, [R1,#0x590]; CVehicle *
3830F0:  STRD.W          R3, R2, [SP,#0x20+var_20]; int
3830F4:  MOVS            R2, #0; CEntity *
3830F6:  MOVS            R3, #1; int
3830F8:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
3830FC:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x383102)
3830FE:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
383100:  B               loc_383244
383102:  LDR.W           R0, [R1,#0x440]
383106:  LDRSB.W         R5, [R0,#0xD0]
38310A:  CMP             R5, #0
38310C:  BLT.W           loc_38324C
383110:  LDR             R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x383116)
383112:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
383114:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
383116:  ADD.W           R0, R0, R5,LSL#6
38311A:  LDR             R0, [R0,#0x10]
38311C:  CMP             R0, #0
38311E:  BEQ.W           loc_38324C
383122:  MOVS            R0, #dword_1C; this
383124:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383128:  MOV             R1, R5; int
38312A:  BLX             j__ZN23CTaskComplexUseSequenceC2Ei; CTaskComplexUseSequence::CTaskComplexUseSequence(int)
38312E:  B               loc_38324A
383130:  MOVS            R0, #word_28; this
383132:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383136:  LDR             R1, [R4]
383138:  MOVS            R2, #0
38313A:  LDR.W           R1, [R1,#0x590]; CVehicle *
38313E:  LDR             R3, [R1,#0x14]
383140:  STRD.W          R2, R2, [SP,#0x20+var_20]; int
383144:  ADD.W           R2, R3, #0x30 ; '0'
383148:  CMP             R3, #0
38314A:  IT EQ
38314C:  ADDEQ           R2, R1, #4; CVector *
38314E:  MOVS            R3, #0; int
383150:  BLX             j__ZN27CTaskComplexLeaveCarAndFleeC2EP8CVehicleRK7CVectoriib; CTaskComplexLeaveCarAndFlee::CTaskComplexLeaveCarAndFlee(CVehicle *,CVector const&,int,int,bool)
383154:  B               loc_38324A
383156:  CMP             R5, #0
383158:  BEQ             loc_38324C
38315A:  LDRB.W          R0, [R5,#0x3A]
38315E:  AND.W           R0, R0, #7
383162:  CMP             R0, #2
383164:  BEQ             loc_3831C8
383166:  CMP             R0, #3
383168:  BNE             loc_38324C
38316A:  MOVS            R0, #word_10; this
38316C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383170:  MOV             R1, R5
383172:  B               loc_3831D2
383174:  MOVS            R0, #dword_40; this
383176:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38317A:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x383186)
38317C:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38318A)
38317E:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38318C)
383182:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
383184:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x38318E)
383186:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383188:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38318A:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
38318C:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38318E:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383190:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
383194:  LDR             R3, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
383196:  LDR             R5, [R4]
383198:  VLDR            S0, [R2]
38319C:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
38319E:  LDR.W           R6, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
3831A2:  LDR.W           R1, [R5,#0x590]; CEntity *
3831A6:  LDR             R3, [R3]; float
3831A8:  STRD.W          R2, R6, [SP,#0x20+var_20]; int
3831AC:  MOVS            R2, #0; bool
3831AE:  VSTR            S0, [SP,#0x20+var_18]
3831B2:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
3831B6:  B               loc_38324A
3831B8:  LDR.W           R0, [R5,#0x464]; this
3831BC:  CBZ             R0, loc_3831F8
3831BE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3831C2:  CBZ             R0, loc_3831F8
3831C4:  MOVS            R0, #0
3831C6:  B               loc_38324A
3831C8:  MOVS            R0, #word_10; this
3831CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3831CE:  LDR.W           R1, [R5,#0x464]; CPed *
3831D2:  BLX             j__ZN20CTaskComplexRoadRageC2EP4CPed; CTaskComplexRoadRage::CTaskComplexRoadRage(CPed *)
3831D6:  B               loc_38324A
3831D8:  MOVS            R0, #dword_38; this
3831DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3831DE:  MOVS            R2, #1
3831E0:  MOVS            R3, #0
3831E2:  LDR.W           R1, [R5,#0x464]; CPed *
3831E6:  STRD.W          R3, R3, [SP,#0x20+var_20]; unsigned int
3831EA:  STR             R2, [SP,#0x20+var_18]; int
3831EC:  MOV.W           R2, #0xFFFFFFFF; int
3831F0:  MOVS            R3, #0; unsigned int
3831F2:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
3831F6:  B               loc_38324A
3831F8:  MOVS            R0, #dword_20; this
3831FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3831FE:  LDR.W           R1, [R5,#0x464]; CPed *
383202:  MOVS            R2, #0; bool
383204:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
383208:  B               loc_38324A
38320A:  MOV.W           R0, #0xFFFFFFFF; int
38320E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
383212:  MOV             R8, R0
383214:  LDR             R0, [R6]
383216:  LDR             R1, [R0,#0x2C]
383218:  MOV             R0, R6
38321A:  BLX             R1
38321C:  CMP             R0, R8
38321E:  BEQ             loc_383254
383220:  MOVS            R0, #word_2C; this
383222:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383226:  LDR             R1, [R4]
383228:  MOVS            R2, #0x42200000
38322E:  MOVS            R3, #3
383230:  LDR.W           R1, [R1,#0x590]; CVehicle *
383234:  STRD.W          R3, R2, [SP,#0x20+var_20]; int
383238:  MOV             R2, R5; CEntity *
38323A:  MOVS            R3, #0x36 ; '6'; int
38323C:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
383240:  LDR             R1, =(_ZTV34CTaskComplexCarDriveMissionKillPed_ptr - 0x383246)
383242:  ADD             R1, PC; _ZTV34CTaskComplexCarDriveMissionKillPed_ptr
383244:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionFleeScene
383246:  ADDS            R1, #8
383248:  STR             R1, [R0]
38324A:  STR             R0, [R4,#0x24]
38324C:  ADD             SP, SP, #0x10
38324E:  POP.W           {R8}
383252:  POP             {R4-R7,PC}
383254:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
383258:  CMP             R0, #0
38325A:  BEQ             loc_383220
38325C:  LDR             R0, [R4]
38325E:  LDRB.W          R0, [R0,#0x448]
383262:  CMP             R0, #1
383264:  BNE             loc_383220
383266:  MOVS            R0, #word_2C; this
383268:  LDR             R6, [R6,#0x18]
38326A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38326E:  CMP             R6, #0x31 ; '1'
383270:  BEQ.W           loc_3830E2
383274:  B               loc_383226
383276:  LDR             R1, [R4]; unsigned int
383278:  LDR.W           R0, [R1,#0x590]; this
38327C:  CBZ             R0, loc_3832AC
38327E:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
383282:  CMP             R0, #1
383284:  BNE             loc_3832AC
383286:  MOVS            R0, #word_2C; this
383288:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38328C:  LDR             R1, [R4]
38328E:  MOVS            R2, #0x42200000
383294:  MOVS            R3, #2
383296:  LDR.W           R1, [R1,#0x590]; CVehicle *
38329A:  STRD.W          R3, R2, [SP,#0x20+var_20]; int
38329E:  MOVS            R2, #0; CEntity *
3832A0:  MOVS            R3, #1; int
3832A2:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
3832A6:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x3832AC)
3832A8:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
3832AA:  B               loc_383244
3832AC:  MOVS            R0, #dword_40; this
3832AE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3832B2:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3832BE)
3832B4:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3832C2)
3832B6:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3832C4)
3832BA:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3832BC:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3832C6)
3832BE:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3832C0:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3832C2:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3832C4:  B               loc_38318C
