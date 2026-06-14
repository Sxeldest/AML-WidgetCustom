; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCreateCarAndGetInD0Ev
; Address            : 0x506374 - 0x5063C8
; =========================================================

506374:  PUSH            {R4,R6,R7,LR}
506376:  ADD             R7, SP, #8
506378:  MOV             R4, R0
50637A:  LDR             R0, =(_ZTV28CTaskSimpleCreateCarAndGetIn_ptr - 0x506380)
50637C:  ADD             R0, PC; _ZTV28CTaskSimpleCreateCarAndGetIn_ptr
50637E:  LDR             R1, [R0]; `vtable for'CTaskSimpleCreateCarAndGetIn ...
506380:  LDR             R0, [R4,#0x18]; this
506382:  ADDS            R1, #8; CVehicle *
506384:  STR             R1, [R4]
506386:  CBZ             R0, loc_5063BA
506388:  BLX             j__ZN11CTheScripts18CleanUpThisVehicleEP8CVehicle; CTheScripts::CleanUpThisVehicle(CVehicle *)
50638C:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x506394)
50638E:  LDR             R1, [R4,#0x18]
506390:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
506392:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
506394:  LDR             R0, [R0]; CPools::ms_pVehiclePool
506396:  LDRD.W          R2, R0, [R0]
50639A:  SUBS            R1, R1, R2
50639C:  MOV             R2, #0xBFE6D523
5063A4:  ASRS            R1, R1, #2
5063A6:  MULS            R1, R2
5063A8:  LDR             R2, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x5063AE)
5063AA:  ADD             R2, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
5063AC:  LDRB            R3, [R0,R1]
5063AE:  LDR             R0, [R2]; this
5063B0:  ORR.W           R1, R3, R1,LSL#8; int
5063B4:  MOVS            R2, #1; unsigned __int8
5063B6:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
5063BA:  MOV             R0, R4; this
5063BC:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
5063C0:  POP.W           {R4,R6,R7,LR}
5063C4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
