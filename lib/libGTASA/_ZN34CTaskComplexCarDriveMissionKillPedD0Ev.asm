; =========================================================
; Game Engine Function: _ZN34CTaskComplexCarDriveMissionKillPedD0Ev
; Address            : 0x3846CC - 0x3846DC
; =========================================================

3846CC:  PUSH            {R7,LR}
3846CE:  MOV             R7, SP
3846D0:  BLX             j__ZN27CTaskComplexCarDriveMissionD2Ev; CTaskComplexCarDriveMission::~CTaskComplexCarDriveMission()
3846D4:  POP.W           {R7,LR}
3846D8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
