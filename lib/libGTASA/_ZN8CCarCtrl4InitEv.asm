; =========================================================
; Game Engine Function: _ZN8CCarCtrl4InitEv
; Address            : 0x2E7310 - 0x2E7450
; =========================================================

2E7310:  PUSH            {R4-R7,LR}
2E7312:  ADD             R7, SP, #0xC
2E7314:  PUSH.W          {R8,R9,R11}
2E7318:  LDR             R0, =(_ZN8CCarCtrl13NumRandomCarsE_ptr - 0x2E7320)
2E731A:  LDR             R5, =(_ZN8CCarCtrl24LastTimeFireTruckCreatedE_ptr - 0x2E7324)
2E731C:  ADD             R0, PC; _ZN8CCarCtrl13NumRandomCarsE_ptr
2E731E:  LDR             R3, =(_ZN8CCarCtrl24LastTimeAmbulanceCreatedE_ptr - 0x2E732A)
2E7320:  ADD             R5, PC; _ZN8CCarCtrl24LastTimeFireTruckCreatedE_ptr
2E7322:  LDR             R1, =(_ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr - 0x2E733A)
2E7324:  LDR             R0, [R0]; CCarCtrl::NumRandomCars ...
2E7326:  ADD             R3, PC; _ZN8CCarCtrl24LastTimeAmbulanceCreatedE_ptr
2E7328:  LDR             R4, [R5]; CCarCtrl::LastTimeFireTruckCreated ...
2E732A:  MOVS            R5, #0
2E732C:  LDR.W           R9, [R3]; CCarCtrl::LastTimeAmbulanceCreated ...
2E7330:  MOV.W           R3, #0x3F800000
2E7334:  STR             R5, [R0]; CCarCtrl::NumRandomCars
2E7336:  ADD             R1, PC; _ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr
2E7338:  LDR             R0, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x2E7340)
2E733A:  LDR             R2, =(_ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr - 0x2E734A)
2E733C:  ADD             R0, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
2E733E:  LDR.W           LR, =(_ZN8CCarCtrl20NumPermanentVehiclesE_ptr - 0x2E734E)
2E7342:  LDR.W           R12, =(_ZN8CCarCtrl13NumParkedCarsE_ptr - 0x2E7350)
2E7346:  ADD             R2, PC; _ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr
2E7348:  LDR             R0, [R0]; CCarCtrl::CarDensityMultiplier ...
2E734A:  ADD             LR, PC; _ZN8CCarCtrl20NumPermanentVehiclesE_ptr
2E734C:  ADD             R12, PC; _ZN8CCarCtrl13NumParkedCarsE_ptr
2E734E:  LDR             R6, [R1]; CCarCtrl::NumAmbulancesOnDuty ...
2E7350:  LDR.W           R8, [R2]; CCarCtrl::NumFireTrucksOnDuty ...
2E7354:  STR             R3, [R0]; CCarCtrl::CarDensityMultiplier
2E7356:  LDR             R0, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x2E7360)
2E7358:  LDR.W           R1, [LR]; CCarCtrl::NumPermanentVehicles ...
2E735C:  ADD             R0, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
2E735E:  LDR.W           R2, [R12]; CCarCtrl::NumParkedCars ...
2E7362:  STR             R5, [R6]; CCarCtrl::NumAmbulancesOnDuty
2E7364:  LDR             R0, [R0]; CCarCtrl::NumLawEnforcerCars ...
2E7366:  STR             R5, [R2]; CCarCtrl::NumParkedCars
2E7368:  STR             R5, [R1]; CCarCtrl::NumPermanentVehicles
2E736A:  STR             R5, [R0]; CCarCtrl::NumLawEnforcerCars
2E736C:  LDR             R0, =(_ZN8CCarCtrl14NumMissionCarsE_ptr - 0x2E7376)
2E736E:  STR.W           R5, [R8]; CCarCtrl::NumFireTrucksOnDuty
2E7372:  ADD             R0, PC; _ZN8CCarCtrl14NumMissionCarsE_ptr
2E7374:  STR.W           R5, [R9]; CCarCtrl::LastTimeAmbulanceCreated
2E7378:  STR             R5, [R4]; CCarCtrl::LastTimeFireTruckCreated
2E737A:  LDR             R0, [R0]; CCarCtrl::NumMissionCars ...
2E737C:  STR             R5, [R0]; CCarCtrl::NumMissionCars
2E737E:  BLX             rand
2E7382:  VMOV            S0, R0
2E7386:  VLDR            S2, =4.6566e-10
2E738A:  LDR             R3, =(apCarsToKeep_ptr - 0x2E7398)
2E738C:  VCVT.F32.S32    S0, S0
2E7390:  LDR             R0, =(_ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr - 0x2E739C)
2E7392:  LDR             R2, =(_ZN8CCarCtrl22CountDownToCarsAtStartE_ptr - 0x2E73A0)
2E7394:  ADD             R3, PC; apCarsToKeep_ptr
2E7396:  LDR             R4, =(_ZN11CPopulation16m_LoadedGangCarsE_ptr - 0x2E73A4)
2E7398:  ADD             R0, PC; _ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr
2E739A:  LDR             R1, =(_ZN8CCarCtrl26bCarsGeneratedAroundCameraE_ptr - 0x2E73A8)
2E739C:  ADD             R2, PC; _ZN8CCarCtrl22CountDownToCarsAtStartE_ptr
2E739E:  LDR             R6, =(_ZN8CCarCtrl29TimeNextMadDriverChaseCreatedE_ptr - 0x2E73AA)
2E73A0:  ADD             R4, PC; _ZN11CPopulation16m_LoadedGangCarsE_ptr
2E73A2:  LDR             R3, [R3]; apCarsToKeep
2E73A4:  ADD             R1, PC; _ZN8CCarCtrl26bCarsGeneratedAroundCameraE_ptr
2E73A6:  ADD             R6, PC; _ZN8CCarCtrl29TimeNextMadDriverChaseCreatedE_ptr
2E73A8:  LDR             R0, [R0]; CCarCtrl::bAllowEmergencyServicesToBeCreated ...
2E73AA:  VMUL.F32        S0, S0, S2
2E73AE:  VLDR            S2, =600.0
2E73B2:  LDR             R2, [R2]; CCarCtrl::CountDownToCarsAtStart ...
2E73B4:  LDR             R4, [R4]; CPopulation::m_LoadedGangCars ...
2E73B6:  STRD.W          R5, R5, [R3]
2E73BA:  MOVS            R3, #1
2E73BC:  LDR             R1, [R1]; CCarCtrl::bCarsGeneratedAroundCamera ...
2E73BE:  LDR             R6, [R6]; CCarCtrl::TimeNextMadDriverChaseCreated ...
2E73C0:  STRB            R3, [R0]; CCarCtrl::bAllowEmergencyServicesToBeCreated
2E73C2:  MOVS            R0, #2
2E73C4:  VMUL.F32        S0, S0, S2
2E73C8:  STRB            R0, [R2]; CCarCtrl::CountDownToCarsAtStart
2E73CA:  MOV             R0, R4; this
2E73CC:  STRB            R5, [R1]; CCarCtrl::bCarsGeneratedAroundCamera
2E73CE:  VADD.F32        S0, S0, S2
2E73D2:  VSTR            S0, [R6]
2E73D6:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E73DA:  ADD.W           R0, R4, #0x2E ; '.'; this
2E73DE:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E73E2:  ADD.W           R0, R4, #0x5C ; '\'; this
2E73E6:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E73EA:  ADD.W           R0, R4, #0x8A; this
2E73EE:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E73F2:  ADD.W           R0, R4, #0xB8; this
2E73F6:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E73FA:  ADD.W           R0, R4, #0xE6; this
2E73FE:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E7402:  ADD.W           R0, R4, #0x114; this
2E7406:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E740A:  ADD.W           R0, R4, #0x142; this
2E740E:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E7412:  ADD.W           R0, R4, #0x170; this
2E7416:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E741A:  ADD.W           R0, R4, #0x19E; this
2E741E:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E7422:  ADD.W           R0, R4, #0x1CC; this
2E7426:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E742A:  LDR             R0, =(_ZN11CPopulation23m_AppropriateLoadedCarsE_ptr - 0x2E7430)
2E742C:  ADD             R0, PC; _ZN11CPopulation23m_AppropriateLoadedCarsE_ptr
2E742E:  LDR             R0, [R0]; this
2E7430:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E7434:  LDR             R0, =(_ZN11CPopulation25m_InAppropriateLoadedCarsE_ptr - 0x2E743A)
2E7436:  ADD             R0, PC; _ZN11CPopulation25m_InAppropriateLoadedCarsE_ptr
2E7438:  LDR             R0, [R0]; this
2E743A:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
2E743E:  LDR             R0, =(_ZN11CPopulation13m_LoadedBoatsE_ptr - 0x2E7444)
2E7440:  ADD             R0, PC; _ZN11CPopulation13m_LoadedBoatsE_ptr
2E7442:  LDR             R0, [R0]; this
2E7444:  POP.W           {R8,R9,R11}
2E7448:  POP.W           {R4-R7,LR}
2E744C:  B.W             sub_19AE6C
