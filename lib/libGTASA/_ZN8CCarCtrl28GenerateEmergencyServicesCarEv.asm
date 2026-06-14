; =========================================================
; Game Engine Function: _ZN8CCarCtrl28GenerateEmergencyServicesCarEv
; Address            : 0x2EA09C - 0x2EA24E
; =========================================================

2EA09C:  PUSH            {R4,R5,R7,LR}
2EA09E:  ADD             R7, SP, #8
2EA0A0:  SUB             SP, SP, #0x10
2EA0A2:  LDR             R0, =(_ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr - 0x2EA0A8)
2EA0A4:  ADD             R0, PC; _ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr
2EA0A6:  LDR             R0, [R0]; CCarCtrl::bAllowEmergencyServicesToBeCreated ...
2EA0A8:  LDRB            R0, [R0]; this
2EA0AA:  CBZ             R0, loc_2EA0B2
2EA0AC:  BLX             j__ZN9CGangWars22GangWarFightingGoingOnEv; CGangWars::GangWarFightingGoingOn(void)
2EA0B0:  CBZ             R0, loc_2EA0B6
2EA0B2:  ADD             SP, SP, #0x10
2EA0B4:  POP             {R4,R5,R7,PC}
2EA0B6:  MOV.W           R0, #0xFFFFFFFF; int
2EA0BA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2EA0BE:  LDR.W           R0, [R0,#0x444]
2EA0C2:  LDR             R0, [R0]
2EA0C4:  LDR             R0, [R0,#0x2C]
2EA0C6:  CMP             R0, #3
2EA0C8:  BGT             loc_2EA0B2
2EA0CA:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2EA0D0)
2EA0CC:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2EA0CE:  LDR             R0, [R0]; CGame::currArea ...
2EA0D0:  LDR             R0, [R0]; CGame::currArea
2EA0D2:  CMP             R0, #0
2EA0D4:  BNE             loc_2EA0B2
2EA0D6:  LDR             R0, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x2EA0DC)
2EA0D8:  ADD             R0, PC; _ZN9CTheZones11m_CurrLevelE_ptr
2EA0DA:  LDR             R0, [R0]; CTheZones::m_CurrLevel ...
2EA0DC:  LDR             R0, [R0]; CTheZones::m_CurrLevel
2EA0DE:  CMP             R0, #0
2EA0E0:  BEQ             loc_2EA0B2
2EA0E2:  LDR             R0, =(_ZN8CCarCtrl13NumRandomCarsE_ptr - 0x2EA0EC)
2EA0E4:  LDR             R1, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x2EA0EE)
2EA0E6:  LDR             R4, =(_ZN8CCarCtrl14NumMissionCarsE_ptr - 0x2EA0F4)
2EA0E8:  ADD             R0, PC; _ZN8CCarCtrl13NumRandomCarsE_ptr
2EA0EA:  ADD             R1, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
2EA0EC:  LDR             R2, =(_ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr - 0x2EA0F8)
2EA0EE:  LDR             R3, =(_ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr - 0x2EA0FE)
2EA0F0:  ADD             R4, PC; _ZN8CCarCtrl14NumMissionCarsE_ptr
2EA0F2:  LDR             R5, =(_ZN8CCarCtrl20MaxNumberOfCarsInUseE_ptr - 0x2EA100)
2EA0F4:  ADD             R2, PC; _ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr
2EA0F6:  LDR.W           R12, =(_ZN8CCarCtrl13NumParkedCarsE_ptr - 0x2EA104)
2EA0FA:  ADD             R3, PC; _ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr
2EA0FC:  ADD             R5, PC; _ZN8CCarCtrl20MaxNumberOfCarsInUseE_ptr
2EA0FE:  LDR             R1, [R1]; CCarCtrl::NumLawEnforcerCars ...
2EA100:  ADD             R12, PC; _ZN8CCarCtrl13NumParkedCarsE_ptr
2EA102:  LDR             R0, [R0]; CCarCtrl::NumRandomCars ...
2EA104:  LDR             R4, [R4]; CCarCtrl::NumMissionCars ...
2EA106:  LDR             R2, [R2]; CCarCtrl::NumAmbulancesOnDuty ...
2EA108:  LDR             R3, [R3]; CCarCtrl::NumFireTrucksOnDuty ...
2EA10A:  LDR             R5, [R5]; CCarCtrl::MaxNumberOfCarsInUse ...
2EA10C:  LDR.W           R12, [R12]; CCarCtrl::NumParkedCars ...
2EA110:  LDR.W           LR, [R0]; CCarCtrl::NumRandomCars
2EA114:  LDR             R1, [R1]; CCarCtrl::NumLawEnforcerCars
2EA116:  LDR             R4, [R4]; CCarCtrl::NumMissionCars
2EA118:  ADD             R1, LR
2EA11A:  LDR             R0, [R2]; CCarCtrl::NumAmbulancesOnDuty
2EA11C:  LDR             R2, [R3]; CCarCtrl::NumFireTrucksOnDuty
2EA11E:  ADD             R1, R4
2EA120:  LDR             R3, [R5]; CCarCtrl::MaxNumberOfCarsInUse
2EA122:  LDR.W           R5, [R12]; CCarCtrl::NumParkedCars
2EA126:  ADD             R1, R5
2EA128:  ADD             R1, R0
2EA12A:  ADD             R1, R2
2EA12C:  CMP             R1, R3
2EA12E:  BGT             loc_2EA0B2
2EA130:  CMP             R0, #0
2EA132:  BNE             loc_2EA1B6
2EA134:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
2EA138:  BLX             j__ZNK16CAccidentManager24ComputeNoOfFreeAccidentsEv; CAccidentManager::ComputeNoOfFreeAccidents(void)
2EA13C:  CMP             R0, #2
2EA13E:  BLT             loc_2EA1B0
2EA140:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
2EA144:  ADD             R5, SP, #0x18+var_14
2EA146:  MOV             R4, R0
2EA148:  MOV.W           R1, #0xFFFFFFFF
2EA14C:  MOV             R0, R5; int
2EA14E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2EA152:  MOV             R0, R4; this
2EA154:  MOV             R1, R5; CVector *
2EA156:  MOVS            R2, #0; bool
2EA158:  BLX             j__ZN16CAccidentManager22GetNearestFreeAccidentERK7CVectorb; CAccidentManager::GetNearestFreeAccident(CVector const&,bool)
2EA15C:  MOV             R4, R0
2EA15E:  CBZ             R4, loc_2EA1B6
2EA160:  MOVS            R0, #(stderr+1); this
2EA162:  BLX             j__ZN10CStreaming23StreamAmbulanceAndMedicEb; CStreaming::StreamAmbulanceAndMedic(bool)
2EA166:  CMP             R0, #1
2EA168:  BNE             loc_2EA1B6
2EA16A:  LDR             R0, =(_ZN8CCarCtrl24LastTimeAmbulanceCreatedE_ptr - 0x2EA176)
2EA16C:  MOVW            R2, #0x7530
2EA170:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EA178)
2EA172:  ADD             R0, PC; _ZN8CCarCtrl24LastTimeAmbulanceCreatedE_ptr
2EA174:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EA176:  LDR             R0, [R0]; CCarCtrl::LastTimeAmbulanceCreated ...
2EA178:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2EA17A:  LDR             R0, [R0]; CCarCtrl::LastTimeAmbulanceCreated
2EA17C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2EA17E:  ADD             R0, R2; this
2EA180:  CMP             R1, R0
2EA182:  BLS             loc_2EA1B6
2EA184:  BLX             j__ZN10CStreaming24GetDefaultAmbulanceModelEv; CStreaming::GetDefaultAmbulanceModel(void)
2EA188:  LDR             R1, [R4]
2EA18A:  LDR             R2, [R1,#0x14]
2EA18C:  ADD.W           R3, R2, #0x30 ; '0'
2EA190:  CMP             R2, #0
2EA192:  IT EQ
2EA194:  ADDEQ           R3, R1, #4
2EA196:  LDM             R3, {R1-R3}
2EA198:  BLX             j__ZN8CCarCtrl31GenerateOneEmergencyServicesCarEj7CVector; CCarCtrl::GenerateOneEmergencyServicesCar(uint,CVector)
2EA19C:  CBZ             R0, loc_2EA1B6
2EA19E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EA1A6)
2EA1A0:  LDR             R1, =(_ZN8CCarCtrl24LastTimeAmbulanceCreatedE_ptr - 0x2EA1A8)
2EA1A2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EA1A4:  ADD             R1, PC; _ZN8CCarCtrl24LastTimeAmbulanceCreatedE_ptr
2EA1A6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EA1A8:  LDR             R1, [R1]; CCarCtrl::LastTimeAmbulanceCreated ...
2EA1AA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EA1AC:  STR             R0, [R1]; CCarCtrl::LastTimeAmbulanceCreated
2EA1AE:  B               loc_2EA1B6
2EA1B0:  MOVS            R0, #0; this
2EA1B2:  BLX             j__ZN10CStreaming23StreamAmbulanceAndMedicEb; CStreaming::StreamAmbulanceAndMedic(bool)
2EA1B6:  LDR             R0, =(_ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr - 0x2EA1BC)
2EA1B8:  ADD             R0, PC; _ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr
2EA1BA:  LDR             R0, [R0]; CCarCtrl::NumFireTrucksOnDuty ...
2EA1BC:  LDR             R0, [R0]; CCarCtrl::NumFireTrucksOnDuty
2EA1BE:  CMP             R0, #0
2EA1C0:  BNE.W           loc_2EA0B2
2EA1C4:  LDR             R0, =(gFireManager_ptr - 0x2EA1CA)
2EA1C6:  ADD             R0, PC; gFireManager_ptr
2EA1C8:  LDR             R0, [R0]; gFireManager ; this
2EA1CA:  BLX             j__ZN12CFireManager22GetNumOfNonScriptFiresEv; CFireManager::GetNumOfNonScriptFires(void)
2EA1CE:  CMP             R0, #3
2EA1D0:  BCC             loc_2EA244
2EA1D2:  ADD             R4, SP, #0x18+var_14
2EA1D4:  MOV.W           R1, #0xFFFFFFFF
2EA1D8:  MOV             R0, R4; int
2EA1DA:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2EA1DE:  LDR             R0, =(gFireManager_ptr - 0x2EA1EA)
2EA1E0:  MOV             R1, R4; CVector *
2EA1E2:  MOVS            R2, #1; bool
2EA1E4:  MOVS            R3, #1; bool
2EA1E6:  ADD             R0, PC; gFireManager_ptr
2EA1E8:  LDR             R0, [R0]; gFireManager ; this
2EA1EA:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
2EA1EE:  MOV             R4, R0
2EA1F0:  CMP             R4, #0
2EA1F2:  BEQ.W           loc_2EA0B2
2EA1F6:  MOVS            R0, #(stderr+1); this
2EA1F8:  BLX             j__ZN10CStreaming26StreamFireEngineAndFiremanEb; CStreaming::StreamFireEngineAndFireman(bool)
2EA1FC:  CMP             R0, #1
2EA1FE:  BNE.W           loc_2EA0B2
2EA202:  LDR             R0, =(_ZN8CCarCtrl24LastTimeFireTruckCreatedE_ptr - 0x2EA20E)
2EA204:  MOVW            R2, #0x88B8
2EA208:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EA210)
2EA20A:  ADD             R0, PC; _ZN8CCarCtrl24LastTimeFireTruckCreatedE_ptr
2EA20C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EA20E:  LDR             R0, [R0]; CCarCtrl::LastTimeFireTruckCreated ...
2EA210:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2EA212:  LDR             R0, [R0]; CCarCtrl::LastTimeFireTruckCreated
2EA214:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2EA216:  ADD             R0, R2; this
2EA218:  CMP             R1, R0
2EA21A:  BLS.W           loc_2EA0B2
2EA21E:  BLX             j__ZN10CStreaming25GetDefaultFireEngineModelEv; CStreaming::GetDefaultFireEngineModel(void)
2EA222:  ADDS            R3, R4, #4
2EA224:  LDM             R3, {R1-R3}
2EA226:  BLX             j__ZN8CCarCtrl31GenerateOneEmergencyServicesCarEj7CVector; CCarCtrl::GenerateOneEmergencyServicesCar(uint,CVector)
2EA22A:  CMP             R0, #0
2EA22C:  BEQ.W           loc_2EA0B2
2EA230:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EA238)
2EA232:  LDR             R1, =(_ZN8CCarCtrl24LastTimeFireTruckCreatedE_ptr - 0x2EA23A)
2EA234:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EA236:  ADD             R1, PC; _ZN8CCarCtrl24LastTimeFireTruckCreatedE_ptr
2EA238:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EA23A:  LDR             R1, [R1]; CCarCtrl::LastTimeFireTruckCreated ...
2EA23C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EA23E:  STR             R0, [R1]; CCarCtrl::LastTimeFireTruckCreated
2EA240:  ADD             SP, SP, #0x10
2EA242:  POP             {R4,R5,R7,PC}
2EA244:  MOVS            R0, #0; this
2EA246:  BLX             j__ZN10CStreaming26StreamFireEngineAndFiremanEb; CStreaming::StreamFireEngineAndFireman(bool)
2EA24A:  ADD             SP, SP, #0x10
2EA24C:  POP             {R4,R5,R7,PC}
