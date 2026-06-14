; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCarD0Ev
; Address            : 0x4F8974 - 0x4F8984
; =========================================================

4F8974:  PUSH            {R7,LR}
4F8976:  MOV             R7, SP
4F8978:  BLX             j__ZN20CTaskComplexLeaveCarD2Ev_0; CTaskComplexLeaveCar::~CTaskComplexLeaveCar()
4F897C:  POP.W           {R7,LR}
4F8980:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
