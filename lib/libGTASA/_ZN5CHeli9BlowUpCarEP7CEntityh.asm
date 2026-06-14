; =========================================================
; Game Engine Function: _ZN5CHeli9BlowUpCarEP7CEntityh
; Address            : 0x574188 - 0x574490
; =========================================================

574188:  PUSH            {R4-R7,LR}
57418A:  ADD             R7, SP, #0xC
57418C:  PUSH.W          {R8,R9,R11}
574190:  SUB             SP, SP, #0x20; float
574192:  MOV             R4, R0
574194:  MOV             R8, R1
574196:  LDRB.W          R0, [R4,#0x42E]
57419A:  LSLS            R0, R0, #0x1A
57419C:  BPL.W           loc_57447A
5741A0:  LDRB.W          R0, [R4,#0x3A]
5741A4:  CMP             R0, #8
5741A6:  BCC             loc_5741C6
5741A8:  LDRB.W          R0, [R4,#0x3BE]
5741AC:  CMP             R0, #0x3A ; ':'
5741AE:  BEQ             loc_5741C6
5741B0:  LDRSH.W         R0, [R4,#0x26]
5741B4:  MOVW            R1, #0x1D1
5741B8:  CMP             R0, R1
5741BA:  ITT NE
5741BC:  MOVWNE          R1, #0x1F5
5741C0:  CMPNE           R0, R1
5741C2:  BNE.W           loc_574482
5741C6:  MOV.W           R0, #0xFFFFFFFF; int
5741CA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5741CE:  CMP             R0, R8
5741D0:  BEQ             loc_5741E0
5741D2:  MOV.W           R0, #0xFFFFFFFF; int
5741D6:  MOVS            R1, #0; bool
5741D8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5741DC:  CMP             R0, R8
5741DE:  BNE             loc_574244
5741E0:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5741F0)
5741E2:  MOV.W           R2, #0x194
5741E6:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x5741F2)
5741E8:  VMOV.F32        S0, #10.0
5741EC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5741EE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5741F0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5741F2:  LDR             R1, [R1]; CWorld::Players ...
5741F4:  LDR             R0, [R0]; CWorld::PlayerInFocus
5741F6:  SMLABB.W        R0, R0, R2, R1
5741FA:  VLDR            S2, [R0,#0x148]
5741FE:  LDR.W           R1, [R0,#0x140]
574202:  VADD.F32        S0, S2, S0
574206:  ADDS            R1, #0x14
574208:  STR.W           R1, [R0,#0x140]
57420C:  VSTR            S0, [R0,#0x148]
574210:  BLX             rand
574214:  MOV             R1, #0x57619F1
57421C:  SMMUL.W         R1, R0, R1
574220:  ASRS            R2, R1, #7
574222:  ADD.W           R1, R2, R1,LSR#31
574226:  MOVW            R2, #0x1770; float
57422A:  MLS.W           R0, R1, R2, R0
57422E:  ADD.W           R0, R0, #0xFA0
574232:  VMOV            S0, R0
574236:  MOVS            R0, #(off_7C+1); this
574238:  VCVT.F32.S32    S0, S0
57423C:  VMOV            R1, S0; unsigned __int16
574240:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
574244:  LDRH            R0, [R4,#0x26]
574246:  CMP.W           R0, #0x1E8
57424A:  BNE             loc_574256
57424C:  LDR             R0, =(_ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr - 0x574254)
57424E:  MOVS            R1, #0
574250:  ADD             R0, PC; _ZN7CWanted30bUseNewsHeliInAdditionToPoliceE_ptr
574252:  LDR             R0, [R0]; CWanted::bUseNewsHeliInAdditionToPolice ...
574254:  STRB            R1, [R0]; CWanted::bUseNewsHeliInAdditionToPolice
574256:  LDRB.W          R1, [R4,#0x3A]
57425A:  ADDW            R6, R4, #0x42C
57425E:  CMP             R1, #7
574260:  BHI             loc_57427C
574262:  MOVS            R0, #0
574264:  VMOV.I32        Q8, #0
574268:  STR             R0, [R4,#0x5C]
57426A:  ADD.W           R3, R4, #0x48 ; 'H'
57426E:  LDR             R2, [R4,#0x1C]
574270:  VST1.32         {D16-D17}, [R3]
574274:  STR             R0, [R4,#0x58]
574276:  BIC.W           R0, R2, #0x81
57427A:  STR             R0, [R4,#0x1C]
57427C:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57428A)
57427E:  MOVS            R5, #5
574280:  LDR             R3, [R4,#0x44]
574282:  BFI.W           R1, R5, #3, #0x1D
574286:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
574288:  LDR             R0, [R4,#0x18]
57428A:  STRB.W          R1, [R4,#0x3A]
57428E:  ORR.W           R1, R3, #0x20000000
574292:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
574294:  STR             R1, [R4,#0x44]
574296:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
574298:  STR.W           R1, [R4,#0x4E8]
57429C:  MOV.W           R1, #0x4000
5742A0:  BLX             j__ZN18CVisibilityPlugins25SetClumpForAllAtomicsFlagEP7RpClumpi; CVisibilityPlugins::SetClumpForAllAtomicsFlag(RpClump *,int)
5742A4:  ADDW            R0, R4, #0x5B4; this
5742A8:  MOVS            R1, #0; bool
5742AA:  MOVS            R5, #0
5742AC:  BLX             j__ZN14CDamageManager17FuckCarCompletelyEb; CDamageManager::FuckCarCompletely(bool)
5742B0:  LDRH            R0, [R4,#0x26]
5742B2:  MOVW            R1, #0x1D1
5742B6:  CMP             R0, R1
5742B8:  ITT NE
5742BA:  MOVWNE          R1, #0x1F5
5742BE:  CMPNE           R0, R1
5742C0:  BEQ             loc_57433E
5742C2:  MOV             R0, R4
5742C4:  MOVS            R1, #5
5742C6:  MOVS            R2, #0
5742C8:  MOV.W           R9, #0
5742CC:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
5742D0:  MOV             R0, R4
5742D2:  MOVS            R1, #6
5742D4:  MOVS            R2, #0
5742D6:  BLX             j__ZN11CAutomobile15SetBumperDamageE7ePanelsb; CAutomobile::SetBumperDamage(ePanels,bool)
5742DA:  MOV             R0, R4
5742DC:  MOVS            R1, #0
5742DE:  MOVS            R2, #0
5742E0:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
5742E4:  MOV             R0, R4
5742E6:  MOVS            R1, #1
5742E8:  MOVS            R2, #0
5742EA:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
5742EE:  MOV             R0, R4
5742F0:  MOVS            R1, #2
5742F2:  MOVS            R2, #0
5742F4:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
5742F8:  MOV             R0, R4
5742FA:  MOVS            R1, #3
5742FC:  MOVS            R2, #0
5742FE:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
574302:  MOV             R0, R4
574304:  MOVS            R1, #4
574306:  MOVS            R2, #0
574308:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
57430C:  MOV             R0, R4
57430E:  MOVS            R1, #5
574310:  MOVS            R2, #0
574312:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
574316:  MOV             R0, R4; this
574318:  MOVS            R1, #5; int
57431A:  MOVS            R2, #1; unsigned int
57431C:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
574320:  LDR             R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x57432C)
574322:  ADD             R2, SP, #0x38+var_1C
574324:  STR.W           R9, [SP,#0x38+var_1C]
574328:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
57432A:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
57432C:  LDR.W           R0, [R4,#0x670]
574330:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
574334:  LDR             R0, [SP,#0x38+var_1C]
574336:  CMP             R0, #0
574338:  IT NE
57433A:  STRBNE.W        R9, [R0,#2]
57433E:  LDRB.W          R1, [R4,#0x4B2]
574342:  STRH.W          R5, [R4,#0x4EE]
574346:  LDR             R0, =(TheCamera_ptr - 0x574358)
574348:  AND.W           R1, R1, #0xF8
57434C:  LDR             R2, [R4,#0x14]
57434E:  STR.W           R5, [R4,#0x4CC]
574352:  ADDS            R5, R4, #4
574354:  ADD             R0, PC; TheCamera_ptr
574356:  STRB.W          R1, [R4,#0x4B2]
57435A:  CMP             R2, #0
57435C:  MOV             R1, R5
57435E:  IT NE
574360:  ADDNE.W         R1, R2, #0x30 ; '0'
574364:  LDR             R0, [R0]; TheCamera ; this
574366:  LDRD.W          R2, R3, [R1]; float
57436A:  VLDR            S0, [R1,#8]
57436E:  MOV             R1, #0x3ECCCCCD; float
574376:  VSTR            S0, [SP,#0x38+var_38]
57437A:  BLX             j__ZN7CCamera8CamShakeEffff; CCamera::CamShake(float,float,float,float)
57437E:  MOV             R0, R4; this
574380:  BLX             j__ZN8CVehicle17KillPedsInVehicleEv; CVehicle::KillPedsInVehicle(void)
574384:  LDRB.W          R0, [R4,#0x4B2]
574388:  LDRD.W          R2, R1, [R6]
57438C:  AND.W           R0, R0, #0xE7
574390:  STRB.W          R0, [R4,#0x4B2]
574394:  BIC.W           R0, R1, #0x8000
574398:  BIC.W           R1, R2, #0x50 ; 'P'
57439C:  TST.W           R2, #2
5743A0:  STRD.W          R1, R0, [R6]
5743A4:  LDRB.W          R3, [R4,#0x87C]
5743A8:  AND.W           R3, R3, #0xFE
5743AC:  STRB.W          R3, [R4,#0x87C]
5743B0:  BEQ             loc_5743C6
5743B2:  LDR             R3, =(_ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr - 0x5743C0)
5743B4:  BIC.W           R1, R2, #0x52 ; 'R'
5743B8:  STRD.W          R1, R0, [R6]
5743BC:  ADD             R3, PC; _ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr
5743BE:  LDR             R2, [R3]; CCarCtrl::NumAmbulancesOnDuty ...
5743C0:  LDR             R3, [R2]; CCarCtrl::NumAmbulancesOnDuty
5743C2:  SUBS            R3, #1
5743C4:  STR             R3, [R2]; CCarCtrl::NumAmbulancesOnDuty
5743C6:  LSLS            R2, R1, #0x1D
5743C8:  BPL             loc_5743E2
5743CA:  LDR             R2, =(_ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr - 0x5743D8)
5743CC:  BIC.W           R0, R0, #0x8000
5743D0:  BIC.W           R1, R1, #0x54 ; 'T'
5743D4:  ADD             R2, PC; _ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr
5743D6:  STRD.W          R1, R0, [R6]
5743DA:  LDR             R2, [R2]; CCarCtrl::NumFireTrucksOnDuty ...
5743DC:  LDR             R0, [R2]; CCarCtrl::NumFireTrucksOnDuty
5743DE:  SUBS            R0, #1
5743E0:  STR             R0, [R2]; CCarCtrl::NumFireTrucksOnDuty
5743E2:  MOV             R0, R4; this
5743E4:  MOVS            R1, #0; unsigned __int8
5743E6:  MOVS            R6, #0
5743E8:  BLX             j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
5743EC:  LDR             R0, =(gFireManager_ptr - 0x5743FE)
5743EE:  MOVW            R3, #0xCCCD
5743F2:  MOVW            R1, #0x1B58
5743F6:  MOV.W           R9, #1
5743FA:  ADD             R0, PC; gFireManager_ptr
5743FC:  STRD.W          R9, R1, [SP,#0x38+var_38]; int
574400:  MOVT            R3, #0x3F4C; float
574404:  MOV             R1, R4; CEntity *
574406:  LDR             R0, [R0]; gFireManager ; this
574408:  MOV             R2, R8; CEntity *
57440A:  STR             R6, [SP,#0x38+var_30]; int
57440C:  BLX             j__ZN12CFireManager9StartFireEP7CEntityS1_fhja; CFireManager::StartFire(CEntity *,CEntity *,float,uchar,uint,signed char)
574410:  MOV             R0, R4; this
574412:  MOVS            R1, #0; CVehicle *
574414:  BLX             j__ZN7CDarkel26RegisterCarBlownUpByPlayerEP8CVehiclei; CDarkel::RegisterCarBlownUpByPlayer(CVehicle *,int)
574418:  LDRH            R0, [R4,#0x26]
57441A:  MOVW            R1, #0x1F5
57441E:  CMP             R0, R1
574420:  ITT NE
574422:  MOVWNE          R1, #0x1D1
574426:  CMPNE           R0, R1
574428:  BNE             loc_574450
57442A:  LDR             R0, [R4,#0x14]
57442C:  MOVS            R2, #0xBF800000
574432:  CMP             R0, #0
574434:  IT NE
574436:  ADDNE.W         R5, R0, #0x30 ; '0'
57443A:  LDRD.W          R3, R0, [R5]
57443E:  LDR             R1, [R5,#8]
574440:  STMEA.W         SP, {R0,R1,R6,R9}
574444:  MOV             R0, R4
574446:  MOV             R1, R8
574448:  STRD.W          R2, R6, [SP,#0x38+var_28]
57444C:  MOVS            R2, #0xC
57444E:  B               loc_574476
574450:  LDR             R0, [R4,#0x14]
574452:  MOVS            R6, #0
574454:  MOVS            R2, #0
574456:  MOVT            R6, #0xBF80
57445A:  CMP             R0, #0
57445C:  IT NE
57445E:  ADDNE.W         R5, R0, #0x30 ; '0'
574462:  LDRD.W          R3, R0, [R5]; int
574466:  LDR             R1, [R5,#8]
574468:  MOVS            R5, #1
57446A:  STMEA.W         SP, {R0-R2,R5,R6}
57446E:  MOV             R0, R4; int
574470:  MOV             R1, R8; int
574472:  STR             R2, [SP,#0x38+var_24]; int
574474:  MOVS            R2, #7; int
574476:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
57447A:  ADD             SP, SP, #0x20 ; ' '
57447C:  POP.W           {R8,R9,R11}
574480:  POP             {R4-R7,PC}
574482:  MOVS            R0, #0
574484:  STR.W           R0, [R4,#0x4CC]
574488:  MOVS            R0, #0x3A ; ':'
57448A:  STRB.W          R0, [R4,#0x3BE]
57448E:  B               loc_57447A
