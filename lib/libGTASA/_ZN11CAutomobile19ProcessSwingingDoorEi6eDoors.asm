; =========================================================
; Game Engine Function: _ZN11CAutomobile19ProcessSwingingDoorEi6eDoors
; Address            : 0x55907C - 0x5593F8
; =========================================================

55907C:  PUSH            {R4-R7,LR}
55907E:  ADD             R7, SP, #0xC
559080:  PUSH.W          {R8-R11}
559084:  SUB             SP, SP, #4
559086:  VPUSH           {D8}
55908A:  SUB             SP, SP, #0xD8
55908C:  MOV             R4, R0
55908E:  ADDW            R8, R4, #0x5B4
559092:  MOV             R11, R2
559094:  MOV             R5, R1
559096:  MOV             R0, R8
559098:  MOV             R1, R11
55909A:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
55909E:  ADD.W           R5, R4, R5,LSL#2
5590A2:  MOV             R9, R0
5590A4:  LDR.W           R0, [R5,#0x65C]
5590A8:  CMP             R0, #0
5590AA:  BEQ.W           loc_55927A
5590AE:  ORR.W           R1, R9, #2
5590B2:  UXTB            R6, R1
5590B4:  CMP             R6, #3
5590B6:  BNE.W           loc_559288
5590BA:  ADD.W           R1, R0, #0x10
5590BE:  ADD             R0, SP, #0x100+var_70
5590C0:  MOVS            R2, #0
5590C2:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
5590C6:  VLDR            D16, [SP,#0x100+var_40]
5590CA:  CMP             R6, #2
5590CC:  LDR             R0, [SP,#0x100+var_38]
5590CE:  STR             R0, [SP,#0x100+var_78]
5590D0:  VSTR            D16, [SP,#0x100+var_80]
5590D4:  BNE             loc_55911E
5590D6:  MOV             R0, R4; this
5590D8:  BLX             j__ZNK8CVehicle17CanDoorsBeDamagedEv; CVehicle::CanDoorsBeDamaged(void)
5590DC:  CBZ             R0, loc_55911E
5590DE:  ADD.W           R10, SP, #0x100+var_C8
5590E2:  LDR             R1, [R4,#0x14]; CVector *
5590E4:  ADD             R2, SP, #0x100+var_80
5590E6:  MOV             R0, R10; CMatrix *
5590E8:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5590EC:  ADD.W           R0, R11, R11,LSL#1
5590F0:  ADDW            R2, R4, #0x8C8; CVector *
5590F4:  ADDW            R3, R4, #0x8D4; CVector *
5590F8:  MOV             R1, R4; CVehicle *
5590FA:  ADD.W           R0, R4, R0,LSL#3
5590FE:  STR.W           R10, [SP,#0x100+var_100]; CVector *
559102:  ADDW            R0, R0, #0x5CC; this
559106:  BLX             j__ZN5CDoor13ProcessImpactEP8CVehicleR7CVectorS3_S3_; CDoor::ProcessImpact(CVehicle *,CVector &,CVector &,CVector &)
55910A:  CMP             R0, #1
55910C:  BNE             loc_55911E
55910E:  ADD.W           R9, R9, #1
559112:  MOV             R0, R8
559114:  MOV             R1, R11
559116:  UXTB.W          R2, R9
55911A:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55911E:  ORR.W           R0, R9, #2
559122:  UXTB            R0, R0
559124:  CMP             R0, #3
559126:  BNE.W           loc_559274
55912A:  ADDW            R0, R5, #0x65C
55912E:  MOVS            R2, #0
559130:  MOVS            R5, #0
559132:  LDR             R0, [R0]
559134:  ADD.W           R1, R0, #0x10
559138:  ADD             R0, SP, #0x100+var_C8
55913A:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
55913E:  VLDR            D16, [SP,#0x100+var_98]
559142:  CMP.W           R11, #0
559146:  LDR             R0, [SP,#0x100+var_90]
559148:  STR             R0, [SP,#0x100+var_D0]
55914A:  VSTR            D16, [SP,#0x100+var_D8]
55914E:  STRD.W          R5, R5, [SP,#0x100+var_E8]
559152:  STR             R5, [SP,#0x100+var_E0]
559154:  BNE             loc_5591C8
559156:  LDRH.W          R0, [R4,#0x5D4]
55915A:  AND.W           R0, R0, #0xF
55915E:  CMP             R0, #1
559160:  BNE             loc_5591C8
559162:  LDR.W           R0, [R4,#0x5D8]; x
559166:  BLX             sinf
55916A:  VMOV            S2, R0
55916E:  VLDR            S0, =0.1
559172:  LDR             R0, [R4,#0x14]
559174:  VADD.F32        S0, S2, S0
559178:  VLDR            S2, =0.05
55917C:  VLDR            S8, [R4,#0x48]
559180:  VLDR            S4, [R0,#0x14]
559184:  VLDR            S6, [R0,#0x18]
559188:  VLDR            S10, [R4,#0x4C]
55918C:  VLDR            S12, [R4,#0x50]
559190:  VMUL.F32        S0, S0, S2
559194:  VLDR            S2, [R0,#0x10]
559198:  ADD.W           R0, R4, #0x5E0
55919C:  VMUL.F32        S4, S0, S4
5591A0:  VMUL.F32        S2, S2, S0
5591A4:  VMUL.F32        S0, S0, S6
5591A8:  VMUL.F32        S4, S4, S10
5591AC:  VMUL.F32        S2, S2, S8
5591B0:  VMUL.F32        S0, S0, S12
5591B4:  VADD.F32        S2, S2, S4
5591B8:  VADD.F32        S0, S2, S0
5591BC:  VLDR            S2, [R0]
5591C0:  VADD.F32        S0, S2, S0
5591C4:  VSTR            S0, [R0]
5591C8:  ADD             R5, SP, #0x100+var_F4
5591CA:  LDR             R1, [R4,#0x14]; CVector *
5591CC:  ADD             R2, SP, #0x100+var_D8
5591CE:  MOV             R0, R5; CMatrix *
5591D0:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5591D4:  ADD.W           R0, R11, R11,LSL#1
5591D8:  STR             R5, [SP,#0x100+var_100]; CVector *
5591DA:  ADDW            R2, R4, #0x8C8; CVector *
5591DE:  ADDW            R3, R4, #0x8D4; CVector *
5591E2:  ADD.W           R5, R4, R0,LSL#3
5591E6:  MOV             R1, R4; CVehicle *
5591E8:  ADDW            R0, R5, #0x5CC; this
5591EC:  BLX             j__ZN5CDoor7ProcessEP8CVehicleR7CVectorS3_S3_; CDoor::Process(CVehicle *,CVector &,CVector &,CVector &)
5591F0:  CMP             R0, #1
5591F2:  BNE             loc_559210
5591F4:  SUB.W           R0, R9, #1
5591F8:  MOV             R1, R11
5591FA:  UXTB            R2, R0
5591FC:  MOV             R0, R8
5591FE:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
559202:  ADD.W           R0, R4, #0x13C; this
559206:  ADD.W           R1, R11, #0x54 ; 'T'; int
55920A:  MOVS            R2, #0; float
55920C:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
559210:  LDRB.W          R0, [R5,#0x5D6]
559214:  ADD             R2, SP, #0x100+var_E8
559216:  LDR.W           R1, [R5,#0x5D8]
55921A:  ADD             R3, SP, #0x100+var_E8
55921C:  ADD             R5, SP, #0x100+var_C8
55921E:  STR.W           R1, [R2,R0,LSL#2]
559222:  MOV             R0, R5; this
559224:  LDM             R3, {R1-R3}; float
559226:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
55922A:  VLDR            S0, [SP,#0x100+var_98]
55922E:  MOV             R0, R5; this
559230:  VLDR            S6, [SP,#0x100+var_D8]
559234:  VLDR            S2, [SP,#0x100+var_98+4]
559238:  VLDR            S8, [SP,#0x100+var_D8+4]
55923C:  VADD.F32        S0, S6, S0
559240:  VLDR            S4, [SP,#0x100+var_90]
559244:  VLDR            S10, [SP,#0x100+var_D0]
559248:  VADD.F32        S2, S8, S2
55924C:  VADD.F32        S4, S10, S4
559250:  VSTR            S0, [SP,#0x100+var_98]
559254:  VSTR            S2, [SP,#0x100+var_98+4]
559258:  VSTR            S4, [SP,#0x100+var_90]
55925C:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
559260:  CMP.W           R11, #0
559264:  ITT EQ
559266:  LDRBEQ.W        R0, [R4,#0x5D7]
55926A:  CMPEQ           R0, #1
55926C:  BEQ             loc_5592BE
55926E:  ADD             R0, SP, #0x100+var_C8; this
559270:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
559274:  ADD             R0, SP, #0x100+var_70; this
559276:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55927A:  ADD             SP, SP, #0xD8
55927C:  VPOP            {D8}
559280:  ADD             SP, SP, #4
559282:  POP.W           {R8-R11}
559286:  POP             {R4-R7,PC}
559288:  UXTB.W          R1, R9
55928C:  CMP             R1, #2
55928E:  BHI             loc_55927A
559290:  CMP.W           R11, #1
559294:  ITTTT GE
559296:  VLDRGE          S0, [R4,#0xDC]
55929A:  VLDRGE          S2, =100.0
55929E:  VCMPEGE.F32     S0, S2
5592A2:  VMRSGE          APSR_nzcv, FPSCR
5592A6:  BLE             loc_55927A
5592A8:  LDRB.W          R1, [R4,#0x3A]
5592AC:  MOVS            R2, #3
5592AE:  CMP.W           R2, R1,LSR#3
5592B2:  IT NE
5592B4:  MOVSNE.W        R1, R1,LSR#3
5592B8:  BEQ.W           loc_5590BA
5592BC:  B               loc_55927A
5592BE:  LDR             R0, [R4,#0x14]
5592C0:  VLDR            S0, [R4,#0x48]
5592C4:  VLDR            S2, [R4,#0x4C]
5592C8:  VLDR            S6, [R0,#0x10]
5592CC:  VLDR            S8, [R0,#0x14]
5592D0:  VMUL.F32        S0, S0, S6
5592D4:  VLDR            S4, [R4,#0x50]
5592D8:  VMUL.F32        S2, S2, S8
5592DC:  VLDR            S10, [R0,#0x18]
5592E0:  VLDR            S16, =0.4
5592E4:  VMUL.F32        S4, S4, S10
5592E8:  VADD.F32        S0, S0, S2
5592EC:  VADD.F32        S0, S0, S4
5592F0:  VCMPE.F32       S0, S16
5592F4:  VMRS            APSR_nzcv, FPSCR
5592F8:  BLE             loc_55926E
5592FA:  MOV             R0, R4; this
5592FC:  MOVS            R1, #0x10; int
5592FE:  MOVS            R2, #2; unsigned int
559300:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
559304:  MOV             R5, R0
559306:  ADD.W           R0, R4, #0x13C; this
55930A:  MOVS            R1, #0x5D ; ']'; int
55930C:  MOV             R2, R5; CEntity *
55930E:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEiP7CEntity; CAEVehicleAudioEntity::AddAudioEvent(int,CEntity *)
559312:  LDR.W           R1, [R4,#0x69C]
559316:  MOV             R0, R4
559318:  MOVS            R2, #0
55931A:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
55931E:  MOV             R0, R8
559320:  MOVS            R1, #0
559322:  MOVS            R2, #4
559324:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
559328:  CMP             R5, #0
55932A:  BEQ             loc_55926E
55932C:  BLX             rand
559330:  LDR             R1, [R4,#0x14]
559332:  TST.W           R0, #1
559336:  VLDR            S4, [R4,#0x48]
55933A:  VLDR            S2, [R4,#0x4C]
55933E:  VLDR            S0, [R4,#0x50]
559342:  VMUL.F32        S4, S4, S16
559346:  VLDR            S6, =0.1
55934A:  VMUL.F32        S2, S2, S16
55934E:  VLDR            S8, [R1,#4]
559352:  VMUL.F32        S0, S0, S16
559356:  VLDR            S10, [R1,#8]
55935A:  VLDR            S12, [R1]
55935E:  VMUL.F32        S8, S8, S6
559362:  VMUL.F32        S10, S10, S6
559366:  VMUL.F32        S6, S12, S6
55936A:  BNE             loc_55937A
55936C:  VSUB.F32        S0, S0, S10
559370:  VSUB.F32        S2, S2, S8
559374:  VSUB.F32        S4, S4, S6
559378:  B               loc_559386
55937A:  VADD.F32        S0, S0, S10
55937E:  VADD.F32        S2, S2, S8
559382:  VADD.F32        S4, S4, S6
559386:  VMOV.F32        S6, #0.5
55938A:  VLDR            S10, [R1,#0x24]
55938E:  VLDR            S12, [R1,#0x28]
559392:  VLDR            S8, [R1,#0x20]
559396:  VMUL.F32        S12, S12, S6
55939A:  VMUL.F32        S10, S10, S6
55939E:  VMUL.F32        S6, S8, S6
5593A2:  VADD.F32        S0, S0, S12
5593A6:  VADD.F32        S2, S2, S10
5593AA:  VADD.F32        S4, S4, S6
5593AE:  VMOV.F32        S6, #10.0
5593B2:  VSTR            S4, [R5,#0x48]
5593B6:  VSTR            S2, [R5,#0x4C]
5593BA:  VSTR            S0, [R5,#0x50]
5593BE:  LDR             R0, [R4,#0x14]
5593C0:  VLDR            S0, [R0,#0x20]
5593C4:  VLDR            S2, [R0,#0x24]
5593C8:  VLDR            S4, [R0,#0x28]
5593CC:  VMUL.F32        S0, S0, S6
5593D0:  VMUL.F32        S2, S2, S6
5593D4:  LDRD.W          R6, R4, [R0,#0x10]
5593D8:  VMUL.F32        S4, S4, S6
5593DC:  LDR             R0, [R0,#0x18]
5593DE:  STRD.W          R6, R4, [SP,#0x100+var_100]
5593E2:  STR             R0, [SP,#0x100+var_F8]
5593E4:  MOV             R0, R5
5593E6:  VMOV            R1, S0
5593EA:  VMOV            R2, S2
5593EE:  VMOV            R3, S4
5593F2:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5593F6:  B               loc_55926E
