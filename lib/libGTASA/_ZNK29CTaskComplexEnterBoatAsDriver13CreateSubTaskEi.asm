; =========================================================
; Game Engine Function: _ZNK29CTaskComplexEnterBoatAsDriver13CreateSubTaskEi
; Address            : 0x4F8440 - 0x4F848C
; =========================================================

4F8440:  PUSH            {R4,R6,R7,LR}
4F8442:  ADD             R7, SP, #8
4F8444:  MOV             R4, R0
4F8446:  MOVW            R0, #0x33F
4F844A:  CMP             R1, R0
4F844C:  BEQ             loc_4F8470
4F844E:  MOVW            R0, #0x33E
4F8452:  CMP             R1, R0
4F8454:  BEQ             loc_4F847E
4F8456:  CMP.W           R1, #0x32C
4F845A:  ITT NE
4F845C:  MOVNE           R0, #0
4F845E:  POPNE           {R4,R6,R7,PC}
4F8460:  MOVS            R0, #dword_1C; this
4F8462:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F8466:  LDR             R1, [R4,#0xC]; CVehicle *
4F8468:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
4F846A:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
4F846E:  POP             {R4,R6,R7,PC}
4F8470:  MOVS            R0, #word_10; this
4F8472:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F8476:  LDR             R1, [R4,#0xC]; CVehicle *
4F8478:  BLX             j__ZN25CTaskComplexGetOnBoatSeatC2EP8CVehicle; CTaskComplexGetOnBoatSeat::CTaskComplexGetOnBoatSeat(CVehicle *)
4F847C:  POP             {R4,R6,R7,PC}
4F847E:  MOVS            R0, #dword_24; this
4F8480:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F8484:  LDR             R1, [R4,#0xC]; CVehicle *
4F8486:  BLX             j__ZN33CTaskComplexGoToBoatSteeringWheelC2EP8CVehicle; CTaskComplexGoToBoatSteeringWheel::CTaskComplexGoToBoatSteeringWheel(CVehicle *)
4F848A:  POP             {R4,R6,R7,PC}
