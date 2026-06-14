; =========================================================
; Game Engine Function: _ZNK35CTaskComplexLeaveCarAsPassengerWait27SetPedInZerothPassengerSeatEP4CPed
; Address            : 0x4F8310 - 0x4F8366
; =========================================================

4F8310:  PUSH            {R4-R7,LR}
4F8312:  ADD             R7, SP, #0xC
4F8314:  PUSH.W          {R8}
4F8318:  SUB             SP, SP, #0x38
4F831A:  MOV             R6, R0
4F831C:  MOV             R5, R1
4F831E:  ADD             R4, SP, #0x48+var_28
4F8320:  LDR             R1, [R6,#0xC]; CVehicle *
4F8322:  MOVS            R2, #8; int
4F8324:  MOVS            R3, #1; bool
4F8326:  MOV             R0, R4; this
4F8328:  MOV.W           R8, #1
4F832C:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4F8330:  MOV             R1, R5; CPed *
4F8332:  STRB.W          R8, [SP,#0x48+var_17]
4F8336:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
4F833A:  LDR             R1, [R6,#0xC]; CVehicle *
4F833C:  MOV             R6, SP
4F833E:  MOV             R0, R6; this
4F8340:  MOVS            R2, #8; int
4F8342:  MOVS            R3, #0; CTaskUtilityLineUpPedWithCar *
4F8344:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F8348:  MOV             R1, R5; CPed *
4F834A:  STRB.W          R8, [SP,#0x48+var_2C]
4F834E:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassenger10ProcessPedEP4CPed; CTaskSimpleCarSetPedInAsPassenger::ProcessPed(CPed *)
4F8352:  MOV             R0, R6; this
4F8354:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerD2Ev; CTaskSimpleCarSetPedInAsPassenger::~CTaskSimpleCarSetPedInAsPassenger()
4F8358:  MOV             R0, R4; this
4F835A:  BLX             j__ZN23CTaskSimpleCarSetPedOutD2Ev; CTaskSimpleCarSetPedOut::~CTaskSimpleCarSetPedOut()
4F835E:  ADD             SP, SP, #0x38 ; '8'
4F8360:  POP.W           {R8}
4F8364:  POP             {R4-R7,PC}
