; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCreateCarAndGetInD2Ev
; Address            : 0x506318 - 0x506368
; =========================================================

506318:  PUSH            {R4,R6,R7,LR}
50631A:  ADD             R7, SP, #8
50631C:  MOV             R4, R0
50631E:  LDR             R0, =(_ZTV28CTaskSimpleCreateCarAndGetIn_ptr - 0x506324)
506320:  ADD             R0, PC; _ZTV28CTaskSimpleCreateCarAndGetIn_ptr
506322:  LDR             R1, [R0]; `vtable for'CTaskSimpleCreateCarAndGetIn ...
506324:  LDR             R0, [R4,#0x18]; this
506326:  ADDS            R1, #8; CVehicle *
506328:  STR             R1, [R4]
50632A:  CBZ             R0, loc_50635E
50632C:  BLX             j__ZN11CTheScripts18CleanUpThisVehicleEP8CVehicle; CTheScripts::CleanUpThisVehicle(CVehicle *)
506330:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x506338)
506332:  LDR             R1, [R4,#0x18]
506334:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
506336:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
506338:  LDR             R0, [R0]; CPools::ms_pVehiclePool
50633A:  LDRD.W          R2, R0, [R0]
50633E:  SUBS            R1, R1, R2
506340:  MOV             R2, #0xBFE6D523
506348:  ASRS            R1, R1, #2
50634A:  MULS            R1, R2
50634C:  LDR             R2, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x506352)
50634E:  ADD             R2, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
506350:  LDRB            R3, [R0,R1]
506352:  LDR             R0, [R2]; this
506354:  ORR.W           R1, R3, R1,LSL#8; int
506358:  MOVS            R2, #1; unsigned __int8
50635A:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
50635E:  MOV             R0, R4; this
506360:  POP.W           {R4,R6,R7,LR}
506364:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
