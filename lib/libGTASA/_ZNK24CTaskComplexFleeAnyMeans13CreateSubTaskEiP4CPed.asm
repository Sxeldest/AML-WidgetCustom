; =========================================================
; Game Engine Function: _ZNK24CTaskComplexFleeAnyMeans13CreateSubTaskEiP4CPed
; Address            : 0x5145A0 - 0x514754
; =========================================================

5145A0:  PUSH            {R4-R7,LR}
5145A2:  ADD             R7, SP, #0xC
5145A4:  PUSH.W          {R8-R11}
5145A8:  SUB             SP, SP, #0x1C; float
5145AA:  MOV             R6, R2
5145AC:  MOV             R5, R0
5145AE:  MOVS            R4, #0
5145B0:  CMP.W           R1, #0x384
5145B4:  BLE             loc_514632
5145B6:  MOVW            R0, #0x385
5145BA:  CMP             R1, R0
5145BC:  BEQ             loc_514666
5145BE:  CMP.W           R1, #0x390
5145C2:  BEQ             loc_5146BE
5145C4:  CMP.W           R1, #0x3A0
5145C8:  BNE.W           loc_51474A
5145CC:  MOVS            R0, #dword_54; this
5145CE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5145D2:  LDR.W           R10, [R5,#0xC]
5145D6:  MOV             R4, R0
5145D8:  LDRD.W          R6, R11, [R5,#0x1C]
5145DC:  LDR             R0, [R5,#0x44]
5145DE:  STR             R0, [SP,#0x38+var_20]
5145E0:  LDR             R0, [R5,#0x48]
5145E2:  STR             R0, [SP,#0x38+var_24]
5145E4:  MOV             R0, R4; this
5145E6:  LDRD.W          R8, R9, [R5,#0x28]
5145EA:  LDRB.W          R5, [R5,#0x24]
5145EE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5145F2:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514600)
5145F4:  MOVS            R1, #7
5145F6:  STRB.W          R5, [R4,#0x24]
5145FA:  MOV             R5, R4
5145FC:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
5145FE:  STR.W           R8, [R4,#0x28]
514602:  STRD.W          R6, R11, [R4,#0x1C]
514606:  MOVS            R6, #0
514608:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
51460A:  CMP.W           R10, #0
51460E:  STR.W           R9, [R4,#0x2C]
514612:  STR             R1, [R4,#0x30]
514614:  ADD.W           R0, R0, #8
514618:  STRH            R6, [R4,#0x3C]
51461A:  STRD.W          R6, R6, [R4,#0x34]
51461E:  STR             R0, [R4]
514620:  STR.W           R10, [R5,#0xC]!
514624:  BEQ             loc_514722
514626:  MOV             R0, R10; this
514628:  MOV             R1, R5; CEntity **
51462A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51462E:  LDR             R0, [R5]
514630:  B               loc_514724
514632:  MOVW            R0, #0x2BE
514636:  CMP             R1, R0
514638:  BEQ             loc_514712
51463A:  CMP.W           R1, #0x2D4
51463E:  BNE.W           loc_51474A
514642:  MOVS            R0, #word_2C; this
514644:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514648:  MOV             R4, R0
51464A:  MOVS            R0, #0
51464C:  LDR.W           R1, [R6,#0x590]; CVehicle *
514650:  MOVT            R0, #0x4220
514654:  MOVS            R2, #3
514656:  MOVS            R3, #1; int
514658:  STRD.W          R2, R0, [SP,#0x38+var_38]; int
51465C:  MOV             R0, R4; this
51465E:  MOVS            R2, #0; CEntity *
514660:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
514664:  B               loc_51474A
514666:  MOVS            R0, #dword_38; this
514668:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51466C:  MOV             R4, R0
51466E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x514676)
514670:  LDR             R3, [R5,#0x50]
514672:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
514674:  VLDR            S0, =0.35
514678:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
51467A:  LDRSH.W         R1, [R3,#0x26]
51467E:  LDR.W           R0, [R0,R1,LSL#2]
514682:  LDR             R1, =(_ZN27CTaskComplexGoToPointAiming20ms_fSlowDownDistanceE_ptr - 0x51468A)
514684:  LDR             R0, [R0,#0x2C]
514686:  ADD             R1, PC; _ZN27CTaskComplexGoToPointAiming20ms_fSlowDownDistanceE_ptr
514688:  LDR             R1, [R1]; CTaskComplexGoToPointAiming::ms_fSlowDownDistance ...
51468A:  VLDR            S2, [R0,#0x24]
51468E:  LDR             R0, [R3,#0x14]
514690:  VADD.F32        S0, S2, S0
514694:  VLDR            S2, [R1]
514698:  MOVS            R1, #0
51469A:  ADD.W           R2, R0, #0x30 ; '0'
51469E:  CMP             R0, #0
5146A0:  VSTR            S2, [SP,#0x38+var_28]
5146A4:  STRD.W          R1, R1, [SP,#0x38+var_38]
5146A8:  MOV             R0, R4
5146AA:  STR             R1, [SP,#0x38+var_30]
5146AC:  MOV.W           R1, #6
5146B0:  VSTR            S0, [SP,#0x38+var_2C]
5146B4:  IT EQ
5146B6:  ADDEQ           R2, R3, #4
5146B8:  BLX             j__ZN29CTaskComplexGoToPointShootingC2EiRK7CVectorP7CEntityS0_ff; CTaskComplexGoToPointShooting::CTaskComplexGoToPointShooting(int,CVector const&,CEntity *,CVector,float,float)
5146BC:  B               loc_51474A
5146BE:  MOVS            R0, #word_28; this
5146C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5146C4:  MOV             R4, R0
5146C6:  BLX             rand
5146CA:  UXTH            R0, R0
5146CC:  VLDR            S2, =0.000015259
5146D0:  VMOV            S0, R0
5146D4:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x5146E4)
5146D6:  VMOV.F32        S4, #8.0
5146DA:  MOVS            R1, #7; int
5146DC:  VCVT.F32.S32    S0, S0
5146E0:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
5146E2:  MOVS            R3, #0; bool
5146E4:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
5146E6:  VMUL.F32        S0, S0, S2
5146EA:  VLDR            S2, [R0]
5146EE:  VMUL.F32        S0, S0, S4
5146F2:  VCVT.S32.F32    S0, S0
5146F6:  VSTR            S2, [SP,#0x38+var_38]
5146FA:  VMOV            R0, S0
5146FE:  UXTB            R2, R0; unsigned __int8
514700:  MOV             R0, R4; this
514702:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
514706:  LDR             R0, =(_ZTV22CTaskComplexWanderFlee_ptr - 0x51470C)
514708:  ADD             R0, PC; _ZTV22CTaskComplexWanderFlee_ptr
51470A:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderFlee ...
51470C:  ADDS            R0, #8
51470E:  STR             R0, [R4]
514710:  B               loc_51474A
514712:  MOVS            R0, #dword_20; this
514714:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514718:  LDR             R1, [R5,#0x50]; CVehicle *
51471A:  MOV             R4, R0
51471C:  BLX             j__ZN20CTaskComplexStealCarC2EP8CVehicle; CTaskComplexStealCar::CTaskComplexStealCar(CVehicle *)
514720:  B               loc_51474A
514722:  MOVS            R0, #0; this
514724:  LDR             R1, =(_ZTV24CTaskComplexFleeShooting_ptr - 0x51472E)
514726:  CMP             R0, #0
514728:  LDR             R2, [SP,#0x38+var_20]
51472A:  ADD             R1, PC; _ZTV24CTaskComplexFleeShooting_ptr
51472C:  STR             R2, [R4,#0x40]
51472E:  LDR             R2, [SP,#0x38+var_24]
514730:  LDR             R1, [R1]; `vtable for'CTaskComplexFleeShooting ...
514732:  STR             R2, [R4,#0x44]
514734:  STRH.W          R6, [R4,#0x50]
514738:  ADD.W           R1, R1, #8
51473C:  STRD.W          R6, R6, [R4,#0x48]
514740:  STR             R1, [R4]
514742:  BEQ             loc_51474A
514744:  MOV             R1, R5; CEntity **
514746:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51474A:  MOV             R0, R4
51474C:  ADD             SP, SP, #0x1C
51474E:  POP.W           {R8-R11}
514752:  POP             {R4-R7,PC}
