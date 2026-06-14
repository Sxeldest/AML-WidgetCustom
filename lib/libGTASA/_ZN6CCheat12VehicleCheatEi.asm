; =========================================================
; Game Engine Function: _ZN6CCheat12VehicleCheatEi
; Address            : 0x2FF058 - 0x2FF38A
; =========================================================

2FF058:  PUSH            {R4-R7,LR}
2FF05A:  ADD             R7, SP, #0xC
2FF05C:  PUSH.W          {R8}
2FF060:  VPUSH           {D8-D10}
2FF064:  SUB             SP, SP, #0x18
2FF066:  MOV             R8, R0
2FF068:  MOV.W           R0, #0xFFFFFFFF; int
2FF06C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF070:  LDRB.W          R0, [R0,#0x33]
2FF074:  CBZ             R0, loc_2FF086
2FF076:  MOVS            R4, #0
2FF078:  MOV             R0, R4
2FF07A:  ADD             SP, SP, #0x18
2FF07C:  VPOP            {D8-D10}
2FF080:  POP.W           {R8}
2FF084:  POP             {R4-R7,PC}
2FF086:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2FF08C)
2FF088:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2FF08A:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
2FF08C:  LDR             R1, [R0]; CPools::ms_pVehiclePool
2FF08E:  LDR             R0, [R1,#8]
2FF090:  CMP             R0, #1
2FF092:  BLT             loc_2FF112
2FF094:  LDR.W           R12, [R1,#4]
2FF098:  CMP             R0, #4
2FF09A:  BCC             loc_2FF0F4
2FF09C:  BIC.W           R4, R0, #3
2FF0A0:  CBZ             R4, loc_2FF0F4
2FF0A2:  VMOV.I32        Q8, #0
2FF0A6:  ADD             R3, SP, #0x40+var_3C
2FF0A8:  VMOV.I16        D18, #1
2FF0AC:  MOV             R2, R4
2FF0AE:  VMOV.I32        Q10, #0xFF
2FF0B2:  MOV             R1, R12
2FF0B4:  LDR.W           R6, [R1],#4
2FF0B8:  SUBS            R2, #4
2FF0BA:  STR             R6, [SP,#0x40+var_3C]
2FF0BC:  VLD1.32         {D19[0]}, [R3@32]
2FF0C0:  VMOVL.U8        Q11, D19
2FF0C4:  VSHR.U16        D19, D22, #7
2FF0C8:  VEOR            D19, D19, D18
2FF0CC:  VMOVL.U16       Q11, D19
2FF0D0:  VAND            Q11, Q11, Q10
2FF0D4:  VADD.I32        Q8, Q8, Q11
2FF0D8:  BNE             loc_2FF0B4
2FF0DA:  VEXT.8          Q9, Q8, Q8, #8
2FF0DE:  CMP             R0, R4
2FF0E0:  VADD.I32        Q8, Q8, Q9
2FF0E4:  VDUP.32         Q9, D16[1]
2FF0E8:  VADD.I32        Q8, Q8, Q9
2FF0EC:  VMOV.32         R3, D16[0]
2FF0F0:  BNE             loc_2FF0F8
2FF0F2:  B               loc_2FF10E
2FF0F4:  MOVS            R4, #0
2FF0F6:  MOVS            R3, #0
2FF0F8:  ADD.W           R1, R12, R4
2FF0FC:  SUBS            R0, R0, R4
2FF0FE:  MOVS            R2, #1; int
2FF100:  LDRB.W          R6, [R1],#1
2FF104:  SUBS            R0, #1
2FF106:  EOR.W           R6, R2, R6,LSR#7
2FF10A:  ADD             R3, R6
2FF10C:  BNE             loc_2FF100
2FF10E:  CMP             R3, #0x32 ; '2'
2FF110:  BGT             loc_2FF076
2FF112:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2FF11C)
2FF114:  ADD.W           R1, R8, R8,LSL#2
2FF118:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2FF11A:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2FF11C:  ADD.W           R5, R0, R1,LSL#2
2FF120:  MOV             R0, R8; this
2FF122:  MOVS            R1, #2; int
2FF124:  LDRB            R6, [R5,#6]
2FF126:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FF12A:  MOVS            R0, #0; this
2FF12C:  MOVS            R4, #0
2FF12E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FF132:  LDRB            R0, [R5,#0x10]
2FF134:  CMP             R0, #1
2FF136:  BNE             loc_2FF078
2FF138:  LSLS            R0, R6, #0x1E
2FF13A:  BMI             loc_2FF148
2FF13C:  MOV             R0, R8; this
2FF13E:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
2FF142:  MOV             R0, R8; this
2FF144:  BLX             j__ZN10CStreaming22SetModelTxdIsDeletableEi; CStreaming::SetModelTxdIsDeletable(int)
2FF148:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2FF14E)
2FF14A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2FF14C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2FF14E:  LDR.W           R0, [R0,R8,LSL#2]
2FF152:  LDR             R0, [R0,#0x54]
2FF154:  SUBS            R0, #1; switch 11 cases
2FF156:  CMP             R0, #0xA
2FF158:  BHI             def_2FF15A; jumptable 002FF15A default case, cases 6-8
2FF15A:  TBB.W           [PC,R0]; switch jump
2FF15E:  DCB 6; jump table for switch statement
2FF15F:  DCB 0x12
2FF160:  DCB 0x1E
2FF161:  DCB 0x2A
2FF162:  DCB 0x35
2FF163:  DCB 0x40
2FF164:  DCB 0x40
2FF165:  DCB 0x40
2FF166:  DCB 0x4C
2FF167:  DCB 0x56
2FF168:  DCB 0x67
2FF169:  ALIGN 2
2FF16A:  MOV.W           R0, #(elf_hash_bucket+0x8B4); jumptable 002FF15A case 1
2FF16E:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF172:  MOV             R1, R8; int
2FF174:  MOVS            R2, #1; unsigned __int8
2FF176:  MOV             R4, R0
2FF178:  BLX             j__ZN13CMonsterTruckC2Eih; CMonsterTruck::CMonsterTruck(int,uchar)
2FF17C:  CMP             R4, #0
2FF17E:  BNE             loc_2FF244
2FF180:  B               loc_2FF078
2FF182:  MOV.W           R0, #(elf_hash_bucket+0x8D4); jumptable 002FF15A case 2
2FF186:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF18A:  MOV             R1, R8; int
2FF18C:  MOVS            R2, #1; unsigned __int8
2FF18E:  MOV             R4, R0
2FF190:  BLX             j__ZN9CQuadBikeC2Eih; CQuadBike::CQuadBike(int,uchar)
2FF194:  CMP             R4, #0
2FF196:  BNE             loc_2FF244
2FF198:  B               loc_2FF078
2FF19A:  MOVW            R0, #(elf_hash_bucket+0x930); jumptable 002FF15A case 3
2FF19E:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF1A2:  MOV             R1, R8; int
2FF1A4:  MOVS            R2, #1; unsigned __int8
2FF1A6:  MOV             R4, R0
2FF1A8:  BLX             j__ZN5CHeliC2Eih; CHeli::CHeli(int,uchar)
2FF1AC:  CMP             R4, #0
2FF1AE:  BNE             loc_2FF244
2FF1B0:  B               loc_2FF078
2FF1B2:  MOVW            R0, #(elf_hash_bucket+0x91C); jumptable 002FF15A case 4
2FF1B6:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF1BA:  MOV             R1, R8; int
2FF1BC:  MOVS            R2, #1; unsigned __int8
2FF1BE:  MOV             R4, R0
2FF1C0:  BLX             j__ZN6CPlaneC2Eih; CPlane::CPlane(int,uchar)
2FF1C4:  CBNZ            R4, loc_2FF244
2FF1C6:  B               loc_2FF078
2FF1C8:  MOVW            R0, #(elf_hash_bucket+0x700); jumptable 002FF15A case 5
2FF1CC:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF1D0:  MOV             R1, R8; int
2FF1D2:  MOVS            R2, #1; unsigned __int8
2FF1D4:  MOV             R4, R0
2FF1D6:  BLX             j__ZN5CBoatC2Eih; CBoat::CBoat(int,uchar)
2FF1DA:  CBNZ            R4, loc_2FF244
2FF1DC:  B               loc_2FF078
2FF1DE:  MOVW            R0, #(elf_hash_bucket+0x8A0); jumptable 002FF15A default case, cases 6-8
2FF1E2:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF1E6:  MOV             R1, R8; int
2FF1E8:  MOVS            R2, #1; unsigned __int8
2FF1EA:  MOVS            R3, #1; unsigned __int8
2FF1EC:  MOV             R4, R0
2FF1EE:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
2FF1F2:  CBNZ            R4, loc_2FF244
2FF1F4:  B               loc_2FF078
2FF1F6:  MOVW            R0, #(elf_hash_bucket+0x72C); jumptable 002FF15A case 9
2FF1FA:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF1FE:  MOV             R1, R8; int
2FF200:  MOVS            R2, #1; unsigned __int8
2FF202:  MOV             R4, R0
2FF204:  BLX             j__ZN5CBikeC2Eih_0; CBike::CBike(int,uchar)
2FF208:  B               loc_2FF21C
2FF20A:  MOVW            R0, #(elf_hash_bucket+0x750); jumptable 002FF15A case 10
2FF20E:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF212:  MOV             R1, R8; int
2FF214:  MOVS            R2, #1; unsigned __int8
2FF216:  MOV             R4, R0
2FF218:  BLX             j__ZN4CBmxC2Eih; CBmx::CBmx(int,uchar)
2FF21C:  LDRB.W          R0, [R4,#0x628]
2FF220:  ORR.W           R0, R0, #0x10
2FF224:  STRB.W          R0, [R4,#0x628]
2FF228:  CBNZ            R4, loc_2FF244
2FF22A:  B               loc_2FF078
2FF22C:  MOVW            R0, #(elf_hash_bucket+0x90C); jumptable 002FF15A case 11
2FF230:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FF234:  MOV             R1, R8; int
2FF236:  MOVS            R2, #1; unsigned __int8
2FF238:  MOV             R4, R0
2FF23A:  BLX             j__ZN8CTrailerC2Eih; CTrailer::CTrailer(int,uchar)
2FF23E:  CMP             R4, #0
2FF240:  BEQ.W           loc_2FF078
2FF244:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2FF24E)
2FF246:  LDRSH.W         R1, [R4,#0x26]
2FF24A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2FF24C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2FF24E:  LDR.W           R0, [R0,R1,LSL#2]
2FF252:  LDR             R0, [R0,#0x2C]
2FF254:  VLDR            S16, [R0,#0x24]
2FF258:  MOV.W           R0, #0xFFFFFFFF; int
2FF25C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF260:  VMOV.F32        S0, #2.0
2FF264:  LDR             R1, [R0,#0x14]
2FF266:  ADD.W           R2, R1, #0x30 ; '0'
2FF26A:  CMP             R1, #0
2FF26C:  IT EQ
2FF26E:  ADDEQ           R2, R0, #4
2FF270:  VLDR            D16, [R2]
2FF274:  LDR             R0, [R2,#8]
2FF276:  STR             R0, [SP,#0x40+var_30]
2FF278:  MOV.W           R0, #0xFFFFFFFF; int
2FF27C:  VADD.F32        S16, S16, S0
2FF280:  VSTR            D16, [SP,#0x40+var_38]
2FF284:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF288:  LDR             R0, [R0,#0x14]
2FF28A:  VLDR            S8, [SP,#0x40+var_38+4]
2FF28E:  VLDR            S10, [SP,#0x40+var_30]
2FF292:  VLDR            S0, [R0,#0x10]
2FF296:  VLDR            S2, [R0,#0x14]
2FF29A:  VLDR            S4, [R0,#0x18]
2FF29E:  VMUL.F32        S0, S16, S0
2FF2A2:  VMUL.F32        S2, S16, S2
2FF2A6:  VMUL.F32        S6, S16, S4
2FF2AA:  VLDR            S4, [SP,#0x40+var_38]
2FF2AE:  VADD.F32        S4, S0, S4
2FF2B2:  VADD.F32        S2, S2, S8
2FF2B6:  VADD.F32        S0, S6, S10
2FF2BA:  VSTR            S4, [SP,#0x40+var_38]
2FF2BE:  VSTR            S2, [SP,#0x40+var_38+4]
2FF2C2:  VSTR            S0, [SP,#0x40+var_30]
2FF2C6:  LDR             R0, [R4,#0x14]
2FF2C8:  CBZ             R0, loc_2FF2DA
2FF2CA:  VSTR            S4, [R0,#0x30]
2FF2CE:  LDR             R0, [R4,#0x14]
2FF2D0:  VSTR            S2, [R0,#0x34]
2FF2D4:  LDR             R0, [R4,#0x14]
2FF2D6:  ADDS            R0, #0x38 ; '8'
2FF2D8:  B               loc_2FF2E6
2FF2DA:  ADD.W           R0, R4, #0xC
2FF2DE:  VSTR            S4, [R4,#4]
2FF2E2:  VSTR            S2, [R4,#8]
2FF2E6:  VSTR            S0, [R0]
2FF2EA:  MOV.W           R0, #0xFFFFFFFF; int
2FF2EE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF2F2:  ADDW            R0, R0, #0x55C
2FF2F6:  VLDR            S0, =1.5708
2FF2FA:  VLDR            S2, [R0]
2FF2FE:  LDR             R0, [R4,#0x14]; this
2FF300:  VADD.F32        S0, S2, S0
2FF304:  CBZ             R0, loc_2FF346
2FF306:  VMOV            R3, S0; float
2FF30A:  MOVS            R1, #0; x
2FF30C:  MOVS            R2, #0; float
2FF30E:  VLDR            S16, [R0,#0x30]
2FF312:  VLDR            S18, [R0,#0x34]
2FF316:  VLDR            S20, [R0,#0x38]
2FF31A:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
2FF31E:  LDR             R0, [R4,#0x14]
2FF320:  VLDR            S0, [R0,#0x30]
2FF324:  VLDR            S2, [R0,#0x34]
2FF328:  VLDR            S4, [R0,#0x38]
2FF32C:  VADD.F32        S0, S16, S0
2FF330:  VADD.F32        S2, S18, S2
2FF334:  VADD.F32        S4, S20, S4
2FF338:  VSTR            S0, [R0,#0x30]
2FF33C:  VSTR            S2, [R0,#0x34]
2FF340:  VSTR            S4, [R0,#0x38]
2FF344:  B               loc_2FF34A
2FF346:  VSTR            S0, [R4,#0x10]
2FF34A:  MOVS            R0, #1
2FF34C:  LDRB.W          R1, [R4,#0x3A]
2FF350:  STR.W           R0, [R4,#0x508]
2FF354:  MOVS            R0, #4
2FF356:  BFI.W           R1, R0, #3, #0x1D; CEntity *
2FF35A:  MOV             R0, R4; this
2FF35C:  STRB.W          R1, [R4,#0x3A]
2FF360:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2FF364:  ADD             R0, SP, #0x40+var_38; this
2FF366:  MOV             R1, R4; CVector *
2FF368:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
2FF36C:  LDR.W           R0, [R4,#0x5A0]
2FF370:  CMP             R0, #5
2FF372:  BEQ.W           loc_2FF078
2FF376:  CMP             R0, #9
2FF378:  BNE             loc_2FF382
2FF37A:  MOV             R0, R4; this
2FF37C:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
2FF380:  B               loc_2FF078
2FF382:  MOV             R0, R4; this
2FF384:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
2FF388:  B               loc_2FF078
