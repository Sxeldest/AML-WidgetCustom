; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed14ControlSubTaskEP4CPed
; Address            : 0x5111B4 - 0x51157A
; =========================================================

5111B4:  PUSH            {R4-R7,LR}
5111B6:  ADD             R7, SP, #0xC
5111B8:  PUSH.W          {R8-R11}
5111BC:  SUB             SP, SP, #0x2C
5111BE:  MOV             R9, R0
5111C0:  MOV             R6, R1
5111C2:  LDR.W           R4, [R9,#8]
5111C6:  LDR             R0, [R4]
5111C8:  LDR             R1, [R0,#0x14]
5111CA:  MOV             R0, R4
5111CC:  BLX             R1
5111CE:  MOVW            R1, #0x2C6
5111D2:  CMP             R0, R1
5111D4:  BGT             loc_51120C
5111D6:  MOVW            R1, #0x2C5
5111DA:  CMP             R0, R1
5111DC:  BEQ.W           loc_5112E8
5111E0:  MOVW            R1, #0x2C6
5111E4:  CMP             R0, R1
5111E6:  BNE.W           loc_511524
5111EA:  LDRB.W          R0, [R6,#0x485]
5111EE:  LSLS            R0, R0, #0x1F
5111F0:  BEQ.W           loc_511524
5111F4:  LDR.W           R0, [R9,#0x18]
5111F8:  CMP             R0, #0
5111FA:  ITT NE
5111FC:  LDRNE           R0, [R0]
5111FE:  CMPNE           R0, #0
511200:  BNE.W           loc_5114A2
511204:  MOVS            R0, #0
511206:  STR.W           R0, [R9,#0x18]
51120A:  B               loc_51130A
51120C:  MOVW            R1, #0x387
511210:  CMP             R0, R1
511212:  BEQ.W           loc_511324
511216:  MOVW            R1, #0x2C7
51121A:  CMP             R0, R1
51121C:  BNE.W           loc_511524
511220:  LDRB.W          R0, [R6,#0x485]
511224:  LSLS            R0, R0, #0x1F
511226:  BEQ.W           loc_511524
51122A:  LDR             R0, [R6,#0x14]
51122C:  MOV.W           R8, #0
511230:  STR.W           R8, [R9,#0x18]
511234:  ADD.W           R5, R0, #0x30 ; '0'
511238:  CMP             R0, #0
51123A:  IT EQ
51123C:  ADDEQ           R5, R6, #4
51123E:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
511242:  MOV             R1, R5; CVector *
511244:  MOVS            R2, #1; bool
511246:  MOVS            R6, #1
511248:  BLX             j__ZN16CAccidentManager22GetNearestFreeAccidentERK7CVectorb; CAccidentManager::GetNearestFreeAccident(CVector const&,bool)
51124C:  CMP             R0, #0
51124E:  STR.W           R0, [R9,#0x18]
511252:  BEQ.W           loc_511524
511256:  STRB            R6, [R0,#4]
511258:  ADD             R1, SP, #0x48+var_28
51125A:  LDR.W           R0, [R9,#0x18]
51125E:  MOVS            R2, #0x29 ; ')'
511260:  MOVS            R3, #0
511262:  LDR             R4, [R0]
511264:  MOV             R0, R4; this
511266:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
51126A:  ADD             R1, SP, #0x48+var_34
51126C:  MOV             R0, R4; this
51126E:  MOVS            R2, #0x33 ; '3'
511270:  MOVS            R3, #0
511272:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
511276:  VLDR            S0, [SP,#0x48+var_34]
51127A:  VMOV.F32        S12, #0.5
51127E:  VLDR            S6, [SP,#0x48+var_28]
511282:  MOVS            R0, #off_3C; this
511284:  VLDR            S2, [SP,#0x48+var_30]
511288:  VLDR            S8, [SP,#0x48+var_24]
51128C:  VADD.F32        S0, S6, S0
511290:  VLDR            S4, [SP,#0x48+var_2C]
511294:  VLDR            S10, [SP,#0x48+var_20]
511298:  VADD.F32        S2, S8, S2
51129C:  VADD.F32        S4, S10, S4
5112A0:  VMUL.F32        S0, S0, S12
5112A4:  VMUL.F32        S2, S2, S12
5112A8:  VMUL.F32        S4, S4, S12
5112AC:  VSTR            S0, [R9,#0x1C]
5112B0:  VSTR            S2, [R9,#0x20]
5112B4:  VSTR            S4, [R9,#0x24]
5112B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5112BC:  MOVS            R2, #0
5112BE:  MOV             R4, R0
5112C0:  LDR.W           R1, [R9,#0xC]; CVehicle *
5112C4:  MOV.W           R3, #0xFFFFFFFF
5112C8:  MOVS            R0, #2
5112CA:  MOVT            R2, #0xBF80
5112CE:  STRD.W          R8, R3, [SP,#0x48+var_48]; int
5112D2:  MOVS            R3, #0
5112D4:  STRD.W          R2, R0, [SP,#0x48+var_40]; float
5112D8:  ADD.W           R2, R9, #0x1C; CVector *
5112DC:  MOVT            R3, #0x41F0; float
5112E0:  MOV             R0, R4; this
5112E2:  BLX             j__ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi; CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *,CVector const&,float,int,int,float,int)
5112E6:  B               loc_511524
5112E8:  LDRB.W          R0, [R6,#0x485]
5112EC:  LSLS            R0, R0, #0x1F
5112EE:  BEQ.W           loc_511524
5112F2:  LDRB.W          R0, [R9,#0x14]
5112F6:  CMP             R0, #0
5112F8:  BEQ.W           loc_51151E
5112FC:  LDRD.W          R0, R1, [R9,#0xC]; CPed *
511300:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
511304:  CMP             R0, #1
511306:  BNE.W           loc_511524
51130A:  MOVS            R0, #dword_24; this
51130C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511310:  LDR.W           R1, [R9,#0xC]; CVehicle *
511314:  MOVS            R3, #0x41F00000; float
51131A:  MOVS            R2, #2; int
51131C:  MOV             R4, R0
51131E:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
511322:  B               loc_511524
511324:  LDR.W           R0, [R9,#0x18]
511328:  CMP             R0, #0
51132A:  ITT NE
51132C:  LDRNE           R0, [R0]
51132E:  CMPNE           R0, #0
511330:  BEQ.W           loc_511490
511334:  LDR.W           R11, [R9,#8]
511338:  LDR.W           R0, [R11,#0xC]
51133C:  CMP             R0, #4
51133E:  BEQ.W           loc_511524
511342:  LDR             R0, [R6,#0x14]
511344:  VMOV.F32        S4, #25.0
511348:  VLDR            S0, [R9,#0x1C]
51134C:  ADD.W           R1, R0, #0x30 ; '0'
511350:  CMP             R0, #0
511352:  IT EQ
511354:  ADDEQ           R1, R6, #4
511356:  VLDR            D16, [R9,#0x20]
51135A:  VLDR            S2, [R1]
51135E:  VLDR            D17, [R1,#4]
511362:  VSUB.F32        S0, S0, S2
511366:  VSUB.F32        D16, D16, D17
51136A:  VMUL.F32        D1, D16, D16
51136E:  VMUL.F32        S0, S0, S0
511372:  VADD.F32        S0, S0, S2
511376:  VADD.F32        S0, S0, S3
51137A:  VCMPE.F32       S0, S4
51137E:  VMRS            APSR_nzcv, FPSCR
511382:  BGE.W           loc_511524
511386:  ADD.W           R10, R9, #0x20 ; ' '
51138A:  ADD.W           R8, R9, #0x1C
51138E:  MOVS            R5, #0x38 ; '8'
511390:  LDR.W           R0, [R6,#0x440]
511394:  LDR.W           R0, [R0,R5,LSL#2]; this
511398:  CBZ             R0, loc_5113A8
51139A:  MOV             R1, R8; CEntity *
51139C:  MOV.W           R2, #0x3E000000; CVector *
5113A0:  BLX             j__ZN20CPedGeometryAnalyser22IsEntityBlockingTargetEP7CEntityRK7CVectorf; CPedGeometryAnalyser::IsEntityBlockingTarget(CEntity *,CVector const&,float)
5113A4:  CMP             R0, #0
5113A6:  BNE             loc_511490
5113A8:  ADDS            R0, R5, #1
5113AA:  SUB.W           R1, R5, #0x38 ; '8'
5113AE:  CMP             R1, #0xF
5113B0:  MOV             R5, R0
5113B2:  BLT             loc_511390
5113B4:  LDR.W           R0, [R9,#0x18]
5113B8:  ADD             R1, SP, #0x48+var_28
5113BA:  MOVS            R2, #0x29 ; ')'
5113BC:  MOVS            R3, #0
5113BE:  LDR             R6, [R0]
5113C0:  MOV             R0, R6; this
5113C2:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5113C6:  ADD             R1, SP, #0x48+var_34
5113C8:  MOV             R0, R6; this
5113CA:  MOVS            R2, #0x33 ; '3'
5113CC:  MOVS            R3, #0
5113CE:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5113D2:  VLDR            S0, [SP,#0x48+var_34]
5113D6:  VMOV.F32        S12, #0.5
5113DA:  VLDR            S6, [SP,#0x48+var_28]
5113DE:  VLDR            S2, [SP,#0x48+var_30]
5113E2:  VLDR            S8, [SP,#0x48+var_24]
5113E6:  VADD.F32        S0, S6, S0
5113EA:  VLDR            S4, [SP,#0x48+var_2C]
5113EE:  VLDR            S10, [SP,#0x48+var_20]
5113F2:  VADD.F32        S2, S8, S2
5113F6:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x511400)
5113F8:  VADD.F32        S4, S10, S4
5113FC:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
5113FE:  VMUL.F32        S6, S0, S12
511402:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
511404:  VMUL.F32        S2, S2, S12
511408:  VLDR            S0, [R0]
51140C:  MOVS            R0, #4
51140E:  VMUL.F32        S4, S4, S12
511412:  VSTR            S6, [R9,#0x1C]
511416:  VSTR            S2, [R9,#0x20]
51141A:  VSTR            S4, [R9,#0x24]
51141E:  VLDR            S2, [R11,#0x10]
511422:  STR.W           R0, [R11,#0xC]
511426:  VLDR            S4, [R9,#0x1C]
51142A:  VCMP.F32        S2, S4
51142E:  VMRS            APSR_nzcv, FPSCR
511432:  BNE             loc_511466
511434:  VLDR            S2, [R10]
511438:  VLDR            S4, [R11,#0x14]
51143C:  VCMP.F32        S4, S2
511440:  VMRS            APSR_nzcv, FPSCR
511444:  BNE             loc_511466
511446:  VLDR            S2, [R9,#0x24]
51144A:  VLDR            S4, [R11,#0x18]
51144E:  VCMP.F32        S4, S2
511452:  VMRS            APSR_nzcv, FPSCR
511456:  BNE             loc_511466
511458:  VLDR            S2, [R11,#0x20]
51145C:  VCMP.F32        S2, S0
511460:  VMRS            APSR_nzcv, FPSCR
511464:  BEQ             loc_511524
511466:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x511470)
511468:  VLDR            D16, [R8]
51146C:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
51146E:  LDRB.W          R2, [R11,#0x24]
511472:  LDR.W           R1, [R8,#8]
511476:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
511478:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius
51147A:  STRD.W          R1, R0, [R11,#0x18]
51147E:  ORR.W           R0, R2, #4
511482:  VSTR            S0, [R11,#0x20]
511486:  STRB.W          R0, [R11,#0x24]
51148A:  VSTR            D16, [R11,#0x10]
51148E:  B               loc_511524
511490:  MOV             R0, R9; this
511492:  MOV             R1, R6; CPed *
511494:  MOVS            R2, #0; CAccident *
511496:  ADD             SP, SP, #0x2C ; ','
511498:  POP.W           {R8-R11}
51149C:  POP.W           {R4-R7,LR}
5114A0:  B               _ZN32CTaskComplexMedicTreatInjuredPed30CreateDealWithNextAccidentTaskEP4CPedP9CAccident; CTaskComplexMedicTreatInjuredPed::CreateDealWithNextAccidentTask(CPed *,CAccident *)
5114A2:  LDR.W           R0, [R9,#0xC]
5114A6:  LDR             R1, [R0,#0x14]
5114A8:  VLDR            S0, [R9,#0x1C]
5114AC:  ADD.W           R2, R1, #0x30 ; '0'
5114B0:  CMP             R1, #0
5114B2:  IT EQ
5114B4:  ADDEQ           R2, R0, #4
5114B6:  VLDR            D16, [R9,#0x20]
5114BA:  VLDR            S2, [R2]
5114BE:  VLDR            D17, [R2,#4]
5114C2:  VSUB.F32        S0, S2, S0
5114C6:  VSUB.F32        D16, D17, D16
5114CA:  VMUL.F32        D1, D16, D16
5114CE:  VMUL.F32        S0, S0, S0
5114D2:  VADD.F32        S0, S0, S2
5114D6:  VADD.F32        S0, S0, S3
5114DA:  VLDR            S2, =100.0
5114DE:  VCMPE.F32       S0, S2
5114E2:  VMRS            APSR_nzcv, FPSCR
5114E6:  BGE             loc_511524
5114E8:  MOVS            R5, #0
5114EA:  MOV             R0, R6; this
5114EC:  MOVS            R1, #0xE7; unsigned __int16
5114EE:  MOVS            R2, #0; unsigned int
5114F0:  MOV.W           R3, #0x3F800000; float
5114F4:  STRD.W          R5, R5, [SP,#0x48+var_48]; unsigned __int8
5114F8:  STR             R5, [SP,#0x48+var_40]; unsigned __int8
5114FA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5114FE:  MOVS            R6, #1
511500:  MOVS            R0, #dword_34; this
511502:  STRB.W          R6, [R9,#0x28]
511506:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51150A:  LDR.W           R1, [R9,#0xC]; CVehicle *
51150E:  MOVS            R2, #0; int
511510:  MOVS            R3, #0; int
511512:  MOV             R4, R0
511514:  STRD.W          R6, R5, [SP,#0x48+var_48]; bool
511518:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
51151C:  B               loc_511524
51151E:  LDRB.W          R0, [R9,#0x28]
511522:  CBZ             R0, loc_51152E
511524:  MOV             R0, R4
511526:  ADD             SP, SP, #0x2C ; ','
511528:  POP.W           {R8-R11}
51152C:  POP             {R4-R7,PC}
51152E:  LDR.W           R0, [R9,#0x10]
511532:  CMP             R0, #0
511534:  BEQ             loc_511524
511536:  LDR.W           R0, [R0,#0x440]
51153A:  ADDS            R0, #4; this
51153C:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
511540:  MOV             R8, R0
511542:  CMP.W           R8, #0
511546:  BEQ             loc_511524
511548:  LDR.W           R0, [R8]
51154C:  LDR             R1, [R0,#0x14]
51154E:  MOV             R0, R8
511550:  BLX             R1
511552:  CMP             R0, #0x64 ; 'd'
511554:  BNE             loc_511524
511556:  LDR.W           R0, [R8,#0x18]
51155A:  CMP             R0, #0
51155C:  ITT NE
51155E:  LDRNE           R0, [R0]
511560:  CMPNE           R0, #0
511562:  BEQ             loc_511524
511564:  LDR.W           R0, [R9,#0xC]
511568:  VLDR            D16, [R8,#0x1C]
51156C:  LDR.W           R1, [R8,#0x24]
511570:  STR.W           R1, [R9,#0x24]
511574:  VSTR            D16, [R9,#0x1C]
511578:  B               loc_5114A6
