; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo24SetVehicleComponentFlagsEP7RwFramej
; Address            : 0x388384 - 0x3884A6
; =========================================================

388384:  PUSH            {R4-R7,LR}
388386:  ADD             R7, SP, #0xC
388388:  PUSH.W          {R11}
38838C:  LDRH.W          R6, [R0,#0x62]
388390:  MOV             R5, R2
388392:  MOV             R4, R1
388394:  LSLS            R0, R5, #0x13
388396:  BMI             loc_3883D6
388398:  LSLS            R0, R5, #9
38839A:  BMI             loc_3883E8
38839C:  LSLS            R0, R5, #0xD
38839E:  BMI             loc_3883FC
3883A0:  LSLS            R0, R5, #0x18
3883A2:  BMI             loc_388410
3883A4:  LSLS            R0, R5, #0x17
3883A6:  BPL             loc_3883C6
3883A8:  TST.W           R5, #0x60
3883AC:  BEQ             loc_388420
3883AE:  LDR             R0, =(mod_HandlingManager_ptr - 0x3883B8)
3883B0:  RSB.W           R1, R6, R6,LSL#3
3883B4:  ADD             R0, PC; mod_HandlingManager_ptr
3883B6:  LDR             R0, [R0]; mod_HandlingManager
3883B8:  ADD.W           R0, R0, R1,LSL#5
3883BC:  LDR.W           R0, [R0,#0xE0]
3883C0:  ANDS.W          R0, R0, #1
3883C4:  BNE             loc_388420
3883C6:  LSLS            R0, R5, #0x1A
3883C8:  BMI             loc_388418
3883CA:  LSLS            R0, R5, #0x19
3883CC:  BPL             loc_38842E
3883CE:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x3883D6)
3883D0:  MOVS            R2, #8
3883D2:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
3883D4:  B               loc_388426
3883D6:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x3883DE)
3883D8:  MOVS            R2, #0x80
3883DA:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
3883DC:  LDR             R1, [R0]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
3883DE:  MOV             R0, R4
3883E0:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
3883E4:  LSLS            R0, R5, #9
3883E6:  BPL             loc_38839C
3883E8:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x3883F2)
3883EA:  MOV.W           R2, #0x400
3883EE:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
3883F0:  LDR             R1, [R0]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
3883F2:  MOV             R0, R4
3883F4:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
3883F8:  LSLS            R0, R5, #0xD
3883FA:  BPL             loc_3883A0
3883FC:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x388406)
3883FE:  MOV.W           R2, #0x2000
388402:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
388404:  LDR             R1, [R0]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
388406:  MOV             R0, R4
388408:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
38840C:  LSLS            R0, R5, #0x18
38840E:  BPL             loc_3883A4
388410:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x388418)
388412:  MOVS            R2, #0x10
388414:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
388416:  B               loc_388426
388418:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x388420)
38841A:  MOVS            R2, #4
38841C:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
38841E:  B               loc_388426
388420:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x388428)
388422:  MOVS            R2, #0x20 ; ' '
388424:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
388426:  LDR             R1, [R0]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
388428:  MOV             R0, R4
38842A:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
38842E:  LSLS            R0, R5, #0x10
388430:  BPL             loc_388450
388432:  TST.W           R5, #0x6000
388436:  BNE             loc_388462
388438:  LDR             R0, =(mod_HandlingManager_ptr - 0x388442)
38843A:  RSB.W           R1, R6, R6,LSL#3
38843E:  ADD             R0, PC; mod_HandlingManager_ptr
388440:  LDR             R0, [R0]; mod_HandlingManager
388442:  ADD.W           R0, R0, R1,LSL#5
388446:  LDR.W           R0, [R0,#0xE0]
38844A:  CMP.W           R0, #0xFFFFFFFF
38844E:  BLE             loc_388462
388450:  LSLS            R0, R5, #0x12
388452:  BMI             loc_388476
388454:  LSLS            R0, R5, #0x11
388456:  BPL             loc_388486
388458:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x388462)
38845A:  MOV.W           R2, #0x200
38845E:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
388460:  B               loc_38847E
388462:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x38846C)
388464:  MOV.W           R2, #0x8000
388468:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
38846A:  LDR             R1, [R0]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
38846C:  MOV             R0, R4
38846E:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
388472:  LSLS            R0, R5, #0x12
388474:  BPL             loc_388454
388476:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x388480)
388478:  MOV.W           R2, #0x100
38847C:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
38847E:  LDR             R1, [R0]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
388480:  MOV             R0, R4
388482:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
388486:  LSLS            R0, R5, #0x15
388488:  ITT PL
38848A:  POPPL.W         {R11}
38848E:  POPPL           {R4-R7,PC}
388490:  LDR             R0, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x388498)
388492:  MOVS            R2, #0x40 ; '@'
388494:  ADD             R0, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
388496:  LDR             R1, [R0]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
388498:  MOV             R0, R4
38849A:  POP.W           {R11}
38849E:  POP.W           {R4-R7,LR}
3884A2:  B.W             j_j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; j_RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
